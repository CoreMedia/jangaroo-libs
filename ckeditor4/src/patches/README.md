# CKEditor Patches

While the original sources from ckeditor-dev are placed in `src/main/sencha/resources/ckeditor/_source`
this folder contains information on required patches to the original source.

Patching is done with the script `bin/build_ckeditor_from_source.sh`.
 
 
Any files `*.sed.txt` in here will be applied to the original source files (in a
temporary folder, though). The original files will be located via the relative path
of the file in here and will be processed through sed.

**Example:**

`core/editor.js.sed.txt` will contain the sed script to apply to
`src/main/sencha/resources/ckeditor/_source/core/editor.js`.
