package ext {

import ext.lib.Point;

import js.Event;
import js.HTMLElement;

/**
 * Just as <b class='link'>ext.Element</b> wraps around a native DOM node, ext.EventObject 
 * wraps the browser's native event-object normalizing cross-browser differences,
 * such as which mouse button is clicked, keys pressed, mechanisms to stop
 * event-propagation along with a method to prevent default actions from taking place.
 * <p>For example:</p>
 * <pre><code>
function handleClick(e, t){ // e is not a standard event object, it is a ext.EventObject
    e.preventDefault();
    var target = e.getTarget(); // same as t (the target HTMLElement)
    ...
}
var myDiv = <b class='link' title='Ext#get'>Ext.get</b>("myDiv");  // get reference to an <b class='link'>ext.Element</b>
myDiv.on(         // 'on' is shorthand for addListener
    "click",      // perform an action on click of myDiv
    handleClick   // reference to the action handler
);  
&#47;/ other methods to do the same:
ext.EventManager.on("myDiv", 'click', handleClick);
ext.EventManager.addListener("myDiv", 'click', handleClick);
 </code></pre>
*/
public class EventObject {
/**
 * @singleton
 */
  public static var INSTANCE : EventObject;

           /** @private */
  public static native function setEvent(e : Event) : void;

        /**
         * Stop the event (preventDefault and stopPropagation)
         */
        public native function stopEvent() : void;
        /**
         * Prevents the browsers default handling of the event.
         */
        public native function preventDefault() : void;
        /**
         * Cancels bubbling of the event.
         */
        public native function stopPropagation() : void;
        /**
         * Gets the character code for the event.
         * @return 
         */
        public native function getCharCode() : Number;
        /**
         * Returns a normalized keyCode for the event.
         * @return The key code
         */
        public native function getKey() : Number;
		protected native function normalizeKey(k : Number) : Number;
        /**
         * Gets the x coordinate of the event.
         * @return 
         */
        public native function getPageX() : Number;
        /**
         * Gets the y coordinate of the event.
         * @return 
         */
        public native function getPageY() : Number;
        /**
         * Gets the page coordinates of the event.
         * @return The xy values like [x, y]
         */
        public native function getXY() : Array;
        /**
         * Gets the target for the event.
         * @param selector A simple selector to filter the target or look for an ancestor of the target
         * @param maxDepth The max depth to
                search as a number or element (defaults to 10 || document.body)
         * @param returnEl True to return a ext.Element object instead of DOM node
         * @return 
         */
        public native function getTarget(selector : String = undefined, maxDepth : * = undefined, returnEl : Boolean = undefined) : HTMLElement;
        /**
         * Gets the related target.
         * @return 
         */
        public native function getRelatedTarget() : HTMLElement;
        /**
         * Normalizes mouse wheel delta across browsers
         * @return The delta
         */
        public native function getWheelDelta() : Number;
		/**
		* Returns true if the target of this event is a child of el.  Unless the allowEl parameter is set, it will return false if if the target is el.
		* Example usage:<pre><code>
		// Handle click on any child of an element
		Ext.getBody().on('click', function(e){
			if(e.within('some-el')){
				alert('Clicked on a child of some-el!');
			}
		});
		
		// Handle click directly on an element, ignoring clicks on child nodes
		Ext.getBody().on('click', function(e,t){
			if((t.id == 'some-el') && !e.within(t, true)){
				alert('Clicked directly on some-el!');
			}
		});
		</code></pre>
		 * @param el The id, DOM element or ext.Element to check
		 * @param related true to test if the related target is within el instead of the target
		 * @param allowEl true to also check if the passed element is the target or related target
		 * @return 
		 */
		public native function within(el : *, related : Boolean = undefined, allowEl : Boolean = undefined) : Boolean;

   public static const BACKSPACE : Number = 8,
   TAB : Number = 9,
   NUM_CENTER : Number = 12,
   ENTER : Number = 13,
   RETURN : Number = 13,
   SHIFT : Number = 16,
   CTRL : Number = 17,
   ALT : Number = 18,
   PAUSE : Number = 19,
   CAPS_LOCK : Number = 20,
   ESC : Number = 27,
   SPACE : Number = 32,
   PAGE_UP : Number = 33,
   PAGE_DOWN : Number = 34,
   END : Number = 35,
   HOME : Number = 36,
   LEFT : Number = 37,
   UP : Number = 38,
   RIGHT : Number = 39,
   DOWN : Number = 40,
   PRINT_SCREEN : Number = 44,
   INSERT : Number = 45,
   DELETE : Number = 46,
   ZERO : Number = 48,
   ONE : Number = 49,
   TWO : Number = 50,
   THREE : Number = 51,
   FOUR : Number = 52,
   FIVE : Number = 53,
   SIX : Number = 54,
   SEVEN : Number = 55,
   EIGHT : Number = 56,
   NINE : Number = 57,
   A : Number = 65,
   B : Number = 66,
   C : Number = 67,
   D : Number = 68,
   E : Number = 69,
   F : Number = 70,
   G : Number = 71,
   H : Number = 72,
   I : Number = 73,
   J : Number = 74,
   K : Number = 75,
   L : Number = 76,
   M : Number = 77,
   N : Number = 78,
   O : Number = 79,
   P : Number = 80,
   Q : Number = 81,
   R : Number = 82,
   S : Number = 83,
   T : Number = 84,
   U : Number = 85,
   V : Number = 86,
   W : Number = 87,
   X : Number = 88,
   Y : Number = 89,
   Z : Number = 90,
   CONTEXT_MENU : Number = 93,
   NUM_ZERO : Number = 96,
   NUM_ONE : Number = 97,
   NUM_TWO : Number = 98,
   NUM_THREE : Number = 99,
   NUM_FOUR : Number = 100,
   NUM_FIVE : Number = 101,
   NUM_SIX : Number = 102,
   NUM_SEVEN : Number = 103,
   NUM_EIGHT : Number = 104,
   NUM_NINE : Number = 105,
   NUM_MULTIPLY : Number = 106,
   NUM_PLUS : Number = 107,
   NUM_MINUS : Number = 109,
   NUM_PERIOD : Number = 110,
   NUM_DIVISION : Number = 111,
   F1 : Number = 112,
   F2 : Number = 113,
   F3 : Number = 114,
   F4 : Number = 115,
   F5 : Number = 116,
   F6 : Number = 117,
   F7 : Number = 118,
   F8 : Number = 119,
   F9 : Number = 120,
   F10 : Number = 121,
   F11 : Number = 122,
   F12 : Number = 123;
    
  protected native function isNavKeyPress() : Boolean;

  public native function isSpecialKey() : Boolean;

  public native function getPoint() : Point;

  /**
   * Returns true if the control, meta, shift or alt key was pressed during this event.
   * @return 
   */
  public native function hasModifier() : Boolean;
}}
