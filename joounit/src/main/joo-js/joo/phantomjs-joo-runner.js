phantom.injectJs("./phantomjs-joo-config.js");
run();
/**
 * Parse the given argument String into a config object, run
 * the static <code>main</code> method of the
 * class given as <code>jooMainClass</code> and pass it the
 * config object.
 */
function run(){
  try {
    eval("config = " + phantom.args[0]);
    if (typeof config === 'object') {
      const key = "jooMainClass";
      if(!config[key]){
        die(key + " must be set")
      }
      joo._run(config[key],config);
    } else {
      die("invalid args: " + config);
    }
  } catch(e){
    die(e);
  }
}
function die(e){
  console.error("USAGE: phantomjs-joo-runner.js configJSON");
  joo._die(e);
}