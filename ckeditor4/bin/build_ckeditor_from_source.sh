#!/usr/bin/env bash
###
### Builds the CKEditor from sources in _source folder and copies the results to the required location for a
### jangaroo-libs release.
###
### For Mac: This build script requires that you installed GNU Tools for example with Homebrew:
###
###     brew install coreutils
###
###
### See Also:
###   * https://docs.ckeditor.com/#!/guide/dev_build
###   * https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/

set -o nounset
set -o pipefail
set -o errexit
### Uncomment to enable debug logging
#set -o xtrace

declare -r ME="$(readlink -f "${BASH_SOURCE[0]}")"
declare -r MY_DIR="$(dirname "${ME}")"
declare -r MY_NAME="$(basename "${0}")"

declare do_help=false
declare dry_run=false

###
### Readlink:
### -f, --canonicalize: Create an absolute path
### -m, --canonicalize-missing: Also canonicalize for not (yet) existing files/folders
###
declare -r CKEDITOR_MODULE_ROOT="$(readlink -f "${MY_DIR}/..")"
### Original sources from ckeditor/ckeditor-dev project; untouched
declare -r CKEDITOR_ORIGINAL_SOURCE="$(readlink -f "${CKEDITOR_MODULE_ROOT}/src/main/sencha/resources/ckeditor/_source")"
### Patches, currently only SED scripts, maybe more in the future
declare -r CKEDITOR_PATCHES_ROOT="$(readlink -f "${CKEDITOR_MODULE_ROOT}/src/patches")"
declare -r CKEDITOR_DELETE_LIST="${CKEDITOR_PATCHES_ROOT}/delete.txt"
### Location for temporary source to apply patches to and to build from.
declare -r CKEDITOR_PATCHED_SOURCE="$(readlink -fm "${CKEDITOR_MODULE_ROOT}/target/ckeditor/patched-source")"
declare -r CKEDITOR_PATCHED_BUILDER_DIR="$(readlink -fm "${CKEDITOR_PATCHED_SOURCE}/dev/builder")"
declare -r CKEDITOR_PATCHED_BUILD="$(readlink -fm "${CKEDITOR_PATCHED_BUILDER_DIR}/build.sh")"
declare -r CKEDITOR_PATCHED_BUILD_OUTPUT="$(readlink -fm "${CKEDITOR_PATCHED_BUILDER_DIR}/release/ckeditor")"
### Where the patched and built result shall be copied to.
declare -r CKEDITOR_TARGET="$(readlink -f "${CKEDITOR_MODULE_ROOT}/src/main/sencha/resources/ckeditor")"

declare -r CKEDITOR_PATCHED_BUILD_CONFIG="$(readlink -f "${CKEDITOR_MODULE_ROOT}/src/jangaroo-build-config.js")"

declare -ri EXIT_OK=0
declare -ri EXIT_ILLEGAL_OPTION=10

function parse_cli() {
  local opts
  opts=$(getopt --options h --longoptions dry-run,help --name "${MY_NAME}" -- "$@" || echo "failure")

  if [[ "${opts}" =~ "failure" ]]; then
    echo "${FUNCNAME}: Failed to parse options. Use --help to get usage information." | error
    exit ${EXIT_ILLEGAL_OPTION}
  fi

  eval set -- "${opts}"

  while true ; do
    case "$1" in
      --dry-run)
        dry_run=true ;;
      -h|--help)
        do_help=true ;;
      --)
        shift; break ;;
      *)
        echo "${FUNCNAME}: Illegal argument ${1}. Remaining arguments: ${@}" | error
        exit ${EXIT_ILLEGAL_OPTION}
        ;;
    esac
    shift
  done
}

function init_working_folder() {
  echo "Preparing temporary CKEditor build folder to apply patches at: ${CKEDITOR_PATCHED_SOURCE}"
  rm --recursive "${CKEDITOR_PATCHED_SOURCE}" &> /dev/null || true
  mkdir --parents "${CKEDITOR_PATCHED_SOURCE}"
  cp --recursive "${CKEDITOR_ORIGINAL_SOURCE}/"* "${CKEDITOR_PATCHED_SOURCE}"
}

function apply_sed_patches() {
  echo "Applying SED Patches from: ${CKEDITOR_PATCHES_ROOT}"

  for p in $(find "${CKEDITOR_PATCHES_ROOT}" -name '*.sed'); do
    ### Remove the patches root path from the patch-file-path
    relativePatchFile="${p#${CKEDITOR_PATCHES_ROOT}}"
    ### Remove the .sed suffix
    relativeTargetFile="${relativePatchFile%.sed}"
    ### No slash here, as we did not strip that before
    patchTarget="${CKEDITOR_PATCHED_SOURCE}${relativeTargetFile}"
    echo "Applying Patch:"
    echo "    SED File: ${p}"
    echo "    Target File: ${patchTarget}"
    sed --in-place=.bak --file="${p}" "${patchTarget}"
  done
}

function apply_diff_patches() {
  ### To create patch files: diff -u hello.c hello_new.c > hello.patch
  echo "Applying Patches from: ${CKEDITOR_PATCHES_ROOT}"

  for p in $(find "${CKEDITOR_PATCHES_ROOT}" -name '*.patch'); do
    ### Remove the patches root path from the patch-file-path
    relativePatchFile="${p#${CKEDITOR_PATCHES_ROOT}}"
    ### Remove the .patch suffix
    relativeTargetFile="${relativePatchFile%.patch}"
    ### No slash here, as we did not strip that before
    patchTarget="${CKEDITOR_PATCHED_SOURCE}${relativeTargetFile}"
    echo "Applying Patch:"
    echo "    Patch File: ${p}"
    echo "    Target File: ${patchTarget}"
    patch --input="${p}" --ignore-whitespace "${patchTarget}"
  done
}

function apply_deletions() {
  echo "Deleting files and/or folders as specified in ${CKEDITOR_DELETE_LIST}."

  grep -v -e '^\(#.*\|[[:space:]]*\)$' "${CKEDITOR_DELETE_LIST}" | while read line; do
    deletePath="$(readlink -fm ${CKEDITOR_PATCHED_SOURCE}/${line})"
    ### A small safety net, that we don't use .. etc. in paths
    if [[ $deletePath != "${CKEDITOR_PATCHED_SOURCE}"*  ]]; then
      echo "Path leaves patched source path which is forbidden: ${line} evaluates to ${deletePath}."
      exit 1
    fi
    echo "    Deleting ${deletePath}."
    rm --recursive "${deletePath}" || true
  done
}

function build_ckeditor() {
  echo "Going to build CKEditor with configuration file: ${CKEDITOR_PATCHED_BUILD_CONFIG}"

  ### Debug-Level: 0, 1 or 2
  "${CKEDITOR_PATCHED_BUILD}" --leave-js-unminified --build-config "${CKEDITOR_PATCHED_BUILD_CONFIG}" --no-zip --no-tar --debug-level=1
}

function install_ckeditor() {
  echo "Cleaning target folder for CKEditor release: ${CKEDITOR_TARGET} (skipping _source/)"
  ### For safety... Change to directory to clean-up.
  cd "${CKEDITOR_TARGET}"
  ### true: Ignore failure if there are no more files to delete
  find . -maxdepth 1 ! -name _source ! -name . | xargs rm --recursive || true
  ### Remove any backup files created during the patch process
  find . -name "*.bak" | xargs rm || true

  echo "Copying build results"
  echo "    from: ${CKEDITOR_PATCHED_BUILD_OUTPUT}"
  echo "    to: ${CKEDITOR_TARGET}."
  cp --recursive "${CKEDITOR_PATCHED_BUILD_OUTPUT}/"* "${CKEDITOR_TARGET}"
}

function do_help() {
  cat << HELP
NAME

      ${MY_NAME} - build CKEditor from original source

SYNOPSIS

      ${MY_NAME}

      ${MY_NAME} [--dry-run]

      ${MY_NAME} [-h | --help]

DESCRIPTION

      This script will use the original sources of CKEditor, patch them, build
      them and copy them back to the source folder which then again will be used by
      the build process of Jangaroo Libs to bundle CKEditor to Jangaroo Libs.

      For more information refer to the README.md.
HELP
}

function main() {
  parse_cli "${@}"

  if [[ "${do_help}" == "true" ]]; then
    do_help
    exit ${EXIT_OK}
  fi

  init_working_folder
  apply_sed_patches
  apply_diff_patches
  apply_deletions
  build_ckeditor
  if [[ "${dry_run}" == "true" ]]; then
    echo "Dry Run: Skipping to install CKEditor release to ${CKEDITOR_TARGET}."
    exit ${EXIT_OK}
  else
    install_ckeditor
  fi

}

main "${@}"
