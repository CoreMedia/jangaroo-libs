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
   import mx.utils.ObjectUtil;
   import mx.utils.StringUtil;
   
   /**
    * Base class containing static assert methods.
    */
   public class Assert
   {
      protected static var _assertionsMade : Number = 0;
      private static var _maxAssertionsMade : Number = 0;
      private static var _totalAssertionsMade : Number = 0;

      public static function resetAssertionsMade() : void
      {
         if ( _assertionsMade > _maxAssertionsMade )
         {
            _maxAssertionsMade = _assertionsMade;
         } 
         _assertionsMade = 0;
      }
      
      public static function oneAssertionHasBeenMade() : void
      {
         _assertionsMade++;
         _totalAssertionsMade++;
      }

      public static function resetEveryAsserionsFields() : void
      {
         _assertionsMade = 0;
         _maxAssertionsMade = 0;
         _totalAssertionsMade = 0;   
      }
            
      public static function get maxAssertionsMade() : Number
      {
         return _maxAssertionsMade;
      }
      
      public static function get assetionsMade() : Number
      {
         return _assertionsMade;
      }
      
      public static function get totalAssertionsMade() : Number
      {
         return _totalAssertionsMade;
      }
      
      public function Assert()
      {
      }

   //---------------------------------------------------------------------------


      /**
       * Asserts that 2 values are equal.
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", expected, actual ]
       *
       */
      public static function assertEquals( ... rest ) : void
      {
         if ( rest.length == 3 )
         {
            failNotEquals( rest[ 0 ], rest[ 1 ], rest[ 2 ] );
         }
         else
         {
            failNotEquals( "", rest[ 0 ], rest[ 1 ] );
         }
      }
      
   //---------------------------------------------------------------------------


      /**
       * Asserts that 2 objects are equal.
       * This method will recursively compare properties on the nested objects.
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", expected, actual ]
       *
       */
      public static function assertObjectEquals( ... rest ) : void 
      { 
         if ( rest.length == 3 )
         {
            failObjectEquals( rest[ 0 ], rest[ 1 ], rest[ 2 ] );
         }
         else
         {
            failObjectEquals( "", rest[ 0 ], rest[ 1 ] );
         }
      } 


   //---------------------------------------------------------------------------

      /**
       * Asserts that a string matches a regexp.
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", regexp, stringToTest ]
       *
       */
      public static function assertMatch( ... rest ) : void
      {
         if ( rest.length == 3 )
         {
            failNoMatch( rest[ 0 ], rest[ 1 ], rest[ 2 ] );
         }
         else
         {
            failNoMatch( "", rest[ 0 ], rest[ 1 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Asserts that a string doesn't match a regexp.
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", regexp, stringToTest ]
       *
       */
      public static function assertNoMatch( ... rest ) : void
      {
         if ( rest.length == 3 )
         {
            failMatch( rest[ 0 ], rest[ 1 ], rest[ 2 ] );
         }
         else
         {
            failMatch( "", rest[ 0 ], rest[ 1 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Asserts that the first string is contained in the second one
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", shortString, longString ]
       *
       */
      public static function assertContained( ... rest ) : void
      {
         if ( rest.length == 3 )
         {
            failNotContained( rest[ 0 ], rest[ 1 ], rest[ 2 ] );
         }
         else
         {
            failNotContained( "", rest[ 0 ], rest[ 1 ] );
         }
     }

   //---------------------------------------------------------------------------

      /**
       * Asserts that the first string is not contained in the second one
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", shortString, longString ]
       *
       */
      public static function assertNotContained( ... rest ) : void
      {         
         if ( rest.length == 3 )
         {
            failContained( rest[ 0 ], rest[ 1 ], rest[ 2 ] );
         }
         else
         {
            failContained( "", rest[ 0 ], rest[ 1 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Asserts that two objects are strickly identical
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", expectedObject, actualObject ]
       *
       */
      public static function assertStrictlyEquals( ... rest ) : void
      {
         if ( rest.length == 3 )
         {
            failNotStrictlyEquals( rest[ 0 ], rest[ 1 ], rest[ 2 ] );
         }
         else
         {
            failNotStrictlyEquals( "", rest[ 0 ], rest[ 1 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Asserts that a condition is true
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", condition ]
       *
       */
      public static function assertTrue( ... rest ) : void
      {
         if ( rest.length == 2 )
         {
            failNotTrue( rest[ 0 ], rest[ 1 ] );
         }
         else
         {
            failNotTrue( "", rest[ 0 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Asserts that a condition is false
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", condition ]
       *
       */
      public static function assertFalse( ... rest ) : void
      {
         if ( rest.length == 2 )
         {
            failTrue( rest[ 0 ], rest[ 1 ] );
         }
         else
         {
            failTrue( "", rest[ 0 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Asserts that an object is null
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", objectToTest ]
       *
       */
      public static function assertNull( ... rest ) : void
      {
         if ( rest.length == 2 )
         {
            failNotNull( rest[ 0 ], rest[ 1 ] );
         }
         else
         {
            failNotNull( "", rest[ 0 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Asserts that an object is not null
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", objectToTest ]
       *
       */
      public static function assertNotNull( ... rest ) : void
      {
         if ( rest.length == 2 )
         {
            failNull( rest[ 0 ], rest[ 1 ] );
         }
         else
         {
            failNull( "", rest[ 0 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Asserts that an object is undefined
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", objectToTest ]
       *
       */
      public static function assertUndefined( ... rest ) : void
      {
         if ( rest.length == 2 )
         {
            failNotUndefined( rest[ 0 ], rest[ 1 ] );
         }
         else
         {
            failNotUndefined( "", rest[ 0 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Asserts that an object is not undefined
       * The first argument can be the message when the assertion fails
       *
       * @param rest [ message = "", objectToTest ]
       *
       */
      public static function assertNotUndefined( ... rest ) : void
      {
         if ( rest.length == 2 )
         {
            failUndefined( rest[ 0 ], rest[ 1 ] );
         }
         else
         {
            failUndefined( "", rest[ 0 ] );
         }
      }

   //---------------------------------------------------------------------------

      /**
       * Fails with the given message
       *
       * @param failMessage
       */
      public static function fail( failMessage : String = "" ) : void
      {
         throw new AssertionFailedError( failMessage );
      }

   //---------------------------------------------------------------------------

      private static function failNotEquals(
                 message : String,
                 expected : Object,
                 actual : Object ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( expected != actual )
         {
            if ( expected is Number && 
                 actual is Number && 
                 isNaN( Number( expected ) ) && 
                 isNaN( Number( actual ) ) )
            {
               return;
            }
            failWithUserMessage(
                message, StringUtil.substitute( 
                           AssertStringFormats.EXPECTED_BUT_WAS, 
                           expected, actual ) );
         }
      }
      
      private static function failObjectEquals(
                 message : String,
                 expected : Object,
                 actual : Object ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( ObjectUtil.compare( expected, actual ) != 0 ) 
         { 
            failWithUserMessage(
                message, AssertStringFormats.ACTUAL_OBJECT_DIFFERS );
         } 
      }

      private static function failNoMatch(
               message : String,
               regexp : RegExp,
               string : String ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( ! regexp.test( string ) )
         {
           failWithUserMessage(
                  message, StringUtil.substitute( 
                              AssertStringFormats.NO_MATCH,
                              string, regexp.toString() ) );
         }
      }

      private static function failMatch(
               message : String,
               regexp : RegExp,
               string : String ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( regexp.test( string ) )
         {
           failWithUserMessage(
                  message, StringUtil.substitute( 
                              AssertStringFormats.MATCH,
                              string, regexp.toString() ) );
         }
      }

      private static function failNotContained(
               message : String,
               shortString : String,
               longString : String ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( longString.indexOf( shortString ) < 0 )
         {
           failWithUserMessage(
                  message, StringUtil.substitute( 
                              AssertStringFormats.NOT_CONTAINED,
                              shortString, longString ) );
         }
      }

      private static function failContained(
               message : String,
               shortString : String,
               longString : String ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( longString.indexOf( shortString ) >= 0 )
         {
           failWithUserMessage(
                  message, StringUtil.substitute( 
                              AssertStringFormats.CONTAINED,
                              shortString, longString ) );
         }
      }

      private static function failNotStrictlyEquals(
                 message : String,
                 expected : Object,
                 actual : Object ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( expected !== actual )
         {
            failWithUserMessage(
                   message, StringUtil.substitute( 
                              AssertStringFormats.EXPECTED_BUT_WAS,
                              expected, actual ) );
         }
      }

      private static function failNotTrue(
                 message : String,
                 condition : Boolean ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( ! condition )
         {
            failWithUserMessage(
                   message, StringUtil.substitute( 
                              AssertStringFormats.EXPECTED_BUT_WAS,
                              true, false ) );
         }
      }

      private static function failTrue(
                 message : String,
                 condition : Boolean ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( condition )
         {
            failWithUserMessage(
                   message, StringUtil.substitute( 
                              AssertStringFormats.EXPECTED_BUT_WAS,
                              false, true ) );
         }
      }

      private static function failNull(
                 message : String,
                 object : Object ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( object == null )
         {
            failWithUserMessage(
                   message, StringUtil.substitute( 
                              AssertStringFormats.NULL,
                              object ) );
         }
      }

      private static function failNotNull(
                 message : String,
                 object : Object ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( object != null )
         {
            failWithUserMessage(
                   message, StringUtil.substitute( 
                              AssertStringFormats.NOT_NULL,
                              object ) );
         }
      }

      private static function failUndefined(
                 message : String,
                 object : Object ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( object == null )
         {
            failWithUserMessage(
                   message, StringUtil.substitute( 
                              AssertStringFormats.UNDEFINED,
                              object ) );
         }
      }

      private static function failNotUndefined(
                 message : String,
                 object : Object ) : void
      {
         oneAssertionHasBeenMade();
         
         if ( object != null )
         {
            failWithUserMessage(
                   message, StringUtil.substitute( 
                              AssertStringFormats.NOT_UNDEFINED,
                              object ) );
         }
      }

      private static function failWithUserMessage(
                 userMessage : String,
                 failMessage : String ) : void
      {
         if ( userMessage.length > 0 )
         {
            userMessage = userMessage + " - ";
         }

         throw new AssertionFailedError( userMessage + failMessage );
      }
   }
}
