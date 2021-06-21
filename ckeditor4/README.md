# How to update the CKEditor version

1. Delete everything in `src/ckeditor-dev`

2. Download the original sources from [ckeditor/ckeditor4](https://github.com/ckeditor/ckeditor4)
   from the desired version tag of CKEditor to the above empty directory.

    You may use the ZIP available in [Release Section](https://github.com/ckeditor/ckeditor4/releases).
    The ZIP starts with the _release version folder_ at root. All its contents,
    also any `.` files and folders, will make it into `src/ckeditor-dev`.

3. Build and patch the CKEditor by running `bin/build_ckeditor_from_source.sh`

   Mac users need to have GNU Tools installed, for example with Homebrew: `brew install coreutils`.

   The script is described in more detail in [bin/README.md](bin/README.md).

4. Update the version in the description of the pom.xml

5. Commit all changes.
