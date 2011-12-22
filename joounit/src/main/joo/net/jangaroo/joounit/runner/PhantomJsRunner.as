package net.jangaroo.joounit.runner {

import flash.utils.getTimer;

import flexunit.framework.AssertionFailedError;
import flexunit.framework.Test;
import flexunit.framework.TestListener;
import flexunit.framework.TestResult;
import flexunit.framework.TestSuite;
import flexunit.runner.BaseTestRunner;

import flexunit.textui.XmlResultPrinter;

/**
 * TestRunner implementation for phantomjs.
 * <p>
 * The following example uses phantomjs-joo-runner.js to invoke
 * <code>PhantomJsRunner#main</code> launching
 * <code>flexunit.framework.AllFrameworkTests</code>
 * with 30 seconds timeout:
 * <code>
 *   phantomjs joo/phantomjs-joo-runner.js '{
 *      testSuiteName:"flexunit.framework.AllFrameworkTests",
 *      jooMainClass:"net.jangaroo.joounit.runner.PhantomJsRunner",
 *      timeout:30000,
 *      onTimeout:function(){console.error("tests timed out");phantom.exit(1)}
 *   }'
 *   </code>
 * </p>
 */
public class PhantomJsRunner extends BaseTestRunner {

  private var testResult:TestResult;
  private var printer:XmlResultPrinter;
  private var startTime : int;
  private var totalTestCount : int;
  private var numTestsRun : int;

  private var timeout:uint = 3000;
  private var onTimeout:Function;
  private var writeResult:Function = function(fName:String,result:Object):void{
    trace("phantomjs> got result",fName,result);
  };
  private var outputDir:String = '../surefire-reports';
  private var outputFileName:String;

  private var testSuiteName:String;

  internal function getTestResultsFileName():String {
    return outputFileName ? outputFileName :
            outputDir + '/TEST-' + testSuiteName + '.xml';
  }

  public function PhantomJsRunner(config:Object) {
    if(config.timeout){
      this.timeout = config.timeout;
    }
    if(config.onTimeout){
      this.onTimeout = config.onTimeout;
    }
    if(config.writeResult){
      this.writeResult = config.writeResult;
    }
    if(config.outputDir){
      this.outputDir = outputDir;
    }
    if(config.outputFileName){
      this.outputFileName = config.outputFileName;
    }
    this.testSuiteName = config.testSuiteName;
  }

  /**
   * Launch the tests.
   * @param testConfig
   */
  public static function main(config:Object):void {
    new PhantomJsRunner(config).run();
  }

  internal function registerTimeout():void{
    if(onTimeout){
      window.setTimeout(this.onTimeout, this.timeout);
    }
  }

  public function run():void{
    printer = new XmlResultPrinter();
    testResult = new TestResult();
    testResult.addListener(TestListener( printer ));
    testResult.addListener(TestListener( this ));

    RunnerUtils.load(testSuiteName,function(){
      try {
        var suite:TestSuite = RunnerUtils.getTestSuite(testSuiteName);
        if(suite){
          registerTimeout();
          startTime = getTimer();
          totalTestCount = suite.countTestCases();
          numTestsRun = 0;
          suite.runWithResult( testResult );
        }
      } catch(e:Error){
        writeResult(getTestResultsFileName(),e.toString());
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

      writeResult(getTestResultsFileName(), printer.getXml());
    }
  }

  public function toString():String {
    return "PhantomJsRunner{testSuiteName=" + String(testSuiteName) + ",timeout=" + String(timeout) + ",writeResult=" + String(writeResult) + ",outputDir=" + String(outputDir) + ",outputFileName=" + String(outputFileName) + "}";
  }
}
}
