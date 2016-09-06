How to build the ckeditor binary distribution from source

Before upgrading, note that there are source patches, at least in:
  _source\plugins\tabletools\plugin.js (requires list)
  resources/ckeditor/_source/core/ckeditor_base.js (base path pattern)

cd src\main\sencha\resources\ckeditor\_source\dev\builder
./build.sh --leave-js-unminified --build-config build-config.js

copy release/ckeditor over src\main\sencha\resources\ckeditor
remove sample files

