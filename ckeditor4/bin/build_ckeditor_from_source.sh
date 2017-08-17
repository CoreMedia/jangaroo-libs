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

declare -r CKEDITOR_MODULE_ROOT="$(readlink -f "${MY_DIR}/..")"
declare -r CKEDITOR_SOURCE_ROOT="$(readlink -f "${CKEDITOR_MODULE_ROOT}/src/main/sencha/resources/ckeditor")"
declare -r CKEDITOR_SOURCE="$(readlink -f "${CKEDITOR_SOURCE_ROOT}/_source")"
declare -r CKEDITOR_BUILDER_DIR="$(readlink -f "${CKEDITOR_SOURCE}/dev/builder")"
declare -r CKEDITOR_BUILD="$(readlink -f "${CKEDITOR_BUILDER_DIR}/build.sh")"
declare -r CKEDITOR_BUILD_OUTPUT="$(readlink -f "${CKEDITOR_BUILDER_DIR}/release/ckeditor")"
declare -r CKEDITOR_TARGET="$(readlink -f "${CKEDITOR_SOURCE_ROOT}")"

declare -r CKEDITOR_BUILD_CONFIG="$(readlink -f "${CKEDITOR_MODULE_ROOT}/src/jangaroo-build-config.js")"

echo "Going to build CKEditor with configuration file: ${CKEDITOR_BUILD_CONFIG}"

### Debug-Level: 0, 1 or 2
"${CKEDITOR_BUILD}" --leave-js-unminified --build-config "${CKEDITOR_BUILD_CONFIG}" --no-zip --no-tar --debug-level=1

echo "Cleaning target folder for CKEditor release: ${CKEDITOR_TARGET} (skipping _source/)"
### For safety... Change to directory to clean-up.
cd "${CKEDITOR_TARGET}"
### true: Ignore failure if there are no more files to delete
find . -maxdepth 1 ! -name _source ! -name . | xargs rm -r || true

echo "Copying build results"
echo "    from: ${CKEDITOR_BUILD_OUTPUT}"
echo "    to: ${CKEDITOR_TARGET}."
cp -R "${CKEDITOR_BUILD_OUTPUT}/"* "${CKEDITOR_TARGET}"
