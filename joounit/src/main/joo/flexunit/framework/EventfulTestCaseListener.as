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

@ignore
*/

package flexunit.framework
{
   import flash.events.Event;
   
//   import mx.collections.ArrayCollection;
//   import mx.collections.ListCollectionView;

   /**
    * Listens for expected events, keeping track of the expected events that
    * actually occur. A helper class designed specifically for the
    * <code>EventfulTestCase</code>.
    */
   internal class EventfulTestCaseListener
   {
      //-------------------------------
      //
      // properties
      //
      //-------------------------------

      private var _expectedEventTypes : Array
               = new Array();
      private var _unexpectedEventTypes : Array
               = new Array();

      private var _dispatchedExpectedEvents : Array
               = new Array();

      /**
       * Gets a comma-separated string listing the types of events that were
       * expected.
       */
      public function get expectedEventTypes() : String
      {
         var eventTypes : String = "";

         for ( var i: uint; i < _expectedEventTypes.length; i++ )
         {
            eventTypes += _expectedEventTypes[ i ] as String;

            if ( i < _expectedEventTypes.length - 1 )
            {
               eventTypes += ',';
            }
         }

         return eventTypes;
      }

      /**
       * Gets a comma-separated string listing the types of events that were not
       * expected.
       */
      public function get unexpectedEventTypes() : String
      {
         var eventTypes : String = "";

         for ( var i: uint; i < _unexpectedEventTypes.length; i++ )
         {
            eventTypes += _unexpectedEventTypes[ i ] as String;

            if ( i < _unexpectedEventTypes.length - 1 )
            {
               eventTypes += ',';
            }
         }

         return eventTypes;
      }

      /**
       * Gets a comma-separated string listing the types of events that have
       * been heard.
       */
      public function get dispatchedExpectedEventTypes() : String
      {
         var eventTypes : String = "";

         for ( var i: uint; i < _dispatchedExpectedEvents.length; i++ )
         {
            var event : Event = _dispatchedExpectedEvents[ i ] as Event;

            eventTypes += event.type;

            if ( i < _dispatchedExpectedEvents.length - 1 )
            {
               eventTypes += ',';
            }
         }

         return eventTypes;
      }

      /**
       * Gets an array of all the events that have been heard.
       */
      public function get dispatchedExpectedEvents() : Array
      {
         return _dispatchedExpectedEvents;
      }

      /**
       * Gets the last event to have been heard.
       */
      public function get lastDispatchedExpectedEvent() : Event
      {
         if ( _dispatchedExpectedEvents.length == 0 )
         {
            return null;
         }

         return Event( _dispatchedExpectedEvents[ _dispatchedExpectedEvents.length - 1 ] );
      }

      //-------------------------------
      //
      // constructor
      //
      //-------------------------------

      public function EventfulTestCaseListener()
      {
         _dispatchedExpectedEvents = new Array();
         _expectedEventTypes = new Array();
        this.handleEvent = this.handleEvent.bind(this);
      }

      //-------------------------------
      //
      // functions
      //
      //-------------------------------

      /**
       * Records an event being listened for.
       *
       * @param type
       *    the type of event 
       * @param expected
       *    whether the event is expected to be dispatched or not
       */
      public function listenForEvent( type : String, expected : Boolean ) : void
      {
      	if ( expected )
	         _expectedEventTypes.push( type );
	      else
         	_unexpectedEventTypes.push( type );
      }

      /**
       * Verifies that the expected events were heard, returning
       * <code>true</code> if so or <code>false</code> otherwise.
       */
      public function expectedEventsDispatched() : Boolean
      {
         for each ( var expectedEvent : String in _expectedEventTypes )
         {
         	if ( expectedEventDispatched( expectedEvent ) == false )
         		return false;
         }
         return true;      	
      }
      
      /** 
      *  Verifies the expected event was dispatched 
      */
      public function expectedEventDispatched( expectedEvent : String ) : Boolean
      {
      	for each ( var actualEvent : Event in _dispatchedExpectedEvents )
        	{
            if ( actualEvent.type == expectedEvent )
            {
               return true;
            }
         }      	
         return false;
      }

      /**
       * Verifies that the unexpected events were not heard, returning
       * <code>true</code> if so or <code>false</code> otherwise.
       */
      public function unexpectedEventsNotDispatched() : Boolean
      {
         for each ( var unexpectedEvent : String in _unexpectedEventTypes )
         {
         	if ( unexpectedEventNotDispatched( unexpectedEvent ) == false )
         	{
         		return false;
         	}	
         }

         return true;
      }

      /** 
      *  Verifies that the unexpected event was not dispatched 
      */
      public function unexpectedEventNotDispatched( unexpectedEvent : String ) : Boolean
      {
	      for each ( var actualEvent : Event in _dispatchedExpectedEvents )
         {
            if( actualEvent.type == unexpectedEvent )
            {
               return false;
            }
         }

         return true;
      }
      
      /**
       * Handles an event by recording that it actually occurred.
       */
      public function handleEvent( event : Event ) : void
      {
         _dispatchedExpectedEvents.push( event );
      }
   }
}