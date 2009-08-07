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

   import flexunit.utils.*;

   /**
    * A <code>TestResult</code> collects the results of an executing
    * Test. It is an instance of the Collecting Parameter pattern.
    * The test framework distinguishes between <i>failures</i> and <i>errors</i>.
    * A failure is anticipated and checked for with assertions. Errors are
    * unanticipated problems.
    *
    * @see flexunit.framework.Test
    */
   public class TestResult
   {
      public var syncToFrame : Boolean = false;

      public function TestResult()
      {
         failures = Collection( new ArrayList() );
         errors = Collection( new ArrayList() );
         listeners = Collection( new ArrayList() );

         runTests = 0;
      }

   //------------------------------------------------------------------------------

      public function run( testCase : TestCase ) : void
      {
         /*if ( syncToFrame )
            FunctionCallQueue.getInstance().call( this, doRun, [ testCase ] );
         else
         */
            doRun( testCase );
      }

   //------------------------------------------------------------------------------

       //called by the AsyncTestHelper when it has either failed or received the callback
      public function continueRun( testCase : TestCase ) : void
      {
           doContinue( testCase );
      }

   //------------------------------------------------------------------------------

      private function doRun( testCase : TestCase ) : void
      {
         startTest( testCase );

         testCase.setTestResult( this );

         var protectedTestCase : Protectable = Protectable( new ProtectedStartTestCase( testCase ) );

         var startOK : Boolean = doProtected( testCase, protectedTestCase );

         if ( startOK )
         {
              doContinue( testCase );
         }
         else
         {
             endTest( testCase );             
         }
         
         testCase.assertionsMade = assertionsMade;
      }

   //------------------------------------------------------------------------------
      private function doContinue( testCase : TestCase ) : void
      {
           var protectedTestCase : Protectable = Protectable( new ProtectedMiddleTestCase ( testCase ) );
           doProtected( testCase, protectedTestCase );
           if ( testCase.hasAsync() )
           {
               testCase.startAsync();
           }
           else
           {
               doFinish( testCase );
           }
      }

   //------------------------------------------------------------------------------

      private function doFinish( testCase : TestCase ) : void
      {
         var protectedTestCase : Protectable = Protectable( new ProtectedFinishTestCase( testCase ) );

         doProtected( testCase, protectedTestCase );
         endTest( testCase );
      }

   //------------------------------------------------------------------------------

      public function addError( test : Test, error : Error ) : void
      {
         errors.addItem( new TestFailure( test, error ) );

         var iter : Iterator = listeners.iterator();
         while ( iter.hasNext() )
         {
            var listener : TestListener = TestListener( iter.next() );
            listener.addError( test, error );
         }
      }

   //------------------------------------------------------------------------------

      public function addFailure( test : Test, error : AssertionFailedError ) : void
      {
         failures.addItem( new TestFailure( test, error ) );

         var iter : Iterator = listeners.iterator();
         while ( iter.hasNext() )
         {
            var listener : TestListener = TestListener( iter.next() );
            listener.addFailure( test, error );
         }
      }

   //------------------------------------------------------------------------------

      public function errorCount() : Number
      {
         return errors.length();
      }

   //------------------------------------------------------------------------------

      public function errorsIterator() : Iterator
      {
         return errors.iterator();
      }

   //------------------------------------------------------------------------------

      public function failureCount() : Number
      {
         return failures.length();
      }

   //------------------------------------------------------------------------------

      public function failuresIterator() : Iterator
      {
         return failures.iterator();
      }

   //------------------------------------------------------------------------------

      public function shouldStop() : Boolean
      {
         return stopTests;
      }

   //------------------------------------------------------------------------------

      public function stop( stopTests : Boolean ) : void
      {
         this.stopTests = stopTests;
      }

   //------------------------------------------------------------------------------

      public function wasSuccessful() : Boolean
      {
         return failureCount() == 0 && errorCount() == 0;
      }

   //------------------------------------------------------------------------------

      public function addListener( listener : TestListener ) : void
      {
         if ( listeners.contains( listener ) == false )
            listeners.addItem( listener );
      }

   //------------------------------------------------------------------------------

      public function removeListener( listener : TestListener ) : void
      {
         if ( listeners.contains( listener ) )
            listeners.removeItem( listener );
      }

   //------------------------------------------------------------------------------

      public function runCount() : Number
      {
         return runTests;
      }

   //------------------------------------------------------------------------------

      private function doProtected( 
                  testCase : Test, 
                  protectable : Protectable ) : Boolean
      {
         var success : Boolean = false;

         try
         {
            if( protectable is ProtectedMiddleTestCase )
            {
               Assert.resetAssertionsMade();
            }
            protectable.protect();
            success = true;
         }
         catch ( error : Error )
         {
            if ( error is AssertionFailedError )
            {
               addFailure( testCase, AssertionFailedError( error ) );
            }
            else
            {
               addError( testCase, error );
            }
         }
         
         if ( protectable is ProtectedMiddleTestCase )
         {
            _localAssertionsMade = Assert.assetionsMade;            
         }
         
         return success;
      }

   //------------------------------------------------------------------------------

      public function startTest( test : Test ) : void
      {
         var count : Number = test.countTestCases();
         runTests = runTests + count;

         var iter : Iterator = listeners.iterator();
         var listener : TestListener;
         while ( iter.hasNext() )
         {
            listener = TestListener( iter.next() );
            listener.startTest( test );
         }
      }

   //------------------------------------------------------------------------------

      public function endTest( test : Test ) : void
      {
         var iter : Iterator = listeners.iterator();
         var listener : TestListener;
         while ( iter.hasNext() )
         {
            listener = TestListener( iter.next() );
            listener.endTest( test );
         }
      }

   //------------------------------------------------------------------------------
   
      public function get assertionsMade() : Number
      {
         return _localAssertionsMade;
      }
      
      private var stopTests : Boolean;
      private var failures : Collection;
      private var errors : Collection;
      private var listeners : Collection;
      private var runTests : Number;
      private var _localAssertionsMade : Number;
   }
}
