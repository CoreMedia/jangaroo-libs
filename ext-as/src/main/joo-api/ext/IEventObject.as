package ext {
import js.Event;
import js.HTMLElement;

/**
 * Just as <a href="Ext.Element.html">Ext.Element</a> wraps around a native DOM node, Ext.EventObject wraps the browser's native event-object normalizing cross-browser differences, such as which mouse button is clicked, keys pressed, mechanisms to stop event-propagation along with a method to prevent default actions from taking place. <p>For example:</p><pre><code>function handleClick(e, t){ // e is not a standard event object, it is a Ext.EventObject
 e.preventDefault();
 var target = e.getTarget(); // same as t (the target HTMLElement)
 ...
 }
 var myDiv = <a href="output/Ext.html#Ext-get">Ext.get</a>("myDiv");  // get reference to an <a href="Ext.Element.html">Ext.Element</a>
 myDiv.on(         // 'on' is shorthand for addListener
 "click",      // perform an action on click of myDiv
 handleClick   // reference to the action handler
 );
 // other methods to do the same:
 Ext.EventManager.on("myDiv", 'click', handleClick);
 Ext.EventManager.addListener("myDiv", 'click', handleClick);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton EventObject.</p>
 * @see ext.#EventObject ext.EventObject
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject Sencha Docs Ext JS 3.4
 */
public interface IEventObject {

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-A Sencha Docs Ext JS 3.4
   */
  function get A():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-ALT Sencha Docs Ext JS 3.4
   */
  function get ALT():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-B Sencha Docs Ext JS 3.4
   */
  function get B():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-BACKSPACE Sencha Docs Ext JS 3.4
   */
  function get BACKSPACE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-C Sencha Docs Ext JS 3.4
   */
  function get C():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-CAPS_LOCK Sencha Docs Ext JS 3.4
   */
  function get CAPS_LOCK():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-CONTEXT_MENU Sencha Docs Ext JS 3.4
   */
  function get CONTEXT_MENU():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-CTRL Sencha Docs Ext JS 3.4
   */
  function get CTRL():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-D Sencha Docs Ext JS 3.4
   */
  function get D():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-DELETE Sencha Docs Ext JS 3.4
   */
  function get DELETE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-DOWN Sencha Docs Ext JS 3.4
   */
  function get DOWN():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-E Sencha Docs Ext JS 3.4
   */
  function get E():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-EIGHT Sencha Docs Ext JS 3.4
   */
  function get EIGHT():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-END Sencha Docs Ext JS 3.4
   */
  function get END():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-ENTER Sencha Docs Ext JS 3.4
   */
  function get ENTER():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-ESC Sencha Docs Ext JS 3.4
   */
  function get ESC():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F Sencha Docs Ext JS 3.4
   */
  function get F():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F1 Sencha Docs Ext JS 3.4
   */
  function get F1():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F10 Sencha Docs Ext JS 3.4
   */
  function get F10():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F11 Sencha Docs Ext JS 3.4
   */
  function get F11():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F12 Sencha Docs Ext JS 3.4
   */
  function get F12():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F2 Sencha Docs Ext JS 3.4
   */
  function get F2():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F3 Sencha Docs Ext JS 3.4
   */
  function get F3():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F4 Sencha Docs Ext JS 3.4
   */
  function get F4():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F5 Sencha Docs Ext JS 3.4
   */
  function get F5():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F6 Sencha Docs Ext JS 3.4
   */
  function get F6():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F7 Sencha Docs Ext JS 3.4
   */
  function get F7():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F8 Sencha Docs Ext JS 3.4
   */
  function get F8():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-F9 Sencha Docs Ext JS 3.4
   */
  function get F9():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-FIVE Sencha Docs Ext JS 3.4
   */
  function get FIVE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-FOUR Sencha Docs Ext JS 3.4
   */
  function get FOUR():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-G Sencha Docs Ext JS 3.4
   */
  function get G():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-H Sencha Docs Ext JS 3.4
   */
  function get H():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-HOME Sencha Docs Ext JS 3.4
   */
  function get HOME():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-I Sencha Docs Ext JS 3.4
   */
  function get I():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-INSERT Sencha Docs Ext JS 3.4
   */
  function get INSERT():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-J Sencha Docs Ext JS 3.4
   */
  function get J():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-K Sencha Docs Ext JS 3.4
   */
  function get K():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-L Sencha Docs Ext JS 3.4
   */
  function get L():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-LEFT Sencha Docs Ext JS 3.4
   */
  function get LEFT():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-M Sencha Docs Ext JS 3.4
   */
  function get M():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-N Sencha Docs Ext JS 3.4
   */
  function get N():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NINE Sencha Docs Ext JS 3.4
   */
  function get NINE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_CENTER Sencha Docs Ext JS 3.4
   */
  function get NUM_CENTER():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_DIVISION Sencha Docs Ext JS 3.4
   */
  function get NUM_DIVISION():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_EIGHT Sencha Docs Ext JS 3.4
   */
  function get NUM_EIGHT():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_FIVE Sencha Docs Ext JS 3.4
   */
  function get NUM_FIVE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_FOUR Sencha Docs Ext JS 3.4
   */
  function get NUM_FOUR():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_MINUS Sencha Docs Ext JS 3.4
   */
  function get NUM_MINUS():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_MULTIPLY Sencha Docs Ext JS 3.4
   */
  function get NUM_MULTIPLY():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_NINE Sencha Docs Ext JS 3.4
   */
  function get NUM_NINE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_ONE Sencha Docs Ext JS 3.4
   */
  function get NUM_ONE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_PERIOD Sencha Docs Ext JS 3.4
   */
  function get NUM_PERIOD():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_PLUS Sencha Docs Ext JS 3.4
   */
  function get NUM_PLUS():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_SEVEN Sencha Docs Ext JS 3.4
   */
  function get NUM_SEVEN():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_SIX Sencha Docs Ext JS 3.4
   */
  function get NUM_SIX():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_THREE Sencha Docs Ext JS 3.4
   */
  function get NUM_THREE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_TWO Sencha Docs Ext JS 3.4
   */
  function get NUM_TWO():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-NUM_ZERO Sencha Docs Ext JS 3.4
   */
  function get NUM_ZERO():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-O Sencha Docs Ext JS 3.4
   */
  function get O():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-ONE Sencha Docs Ext JS 3.4
   */
  function get ONE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-P Sencha Docs Ext JS 3.4
   */
  function get P():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-PAGE_DOWN Sencha Docs Ext JS 3.4
   */
  function get PAGE_DOWN():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-PAGE_UP Sencha Docs Ext JS 3.4
   */
  function get PAGE_UP():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-PAUSE Sencha Docs Ext JS 3.4
   */
  function get PAUSE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-PRINT_SCREEN Sencha Docs Ext JS 3.4
   */
  function get PRINT_SCREEN():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-Q Sencha Docs Ext JS 3.4
   */
  function get Q():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-R Sencha Docs Ext JS 3.4
   */
  function get R():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-RETURN Sencha Docs Ext JS 3.4
   */
  function get RETURN():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-RIGHT Sencha Docs Ext JS 3.4
   */
  function get RIGHT():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-S Sencha Docs Ext JS 3.4
   */
  function get S():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-SEVEN Sencha Docs Ext JS 3.4
   */
  function get SEVEN():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-SHIFT Sencha Docs Ext JS 3.4
   */
  function get SHIFT():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-SIX Sencha Docs Ext JS 3.4
   */
  function get SIX():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-SPACE Sencha Docs Ext JS 3.4
   */
  function get SPACE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-T Sencha Docs Ext JS 3.4
   */
  function get T():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-TAB Sencha Docs Ext JS 3.4
   */
  function get TAB():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-THREE Sencha Docs Ext JS 3.4
   */
  function get THREE():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-TWO Sencha Docs Ext JS 3.4
   */
  function get TWO():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-U Sencha Docs Ext JS 3.4
   */
  function get U():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-UP Sencha Docs Ext JS 3.4
   */
  function get UP():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-V Sencha Docs Ext JS 3.4
   */
  function get V():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-W Sencha Docs Ext JS 3.4
   */
  function get W():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-X Sencha Docs Ext JS 3.4
   */
  function get X():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-Y Sencha Docs Ext JS 3.4
   */
  function get Y():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-Z Sencha Docs Ext JS 3.4
   */
  function get Z():Number;

  /**
   Key constant
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-ZERO Sencha Docs Ext JS 3.4
   */
  function get ZERO():Number;

  /**
   True if alt key is pressed (copied from the browser event).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-altKey Sencha Docs Ext JS 3.4
   */
  function get altKey():Boolean;

  /**
   * @private
   */
  function set altKey(value:Boolean):void;

  /**
   The wrapped browser event.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-browserEvent Sencha Docs Ext JS 3.4
   */
  function get browserEvent():Event;

  /**
   * @private
   */
  function set browserEvent(value:Event):void;

  /**
   True if ctrl (meta) key is pressed (copied from the browser event ctrlKey and metaKey, since mac metaKey behaves like ctrlKey).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-ctrlKey Sencha Docs Ext JS 3.4
   */
  function get ctrlKey():Boolean;

  /**
   * @private
   */
  function set ctrlKey(value:Boolean):void;

  /**
   True if shift key is pressed (copied from the browser event).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-shiftKey Sencha Docs Ext JS 3.4
   */
  function get shiftKey():Boolean;

  /**
   * @private
   */
  function set shiftKey(value:Boolean):void;

  /**
   The event type (copied from the browser event).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-property-type Sencha Docs Ext JS 3.4
   */
  function get type():String;

  /**
   * @private
   */
  function set type(value:String):void;

  /**
   * Gets the character code for the event.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-getCharCode Sencha Docs Ext JS 3.4
   */
  function getCharCode():Number;

  /**
   * Returns a normalized keyCode for the event.
   *
   * @return The key code
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-getKey Sencha Docs Ext JS 3.4
   */
  function getKey():Number;

  /**
   * Gets the x coordinate of the event.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-getPageX Sencha Docs Ext JS 3.4
   */
  function getPageX():Number;

  /**
   * Gets the y coordinate of the event.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-getPageY Sencha Docs Ext JS 3.4
   */
  function getPageY():Number;

  /**
   * Gets the related target.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-getRelatedTarget Sencha Docs Ext JS 3.4
   */
  function getRelatedTarget():HTMLElement;

  /**
   * Gets the target for the event.
   *
   * @param selector A simple selector to filter the target or look for an ancestor of the target
   * @param maxDepth The max depth to search as a number or element (defaults to 10 || document.body)
   * @param returnEl True to return a Ext.Element object instead of DOM node
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-getTarget Sencha Docs Ext JS 3.4
   */
  function getTarget(selector:String = null, maxDepth:* = null, returnEl:Boolean = false):HTMLElement;

  /**
   * Normalizes mouse wheel delta across browsers
   *
   * @return The delta
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-getWheelDelta Sencha Docs Ext JS 3.4
   */
  function getWheelDelta():Number;

  /**
   * Gets the page coordinates of the event.
   *
   * @return The xy values like [x, y]
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-getXY Sencha Docs Ext JS 3.4
   */
  function getXY():Array;

  /**
   * Returns true if the control, meta, shift or alt key was pressed during this event.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-hasModifier Sencha Docs Ext JS 3.4
   */
  function hasModifier():Boolean;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-isNavKeyPress Sencha Docs Ext JS 3.4
   */
  function isNavKeyPress():void;

  /**
   * Prevents the browsers default handling of the event.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-preventDefault Sencha Docs Ext JS 3.4
   */
  function preventDefault():void;

  /**
   * Stop the event (preventDefault and stopPropagation)
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-stopEvent Sencha Docs Ext JS 3.4
   */
  function stopEvent():void;

  /**
   * Cancels bubbling of the event.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-stopPropagation Sencha Docs Ext JS 3.4
   */
  function stopPropagation():void;

  /**
   * Returns true if the target of this event is a child of el. Unless the allowEl parameter is set, it will return false if if the target is el. Example usage:<pre><code>       // Handle click on any child of an element
   Ext.getBody().on('click', function(e){
   if(e.within('some-el')){
   alert('Clicked on a child of some-el!');
   }
   });

   // Handle click directly on an element, ignoring clicks on child nodes
   Ext.getBody().on('click', function(e,t){
   if((t.id == 'some-el') &amp;&amp; !e.within(t, true)){
   alert('Clicked directly on some-el!');
   }
   });
   </code></pre>
   *
   * @param el The id, DOM element or Ext.Element to check
   * @param related true to test if the related target is within el instead of the target
   * @param allowEl true to also check if the passed element is the target or related target
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject-method-within Sencha Docs Ext JS 3.4
   */
  function within(el:*, related:Boolean = false, allowEl:Boolean = false):Boolean;

}
}
    