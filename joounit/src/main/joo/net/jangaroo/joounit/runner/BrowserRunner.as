package net.jangaroo.joounit.runner {

import flash.utils.getTimer;

import flexunit.framework.AssertionFailedError;
import flexunit.framework.Test;
import flexunit.framework.TestListener;
import flexunit.framework.TestResult;
import flexunit.framework.TestSuite;
import flexunit.runner.BaseTestRunner;
import flexunit.textui.XmlResultPrinter;

import joo.getQualifiedObject;

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
  };

  private var onComplete:Function = function(testResult:TestResult, resultXml:String):void{
    insertIntoDOM(resultXml);
  };

  private var testSuiteName:String;

  /**
   * Config params are <code>testSuiteName:String</code>
   * <code>onComplete:function(TestResult,String)</code>
   * <code>outputTestResult:function(String)</code>
   * @param config
   */
  public function BrowserRunner(config:Object) {
    this.testSuiteName = config.testSuiteName;
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
    if(config is String){
      config = {testSuiteName:config};
    }
    new BrowserRunner(config).run();
  }

  public function run():void{
    printer = new XmlResultPrinter(testSuiteName);
    testResult = new TestResult();
    testResult.addListener(TestListener( printer ));
    testResult.addListener(TestListener( this ));

    RunnerUtils.load(testSuiteName,function(){
      try {
        var suite:TestSuite = RunnerUtils.getTestSuite(testSuiteName);
        if(suite){
          startTime = getTimer();
          totalTestCount = suite.countTestCases();
          numTestsRun = 0;
          suite.runWithResult( testResult );
        }
      } catch(e:Error){
        trace("[ERROR]",e);
      }
    });
  }

  override public function testError(test:Test, error:Error):void {
    trace("[ERROR]", "test in error", test, error);
  }

  override public function testFailure(test:Test, error:AssertionFailedError):void {
    trace("[ERROR]", "test failed", test, error);
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
      const exitFunc:Function = getQualifiedObject("joo._exit"); // see phantomjs-joo-config.js
      if(exitFunc){
        exitFunc(testResult.wasSuccessful());
      }
    }
  }

  public static function insertIntoDOM(resultXml:String):void {
    const pre:Element = window.document.createElement('pre');
    pre.appendChild(window.document.createTextNode(resultXml));
    window.document.body.appendChild(pre);
  }
}
}
