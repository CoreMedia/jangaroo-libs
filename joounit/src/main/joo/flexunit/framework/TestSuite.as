/*
   Copyright (c) 2008. Adobe Systems Incorporated.
   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:

     * Redistributions of source code must retain the above copyright notice,
       this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above copyright notice,
       this list of conditions and the following disclaimer in the documentation
       and/or other materials provided with the distribution.
     * Neither the name of Adobe Systems Incorporated nor the names of its
       contributors may be used to endorse or promote products derived from this
       software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
   ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
   POSSIBILITY OF SUCH DAMAGE.
*/

package flexunit.framework
{
   
   import flash.utils.*;
   import flash.utils.describeType;
   
   import flexunit.utils.*;
   
   /**
    * A <code>TestSuite</code> is a collection of tests.
    * @description
    * It runs a collection of test cases. Here is an example:
    * import samples.test.com.iterationtwo.*;
    * import flexunit.framework.*;
    * import flexunit.extensions.*;
    *
    * <code>
    * import samples.test.com.iterationtwo.*;
    * import flexunit.framework.*;
    * import flexunit.extensions.*;
    *
    * class samples.test.com.iterationtwo.AllTests
    * {
    *    public static function suite() : Test
    *    {
    *       var testSuite : TestSuite = new TestSuite();
    *
    *       testSuite.addTest( new TestSuite( TestMoney ) );
    *       testSuite.addTest( new TestSuite( TestMoneyWithSetUpTearDown ) );
    *       testSuite.addTest( TestSuiteWithSetUpTearDown.suite() );
    *
    *       return testSuite;
    *    }
    * }
    * </code>
    * A <code>TestRunner</code> can be used to run the tests in a <code>TestSuite</code><br><br>
    * The <code>TestSetup</code>class lets you add <code>setUp()</code> and <code>tearDown()</code>
    * methods to initialize and clean-up your test suites, as shown in this example:
    * <code>
    * import samples.test.com.iterationtwo.*;
    * import flexunit.framework.*;
    * import flexunit.extensions.*;
    *
    * class samples.test.com.iterationtwo.TestSuiteWithSetUpTearDown
    * {
    *    public static function suite() : Test
    *    {
    *       var testSuite : TestSuite = new TestSuite();
    *
    *       testSuite.addTest( new TestSuite( TestMoneyWithFailingTests ) );
    *
    *       var testSetUp = new TestSetup( testSuite );
    *
    *       testSetUp.setUp = setUp
    *       testSetUp.tearDown = tearDown;
    *
    *       return testSetUp;
    *    }
    *
    *    public static function setUp()
    *    {
    *    }
    *
    *    public static function tearDown()
    *    {
    *    }
    * }
    * </code>
    * You can create your own classes that extend <code>TestSetup</code> so that you can reuse common
    * test suite <code>setUp()</code> and <code>tearDown()</code> functionality across
    * test suites.
    *
    * @see flexunit.framework.Test
    * @see flexunit.flexui.TestRunner
    * @see flexunit.extensions.TestSetup
    */
   public class TestSuite implements Test
   {

      /**
       * The TestSuite constructor, provided with the test to be run.
       * @param param The test class to be run. Can be a <code>TestCase</code>, another <code>TestSuite</code>
       * or any class that implements the <code>Test</code> interface.
       */
       public function TestSuite( param : Object = null )
       {
           super();
           testArrayList = Collection( new ArrayList());

           if( param == null )
               return;

           if (param is Class)
           {
              var c : Class = Class(param);
              var newClass : Test = new c();
              addTestMethods( c, newClass );

              if ( testArrayList.length() == 0 )
              {
                  var warningTestCase : WarningTestCase = new WarningTestCase( "No tests found in " + newClass.className );
                  addTestToList( warningTestCase );
              }
           }
           else if (param is Test)
           {
               addTestToList(Test(param));
           }
           else
           {
               throw new Error("Can't handle constructor arg");
           }
       }

   //------------------------------------------------------------------------------
       public function toString() : String
       {
           return "TestSuite";
       }

   //------------------------------------------------------------------------------

   /**
    * Runs the test, populating <code>result</code> with the test results.
    * @param result The <code>TestResult</code> instance to be populated with the test results.
    */
       public function runWithResult( result : TestResult ) : void
       {
           runIter = testArrayList.iterator();
           listener = new TestSuiteTestListener(this, result);
           runNext(result);
       }

       public function runNext( result : TestResult) : void
       {
           if ( runIter.hasNext() )
           {
               if ( result.shouldStop() )
               {
                   listener.pop();
                   return;
               }
               //note that the TestSuiteListener will make sure that runNext is called only occasionally so that
               //recursion doesn't spiral out of control
               var test : Test = Test( runIter.next() );
               runTest( test, result );
           }
           else
           {
               listener.pop();
           }
       }

   //------------------------------------------------------------------------------

       private function runTest( test : Test, result : TestResult ) : void
       {
           test.runWithResult( result );
       }

   //------------------------------------------------------------------------------

   /**
    * Adds a test to this test suite.
    * @param test The <code>Test</code> instance to be added.
    */
       public function addTest( test : Test ) : void
       {
           if (!( test is Test ))
               addTest( Test( new WarningTestCase( "Object instance passed to addTest does not implement Test interface" )));
           else
               addTestToList( test );
       }

   //------------------------------------------------------------------------------

   /**
    * Wraps a test inside a <code>TestSuite</code> and adds it to this test suite.
    * @param testClass The <code>Class</code> that extends TestCase which will be added as a test suite.
    */
       public function addTestSuite( testClass : Class ) : void
       {
          //addClassTestsToList( testClass );
           addTestToList( new TestSuite( testClass ));
       }

   //------------------------------------------------------------------------------

       private function addTestMethods( theClass : Class, newClass : Test ) : void
       {
           var methodNames : Array = newClass.getTestMethodNames();
           for ( var i : uint=0; i<methodNames.length; i++ )
           {
               var method : String = String( methodNames[i] );
               addTestMethod( theClass, method );
           }
       }

   //------------------------------------------------------------------------------

       private function addTestMethod( theClass : Class, methodName : String ) : void
       {
           addTestToList( createTestInstance( theClass, methodName ));
       }

   //------------------------------------------------------------------------------

       private function createTestInstance( theClass : Class, methodName : String ) : Test
       {
          var test : Test = new theClass();
          if( test is TestCase ) TestCase(test).methodName = methodName;

           return test;
       }

   //------------------------------------------------------------------------------

   /**
    * Returns the names of the test methods for this test.
    * @return  Array of method names for this test
   */
       public function getTestMethodNames() : Array
       {
           return(null);
       }

   //------------------------------------------------------------------------------

   /**
    * Returns all the tests in this test suite as an <code>Array</code>
    * @return An <code>Array</code> containing the tests in this test suite.
    */
       public function getTests() : Array
       {
           return testArrayList.toArray();
       }

   //------------------------------------------------------------------------------

   /**
    * Iterates all tests in this suite to calculate the total number of tests in this suite.
    * @return A Number containing the count of all tests in this suite.
    */
       public function countTestCases() : Number
       {
           var count : Number = 0;

           var iter : Iterator = testArrayList.iterator();
           while ( iter.hasNext() )
           {
               var test : Test = Test( iter.next() );
               count = count + test.countTestCases();
           }

           return count;
       }
         
   //------------------------------------------------------------------------------

   /**
    * The number of tests added to this suite.
    * @return A Number containing the number of tests added to this suite.
    */
       public function testCount() : Number
       {
           return testArrayList.length();
       }

   //------------------------------------------------------------------------------

   /**
    * Returns the fully qualified class name.
    * @return The fully qualified class name.
    */
       public function get className() : String
       {
           return getQualifiedClassName(this).replace(/::/, ".");
       }


   //------------------------------------------------------------------------------

       private function addTestToList( test : Test ) : void
       {
           testArrayList.addItem( test );
       }

   //------------------------------------------------------------------------------

       public var testArrayList : Collection;
       public var name : String;
       private var runIter : Iterator;
       private var listener : TestSuiteTestListener;

   }
}
