/**
 * Parse the given argument String into a config object, run
 * the static <code>main</code> method of the
 * class given as <code>jooMainClass</code> and pass it the
 * config object.
 */
phantom.injectJs("./phantomjs-joo-config.js");
joo._usageHint = "USAGE: phantomjs-joo-runner.js {jooMainClass:<JOO_MAIN_CLASS>, ...}";

(function (){
  try {
    const key = 'jooMainClass';
    var config = joo._parseConfig([key]);
    joo._loadScriptWarning();
    joo._run(config[key],config);
  } catch(e){
    joo._die(e);
  }
})();