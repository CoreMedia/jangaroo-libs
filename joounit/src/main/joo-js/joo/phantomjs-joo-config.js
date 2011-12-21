/**
 * joo base config for phantomjs
 */
var joo = {
  debug: false,
  _loadScript:function(src/*:String*/) {
    console.log("phantomjs> loading script '" + src + "'");
    phantom.injectJs(src);
    // return an object faking the script HTMLElement
    return {};
  },
  baseUrl:"",
  _die:function(e){
    console.error("phantomjs> ERROR: "+e);
    phantom.exit(1);
  },
  _run:function(clazz,config){
    config.phantom = phantom;
    config.fs = require('fs');
    joo._loadScript("joo/jangaroo-application.js");
    joo.classLoader.run(clazz, config);
  }
};
joo.loadScriptAsync = joo._loadScript;
console.log("loaded default phantomjs joo config");

// patch window.setTimeout so to catch runtime errors (window.onerror doesn't work in phantomjs properly)
setTimeoutOrig = window.setTimeout;
window.setTimeout = function(vCode, millis){
  setTimeoutOrig.apply(window,
          [function(){
            try{
              vCode();
            } catch(e){
              joo._die(e);}
          },millis]
  )
};
