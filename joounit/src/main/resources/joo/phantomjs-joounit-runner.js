phantom.injectJs("./phantomjs-joo-config.js");
joo._usageHint = "USAGE: phantomjs-joounit-runner.js  {testSuiteName:<TestSuiteName>, timeout:<Timeout>, onComplete:<OnComplete>, outputTestResult:<OutputTestResult>, ...}";
/**
 * Parse the given argument String into a config object
 * and pass it to
 * <code>net.jangaroo.joounit.runner.BrowserRunner#main</code>
 */

(function (){
  try {
    var config = joo._parseConfig(['testSuiteName']);
    joo._loadScriptWarning();
    joo._run("net.jangaroo.joounit.runner.BrowserRunner", config);
  } catch(e){
    joo._die(e);
  }
})();