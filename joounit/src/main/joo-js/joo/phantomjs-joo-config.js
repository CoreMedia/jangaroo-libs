/**
 * joo base config for phantomjs
 */
var fs = require('fs');
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
  /**
   * Load clazz and pass the given config object to its <code>main</code> method.
   * @param clazz
   * @param config
   */
  _run:function(clazz,config){
    this._initWindow(config);
    phantom.injectJs("joo/jangaroo-application.js");
    joo.classLoader.run(clazz, config);
  },
  /**
   * Patch phantom's window object and set global timeout according to current config.
   * @param config
   */
  _initWindow:function(config) {
    const timeout = config.timeout ? config.timeout : 10000;
    window.setTimeout(function(){
      console.error("phantomjs> test " + config.testSuiteName+ " timed out after " + timeout + " ms");
      phantom.exit(1);
    },timeout);
  },
  /**
   * Parse phantom's arguments into a config object, check that the required params are present
   * and configure logging.
   * @param requiredParams
   * @return config object
   */
  _parseConfig:function(requiredParams) {
    try {
      var config = eval("(" + phantom.args[0] + ")");
      if (typeof config !== 'object') {
        if(joo._usageHint){
          console.error(joo._usageHint);
        }
        joo._die("phantomjs> invalid args: " + config);
      }
      // check required params
      if(requiredParams && requiredParams.length > 0){
        for(i = 0; i < requiredParams.length; i++){
          const key = requiredParams[i];
          if(!config[key]){
            if(joo._usageHint){
              console.error(joo._usageHint);
            }
            joo._die(key + " must be set")
          }
        }
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
      joo._die(e);
    }
  },
  _writeToFile:function(fileName,contents){
    try {
      var f = fs.open(fileName, "w");
      f.write(contents);
      f.close();
    } catch(e){
      joo._die(e);
    }
  },
  _exit:function(result){
    phantom.exit(result ? 0 : 1);
  },
  _die: function(msg){
    console.error(msg);
    phantom.exit(1);
  }
};
joo.loadScriptAsync = joo._loadScript;
console.log("phantomjs> loaded default phantomjs joo config");

// patch window.setTimeout so to catch runtime errors (window.onerror doesn't work in phantomjs properly)
joo.__setTimeout = window.setTimeout;
window.setTimeout = function(vCode, millis){
  joo.__setTimeout.apply(window,
          [function(){
            try{
              vCode();
            } catch(e){
              joo._die(e);}
          },millis]
  )
};