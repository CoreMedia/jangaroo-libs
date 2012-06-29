package ext {


/**
 * Registers event handlers that want to receive a normalized EventObject instead of the standard browser event and provides several useful events directly. See <a href="Ext.EventObject.html">Ext.EventObject</a> for more details on normalized event objects.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton EventManager.</p>
 * @see ext.#EventManager ext.EventManager
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager Sencha Docs Ext JS 3.4
 */
public interface IEventManager {

  /**
   In Webkit, there is an issue with getting the margin right property, see https://bugs.webkit.org/show_bug.cgi?id=13343
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-property-correctRightMargin Sencha Docs Ext JS 3.4
   */
  function get correctRightMargin():Object;

  /**
   * @private
   */
  function set correctRightMargin(value:Object):void;

  /**
   Webkit browsers return rgba(0, 0, 0) when a transparent color is used
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-property-correctTransparentColor Sencha Docs Ext JS 3.4
   */
  function get correctTransparentColor():Object;

  /**
   * @private
   */
  function set correctTransparentColor(value:Object):void;

  /**
   IE uses styleFloat, not cssFloat for the float property.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-property-cssFloat Sencha Docs Ext JS 3.4
   */
  function get cssFloat():Object;

  /**
   * @private
   */
  function set cssFloat(value:Object):void;

  /**
   Forces a document ready state transition for the framework. Used when Ext is loaded into a DOM structure AFTER initial page load (Google API or other dynamic load scenario. Any pending 'onDocumentReady' handlers will be fired (if not already handled).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-property-fireDocReady Sencha Docs Ext JS 3.4
   */
  function get fireDocReady():Object;

  /**
   * @private
   */
  function set fireDocReady(value:Object):void;

  /**
   Url used for onDocumentReady with using SSL (defaults to Ext.SSL_SECURE_URL)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-property-ieDeferSrc Sencha Docs Ext JS 3.4
   */
  function get ieDeferSrc():Object;

  /**
   * @private
   */
  function set ieDeferSrc(value:Object):void;

  /**
   The frequency, in milliseconds, to check for text resize events (defaults to 50)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-property-textResizeInterval Sencha Docs Ext JS 3.4
   */
  function get textResizeInterval():Object;

  /**
   * @private
   */
  function set textResizeInterval(value:Object):void;

  /**
   * Appends an event handler to an element. The shorthand version <a href="output/Ext.EventManager.html#Ext.EventManager-on">on</a> is equivalent. Typically you will use <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a> directly on an Element in favor of calling this version.
   *
   * @param el The html element or id to assign the event handler to.
   * @param eventName The name of the event to listen for.
   * @param handler The handler function the event invokes. This function is passed the following parameters:<ul><li>evt : EventObject<div class="sub-desc">The <a href="Ext.EventObject.html">EventObject</a> describing the event.</div></li><li>t : Element<div class="sub-desc">The <a href="Ext.Element.html">Element</a> which was the target of the event. Note that this may be filtered by using the <tt>delegate</tt> option.</div></li><li>o : Object<div class="sub-desc">The options object from the addListener call.</div></li></ul>
   * @param scope The scope (<b><code>this</code></b> reference) in which the handler function is executed. <b>Defaults to the Element</b>.
   * @param options An object containing handler configuration properties. This may contain any of the following properties:<ul><li>scope : Object<div class="sub-desc">The scope (<b><code>this</code></b> reference) in which the handler function is executed. <b>Defaults to the Element</b>.</div></li><li>delegate : String<div class="sub-desc">A simple selector to filter the target or look for a descendant of the target</div></li><li>stopEvent : Boolean<div class="sub-desc">True to stop the event. That is stop propagation, and prevent the default action.</div></li><li>preventDefault : Boolean<div class="sub-desc">True to prevent the default action</div></li><li>stopPropagation : Boolean<div class="sub-desc">True to prevent event propagation</div></li><li>normalized : Boolean<div class="sub-desc">False to pass a browser event to the handler function instead of an Ext.EventObject</div></li><li>delay : Number<div class="sub-desc">The number of milliseconds to delay the invocation of the handler after te event fires.</div></li><li>single : Boolean<div class="sub-desc">True to add a handler to handle just the next firing of the event, and then remove itself.</div></li><li>buffer : Number<div class="sub-desc">Causes the handler to be scheduled to run in an <a href="Ext.util.DelayedTask.html">Ext.util.DelayedTask</a> delayed by the specified number of milliseconds. If the event fires again within that time, the original handler is <em>not</em> invoked, but the new handler is scheduled in its place.</div></li><li>target : Element<div class="sub-desc">Only call the handler if the event was fired on the target Element, <i>not</i> if the event was bubbled up from a child node.</div></li></ul><br/><p>See <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a> for examples of how to use these options.</p>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-method-addListener Sencha Docs Ext JS 3.4
   */
  function addListener(el:*, eventName:String, handler:Function, scope:Object = null, options:Object = null):void;

  /**
   * Appends an event handler to an element. Shorthand for <a href="output/Ext.EventManager.html#Ext.EventManager-addListener">addListener</a>.
   *
   * @param el The html element or id to assign the event handler to
   * @param eventName The name of the event to listen for.
   * @param handler The handler function the event invokes.
   * @param scope (<code>this</code> reference) in which the handler function executes. <b>Defaults to the Element</b>.
   * @param options An object containing standard <a href="output/Ext.EventManager.html#Ext.EventManager-addListener">addListener</a> options
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-method-on Sencha Docs Ext JS 3.4
   */
  function on(el:*, eventName:String, handler:Function, scope:Object = null, options:Object = null):void;

  /**
   * Adds a listener to be notified when the document is ready (before onload and before images are loaded). Can be accessed shorthanded as Ext.onReady().
   *
   * @param fn The method the event invokes.
   * @param scope The scope (<code>this</code> reference) in which the handler function executes. Defaults to the browser window.
   * @param options Options object as passed to <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a>. It is recommended that the options <code>{single: true}</code> be used so that the handler is removed on first invocation.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-method-onDocumentReady Sencha Docs Ext JS 3.4
   */
  function onDocumentReady(fn:Function, scope:Object = null, options:Boolean = false):void;

  /**
   * Adds a listener to be notified when the user changes the active text size. Handler gets called with 2 params, the old size and the new size.
   *
   * @param fn The function the event invokes.
   * @param scope The scope (<code>this</code> reference) in which the handler function executes. Defaults to the browser window.
   * @param options Options object as passed to <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-method-onTextResize Sencha Docs Ext JS 3.4
   */
  function onTextResize(fn:Function, scope:Object, options:Boolean):void;

  /**
   * Adds a listener to be notified when the browser window is resized and provides resize event buffering (100 milliseconds), passes new viewport width and height to handlers.
   *
   * @param fn The handler function the window resize event invokes.
   * @param scope The scope (<code>this</code> reference) in which the handler function executes. Defaults to the browser window.
   * @param options Options object as passed to <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-method-onWindowResize Sencha Docs Ext JS 3.4
   */
  function onWindowResize(fn:Function, scope:Object, options:Boolean):void;

  /**
   * Removes all event handlers from an element. Typically you will use <a href="output/Ext.Element.html#Ext.Element-removeAllListeners">Ext.Element.removeAllListeners</a> directly on an Element in favor of calling this version.
   *
   * @param el The id or html element from which to remove all event handlers.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-method-removeAll Sencha Docs Ext JS 3.4
   */
  function removeAll(el:*):void;

  /**
   * Removes an event handler from an element. The shorthand version <a href="output/Ext.EventManager.html#Ext.EventManager-un">un</a> is equivalent. Typically you will use <a href="output/Ext.Element.html#Ext.Element-removeListener">Ext.Element.removeListener</a> directly on an Element in favor of calling this version.
   *
   * @param el The id or html element from which to remove the listener.
   * @param eventName The name of the event.
   * @param fn The handler function to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.EventManager.html#Ext.EventManager-addListener">addListener</a> call.</b>
   * @param scope If a scope (<b><code>this</code></b> reference) was specified when the listener was added, then this must refer to the same object.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-method-removeListener Sencha Docs Ext JS 3.4
   */
  function removeListener(el:*, eventName:String, fn:Function, scope:Object):void;

  /**
   * Removes the passed window resize listener.
   *
   * @param fn The method the event invokes
   * @param scope The scope of handler
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-method-removeResizeListener Sencha Docs Ext JS 3.4
   */
  function removeResizeListener(fn:Function, scope:Object):void;

  /**
   * Removes an event handler from an element. Shorthand for <a href="output/Ext.EventManager.html#Ext.EventManager-removeListener">removeListener</a>.
   *
   * @param el The id or html element from which to remove the listener.
   * @param eventName The name of the event.
   * @param fn The handler function to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.EventManager.html#Ext.EventManager-on">on</a> call.</b>
   * @param scope If a scope (<b><code>this</code></b> reference) was specified when the listener was added, then this must refer to the same object.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventManager-method-un Sencha Docs Ext JS 3.4
   */
  function un(el:*, eventName:String, fn:Function, scope:Object):void;

}
}
    