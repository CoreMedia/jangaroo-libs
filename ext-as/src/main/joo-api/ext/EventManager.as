package ext {
/**
 * Registers event handlers that want to receive a normalized EventObject instead of the standard browser event and provides
 * several useful events directly.
 * See <b class='link'>ext.EventObject</b> for more details on normalized event objects.
*/
public class EventManager {
/**
 * @singleton
 */
	    /**
	     * Appends an event handler to an element.  The shorthand version <b class='link' title='#on'>on</b> is equivalent.  Typically you will
	     * use <b class='link'>ext.Element#addListener</b> directly on an Element in favor of calling this version.
	     * @param el The html element or id to assign the event handler to
	     * @param eventName The type of event to listen for
	     * @param handler The handler function the event invokes This function is passed
	     * the following parameters:<ul>
	     * <li>evt : EventObject<div class="sub-desc">The <b class='link' title='ext.EventObject'>EventObject</b> describing the event.</div></li>
	     * <li>t : Element<div class="sub-desc">The <b class='link' title='ext.Element'>Element</b> which was the target of the event.
	     * Note that this may be filtered by using the <code>delegate</code> option.</div></li>
	     * <li>o : Object<div class="sub-desc">The options object from the addListener call.</div></li>
	     * </ul>
	     * @param scope The scope (<b><code>this</code></b> reference) in which the handler function is executed. <b>Defaults to the Element</b>.
	     * @param options An object containing handler configuration properties.
	     * This may contain any of the following properties:<ul>
	     * <li>scope : Object<div class="sub-desc">The scope (<b><code>this</code></b> reference) in which the handler function is executed. <b>Defaults to the Element</b>.</div></li>
	     * <li>delegate : String<div class="sub-desc">A simple selector to filter the target or look for a descendant of the target</div></li>
	     * <li>stopEvent : Boolean<div class="sub-desc">True to stop the event. That is stop propagation, and prevent the default action.</div></li>
	     * <li>preventDefault : Boolean<div class="sub-desc">True to prevent the default action</div></li>
	     * <li>stopPropagation : Boolean<div class="sub-desc">True to prevent event propagation</div></li>
	     * <li>normalized : Boolean<div class="sub-desc">False to pass a browser event to the handler function instead of an ext.EventObject</div></li>
	     * <li>delay : Number<div class="sub-desc">The number of milliseconds to delay the invocation of the handler after te event fires.</div></li>
	     * <li>single : Boolean<div class="sub-desc">True to add a handler to handle just the next firing of the event, and then remove itself.</div></li>
	     * <li>buffer : Number<div class="sub-desc">Causes the handler to be scheduled to run in an <b class='link'>Ext.util.DelayedTask</b> delayed
	     * by the specified number of milliseconds. If the event fires again within that time, the original
	     * handler is <em>not</em> invoked, but the new handler is scheduled in its place.</div></li>
	     * <li>target : Element<div class="sub-desc">Only call the handler if the event was fired on the target Element, <i>not</i> if the event was bubbled up from a child node.</div></li>
	     * </ul><br>
	     * <p>See <b class='link'>ext.Element#addListener</b> for examples of how to use these options.</p>
	     */
		public static native function addListener(el : *, eventName : String, handler : Function, scope : Object = undefined, options : Object = undefined) : void;
        /**
         * Removes an event handler from an element.  The shorthand version <b class='link' title='#un'>un</b> is equivalent.  Typically
         * you will use <b class='link'>ext.Element#removeListener</b> directly on an Element in favor of calling this version.
         * @param el The id or html element from which to remove the event
         * @param eventName The type of event
         * @param fn The handler function to remove
         */
        public static native function removeListener(el : *, eventName : String, fn : Function, scope) : void;
        /**
         * Removes all event handers from an element.  Typically you will use <b class='link'>ext.Element#removeAllListeners</b>
         * directly on an Element in favor of calling this version.
         * @param el The id or html element from which to remove the event
         */
        public static native function removeAll(el : *) : void;
        /**
         * Fires when the document is ready (before onload and before images are loaded). Can be
         * accessed shorthanded as Ext.onReady().
         * @param fn The method the event invokes
         * @param scope An object that becomes the scope of the handler
         * @param options An object containing standard <b class='link' title='#addListener'>addListener</b> options
         */
        public static native function onDocumentReady(fn : Function, scope : Object = undefined, options : Boolean = undefined) : void;
        public static var elHash ;
     /**
     * Appends an event handler to an element.  Shorthand for <b class='link' title='#addListener'>addListener</b>.
     * @param el The html element or id to assign the event handler to
     * @param eventName The type of event to listen for
     * @param handler The handler function the event invokes
     * @param scope The scope in which to execute the handler
     * function (the handler function's "this" context)
     * @param options An object containing standard <b class='link' title='#addListener'>addListener</b> options
     * @member ext.EventManager
     * @method on
     */
  public static native function on(el : *, eventName : String, handler : Function, scope : Object = undefined, options : Object = undefined) : void;
    /**
     * Removes an event handler from an element.  Shorthand for <b class='link' title='#removeListener'>removeListener</b>.
     * @param el The id or html element from which to remove the event
     * @param eventName The type of event
     * @param fn The handler function to remove
     * @return True if a listener was actually removed, else false
     * @member ext.EventManager
     * @method un
     */
  public static native function un(el : *, eventName : String, fn : Function, scope) : void;
	    protected native function doResizeEvent() : void;
	    /**
	     * Fires when the window is resized and provides resize event buffering (50 milliseconds), passes new viewport width and height to handlers.
	     * @param fn        The method the event invokes
	     * @param   scope    An object that becomes the scope of the handler
	     * @param  options
	     */
	    public native function onWindowResize(fn : Function, scope : Object, options : Boolean) : void;
	    public native function fireWindowResize() : void;
	    /**
	     * Fires when the user changes the active text size. Handler gets called with 2 params, the old size and the new size.
	     * @param fn        The method the event invokes
	     * @param   scope    An object that becomes the scope of the handler
	     * @param  options
	     */
	    public native function onTextResize(fn : Function, scope : Object, options : Boolean) : void;
	    /**
	     * Removes the passed window resize listener.
	     * @param fn        The method the event invokes
	     * @param   scope    The scope of handler
	     */
	    public native function removeResizeListener(fn : Function, scope : Object) : void;
	    protected native function fireResize() : void;
	     /**
	     * The frequency, in milliseconds, to check for text resize events (defaults to 50)
	     */
	    public var textResizeInterval ;
	    /**
         * Url used for onDocumentReady with using SSL (defaults to ext.SSL_SECURE_URL)
         */
        public var ieDeferSrc ;
        public var useKeydown;

}}
