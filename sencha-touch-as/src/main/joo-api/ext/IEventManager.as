package ext {

import ext.form.Number;

import js.HTMLElement;

/**
 * Registers event handlers that want to receive a normalized EventObject instead of the standard browser event and provides several useful events directly. See <a href="Ext.EventObject.html">Ext.EventObject</a> for more details on normalized event objects.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton EventManager.</p>
 * @see ext.#EventManager ext.EventManager
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#cls-Ext.EventManager Ext JS source
 */
public interface IEventManager {

  /**
   * Appends an event handler to an element. The shorthand version <a href="output/Ext.EventManager.html#Ext.EventManager-on">on</a> is equivalent. Typically you will use <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a> directly on an Element in favor of calling this version.
   *
   * @param el The html element or id to assign the event handler to.
   * @param eventName The name of the event to listen for.
   * @param handler The handler function the event invokes. This function is passed the following parameters:<ul><li>evt : EventObject<div class="sub-desc">The <a href="Ext.EventObject.html">EventObject</a> describing the event.</div></li><li>t : Element<div class="sub-desc">The <a href="Ext.Element.html">Element</a> which was the target of the event. Note that this may be filtered by using the <tt>delegate</tt> option.</div></li><li>o : Object<div class="sub-desc">The options object from the addListener call.</div></li></ul>
   * @param scope The scope (<b><code>this</code></b> reference) in which the handler function is executed. <b>Defaults to the Element</b>.
   * @param options An object containing handler configuration properties. This may contain any of the following properties:<ul><li>scope : Object<div class="sub-desc">The scope (<b><code>this</code></b> reference) in which the handler function is executed. <b>Defaults to the Element</b>.</div></li><li>delegate : String<div class="sub-desc">A simple selector to filter the target or look for a descendant of the target</div></li><li>stopEvent : Boolean<div class="sub-desc">True to stop the event. That is stop propagation, and prevent the default action.</div></li><li>preventDefault : Boolean<div class="sub-desc">True to prevent the default action</div></li><li>stopPropagation : Boolean<div class="sub-desc">True to prevent event propagation</div></li><li>normalized : Boolean<div class="sub-desc">False to pass a browser event to the handler function instead of an Ext.EventObject</div></li><li>delay : Number<div class="sub-desc">The number of milliseconds to delay the invocation of the handler after te event fires.</div></li><li>single : Boolean<div class="sub-desc">True to add a handler to handle just the next firing of the event, and then remove itself.</div></li><li>buffer : Number<div class="sub-desc">Causes the handler to be scheduled to run in an <a href="Ext.util.DelayedTask.html">Ext.util.DelayedTask</a> delayed by the specified number of milliseconds. If the event fires again within that time, the original handler is <em>not</em> invoked, but the new handler is scheduled in its place.</div></li><li>target : Element<div class="sub-desc">Only call the handler if the event was fired on the target Element, <i>not</i> if the event was bubbled up from a child node.</div></li></ul><br/><p>See <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a> for examples of how to use these options.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-addListener Ext JS source
   */
  function addListener(el:*, eventName:String, handler:Function, scope:Object = null, options:Object = null):void;

  /**
   * Gets the x coordinate of the event.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-getPageX Ext JS source
   */
  function getPageX():ext.form.Number;

  /**
   * Gets the y coordinate of the event.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-getPageY Ext JS source
   */
  function getPageY():ext.form.Number;

  /**
   * Gets the target for the event.
   *
   * @param selector A simple selector to filter the target or look for an ancestor of the target
   * @param maxDepth The max depth to search as a number or element (defaults to 10 || document.body)
   * @param returnEl True to return a Ext.Element object instead of DOM node
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-getTarget Ext JS source
   */
  function getTarget(selector:String = null, maxDepth:* = null, returnEl:Boolean = false):HTMLElement;

  /**
   * Gets the page coordinates of the event.
   *
   * @return The xy values like [x, y]
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-getXY Ext JS source
   */
  function getXY():Array;

  /**
   * Appends an event handler to an element. Shorthand for <a href="output/Ext.EventManager.html#Ext.EventManager-addListener">addListener</a>.
   *
   * @param el The html element or id to assign the event handler to
   * @param eventName The name of the event to listen for.
   * @param handler The handler function the event invokes.
   * @param scope (<code>this</code> reference) in which the handler function executes. <b>Defaults to the Element</b>.
   * @param options An object containing standard <a href="output/Ext.EventManager.html#Ext.EventManager-addListener">addListener</a> options
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-on Ext JS source
   */
  function on(el:*, eventName:String, handler:Function, scope:Object = null, options:Object = null):void;

  /**
   * Adds a listener to be notified when the document is ready (before onload and before images are loaded). Can be accessed shorthanded as Ext.onReady().
   *
   * @param fn The method the event invokes.
   * @param scope The scope (<code>this</code> reference) in which the handler function executes. Defaults to the browser window.
   * @param options Options object as passed to <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a>. It is recommended that the options <code>{single: true}</code> be used so that the handler is removed on first invocation.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-onDocumentReady Ext JS source
   */
  function onDocumentReady(fn:Function, scope:Object = null, options:Boolean = false):void;

  /**
   * Adds a listener to be notified when the browser window is resized and provides resize event buffering (50 milliseconds), passes new viewport width and height to handlers.
   *
   * @param fn The handler function the window resize event invokes.
   * @param scope The scope (<code>this</code> reference) in which the handler function executes. Defaults to the browser window.
   * @param options Options object as passed to <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-onWindowResize Ext JS source
   */
  function onWindowResize(fn:Function, scope:Object, options:Boolean):void;

  /**
   * Prevents the browsers default handling of the event.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-preventDefault Ext JS source
   */
  function preventDefault():void;

  /**
   * Removes all event handers from an element. Typically you will use <a href="output/Ext.Element.html#Ext.Element-removeAllListeners">Ext.Element.removeAllListeners</a> directly on an Element in favor of calling this version.
   *
   * @param el The id or html element from which to remove all event handlers.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-removeAll Ext JS source
   */
  function removeAll(el:*):void;

  /**
   * Removes an event handler from an element. The shorthand version <a href="output/Ext.EventManager.html#Ext.EventManager-un">un</a> is equivalent. Typically you will use <a href="output/Ext.Element.html#Ext.Element-removeListener">Ext.Element.removeListener</a> directly on an Element in favor of calling this version.
   *
   * @param el The id or html element from which to remove the listener.
   * @param eventName The name of the event.
   * @param fn The handler function to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.EventManager.html#Ext.EventManager-addListener">addListener</a> call.</b>
   * @param scope If a scope (<b><code>this</code></b> reference) was specified when the listener was added, then this must refer to the same object.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-removeListener Ext JS source
   */
  function removeListener(el:*, eventName:String, fn:Function, scope:Object):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-setEvent Ext JS source
   */
  function setEvent():void;

  /**
   * Stop the event (preventDefault and stopPropagation)
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-stopEvent Ext JS source
   */
  function stopEvent():void;

  /**
   * Cancels bubbling of the event.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-stopPropagation Ext JS source
   */
  function stopPropagation():void;

  /**
   * Removes an event handler from an element. Shorthand for <a href="output/Ext.EventManager.html#Ext.EventManager-removeListener">removeListener</a>.
   *
   * @param el The id or html element from which to remove the listener.
   * @param eventName The name of the event.
   * @param fn The handler function to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.EventManager.html#Ext.EventManager-on">on</a> call.</b>
   * @param scope If a scope (<b><code>this</code></b> reference) was specified when the listener was added, then this must refer to the same object.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext.EventManager-un Ext JS source
   */
  function un(el:*, eventName:String, fn:Function, scope:Object):void;

}
}
    