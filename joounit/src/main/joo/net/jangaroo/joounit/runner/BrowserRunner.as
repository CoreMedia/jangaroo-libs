package net.jangaroo.joounit.runner {

import flash.utils.getQualifiedClassName;
import flash.utils.getTimer;

import flexunit.framework.AssertionFailedError;
import flexunit.framework.Test;
import flexunit.framework.TestListener;
import flexunit.framework.TestResult;
import flexunit.framework.TestSuite;
import flexunit.runner.BaseTestRunner;
import flexunit.textui.XmlResultPrinter;

import js.Element;

/**
 * TestRunner implementation for browsers (incl. phantomjs).
 * <p>
 * The following example uses phantomjs-joo-runner.js to invoke
 * <code>main</code> launching
 * <code>flexunit.framework.AllFrameworkTests</code>
 * with 30 seconds timeout:
 * <code>
 *   phantomjs joo/phantomjs-joo-runner.js '{
 *      testSuiteName:"flexunit.framework.AllFrameworkTests",
 *      jooMainClass:"net.jangaroo.joounit.runner.BrowserRunner",
 *      timeout:30000
 *   }'
 *   </code>
 * </p>
 */
public class BrowserRunner extends BaseTestRunner {

  private var testResult:TestResult;
  private var printer:XmlResultPrinter;
  private var startTime : int;
  private var totalTestCount : int;
  private var numTestsRun : int;

  private var outputTestResult:Function = function(result:String):void {
    window["result"] = result;
    if (window["callPhantom"]) {
      window["callPhantom"](result);
    }
  };

  private var onComplete:Function = function(testResult:TestResult, resultXml:String):void{
    insertIntoDOM(resultXml);
  };

  private var testSuite:Function;

  /**
   * Config params are <code>testSuiteName:String</code>
   * <code>onComplete:function(TestResult,String)</code>
   * <code>outputTestResult:function(String)</code>
   * @param config
   */
  public function BrowserRunner(config:Object) {
    this.testSuite = config['testSuite'];
    if(config.onComplete) {
      onComplete = config.onComplete;
    }
    if(config.outputTestResult){
      outputTestResult = config.outputTestResult;
    }
  }

  /**
   * Launch the tests.
   * @param testConfig
   */
  public static function main(config:Object):void {
    if(typeof config === "function") {
      config = {testSuite: config};
    }
    new BrowserRunner(config).run();
  }
  
  internal static function suiteNotFound(msg:String) {
    window.classLoadingError = msg; // this property is read by jangaroo-maven-plugin
    trace("[ERROR]", window.classLoadingError);
    exit(false);
  }

  internal function onSuiteLoaded() : void {
    try {
      if (typeof testSuite == 'function' && typeof testSuite['suite'] == 'function') {
        trace("[INFO]","running test suite "+ getQualifiedClassName(testSuite)); 
        startTime = getTimer();
        numTestsRun = 0;
        const suite:TestSuite = testSuite['suite']();
        totalTestCount = suite.countTestCases();
        suite.runWithResult( testResult );
      } else {
        suiteNotFound(getQualifiedClassName(testSuite) + " does not have a static method 'suite'.");
      }
    } catch(e:Error){
      trace("[ERROR]",e);
      exit(false);
    }
  }

  public function run():void{
    printer = new XmlResultPrinter(getQualifiedClassName(testSuite));
    testResult = new TestResult();
    testResult.addListener(TestListener( printer ));
    testResult.addListener(TestListener( this ));
    onSuiteLoaded();
  }

  override public function testError(test:Test, error:Error):void {
    trace("[ERROR]", "test in error", test, error, error["stack"]);
  }

  override public function testFailure(test:Test, error:AssertionFailedError):void {
    trace("[ERROR]", "test failed", test, error, error["stack"]);
  }

  override public function testEnded(test:Test):void {
    if (++numTestsRun == totalTestCount)
    {
      var endTime:Number = getTimer();

      var runTime:Number = endTime - startTime;

      printer.print( testResult, runTime );
      trace('tests run: '+ testResult.runCount() + " ("+
              'errors: '+ testResult.errorCount() + ", " +
              'failures: '+ testResult.failureCount() + ")");
      trace(printer.getXml());

      const resultXml:String = printer.getXml();
      outputTestResult(resultXml);
      onComplete(testResult,resultXml);
      exit(testResult.wasSuccessful());
    }
  }
  
  internal static function exit(b:Boolean) : void {
    const exitFunc:Function = window['joo'] && window['joo']._exit; // see phantomjs-joo-config.js
    if(exitFunc){
      exitFunc(b);
    }
  }

  public static function insertIntoDOM(resultXml:String):void {
    const pre:Element = window.document.createElement('pre');
    pre.appendChild(window.document.createTextNode(resultXml));
    window.document.body.appendChild(pre);
  }
}
}
