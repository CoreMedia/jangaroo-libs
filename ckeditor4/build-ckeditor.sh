#!/bin/bash

echo "executing ckeditor build script src/main/resources/META-INF/resources/ckeditor/_source/dev/builder/build.sh"
/bin/bash  src/main/resources/META-INF/resources/ckeditor/_source/dev/builder/build.sh

echo "ckeditor build is finished"

cd src/main/resources/META-INF/resources/ckeditor
shopt -s extglob

echo " delete everything in src/main/resources/META-INF/resources/ckeditor except _source folder ..."
rm -rf !(_source)
cd _source/dev/builder

echo "copy contents of _source/dev/builder/release/ckeditor/ parallel to _source folder"
cp -a release/ckeditor/* ../../../

echo "remove _source/dev/builder/release folder"
rm -rf release
echo "remove folder with temporary downloaded ckbuilder _source/dev/builder/ckbuilder<verison>"
rm -rf ckbuilder*

echo "copy and clean jobs finished. folder structure is ready for mvn install."