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
   import flash.events.*;
   import flash.utils.*;
   
   import mx.utils.StringUtil;

   public class AsyncTestHelper
   {
       public function AsyncTestHelper( testCase : TestCase, testResult : TestResult )
       {
           this.testCase = testCase;
           this.testResult = testResult;
           timer = new Timer( 100 );
           timer.addEventListener( TimerEvent.TIMER, timerHandler );
       }

   //------------------------------------------------------------------------------

       public function startAsync() : void
       {
           loadAsync();
           if ( objToPass != null )
           {
               testResult.continueRun( testCase );
           }
           else
           {
               timer.start();
           }
       }

   //------------------------------------------------------------------------------


       public function loadAsync() : void
       {
           var async : Object = testCase.getNextAsync();

           func = async.func;

           extraData = async.extraData;

           failFunc = async.failFunc;

           //BUG 114824 WORKAROUND
           timer = new Timer( async.timeout, 1 );

           timer.addEventListener( TimerEvent.TIMER, timerHandler );
           //END WORKAROUND

           timer.delay = async.timeout;
       }

   //------------------------------------------------------------------------------

       public function runNext() : void
       {
           if ( shouldFail )
           {
               if ( failFunc != null )
               {
                   failFunc( extraData );
               }
               else
               {
                   Assert.fail( StringUtil.substitute( AssertStringFormats.ASYNC_CALL_NOT_FIRED, timer.delay ) );
               }
           }
           else
           {
               if ( extraData != null )
               {
                   func( objToPass, extraData );
               }
               else
               {
                   func( objToPass );
               }
               func = null;
               objToPass = null;
               extraData = null;
           }
       }

   //------------------------------------------------------------------------------

       public function timerHandler( event : TimerEvent ) : void
       {
           timer.stop();
           shouldFail = true;
           testResult.continueRun( testCase );
       }

   //------------------------------------------------------------------------------

       public function handleEvent( event : Object ) : void
       {
           var wasReallyAsync : Boolean = timer.running;

           timer.stop();

           if ( shouldFail )
               return;

           objToPass = event;
           if ( wasReallyAsync )
           {
               testResult.continueRun( testCase );
           }
       }

   //------------------------------------------------------------------------------

       //IResponder methods here (they'd look similar to handleEvent) ...

   //------------------------------------------------------------------------------

       private var testCase : TestCase;
       private var func : Function;
       private var extraData : Object;
       private var failFunc : Function;
       private var testResult : TestResult;

       private var shouldFail : Boolean = false;
       private var objToPass : Object;

       private var timer : Timer;

   }
}
