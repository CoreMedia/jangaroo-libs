package flexunit.textui {
import flexunit.framework.AssertionFailedError;
import flexunit.framework.Test;
import flexunit.framework.TestCase;
import flexunit.framework.TestFailure;
import flexunit.framework.TestListener;
import flexunit.framework.TestResult;
import flexunit.framework.TestSuite;
import flexunit.textui.Printer;
import flexunit.utils.ArrayList;

public class XmlResultPrinter implements TestListener, Printer{

  private var resultXml:Array = null;
  private var mTests:Array = new Array();
  private var mCurrentTest = null;
  private var mSuite:String = null;


  private var successfullTests:Array = null;

  public function XmlResultPrinter(suitName:String = null) {
    resultXml = new Array();
    successfullTests = new Array();
    mTests = new Array();
    mSuite = suitName;
  }

  public function addError(test : Test, error : Error):void {
    if (!this.mCurrentTest.mError) {
      this.mCurrentTest.mError = error;
    }
  }

  public function addFailure(test : Test, error : AssertionFailedError):void {
    if (!this.mCurrentTest.mFailure) {
      this.mCurrentTest.mFailure = error;
    }
  }

  public function endTest(test : Test):void {
    if( this.mCurrentTest != null ) {
        var endTime = new Date();
        this.mCurrentTest.mTime = endTime - this.mCurrentTest.mTime ;
        this.mTests.push( this.mCurrentTest );
        this.mCurrentTest = null;
    }

    successfullTests.push(test);
  }

  public function startTest(test : Test):void {
    if( this.mSuite == null )
            this.mSuite = test.className;
        this.mCurrentTest = new Object();
        this.mCurrentTest.mName = test.className + " " + (test as TestCase).methodName;
        this.mCurrentTest.mTime = new Date();

  }
  public function print(result:TestResult, runTime:Number):void {
    resultXml.push( '<?xml version="1.0" encoding="ISO-8859-1" ?>\n' );
        resultXml.push( '<testsuite errors="' );
        resultXml.push( result.errorCount());
        resultXml.push( '" failures="' );
        resultXml.push( result.failureCount());
        resultXml.push( '" name="' );
        resultXml.push( this.mSuite );
        resultXml.push( '" tests="' );
        resultXml.push( result.runCount());
        resultXml.push( '" time="' );
        resultXml.push( runTime );
        resultXml.push( '">\n' );
        for( var i = 0; i < this.mTests.length; ++i )
        {
            var test = this.mTests[i];
            resultXml.push( '    <testcase name="' );
            resultXml.push( test.mName );
            resultXml.push( '" time="' );
            resultXml.push( test.mTime );
            resultXml.push( '"' );
            if( test.mError || test.mFailure )
            {
                resultXml.push( '>' );
                resultXml.push( '        <' );
                var defect;
                var tag;
                if( test.mError )
                {
                    defect = test.mError;
                    tag = "error";
                }
                else
                {
                    defect = test.mFailure;
                    tag = "failure";
                }
                resultXml.push( tag );
                resultXml.push( ' message="' );
                resultXml.push( escapeXml(defect.toString()) );
                resultXml.push( '" type=""' );

                resultXml.push( '/' );
                resultXml.push( '>\n' );
                resultXml.push( '    </testcase' );
            } else{
                resultXml.push( '/' );
            }
            resultXml.push( '>\n' );

        }
        resultXml.push( '</testsuite>' );

  }

  private function escapeXml(str:String):String {
    var escAmpRegEx = /&/g;
    var escLtRegEx = /</g;
    var escGtRegEx = />/g;
    var quotRegEx = /"/g;
    var aposRegEx = /'/g;
    var result = str.replace(escAmpRegEx, "&amp;").
        replace(escLtRegEx, "&lt;").
        replace(escGtRegEx, "&gt;").
        replace(quotRegEx, "&quot;").
        replace(aposRegEx, "&apos;");

    return result;

  }
  
  public function getXml():String {
    return resultXml.join("");
  }
}
}