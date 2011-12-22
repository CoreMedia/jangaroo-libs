phantom.injectJs("./phantomjs-joo-config.js");
/**
 * Parse the given argument String into a config object or
 * parse arguments test=<testSuiteClass> timeout=<timeout> into a config object
 * and pass it to
 * <code>net.jangaroo.joounit.runner.PhantomJsRunner#main</code>
 */
function run(){
  var config = joo._parseConfig();
  config.writeResult = function(fileName,xmlTestResult){
    joo._writeTestResult(fileName,xmlTestResult);
    joo._exit(xmlTestResult.indexOf('errors="0" failures="0"') > 0);
  };
  joo._loadScriptWarning();
  joo._run("net.jangaroo.joounit.runner.PhantomJsRunner", config);
}
var origDie = die;
die = function (e){
  console.error("USAGE: phantomjs-joounit-runner.js  test=TestClassName [timeout=Timeout]");
  origDie(e);
};