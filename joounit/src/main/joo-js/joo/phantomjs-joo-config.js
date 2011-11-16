/**
 * joo base config for phantomjs
 */
var joo = {
  debug: false,
  _loadScript:function(src/*:String*/) {
    console.log("loading script '" + src + "'");
    phantom.injectJs(src);
  },
  loadScriptAsync:this._loadScript,
  baseUrl:"",
  _die:function(e){
    console.error("phantomjs> ERROR: "+e);
    phantom.exit(1);
  },
  _run:function(clazz,config){
    config.phantom = phantom;
    config.fs = require('fs');
    config.__pageConstructor = WebPage;
    phantom.injectJs("joo/jangaroo-application.js");
    // https://bugs.webkit.org/show_bug.cgi?id=55092
    // https://bugs.webkit.org/show_bug.cgi?id=8519
    window.onerror = function(e){
      joo._die("error event raised: " + e + ". Consider using a test HTML page.");
    };
    joo.classLoader.run(clazz, config);
  }
};
console.log("loaded default phantomjs joo config");