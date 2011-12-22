/**
 * joo base config for phantomjs
 */
var fs = require('fs');
var die = function(msg){
  console.error(msg);
  phantom.exit(1);
};
var joo = {
  debug: false,
  _loadScript:function(src/*:String*/) {
    console.log("phantomjs> loading script '" + src + "'");
    phantom.injectJs(src);
    // return an object faking the script HTMLElement
    return {};
  },
  _loadScriptWarning:function(){
    console.log("phantomjs> note: if loading of scripts fail, consider using a page sandbox.");
  },
  baseUrl:"",
  _run:function(clazz,config){
    config.phantom = phantom;
    config.fs = fs;
    this._initWindow(config);
    phantom.injectJs("joo/jangaroo-application.js");
    joo.classLoader.run(clazz, config);
  },
  _initWindow:function(config) {
    if(config.timeout !== undefined){
      window.setTimeout(function(){
        console.error("phantomjs> test " + config.testSuiteName+ " timed out after " + config.timeout + " ms");
        phantom.exit(1);
      },config.timeout);
    } else {
      console.warn("phantomjs> no timeout configured.");
    }
  },
  _parseConfig:function() {
    try {
      var config = eval("(" + phantom.args[0] + ")");
      if (typeof config !== 'object') {
        die("phantomjs> invalid args: " + config);
      } else if(config.testSuiteName === undefined) {
        die("phantomjs> either test=<TestSuiteName> must be given or the config object must contain property 'testSuiteName'");
      }
      // set log level
      const loglevel = config.loglevel ? config.loglevel : 'error';
      const levels = ['log','info','warn','error'];
      const index = levels.indexOf(loglevel);
      console.log("phantomjs> loglevel is '"+ (index < 0 ? "all" :  levels[index]) + "'");
      for(i = 0;i < index;i++){
        console[levels[i]] = function(){};
      }

      return config;
    } catch (e) {
      die(e);
    }
  },
  _writeTestResult:function(absFileName,testResult){
    try {
      var f = fs.open(absFileName, "w");
      f.write(testResult);
      f.close();
    } catch(e){
      die(e);
    }
  },
  _exit:function(result){
    phantom.exit(result ? 0 : 1);
  }
};
joo.loadScriptAsync = joo._loadScript;
console.log("phantomjs> loaded default phantomjs joo config");

// patch window.setTimeout so to catch runtime errors (window.onerror doesn't work in phantomjs properly)
__setTimeoutOrig = window.setTimeout;
window.setTimeout = function(vCode, millis){
  __setTimeoutOrig.apply(window,
          [function(){
            try{
              vCode();
            } catch(e){
              joo._die(e);}
          },millis]
  )
};

run();
