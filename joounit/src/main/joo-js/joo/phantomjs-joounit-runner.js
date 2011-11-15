phantom.injectJs("./phantomjs-joo-config.js");
run();
/**
 * Parse the given argument String into a config object and pass it to
 * <code>net.jangaroo.joounit.runner.PhantomJsRunner#main</code>
 */
function run(){
  try {
    eval("config = " + phantom.args[0]);
    if (typeof config === 'object') {
      launchRunner(config);
    } else {
      die("invalid args: " + config);
    }
  } catch(e){
    // then try old config style:
    try {
      console.warn("retrying after ERROR: "+e);
      var config = parseConfig();
      launchRunner(config);
    } catch(e2) {
      die(e2);
    }
  }
}
function launchRunner(config){
  joo._run("net.jangaroo.joounit.runner.PhantomJsRunner", config);
}
function parseConfig() {
  var config = {};
  for(var i = 0; i < phantom.args.length ; i++){
    var arg = phantom.args[i];
    if(arg.indexOf("usePage")>-1){
      config.testsHtml = 'tests.html';
    } else if(arg.indexOf('test=') > -1){
      config.testSuiteName = arg.substring(5);
    } else if(arg.indexOf('timeout=') > -1){
      config.timeout = parseInt(arg.substring(8));
    } else if(arg.indexOf('freq=') > -1){
      config.freq = parseInt(arg.substring(5));
    } else {
      console.warn("unsupported argument: " + arg);
    }
  }
  return config;
}
function die(e){
  console.error("USAGE: phantomjs-joounit-runner.js  test=TestClassName [usePage] [timeout=Timeout] [freq=Frequency]");
  joo._die(e);
}