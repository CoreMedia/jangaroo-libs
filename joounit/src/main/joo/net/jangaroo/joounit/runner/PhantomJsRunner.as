package net.jangaroo.joounit.runner {

import flexunit.framework.TestResult;

import flexunit.textui.XmlResultPrinter;

/**
 * TestRunner implementation for phantomjs.
 * <p>
 * The following example uses phantomjs-joo-runner.js to invoke
 * <code>PhantomJsRunner#main</code> launching
 * <code>flexunit.framework.AllFrameworkTests</code>
 * with 30 seconds timeout embedded in tests.html:
 * <code>
 *   phantomjs joo/phantomjs-joo-runner.js '{
 testSuiteName:"flexunit.framework.AllFrameworkTests",
 jooMainClass:"net.jangaroo.joounit.runner.PhantomJsRunner",
 timeout:30000,
 testsHtml:"tests.html"
 }'
 *   </code>
 * </p>
 */
public class PhantomJsRunner {

  {
    window.onerror = function(e:Object):void{
      for(var i:String in e){
        trace("e['" + i + ']='+e[i]);
      }
      error(e.toString());
    }
  }

  static const config:Object = {
    /**
     * if set, the specified html file is loaded by phantomjs to runt the tests
     */
    testsHtml: null,
    timeout: 3000,
    freq: 250,
    outputDir: '../surefire-reports',
    testSuiteName:null,
    outputFileName: null,
    phantom: null,
    fs:null
  };

  internal static function error(e:Object){
    trace("[ERROR]","phantom> ",e);
    config.phantom.exit(1);
  }

  internal static function getTestResultsFileName():String {
    return config.outputFileName ? config.outputFileName :
            config.outputDir + '/TEST-' + config.testSuiteName + '.xml';
  }

  internal static function writeResult(testResult:*): void{
    var f = config.fs.open(getTestResultsFileName(), "w");
    f.write(testResult);
    f.close();
  }

  internal static function timedOut():void {
    error(config.testSuiteName + " timed out after " + config.timeout + " ms");
  }

  public static function main(testConfig:Object):void {
    const verbose:Boolean = testConfig.verbose === "true";
    for(var key:String in testConfig){
      config[key] = testConfig[key];
      if(verbose) {
        trace("[INFO]:", "setting", key, ": ",testConfig[key]);
      }
    }
    window.setTimeout(timedOut,config.timeout);
    if(config.testsHtml){
      trace("loading tests in HTML page");
      runTestsHtml(config.testsHtml);
    } else {
      trace("executing tests without HTML page");
      RunnerUtils.load(config.testSuiteName,runTests);
    }
  }

  internal static function runTests() :void{
    var xmlWriter:XmlResultPrinter = new XmlResultPrinter();
    var testResult:TestResult = RunnerUtils.run(config.testSuiteName,
            function onComplete():void {
              trace('tests run: '+ testResult.runCount());
              trace('errors: '+ testResult.errorCount());
              trace('failures: '+ testResult.failureCount());

              writeResult(xmlWriter.getXml());

              // Return the correct exit status. '0' only if all the tests passed
              config.phantom.exit(testResult.wasSuccessful() ? 0 : 1);
            }
            , xmlWriter);
  }

  internal static function runTestsHtml(html:String) {
    const page:Object = new config.__pageConstructor();

    // Echo the output of the tests to the Standard Output
    page.onConsoleMessage = function(msg, source, linenumber) {
      trace(msg, source, linenumber);
    };

    page.open(html, function(status:String):void {
      trace("runner> status: "+status);

      if (status === "success") {
        waitForCondition(function() { // wait for this to be true
          return page.evaluate(function() {
            return typeof(window["result"]) !== "undefined";
          });
        }, function() { // once done...
          // Retrieve the result of the test suite
          var resultXml = page.evaluate(function(){
            return window["result"];
          });
          trace("result: \n"+resultXml);
          writeResult(resultXml);
          var success:Boolean = (resultXml.indexOf('errors="0" failures="0"') > 0);
          config.phantom.exit(success ? 0 : 1);
        });
      } else {
        trace("Could not load tests.html");
        config.phantom.exit(1);
      }
    });

    function waitForCondition(condition:Function,callback:Function):void{
      window.setInterval(function():void{
        if(condition()){
          callback();
        }
      },config.freq);
    }
  }
}
}