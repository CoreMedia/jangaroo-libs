# Patch and Build: build_ckeditor_from_source.sh

The file `build_ckeditor_from_source.sh` is a command line tool to be run after
updating CKEditor or after creating new patch files. It will create a patched CKEditor
which will become part of Jangaroo Libs.

## Files and Folders

The following files and folders are required by the script:

* `src/main/sencha/resources/ckeditor/_source/`

    This contains the original sources from [ckeditor/ckeditor-dev](https://github.com/ckeditor/ckeditor-dev)
    from the desired version tag of CKEditor.
    
* `src/patches/`

    This folder contains instructions how to patch the original sources. First of all there
    is a file `delete.txt` which lists files and folders which shall be deleted, like the
    samples folder. Folders will be deleted recursively.
    
    The next set of patches is either a SED or a patch file which will be applied to the
    sources. The corresponding file to edit or patch is determined by the path and name
    of the patch file. So a file `patches/core/editor.js.[sed|patch]` will contain
    instructions how to patch the file `core/editor.js` in the original sources.
    
    Files ending with `.sed` will trigger the stream editor SED to apply the patches.
    
    Files ending with `.patch` will trigger the patch command to apply the changes.
    To generate such `.patch` files use for example:
    
    ```bash
    $ diff -u hello.c hello_new.c > hello.patch
    ```
    
    It is expected though not enforced that either a `.sed` or a `.patch` file exists
    to patch a file not both.
    
* `src/jangaroo-build-config.js`

    Is the build configuration used to build a CKEditor release to be used within
    Jangaroo Libs. It especially lists the plugins to be available.
    
* `src/main/sencha/resources/ckeditor/`

    This folder will contain the compiled and build sources eventually. The generated
    sources will be used later on by the Jangaroo Libs build process to include
    CKEditor into Jangaroo Libs.

* `target/ckeditor/patched-source`

    Will contain the temporary patched sources before they are copied back to
    `src/main/sencha/resources/ckeditor/`.

## Options

* **`--dry-run`**

    Will perform all steps despite the last one, which is to copy the patched and compiled results
    from the target folder back to the source folder.

## See Also

* [7 Patch Command Examples to Apply Diff Patch Files in Linux](http://www.thegeekstuff.com/2014/12/patch-command-examples)
