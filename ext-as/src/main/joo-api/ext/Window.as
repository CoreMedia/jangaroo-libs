package ext {

/**
 * <p>A specialized panel intended for use as an application window.  Windows are floated, <b class='link' title='#resizable'>resizable</b>, and
 * <b class='link' title='#draggable'>draggable</b> by default.  Windows can be <b class='link' title='#maximizable'>maximized</b> to fill the viewport,
 * restored to their prior size, and can be <b class='link' title='#minimize'>minimize</b>d.</p>
 * <p>Windows can also be linked to a <b class='link'>ext.WindowGroup</b> or managed by the <b class='link'>ext.WindowMgr</b> to provide 
 * grouping, activation, to front, to back and other application-specific behavior.</p>
 * <p>By default, Windows will be rendered to document.body. To <b class='link' title='#constrain'>constrain</b> a Window to another element
 * specify <b class='link' title='ext.Component#renderTo'>renderTo</b>.</p>
 * <p><b>Note:</b> By default, the <code><b class='link' title='#closable'>close</b></code> header tool <i>destroys</i> the Window resulting in
 * destruction of any child Components. This makes the Window object, and all its descendants <b>unusable</b>. To enable
 * re-use of a Window, use <b><code><b class='link' title='#closeAction closeAction:'>'hide'</b></code></b>.</p>
*/
public class Window extends Panel {
/**
 * @constructor
 * @param config The config object
 * @xtype window
 */
public function Window(config : Object) {
  super(config);
}
    /**
     * @cfg {Number} x
     * The X position of the left edge of the window on initial showing. Defaults to centering the Window within
     * the width of the Window's container <b class='link' title='ext.Element'>Element</b> (The Element that the Window is rendered to).
     */
    /**
     * @cfg {Number} y
     * The Y position of the top edge of the window on initial showing. Defaults to centering the Window within
     * the height of the Window's container <b class='link' title='ext.Element'>Element</b> (The Element that the Window is rendered to).
     */
    /**
     * @cfg {Boolean} modal
     * True to make the window modal and mask everything behind it when displayed, false to display it without
     * restricting access to other UI elements (defaults to false).
     */
    /**
     * @cfg {String/Element} animateTarget
     * Id or element from which the window should animate while opening (defaults to null with no animation).
     */
    /**
     * @cfg {String} resizeHandles
     * A valid <b class='link'>ext.Resizable</b> handles config string (defaults to 'all').  Only applies when resizable = true.
     */
    /**
     * @cfg {ext.WindowGroup} manager
     * A reference to the WindowGroup that should manage this window (defaults to <b class='link'>ext.WindowMgr</b>).
     */
    /**
    * @cfg {String/Number/Button} defaultButton
    * The id / index of a button or a button instance to focus when this window received the focus.
    */
    /**
    * @cfg {Function} onEsc
    * Allows override of the built-in processing for the escape key. Default action
    * is to close the Window (performing whatever action is specified in <b class='link' title='#closeAction'>closeAction</b>.
    * To prevent the Window closing when the escape key is pressed, specify this as
    * Ext.emptyFn (See <b class='link'>Ext#emptyFn</b>).
    */
    /**
     * @cfg {Boolean} collapsed
     * True to render the window collapsed, false to render it expanded (defaults to false). Note that if 
     * <b class='link' title='#expandOnShow'>expandOnShow</b> is true (the default) it will override the <code>collapsed</code> config and the window 
     * will always be expanded when shown.
     */
    /**
     * @cfg {Boolean} maximized
     * True to initially display the window in a maximized state. (Defaults to false).
     */
    /**
    * @cfg {String} baseCls
    * The base CSS class to apply to this panel's element (defaults to 'x-window').
    */
    //public var baseCls  : String;
    /**
     * @cfg {Boolean} resizable
     * True to allow user resizing at each edge and corner of the window, false to disable resizing (defaults to true).
     */
    public var resizable  : Boolean;
    /**
     * @cfg {Boolean} draggable
     * True to allow the window to be dragged by the header bar, false to disable dragging (defaults to true).  Note
     * that by default the window will be centered in the viewport, so if dragging is disabled the window may need
     * to be positioned programmatically after render (e.g., myWindow.setPosition(100, 100);).
     */
    public var draggable  : Boolean;
    /**
     * @cfg {Boolean} closable
     * <p>True to display the 'close' tool button and allow the user to close the window, false to
     * hide the button and disallow closing the window (defaults to true).</p>
     * <p>By default, when close is requested by either clicking the close button in the header
     * or pressing ESC when the Window has focus, the <b class='link' title='#close'>close</b> method will be called. This
     * will <i><b class='link' title='ext.Component#destroy'>destroy</b></i> the Window and its content meaning that
     * it may not be reused.</p>
     * <p>To make closing a Window <i>hide</i> the Window so that it may be reused, set
     * <b class='link' title='#closeAction'>closeAction</b> to 'hide'.
     */
    public var closable  : Boolean;
    /**
     * @cfg {String} closeAction
     * <p>The action to take when the close header tool is clicked:
     * <div class="mdetail-params"><ul>
     * <li><b><code>'<b class='link' title='#close'>close</b>'</code></b> : <b>Default</b><div class="sub-desc">
     * <b class='link' title='#close'>remove</b> the window from the DOM and <b class='link' title='ext.Component#destroy'>destroy</b>
     * it and all descendant Components. The window will <b>not</b> be available to be
     * redisplayed via the <b class='link' title='#show'>show</b> method.
     * </div></li>
     * <li><b><code>'<b class='link' title='#hide'>hide</b>'</code></b> : <div class="sub-desc">
     * <b class='link' title='#hide'>hide</b> the window by setting visibility to hidden and applying negative offsets.
     * The window will be available to be redisplayed via the <b class='link' title='#show'>show</b> method.
     * </div></li>
     * </ul></div>
     * <p><b>Note:</b> This setting does not affect the <b class='link' title='#close'>close</b> method
     * which will always <b class='link' title='ext.Component#destroy'>destroy</b> the window. To
     * programatically <i>hide</i> a window, call <b class='link' title='#hide'>hide</b>.</p>
     */
    public var closeAction  : String;
    /**
     * @cfg {Boolean} constrain
     * True to constrain the window within its containing element, false to allow it to fall outside of its
     * containing element. By default the window will be rendered to document.body.  To render and constrain the 
     * window within another element specify <b class='link' title='#renderTo'>renderTo</b>.
     * (defaults to false).  Optionally the header only can be constrained using <b class='link' title='#constrainHeader'>constrainHeader</b>.
     */
    public var constrain  : Boolean;
    /**
     * @cfg {Boolean} constrainHeader
     * True to constrain the window header within its containing element (allowing the window body to fall outside 
     * of its containing element) or false to allow the header to fall outside its containing element (defaults to 
     * false). Optionally the entire window can be constrained using <b class='link' title='#constrain'>constrain</b>.
     */
    public var constrainHeader  : Boolean;
    /**
     * @cfg {Boolean} plain
     * True to render the window body with a transparent background so that it will blend into the framing
     * elements, false to add a lighter background color to visually highlight the body element and separate it
     * more distinctly from the surrounding frame (defaults to false).
     */
    public var plain  : Boolean;
    /**
     * @cfg {Boolean} minimizable
     * True to display the 'minimize' tool button and allow the user to minimize the window, false to hide the button
     * and disallow minimizing the window (defaults to false).  Note that this button provides no implementation --
     * the behavior of minimizing a window is implementation-specific, so the minimize event must be handled and a
     * custom minimize behavior implemented for this option to be useful.
     */
    public var minimizable  : Boolean;
    /**
     * @cfg {Boolean} maximizable
     * True to display the 'maximize' tool button and allow the user to maximize the window, false to hide the button
     * and disallow maximizing the window (defaults to false).  Note that when a window is maximized, the tool button
     * will automatically change to a 'restore' button with the appropriate behavior already built-in that will
     * restore the window to its previous size.
     */
    public var maximizable  : Boolean;
    /**
     * @cfg {Number} minHeight
     * The minimum height in pixels allowed for this window (defaults to 100).  Only applies when resizable = true.
     */
    public var minHeight  : Number;
    /**
     * @cfg {Number} minWidth
     * The minimum width in pixels allowed for this window (defaults to 200).  Only applies when resizable = true.
     */
    public var minWidth  : Number;
    /**
     * @cfg {Boolean} expandOnShow
     * True to always expand the window when it is displayed, false to keep it in its current state (which may be
     * <b class='link' title='#collapsed'>collapsed</b>) when displayed (defaults to true).
     */
    public var expandOnShow  : Boolean;
    public var collapsible ;
    /**
     * @cfg {Boolean} initHidden
     * True to hide the window until show() is explicitly called (defaults to true).
     */
    public var initHidden  : Boolean;
    /**
    * @cfg {Boolean} monitorResize @hide
    * This is automatically managed based on the value of constrain and constrainToHeader
    */
    public var monitorResize  : Boolean;
    /** @cfg {String} elements @hide */
    /** @cfg {Boolean} frame @hide */
    /** @cfg {Boolean} floating @hide */

    override protected native function initComponent():void;

    protected native function getStateByWindow(window : Window) : void;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function initEvents() : void;
    override protected native function initDraggable() : void;
        /**
         * If this Window is configured <b class='link' title='#draggable'>draggable</b>, this property will contain
         * an instance of <b class='link'>Ext.dd.DD</b> which handles dragging the Window's DOM Element.
         * @property dd
         */
    protected native function onEsc() : void;
    override protected native function beforeDestroy() : void;
    override protected native function onDestroy() : void;
    protected native function initTools() : void;
    protected native function resizerAction() : void;
    protected native function beforeResize() : void;
    protected native function updateHandles() : void;
    protected native function handleResize(box) : void;
    /**
     * Focuses the window.  If a defaultButton is set, it will receive focus, otherwise the
     * window itself will receive focus.
     */
    override public native function focus(selectText : Boolean = undefined, delay : * = undefined) : Component;
    /**
     * Sets the target element from which the window should animate while opening.
     * @param el The target element or id
     */
    public native function setAnimateTarget(el : *) : void;
    protected native function beforeShow() : void;
    /**
     * Shows the window, rendering it first if necessary, or activates it and brings it to front if hidden.
     * @param animateTarget The target element or id from which the window should
     * animate while opening (defaults to null with no animation)
     * @param callback A callback function to call after the window is displayed
     * @param scope The scope in which to execute the callback
     * @return this
     */
    public native function showWindow(animateTarget : * = undefined, callback : Function = undefined, scope : Object = undefined) : Window;
    protected native function afterShow(isAnim) : void;
    protected native function animShow() : void;
    /**
     * Hides the window, setting it to invisible and applying negative offsets.
     * @param animateTarget The target element or id to which the window should
     * animate while hiding (defaults to null with no animation)
     * @param callback A callback function to call after the window is hidden
     * @param scope The scope in which to execute the callback
     * @return this
     */
    public native function hideWindow(animateTarget : * = undefined, callback : Function = undefined, scope : Object = undefined) : Window;
    protected native function afterHide() : void;
    protected native function animHide() : void;
    protected native function onWindowResize() : void;
    protected native function doConstrain() : void;
    public native function ghost(cls) : void;
    protected native function unghost(show, matchPosition) : void;
    /**
     * Placeholder method for minimizing the window.  By default, this method simply fires the <b class='link' title='#minimize'>minimize</b> event
     * since the behavior of minimizing a window is application-specific.  To implement custom minimize behavior,
     * either the minimize event can be handled or this method can be overridden.
     * @return this
     */
    public native function minimize() : Window;
    /**
     * <p>Closes the Window, removes it from the DOM, <b class='link' title='ext.Component#destroy'>destroy</b>s
     * the Window object and all its descendant Components. The <b class='link' title='ext.Panel#beforeclose'>beforeclose</b>
     * event is fired before the close happens and will cancel the close action if it returns false.<p>
     * <p><b>Note:</b> This method is not affected by the <b class='link' title='#closeAction'>closeAction</b> setting which
     * only affects the action triggered when clicking the <b class='link' title='#closable 'close' tool in the'>header</b>.
     * To hide the Window without destroying it, call <b class='link' title='#hide'>hide</b>.</p>
     */
    public native function close() : void;
    /**
     * Fits the window within its current container and automatically replaces
     * the <b class='link' title='#maximizable 'maximize' tool'>button</b> with the 'restore' tool button.
     * Also see <b class='link' title='#toggleMaximize'>toggleMaximize</b>.
     * @return this
     */
    public native function maximize() : Window;
    /**
     * Restores a <b class='link' title='#maximizable'>maximized</b>  window back to its original
     * size and position prior to being maximized and also replaces
     * the 'restore' tool button with the 'maximize' tool button.
     * Also see <b class='link' title='#toggleMaximize'>toggleMaximize</b>.
     * @return this
     */
    public native function restore() : Window;
    /**
     * A shortcut method for toggling between <b class='link' title='#maximize'>maximize</b> and <b class='link' title='#restore'>restore</b> based on the current maximized
     * state of the window.
     * @return this
     */
    public native function toggleMaximize() : Window;
    protected native function fitContainer() : void;
    protected native function setZIndex(index) : void;
    /**
     * Aligns the window to the specified element
     * @param element The element to align to.
     * @param position The position to align to (see <b class='link'>ext.Element#alignTo</b> for more details).
     * @param offsets Offset the positioning by [x, y]
     * @return this
     */
    public native function alignTo(element : *, position : String, offsets : Array = undefined) : Window;
    /**
     * Anchors this window to another element and realigns it when the window is resized or scrolled.
     * @param element The element to align to.
     * @param position The position to align to (see <b class='link'>ext.Element#alignTo</b> for more details)
     * @param offsets Offset the positioning by [x, y]
     * @param monitorScroll true to monitor body scroll and reposition. If this parameter
     * is a number, it is used as the buffer delay (defaults to 50ms).
     * @return this
     */
    public native function anchorTo(element : *, position : String, offsets : Array = undefined, monitorScroll : * = undefined) : Window;
    /**
     * Brings this window to the front of any other visible windows
     * @param e Specify <code>false</code> to prevent the window from being focused.
     * @return this
     */
    public native function toFront(e : Boolean = undefined) : Window;
    /**
     * Makes this the active window by showing its shadow, or deactivates it by hiding its shadow.  This method also
     * fires the <b class='link' title='#activate'>activate</b> or <b class='link' title='#deactivate'>deactivate</b> event depending on which action occurred.
     * @param active True to activate the window, false to deactivate it (defaults to false)
     */
    public native function setActive(active : Boolean) : void;
    /**
     * Sends this window to the back of (lower z-index than) any other visible windows
     * @return this
     */
    public native function toBack() : Window;
    /**
     * Centers this window in the viewport
     * @return this
     */
    public native function center() : Window;
    /**
     * @cfg {Boolean} autoWidth @hide
     **/
public native function DD (win) : void;
    public var moveOnly : Boolean;
    public var headerOffsets;
    public native function startDrag() : void;
    public native function onDrag(e) : void;
    public native function endDrag(e) : void;
}}
