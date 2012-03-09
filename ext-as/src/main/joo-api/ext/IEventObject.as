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
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#cls-Ext.EventObject Ext JS source
 */
public interface IEventObject {

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-A Ext JS source
   */
  function get A():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-ALT Ext JS source
   */
  function get ALT():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-B Ext JS source
   */
  function get B():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-BACKSPACE Ext JS source
   */
  function get BACKSPACE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-C Ext JS source
   */
  function get C():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-CAPS_LOCK Ext JS source
   */
  function get CAPS_LOCK():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-CONTEXT_MENU Ext JS source
   */
  function get CONTEXT_MENU():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-CTRL Ext JS source
   */
  function get CTRL():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-D Ext JS source
   */
  function get D():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-DELETE Ext JS source
   */
  function get DELETE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-DOWN Ext JS source
   */
  function get DOWN():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-E Ext JS source
   */
  function get E():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-EIGHT Ext JS source
   */
  function get EIGHT():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-END Ext JS source
   */
  function get END():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-ENTER Ext JS source
   */
  function get ENTER():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-ESC Ext JS source
   */
  function get ESC():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F Ext JS source
   */
  function get F():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F1 Ext JS source
   */
  function get F1():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F10 Ext JS source
   */
  function get F10():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F11 Ext JS source
   */
  function get F11():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F12 Ext JS source
   */
  function get F12():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F2 Ext JS source
   */
  function get F2():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F3 Ext JS source
   */
  function get F3():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F4 Ext JS source
   */
  function get F4():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F5 Ext JS source
   */
  function get F5():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F6 Ext JS source
   */
  function get F6():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F7 Ext JS source
   */
  function get F7():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F8 Ext JS source
   */
  function get F8():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-F9 Ext JS source
   */
  function get F9():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-FIVE Ext JS source
   */
  function get FIVE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-FOUR Ext JS source
   */
  function get FOUR():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-G Ext JS source
   */
  function get G():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-H Ext JS source
   */
  function get H():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-HOME Ext JS source
   */
  function get HOME():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-I Ext JS source
   */
  function get I():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-INSERT Ext JS source
   */
  function get INSERT():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-J Ext JS source
   */
  function get J():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-K Ext JS source
   */
  function get K():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-L Ext JS source
   */
  function get L():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-LEFT Ext JS source
   */
  function get LEFT():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-M Ext JS source
   */
  function get M():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-N Ext JS source
   */
  function get N():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NINE Ext JS source
   */
  function get NINE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_CENTER Ext JS source
   */
  function get NUM_CENTER():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_DIVISION Ext JS source
   */
  function get NUM_DIVISION():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_EIGHT Ext JS source
   */
  function get NUM_EIGHT():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_FIVE Ext JS source
   */
  function get NUM_FIVE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_FOUR Ext JS source
   */
  function get NUM_FOUR():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_MINUS Ext JS source
   */
  function get NUM_MINUS():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_MULTIPLY Ext JS source
   */
  function get NUM_MULTIPLY():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_NINE Ext JS source
   */
  function get NUM_NINE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_ONE Ext JS source
   */
  function get NUM_ONE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_PERIOD Ext JS source
   */
  function get NUM_PERIOD():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_PLUS Ext JS source
   */
  function get NUM_PLUS():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_SEVEN Ext JS source
   */
  function get NUM_SEVEN():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_SIX Ext JS source
   */
  function get NUM_SIX():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_THREE Ext JS source
   */
  function get NUM_THREE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_TWO Ext JS source
   */
  function get NUM_TWO():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-NUM_ZERO Ext JS source
   */
  function get NUM_ZERO():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-O Ext JS source
   */
  function get O():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-ONE Ext JS source
   */
  function get ONE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-P Ext JS source
   */
  function get P():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-PAGE_DOWN Ext JS source
   */
  function get PAGE_DOWN():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-PAGE_UP Ext JS source
   */
  function get PAGE_UP():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-PAUSE Ext JS source
   */
  function get PAUSE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-PRINT_SCREEN Ext JS source
   */
  function get PRINT_SCREEN():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-Q Ext JS source
   */
  function get Q():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-R Ext JS source
   */
  function get R():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-RETURN Ext JS source
   */
  function get RETURN():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-RIGHT Ext JS source
   */
  function get RIGHT():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-S Ext JS source
   */
  function get S():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-SEVEN Ext JS source
   */
  function get SEVEN():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-SHIFT Ext JS source
   */
  function get SHIFT():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-SIX Ext JS source
   */
  function get SIX():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-SPACE Ext JS source
   */
  function get SPACE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-T Ext JS source
   */
  function get T():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-TAB Ext JS source
   */
  function get TAB():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-THREE Ext JS source
   */
  function get THREE():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-TWO Ext JS source
   */
  function get TWO():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-U Ext JS source
   */
  function get U():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-UP Ext JS source
   */
  function get UP():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-V Ext JS source
   */
  function get V():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-W Ext JS source
   */
  function get W():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-X Ext JS source
   */
  function get X():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-Y Ext JS source
   */
  function get Y():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-Z Ext JS source
   */
  function get Z():Number;

  /**
   Key constant
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#prop-Ext.EventObject-ZERO Ext JS source
   */
  function get ZERO():Number;

  /**
   True if alt key is pressed (copied from the browser event).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#prop-Ext.EventObject-altKey Ext JS source
   */
  function get altKey():Boolean;

  /**
   * @private
   */
  function set altKey(value:Boolean):void;

  /**
   The wrapped browser event.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#prop-Ext.EventObject-browserEvent Ext JS source
   */
  function get browserEvent():Event;

  /**
   * @private
   */
  function set browserEvent(value:Event):void;

  /**
   True if ctrl (meta) key is pressed (copied from the browser event ctrlKey and metaKey, since mac metaKey behaves like ctrlKey).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#prop-Ext.EventObject-ctrlKey Ext JS source
   */
  function get ctrlKey():Boolean;

  /**
   * @private
   */
  function set ctrlKey(value:Boolean):void;

  /**
   True if shift key is pressed (copied from the browser event).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#prop-Ext.EventObject-shiftKey Ext JS source
   */
  function get shiftKey():Boolean;

  /**
   * @private
   */
  function set shiftKey(value:Boolean):void;

  /**
   The event type (copied from the browser event).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#prop-Ext.EventObject-type Ext JS source
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
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-getCharCode Ext JS source
   */
  function getCharCode():Number;

  /**
   * Returns a normalized keyCode for the event.
   *
   * @return The key code
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-getKey Ext JS source
   */
  function getKey():Number;

  /**
   * Gets the x coordinate of the event.
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-getPageX Ext JS source
   */
  function getPageX():Number;

  /**
   * Gets the y coordinate of the event.
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-getPageY Ext JS source
   */
  function getPageY():Number;

  /**
   * Gets the related target.
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-getRelatedTarget Ext JS source
   */
  function getRelatedTarget():HTMLElement;

  /**
   * Gets the target for the event.
   *
   * @param selector A simple selector to filter the target or look for an ancestor of the target
   * @param maxDepth The max depth to search as a number or element (defaults to 10 || document.body)
   * @param returnEl True to return a Ext.Element object instead of DOM node
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-getTarget Ext JS source
   */
  function getTarget(selector:String = null, maxDepth:* = null, returnEl:Boolean = false):HTMLElement;

  /**
   * Normalizes mouse wheel delta across browsers
   *
   * @return The delta
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-getWheelDelta Ext JS source
   */
  function getWheelDelta():Number;

  /**
   * Gets the page coordinates of the event.
   *
   * @return The xy values like [x, y]
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-getXY Ext JS source
   */
  function getXY():Array;

  /**
   * Returns true if the control, meta, shift or alt key was pressed during this event.
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#method-Ext.EventObject-hasModifier Ext JS source
   */
  function hasModifier():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager-more.html#method-Ext.EventObject-isNavKeyPress Ext JS source
   */
  function isNavKeyPress():void;

  /**
   * Prevents the browsers default handling of the event.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-preventDefault Ext JS source
   */
  function preventDefault():void;

  /**
   * Stop the event (preventDefault and stopPropagation)
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-stopEvent Ext JS source
   */
  function stopEvent():void;

  /**
   * Cancels bubbling of the event.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-stopPropagation Ext JS source
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
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventObject-within Ext JS source
   */
  function within(el:*, related:Boolean = false, allowEl:Boolean = false):Boolean;

}
}
    