# How to update the CKEditor version

1. Delete everything in `src/ckeditor-dev`

2. Download the original sources from [ckeditor/ckeditor-dev](https://github.com/ckeditor/ckeditor-dev)
   from the desired version tag of CKEditor to the above empty directory
    
3. Build and patch the CKEditor by running `bin/build_ckeditor_from_source.sh`
   
   Mac users need to have GNU Tools installed, for example with Homebrew: `brew install coreutils`.
   
   The script is described in more detail in [bin/README.md](bin/README.md).
   
4. Commit all changes