requirejs.config({
  paths: {
    "ckeditor": "../ckeditor"
  },
  shim: {
    "ckeditor/ckeditor": {
      exports: "CKEDITOR"
    }
  }
});
window.CKEDITOR_BASEPATH = 'ckeditor/'; // ...because otherwise CKEditor will guess the wrong base path!
define("lib/net/jangaroo/ckeditor", function() {
});
