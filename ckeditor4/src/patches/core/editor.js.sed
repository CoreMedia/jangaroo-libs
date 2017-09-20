### Patches core/editor.js
###
### Adds an extra configuration option 'extraPluginsPath' to CKEditor.
###
### Why not using sed-append? See here: https://stackoverflow.com/questions/39103787/sed-append-regex-capture-groups
s/^\([[:space:]]*\)extraPlugins = config.extraPlugins,/&\n\1extraPluginsPath = config.extraPluginsPath,/
