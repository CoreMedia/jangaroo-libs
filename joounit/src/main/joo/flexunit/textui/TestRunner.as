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

package flexunit.textui
{

   import flash.utils.*;
   import flash.utils.getTimer;
   import flexunit.framework.*;
   import flexunit.runner.BaseTestRunner;

   public class TestRunner extends BaseTestRunner
   {
       public function TestRunner(onComplete:Function=null, printer:Printer=null)
       {
           if(printer == null)
            this.printer = new ResultPrinter();
           else
            this.printer = printer;
           testsComplete = onComplete;
       }



   //------------------------------------------------------------------------------

       public static function run( test:Test, onComplete:Function=null, printer:Printer=null ):TestResult
       {
           return new TestRunner(onComplete, printer).doRun( test );
       }

   //------------------------------------------------------------------------------

       internal function doRun( test:Test ):TestResult
       {
           result = new TestResult();
           result.addListener(TestListener( printer ));
           result.addListener(TestListener( this ));

           startTime = getTimer();
           totalTestCount = test.countTestCases();
           numTestsRun = 0;
           test.runWithResult( result );
           return result;
       }

   //------------------------------------------------------------------------------

       override public function testEnded( test : Test ):void
       {
           if (++numTestsRun == totalTestCount)
           {
               var endTime:Number = getTimer();

               var runTime:Number = endTime - startTime;

               printer.print( result, runTime );
               if(testsComplete != null)
               {
                   testsComplete();
               }
           }
       }

       private var printer : Printer;
       private var startTime : int;
       private var totalTestCount : int;
       private var numTestsRun : int;
       private var result:TestResult;
       private var testsComplete:Function;
   }
}
