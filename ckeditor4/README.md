In the folder src/main/resources/META-INF/resources/ckeditor/_source you find the ckeditor source code of the full
ckeditor distribution as is. It is done to simplify the update process onto newer version of ckeditor.

If you want to exlude some resources not to be part of target ckeditor4.jar, you can add them to the exclusion list in
pom.xml of the ckeditor4 module. Currently the following folders are excluded, to minimize the size of ckeditor4.jar:
- all skins, except moono,
- all samples
- all tests
- codespinnetgeshi plugin (is large and is unlikely to be used by coremedia cms of customers)

UPDATING CKEditor

To update the ckeditor to a newer version you should download ckeditor source code for developers from the github
https://github.com/ckeditor/ckeditor-dev/tree/<<release number>>. This code you have to copy into
src/main/resources/META-INF/resources/ckeditor/_source folder.

In src/main/resources/META-INF/resources/ckeditor/_source/dev/builder you can find the configuration and build scripts
for ckeditor.

Pay attention to configure the build-config correctly (consult the earlier versions of jangaroo lisbs for this
configuration). Please include only those plugins into the plugin list of the build-config.js, that will be used in
your current coremedia version, because these plugins will be compiled into target ckeditor.js file and always loaded
to your studio in the production (not #joo.debug) mode. All other plugins will be also distributed with jangaroo-libs
ckeditor4.jar but can be loaded to you studio by separate url, e.g.:
https://<<your.host>>/studio/ckeditor/plugins/pastefromword/filter/default.js?t=G23F.

Now you can build you ckeiditor.
Run "./build-ckeditor.sh" from the current directory and finally build you jangaroo-libs with "mvn install" from the root
folder.

