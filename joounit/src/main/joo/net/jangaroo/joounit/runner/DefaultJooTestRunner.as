package net.jangaroo.joounit.runner {

import flexunit.framework.AssertionFailedError;
import flexunit.framework.Test;
import flexunit.framework.TestListener;
import flexunit.framework.TestResult;
import flexunit.framework.TestSuite;
import flexunit.runner.BaseTestRunner;
import flexunit.textui.XmlResultPrinter;

import joo.getQualifiedObject;
import joo.loadClasses;

/**
 * A test runner that can be instantiated with several test class names and that will invoke a callback
 * when finished
 */
public class DefaultJooTestRunner extends BaseTestRunner {

  private var testClassNames:Array;

  // names of the test classes the couldn't be found
  private var testClassLoadErrors:Vector.<String>;

  private var testName:String;
  private var testSuite:TestSuite;
  private var testResult:TestResult;
  private var printer:XmlResultPrinter;
  private var startTime : int;
  private var totalTestCount : int;
  private var numTestsRun : int;
  private var onComplete:Function;

  /**
   * Launch the tests.
   * @param config The test configuration like
   * <code>
   *  {
   *    "tests": ["com.mycompany.Test1", "com.mycompany.Test2"],
   *    "onComplete" : function(testSuite:TestSuite, testResult:TestResult, testResultXml:String) {...}
   *  }
   * </code>
   */
  public static function main(config:Object):void {

    var name:String = "DefaultJooTestRunner";
    var onComplete:Function;
    var testClassNames:Array = null;
    if(config is String){
      testClassNames = [config as String];
    }
    else if( config['tests'] is Array ) {
      testClassNames = config['tests'] as Array;
    }

    if( config['onComplete'] is Function ) {
      onComplete = config['onComplete'] as Function;
    }
    if( config['name'] is String ) {
      name = config['name'];
    }

    if( testClassNames == null ) {
      throw new Error("No test classes specified");
    }

    new DefaultJooTestRunner(name, testClassNames, onComplete).run();
  }



  public function DefaultJooTestRunner(name:String, testClassNames:Array, onComplete:Function = null) {
    this.testName = name;
    this.testClassNames = testClassNames;
    this.onComplete = onComplete;
  }

  public function run():void {

    trace("[INFO]", "Running tests: "+testClassNames);

    printer = new XmlResultPrinter(testName);
    testResult = new TestResult();
    testResult.addListener(TestListener( printer ));
    testResult.addListener(TestListener( this ));

    // load all test classes
    testClassLoadErrors = new Vector.<String>();
    loadClasses(testClassNames, onSuiteLoaded);
  }

  // =================


  internal function onSuiteLoaded() : void {

    // check whether a class loading problem has occurred
    if( testClassLoadErrors.length > 0 ) {
      trace("[ERROR]", "Couldn't load test classes: "+testClassLoadErrors);
      exit(false);
      return;
    }

    // build a test suite from all test classes
    testSuite = new TestSuite();
    for( var i:int = 0; i<testClassNames.length; i++ ) {

      var qualifiedTestClassName:String = testClassNames[i];
      var testClass:* = getQualifiedObject(qualifiedTestClassName);
      if( typeof testClass['suite'] == 'function') {

        // there is a static function 'suite'
        // assuming that this returns a test suite instance
        testSuite.addTest(testClass['suite']());
      }
      else if( testClass is Class ) {

        // it's a test class
        testSuite.addTestSuite(testClass);
//      var test:Test = new testClass();
//      if( !(test is Test) ) {
//        throw new Error("Class "+testClassName+" is not a test implementation");
//      }
//      testSuite.addTest(test);
      }
      else {
        throw new Error("Not a valid test class: "+qualifiedTestClassName);
      }
    }

    // run test suite
    try {

      startTime = new Date().getTime();
      numTestsRun = 0;
      totalTestCount = testSuite.countTestCases();
      trace("[INFO]","Running "+totalTestCount+" tests");
      testSuite.runWithResult( testResult );
    }
    catch(e:Error){
      trace("[ERROR]",e);
      exit(false);
    }
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
      var endTime:Number = new Date().getTime();
      var runTime:Number = endTime - startTime;

      printer.print( testResult, runTime );


      const testResultXml:String = printer.getXml();
      if( onComplete != null ) {
        onComplete(testSuite, testResult, testResultXml);
      }
      else {
        trace('Tests: '+ testResult.runCount() + " ("+
                'Errors: '+ testResult.errorCount() + ", " +
                'Failures: '+ testResult.failureCount() + ")");
        trace(printer.getXml());
      }
      exit(testResult.wasSuccessful());
    }
  }

  internal static function exit(success:Boolean):void {
    if( success ) {
      trace("[INFO]", "Finished test execution successfully");
    }
    else {
      trace("[ERROR]", "Finished test execution with error(s)");
    }
  }
}
}