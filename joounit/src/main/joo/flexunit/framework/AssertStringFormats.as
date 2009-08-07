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
   public class AssertStringFormats
   {
      public static const ASYNC_CALL_NOT_FIRED : String = "Asynchronous function did not fire after {0} ms";
      public static const CONTAINED : String = "<{0}> found in <{1}>";
      public static const EVENT_DID_NOT_OCCUR : String = "Expected events <{0}> but caught events <{1}>";
      public static const EVENT_DID_OCCUR : String = "Did not expect events <{0}> but caught events <{1}>";
      public static const EXPECTED_BUT_WAS : String = "expected:<{0}> but was:<{1}>";
      public static const MATCH : String = "<{0}> matched <{1}>";
      public static const NO_MATCH : String = "<{0}> did not match <{1}>";
      public static const NOT_CONTAINED : String = "did not find <{0}> in <{1}>";
      public static const NOT_NULL : String = "object was not null: {0}";
      public static const NOT_UNDEFINED : String = "object was not undefined: {0}";
      public static const NULL : String = "object was null: {0}";
      public static const UNDEFINED : String = "object was undefined: {0}";
      public static const ACTUAL_OBJECT_DIFFERS : String = "At least one property of the actual object differs from the expected object";
   }
}