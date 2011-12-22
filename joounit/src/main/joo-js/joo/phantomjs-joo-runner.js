/**
 * Parse the given argument String into a config object, run
 * the static <code>main</code> method of the
 * class given as <code>jooMainClass</code> and pass it the
 * config object.
 */
phantom.injectJs("./phantomjs-joo-config.js");
function run(){
  const doExit  = function(msg){console.error("USAGE: phantomjs-joo-runner.js configJSON");die(msg)};
  try {
    var config = joo._parseConfig();
    if (typeof config === 'object') {
      const key = "jooMainClass";
      if(!config[key]){
        doExit(key + " must be set")
      }
      joo._loadScriptWarning();
      joo._run(config[key],config);
    } else {
      doExit("invalid args: " + config);
    }
  } catch(e){
    doExit(e);
  }
}