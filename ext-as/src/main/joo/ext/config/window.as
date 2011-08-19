package ext.config {

import ext.WindowGroup;

/**
 * A specialized panel intended for use as an application window. Windows are floated, <a href="output/Ext.Window.html#Ext.Window-resizable">resizable</a>, and <a href="output/Ext.Window.html#Ext.Window-draggable">draggable</a> by default. Windows can be <a href="output/Ext.Window.html#Ext.Window-maximizable">maximized</a> to fill the viewport, restored to their prior size, and can be <a href="output/Ext.Window.html#Ext.Window-minimize">minimize</a>d.
 <p>Windows can also be linked to a <a href="Ext.WindowGroup.html">Ext.WindowGroup</a> or managed by the <a href="Ext.WindowMgr.html">Ext.WindowMgr</a> to provide grouping, activation, to front, to back and other application-specific behavior.</p><p>By default, Windows will be rendered to document.body. To <a href="output/Ext.Window.html#Ext.Window-constrain">constrain</a> a Window to another element specify <a href="output/Ext.Component.html#Ext.Component-renderTo">renderTo</a>.</p><p><b>Note:</b> By default, the <code><a href="output/Ext.Window.html#Ext.Window-closable">close</a></code> header tool <i>destroys</i> the Window resulting in destruction of any child Components. This makes the Window object, and all its descendants <b>unusable</b>. To enable re-use of a Window, use <b><code><a href="output/Ext.Window.html#Ext.Window-closeAction">closeAction: 'hide'</a></code></b>.</p>
 *
 * <p>This class represents the xtype 'window' and serves as a
 * typed config object for constructor of class Window.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Window
 */
[ExtConfig(target="ext.Window", xtype="window")]
public class window extends panel {

  public function window(config:Object = null) {

    super(config);
  }


  /**
   Id or element from which the window should animate while opening (defaults to null with no animation).
   */
  public native function get animateTarget():*;

  /**
   * @private
   */
  public native function set animateTarget(value:*):void;

  /**
   The base CSS class to apply to this panel's element (defaults to 'x-window').
   */
  override public native function get baseCls():String;

  /**
   * @private
   */
  override public native function set baseCls(value:String):void;

  /**
   True to display the 'close' tool button and allow the user to close the window, false to hide the button and disallow closing the window (defaults to true).
   <p>By default, when close is requested by either clicking the close button in the header or pressing ESC when the Window has focus, the <a href="output/Ext.Window.html#Ext.Window-close">close</a> method will be called. This will <i><a href="output/Ext.Component.html#Ext.Component-destroy">destroy</a></i> the Window and its content meaning that it may not be reused.</p><p>To make closing a Window <i>hide</i> the Window so that it may be reused, set <a href="output/Ext.Window.html#Ext.Window-closeAction">closeAction</a> to 'hide'.</p>
   */
  override public native function get closable():Boolean;

  /**
   * @private
   */
  override public native function set closable(value:Boolean):void;

  /**
   The action to take when the close header tool is clicked:
   <div class="mdetail-params"><ul><li><b><code>'<a href="output/Ext.Window.html#Ext.Window-close">close</a>'</code></b> : <b>Default</b><div class="sub-desc"><a href="output/Ext.Window.html#Ext.Window-close">remove</a> the window from the DOM and <a href="output/Ext.Component.html#Ext.Component-destroy">destroy</a> it and all descendant Components. The window will <b>not</b> be available to be redisplayed via the <a href="output/Ext.Window.html#Ext.Window-show">show</a> method.</div></li><li><b><code>'<a href="output/Ext.Window.html#Ext.Window-hide">hide</a>'</code></b> : <div class="sub-desc"><a href="output/Ext.Window.html#Ext.Window-hide">hide</a> the window by setting visibility to hidden and applying negative offsets. The window will be available to be redisplayed via the <a href="output/Ext.Window.html#Ext.Window-show">show</a> method.</div></li></ul></div><p><b>Note:</b> This setting does not affect the <a href="output/Ext.Window.html#Ext.Window-close">close</a> method which will always <a href="output/Ext.Component.html#Ext.Component-destroy">destroy</a> the window. To programmatically <i>hide</i> a window, call <a href="output/Ext.Window.html#Ext.Window-hide">hide</a>.</p>
   */
  public native function get closeAction():String;

  /**
   * @private
   */
  public native function set closeAction(value:String):void;

  /**
   True to render the window collapsed, false to render it expanded (defaults to false). Note that if <a href="output/Ext.Window.html#Ext.Window-expandOnShow">expandOnShow</a> is true (the default) it will override the <tt>collapsed</tt> config and the window will always be expanded when shown.
   */
  override public native function get collapsed():Boolean;

  /**
   * @private
   */
  override public native function set collapsed(value:Boolean):void;

  /**
   True to constrain the window within its containing element, false to allow it to fall outside of its containing element. By default the window will be rendered to document.body. To render and constrain the window within another element specify <a href="output/Ext.Window.html#Ext.Window-renderTo">renderTo</a>. (defaults to false). Optionally the header only can be constrained using <a href="output/Ext.Window.html#Ext.Window-constrainHeader">constrainHeader</a>.
   */
  public native function get constrain():Boolean;

  /**
   * @private
   */
  public native function set constrain(value:Boolean):void;

  /**
   True to constrain the window header within its containing element (allowing the window body to fall outside of its containing element) or false to allow the header to fall outside its containing element (defaults to false). Optionally the entire window can be constrained using <a href="output/Ext.Window.html#Ext.Window-constrain">constrain</a>.
   */
  public native function get constrainHeader():Boolean;

  /**
   * @private
   */
  public native function set constrainHeader(value:Boolean):void;

  /**
   Specifies a Component to receive focus when this Window is focused.
   <p>This may be one of:</p><div class="mdetail-params"><ul><li>The index of a footer Button.</li><li>The id of a Component.</li><li>A Component.</li></ul></div>
   */
  public native function get defaultButton():*;

  /**
   * @private
   */
  public native function set defaultButton(value:*):void;

  /**
   True to allow the window to be dragged by the header bar, false to disable dragging (defaults to true). Note that by default the window will be centered in the viewport, so if dragging is disabled the window may need to be positioned programmatically after render (e.g., myWindow.setPosition(100, 100);).
   */
  override public native function get draggable():*;

  /**
   * @private
   */
  override public native function set draggable(value:*):void;

  /**
   True to always expand the window when it is displayed, false to keep it in its current state (which may be <a href="output/Ext.Window.html#Ext.Window-collapsed">collapsed</a>) when displayed (defaults to true).
   */
  public native function get expandOnShow():Boolean;

  /**
   * @private
   */
  public native function set expandOnShow(value:Boolean):void;

  /**
   Render this component hidden (default is <tt>true</tt>). If <tt>true</tt>, the <a href="output/Ext.Window.html#Ext.Window-hide">hide</a> method will be called internally.
   */
  override public native function get hidden():Boolean;

  /**
   * @private
   */
  override public native function set hidden(value:Boolean):void;

  /**
   The number of seconds that the window hide animation takes if enabled. Defaults to 0.25
   */
  public native function get hideAnimDuration():Number;

  /**
   * @private
   */
  public native function set hideAnimDuration(value:Number):void;

  /**
   True to hide the window until show() is explicitly called (defaults to true).
   */
  public native function get initHidden():Boolean;

  /**
   * @private
   */
  public native function set initHidden(value:Boolean):void;

  /**
   A reference to the WindowGroup that should manage this window (defaults to <a href="Ext.WindowMgr.html">Ext.WindowMgr</a>).
   */
  public native function get manager():WindowGroup;

  /**
   * @private
   */
  public native function set manager(value:WindowGroup):void;

  /**
   True to display the 'maximize' tool button and allow the user to maximize the window, false to hide the button and disallow maximizing the window (defaults to false). Note that when a window is maximized, the tool button will automatically change to a 'restore' button with the appropriate behavior already built-in that will restore the window to its previous size.
   */
  public native function get maximizable():Boolean;

  /**
   * @private
   */
  public native function set maximizable(value:Boolean):void;

  /**
   True to initially display the window in a maximized state. (Defaults to false).
   */
  public native function get maximized():Boolean;

  /**
   * @private
   */
  public native function set maximized(value:Boolean):void;

  /**
   The minimum height in pixels allowed for this window (defaults to 100). Only applies when resizable = true.
   */
  public native function get minHeight():Number;

  /**
   * @private
   */
  public native function set minHeight(value:Number):void;

  /**
   The minimum width in pixels allowed for this window (defaults to 200). Only applies when resizable = true.
   */
  public native function get minWidth():Number;

  /**
   * @private
   */
  public native function set minWidth(value:Number):void;

  /**
   True to display the 'minimize' tool button and allow the user to minimize the window, false to hide the button and disallow minimizing the window (defaults to false). Note that this button provides no implementation -- the behavior of minimizing a window is implementation-specific, so the minimize event must be handled and a custom minimize behavior implemented for this option to be useful.
   */
  public native function get minimizable():Boolean;

  /**
   * @private
   */
  public native function set minimizable(value:Boolean):void;

  /**
   True to make the window modal and mask everything behind it when displayed, false to display it without restricting access to other UI elements (defaults to false).
   */
  public native function get modal():Boolean;

  /**
   * @private
   */
  public native function set modal(value:Boolean):void;

  /**
   Allows override of the built-in processing for the escape key. Default action is to close the Window (performing whatever action is specified in <a href="output/Ext.Window.html#Ext.Window-closeAction">closeAction</a>. To prevent the Window closing when the escape key is pressed, specify this as Ext.emptyFn (See <a href="output/Ext.html#Ext-emptyFn">Ext.emptyFn</a>).
   */
  public native function get onEsc():Function;

  /**
   * @private
   */
  public native function set onEsc(value:Function):void;

  /**
   True to render the window body with a transparent background so that it will blend into the framing elements, false to add a lighter background color to visually highlight the body element and separate it more distinctly from the surrounding frame (defaults to false).
   */
  public native function get plain():Boolean;

  /**
   * @private
   */
  public native function set plain(value:Boolean):void;

  /**
   True to allow user resizing at each edge and corner of the window, false to disable resizing (defaults to true).
   */
  public native function get resizable():Boolean;

  /**
   * @private
   */
  public native function set resizable(value:Boolean):void;

  /**
   A valid <a href="Ext.Resizable.html">Ext.Resizable</a> handles config string (defaults to 'all'). Only applies when resizable = true.
   */
  public native function get resizeHandles():String;

  /**
   * @private
   */
  public native function set resizeHandles(value:String):void;

  /**
   The number of seconds that the window show animation takes if enabled. Defaults to 0.25
   */
  public native function get showAnimDuration():Number;

  /**
   * @private
   */
  public native function set showAnimDuration(value:Number):void;

  /**
   The X position of the left edge of the window on initial showing. Defaults to centering the Window within the width of the Window's container Ext.Element Element) (The Element that the Window is rendered to).
   */
  override public native function get x():Number;

  /**
   * @private
   */
  override public native function set x(value:Number):void;

  /**
   The Y position of the top edge of the window on initial showing. Defaults to centering the Window within the height of the Window's container Ext.Element Element) (The Element that the Window is rendered to).
   */
  override public native function get y():Number;

  /**
   * @private
   */
  override public native function set y(value:Number):void;


}
}
    