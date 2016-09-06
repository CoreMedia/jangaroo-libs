How to build the unminified version
===================================

Replace 4.5.7 with your ckeditor version:

git clone https://github.com/ckeditor/ckeditor-presets.git
cd ckeditor-presets
git checkout 4.5.7
git submodule update --init
./build.sh standard --leave-js-unminified