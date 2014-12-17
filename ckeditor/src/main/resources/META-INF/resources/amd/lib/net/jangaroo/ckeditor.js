requirejs.config({
  paths: {
    "ckeditor/ckeditor": "../ckeditor/ckeditor"
  }
});
window.CKEDITOR_BASEPATH = 'ckeditor/'; // ...because otherwise CKEditor will guess the wrong base path!
define("lib/net/jangaroo/ckeditor", function() {
});
