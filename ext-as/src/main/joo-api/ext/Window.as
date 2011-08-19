package ext {
import ext.config.window;
import ext.dd.DragSource;

/**
 * Fires after the window has been visually activated via <a href="output/Ext.Window.html#Ext.Window-setActive">setActive</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Window</code>

 *       </li>

 * </ul>
 */
[Event(name="activate")]

/**
 * Fires after the window has been visually deactivated via <a href="output/Ext.Window.html#Ext.Window-setActive">setActive</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Window</code>

 *       </li>

 * </ul>
 */
[Event(name="deactivate")]

/**
 * Fires after the window has been maximized.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Window</code>

 *       </li>

 * </ul>
 */
[Event(name="maximize")]

/**
 * Fires after the window has been minimized.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Window</code>

 *       </li>

 * </ul>
 */
[Event(name="minimize")]

/**
 * Fires after the window has been resized.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Window</code>

 *       </li>

 *       <li>
 *           <code>width:Number</code>
 The window's new width
 *       </li>

 *       <li>
 *           <code>height:Number</code>
 The window's new height
 *       </li>

 * </ul>
 */
[Event(name="resize")]

/**
 * Fires after the window has been restored to its original size after being maximized.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Window</code>

 *       </li>

 * </ul>
 */
[Event(name="restore")]


/**
 * A specialized panel intended for use as an application window. Windows are floated, <a href="output/Ext.Window.html#Ext.Window-resizable">resizable</a>, and <a href="output/Ext.Window.html#Ext.Window-draggable">draggable</a> by default. Windows can be <a href="output/Ext.Window.html#Ext.Window-maximizable">maximized</a> to fill the viewport, restored to their prior size, and can be <a href="output/Ext.Window.html#Ext.Window-minimize">minimize</a>d.
 <p>Windows can also be linked to a <a href="Ext.WindowGroup.html">Ext.WindowGroup</a> or managed by the <a href="Ext.WindowMgr.html">Ext.WindowMgr</a> to provide grouping, activation, to front, to back and other application-specific behavior.</p><p>By default, Windows will be rendered to document.body. To <a href="output/Ext.Window.html#Ext.Window-constrain">constrain</a> a Window to another element specify <a href="output/Ext.Component.html#Ext.Component-renderTo">renderTo</a>.</p><p><b>Note:</b> By default, the <code><a href="output/Ext.Window.html#Ext.Window-closable">close</a></code> header tool <i>destroys</i> the Window resulting in destruction of any child Components. This makes the Window object, and all its descendants <b>unusable</b>. To enable re-use of a Window, use <b><code><a href="output/Ext.Window.html#Ext.Window-closeAction">closeAction: 'hide'</a></code></b>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'window' / the EXML element &lt;window>.</p>
 * @see ext.config.window
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#cls-Ext.Window Ext JS source
 */
public class Window extends Panel {

  /**
   *
   *
   * @param config The config object
   * @see ext.config.window
   */
  public function Window(config:ext.config.window) {
    super(null);
  }

  /**
   If this Window is configured <a href="output/Ext.Window.html#Ext.Window-draggable">draggable</a>, this property will contain an instance of <a href="Ext.dd.DD.html">Ext.dd.DD</a> which handles dragging the Window's DOM Element.
   <p>This has implementations of <code>startDrag</code>, <code>onDrag</code> and <code>endDrag</code> which perform the dragging action. If extra logic is needed at these points, use <a href="output/Function.html#Function-createInterceptor">createInterceptor</a> or <a href="output/Function.html#Function-createSequence">createSequence</a> to augment the existing implementations.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#prop-Ext.Window-dd Ext JS source
   */
  override public native function get dd():DragSource;

  /**
   * @private
   */
  override public native function set dd(value:DragSource):void;

  /**
   Id or element from which the window should animate while opening (defaults to null with no animation).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get animateTarget():*;

  /**
   The action to take when the close header tool is clicked:
   <div class="mdetail-params"><ul><li><b><code>'<a href="output/Ext.Window.html#Ext.Window-close">close</a>'</code></b> : <b>Default</b><div class="sub-desc"><a href="output/Ext.Window.html#Ext.Window-close">remove</a> the window from the DOM and <a href="output/Ext.Component.html#Ext.Component-destroy">destroy</a> it and all descendant Components. The window will <b>not</b> be available to be redisplayed via the <a href="output/Ext.Window.html#Ext.Window-show">show</a> method.</div></li><li><b><code>'<a href="output/Ext.Window.html#Ext.Window-hide">hide</a>'</code></b> : <div class="sub-desc"><a href="output/Ext.Window.html#Ext.Window-hide">hide</a> the window by setting visibility to hidden and applying negative offsets. The window will be available to be redisplayed via the <a href="output/Ext.Window.html#Ext.Window-show">show</a> method.</div></li></ul></div><p><b>Note:</b> This setting does not affect the <a href="output/Ext.Window.html#Ext.Window-close">close</a> method which will always <a href="output/Ext.Component.html#Ext.Component-destroy">destroy</a> the window. To programmatically <i>hide</i> a window, call <a href="output/Ext.Window.html#Ext.Window-hide">hide</a>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get closeAction():String;

  /**
   True to constrain the window within its containing element, false to allow it to fall outside of its containing element. By default the window will be rendered to document.body. To render and constrain the window within another element specify <a href="output/Ext.Window.html#Ext.Window-renderTo">renderTo</a>. (defaults to false). Optionally the header only can be constrained using <a href="output/Ext.Window.html#Ext.Window-constrainHeader">constrainHeader</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get constrain():Boolean;

  /**
   True to constrain the window header within its containing element (allowing the window body to fall outside of its containing element) or false to allow the header to fall outside its containing element (defaults to false). Optionally the entire window can be constrained using <a href="output/Ext.Window.html#Ext.Window-constrain">constrain</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get constrainHeader():Boolean;

  /**
   Specifies a Component to receive focus when this Window is focused.
   <p>This may be one of:</p><div class="mdetail-params"><ul><li>The index of a footer Button.</li><li>The id of a Component.</li><li>A Component.</li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultButton():*;

  /**
   True to always expand the window when it is displayed, false to keep it in its current state (which may be <a href="output/Ext.Window.html#Ext.Window-collapsed">collapsed</a>) when displayed (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get expandOnShow():Boolean;

  /**
   The number of seconds that the window hide animation takes if enabled. Defaults to 0.25
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideAnimDuration():Number;

  /**
   True to hide the window until show() is explicitly called (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get initHidden():Boolean;

  /**
   A reference to the WindowGroup that should manage this window (defaults to <a href="Ext.WindowMgr.html">Ext.WindowMgr</a>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get manager():WindowGroup;

  /**
   True to display the 'maximize' tool button and allow the user to maximize the window, false to hide the button and disallow maximizing the window (defaults to false). Note that when a window is maximized, the tool button will automatically change to a 'restore' button with the appropriate behavior already built-in that will restore the window to its previous size.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maximizable():Boolean;

  /**
   True to initially display the window in a maximized state. (Defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maximized():Boolean;

  /**
   The minimum height in pixels allowed for this window (defaults to 100). Only applies when resizable = true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minHeight():Number;

  /**
   The minimum width in pixels allowed for this window (defaults to 200). Only applies when resizable = true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minWidth():Number;

  /**
   True to display the 'minimize' tool button and allow the user to minimize the window, false to hide the button and disallow minimizing the window (defaults to false). Note that this button provides no implementation -- the behavior of minimizing a window is implementation-specific, so the minimize event must be handled and a custom minimize behavior implemented for this option to be useful.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minimizable():Boolean;

  /**
   True to make the window modal and mask everything behind it when displayed, false to display it without restricting access to other UI elements (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get modal():Boolean;

  /**
   True to render the window body with a transparent background so that it will blend into the framing elements, false to add a lighter background color to visually highlight the body element and separate it more distinctly from the surrounding frame (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get plain():Boolean;

  /**
   True to allow user resizing at each edge and corner of the window, false to disable resizing (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get resizable():Boolean;

  /**
   A valid <a href="Ext.Resizable.html">Ext.Resizable</a> handles config string (defaults to 'all'). Only applies when resizable = true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get resizeHandles():String;

  /**
   The number of seconds that the window show animation takes if enabled. Defaults to 0.25
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get showAnimDuration():Number;

  /**
   * Aligns the window to the specified element
   *
   * @param element The element to align to.
   * @param position (optional, defaults to "tl-bl?") The position to align to (see <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> for more details).
   * @param offsets Offset the positioning by [x, y]
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-alignTo Ext JS source
   */
  public native function alignTo(element:*, position:String, offsets:Array = null):Window;

  /**
   * Anchors this window to another element and realigns it when the window is resized or scrolled.
   *
   * @param element The element to align to.
   * @param position The position to align to (see <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> for more details)
   * @param offsets Offset the positioning by [x, y]
   * @param monitorScroll true to monitor body scroll and reposition. If this parameter is a number, it is used as the buffer delay (defaults to 50ms).
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-anchorTo Ext JS source
   */
  public native function anchorTo(element:*, position:String, offsets:Array = null, monitorScroll:* = null):Window;

  /**
   * Centers this window in the viewport
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-center Ext JS source
   */
  public native function center():Window;

  /**
   * Removes any existing anchor from this window. See <a href="output/Ext.Window.html#Ext.Window-anchorTo">anchorTo</a>.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-clearAnchor Ext JS source
   */
  public native function clearAnchor():Window;

  /**
   * Closes the Window, removes it from the DOM, <a href="output/Ext.Component.html#Ext.Component-destroy">destroy</a>s the Window object and all its descendant Components. The <a href="output/Ext.Panel.html#Ext.Panel-beforeclose">beforeclose</a> event is fired before the close happens and will cancel the close action if it returns false.
   <p><b>Note:</b> This method is not affected by the <a href="output/Ext.Window.html#Ext.Window-closeAction">closeAction</a> setting which only affects the action triggered when clicking the <a href="output/Ext.Window.html#Ext.Window-closable">'close' tool in the header</a>. To hide the Window without destroying it, call <a href="output/Ext.Window.html#Ext.Window-hide">hide</a>.</p>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-close Ext JS source
   */
  public native function close():void;

  /**
   * Performs the anchor, using the saved anchorTarget property.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-doAnchor Ext JS source
   */
  public native function doAnchor():Window;

  /**
   * Focuses the window. If a defaultButton is set, it will receive focus, otherwise the window itself will receive focus.
   *
   * @param selectText If applicable, true to also select the text in this component
   * @param delay Delay the focus this number of milliseconds (true for 10 milliseconds)
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-focus Ext JS source
   */
  override public native function focus(selectText:Boolean = false, delay:* = null):Component;

  /**
   * Hides the window, setting it to invisible and applying negative offsets.
   *
   * @param animateTarget The target element or id to which the window should animate while hiding (defaults to null with no animation)
   * @param callback A callback function to call after the window is hidden
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to this Window.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-hide Ext JS source
   */
  public native function hideWindow(animateTarget:* = null, callback:Function = null, scope:Object = null):Window;

  /**
   * Fits the window within its current container and automatically replaces the <a href="output/Ext.Window.html#Ext.Window-maximizable">'maximize' tool button</a> with the 'restore' tool button. Also see <a href="output/Ext.Window.html#Ext.Window-toggleMaximize">toggleMaximize</a>.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-maximize Ext JS source
   */
  public native function maximize():Window;

  /**
   * Placeholder method for minimizing the window. By default, this method simply fires the <a href="output/Ext.Window.html#Ext.Window-minimize">minimize</a> event since the behavior of minimizing a window is application-specific. To implement custom minimize behavior, either the minimize event can be handled or this method can be overridden.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-minimize Ext JS source
   */
  public native function minimize():Window;

  /**
   * Method that is called immediately before the <code>hide</code> event is fired. Defaults to <code>Ext.emptyFn</code>.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-onHide Ext JS source
   */
  override public native function onHide():void;

  /**
   * Method that is called immediately before the <code>show</code> event is fired. Defaults to <code>Ext.emptyFn</code>.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-onShow Ext JS source
   */
  override protected native function onShow():void;

  /**
   * Restores a <a href="output/Ext.Window.html#Ext.Window-maximizable">maximized</a> window back to its original size and position prior to being maximized and also replaces the 'restore' tool button with the 'maximize' tool button. Also see <a href="output/Ext.Window.html#Ext.Window-toggleMaximize">toggleMaximize</a>.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-restore Ext JS source
   */
  public native function restore():Window;

  /**
   * Makes this the active window by showing its shadow, or deactivates it by hiding its shadow. This method also fires the <a href="output/Ext.Window.html#Ext.Window-activate">activate</a> or <a href="output/Ext.Window.html#Ext.Window-deactivate">deactivate</a> event depending on which action occurred. This method is called internally by <a href="Ext.WindowMgr.html">Ext.WindowMgr</a>.
   *
   * @param active True to activate the window, false to deactivate it (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-setActive Ext JS source
   */
  public native function setActive(active:Boolean):void;

  /**
   * Sets the target element from which the window should animate while opening.
   *
   * @param el The target element or id
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-setAnimateTarget Ext JS source
   */
  public native function setAnimateTarget(el:*):void;

  /**
   * Shows the window, rendering it first if necessary, or activates it and brings it to front if hidden.
   *
   * @param animateTarget The target element or id from which the window should animate while opening (defaults to null with no animation)
   * @param callback A callback function to call after the window is displayed
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to this Window.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-show Ext JS source
   */
  public native function showWindow(animateTarget:* = null, callback:Function = null, scope:Object = null):Window;

  /**
   * Sends this window to the back of (lower z-index than) any other visible windows
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-toBack Ext JS source
   */
  public native function toBack():Window;

  /**
   * Brings this window to the front of any other visible windows
   *
   * @param e Specify <tt>false</tt> to prevent the window from being focused.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-toFront Ext JS source
   */
  public native function toFront(e:Boolean = false):Window;

  /**
   * A shortcut method for toggling between <a href="output/Ext.Window.html#Ext.Window-maximize">maximize</a> and <a href="output/Ext.Window.html#Ext.Window-restore">restore</a> based on the current maximized state of the window.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Window.html#method-Ext.Window-toggleMaximize Ext JS source
   */
  public native function toggleMaximize():Window;

}
}
    