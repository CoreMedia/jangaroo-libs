package ext {
import ext.config.resizable;
import ext.lib.Region;
import ext.util.Observable;

/**
 * Fired before resize is allowed. Set <a href="output/Ext.Resizable.html#Ext.Resizable-enabled">enabled</a> to false to cancel resize.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Resizable</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The mousedown event
 *       </li>

 * </ul>
 */
[Event(name="beforeresize")]

/**
 * Fired after a resize.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Resizable</code>

 *       </li>

 *       <li>
 *           <code>width:Number</code>
 The new width
 *       </li>

 *       <li>
 *           <code>height:Number</code>
 The new height
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The mouseup event
 *       </li>

 * </ul>
 */
[Event(name="resize")]


/**
 * Applies drag handles to an element to make it resizable. The drag handles are inserted into the element and positioned absolute. Some elements, such as a textarea or image, don't support this. To overcome that, you can wrap the textarea in a div and set 'resizeChild' to true (or to the id of the element), <b>or</b> set wrap:true in your config and the element will be wrapped for you automatically.
 <p>Here is the list of valid resize handles:</p><pre>Value   Description
 ------  -------------------
 'n'     north
 's'     south
 'e'     east
 'w'     west
 'nw'    northwest
 'sw'    southwest
 'se'    southeast
 'ne'    northeast
 'all'   all
 </pre><p>Here's an example showing the creation of a typical Resizable:</p><pre><code>var resizer = new Ext.Resizable('element-id', {
 handles: 'all',
 minWidth: 200,
 minHeight: 100,
 maxWidth: 500,
 maxHeight: 400,
 pinned: true
 });
 resizer.on('resize', myHandler);
 </code></pre><p>To hide a particular handle, set its display to none in CSS, or through script:<br/>resizer.east.setDisplayed(false);</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.resizable
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Resizable Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.Resizable")]
public class Resizable extends Observable {

  /**
   * Create a new resizable component
   *
   * @param el The id or element to resize
   * @param config configuration options
   * @see ext.config.resizable
   */
  public function Resizable(el:*, config:resizable) {
    super();
  }

  /**
   Writable. False if resizing is disabled.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Resizable-property-enabled Sencha Docs Ext JS 3.4
   */
  public native function get enabled():Boolean;

  /**
   * @private
   */
  public native function set enabled(value:Boolean):void;

  /**
   The proxy Element that is resized in place of the real Element during the resize operation. This may be queried using <a href="output/Ext.Element.html#Ext.Element-getBox">Ext.Element.getBox</a> to provide the new area to resize to. Read only.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Resizable-property-proxy Sencha Docs Ext JS 3.4
   */
  public native function get proxy():Element;

  /**
   * @private
   */
  public native function set proxy(value:Element):void;

  /**
   String 'auto' or an array [width, height] with values to be <b>added</b> to the resize operation's new size (defaults to <tt>[0, 0]</tt>)
   */
  public native function get adjustments():*;

  /**
   True to animate the resize (not compatible with dynamic sizing, defaults to false)
   */
  public native function get animate():Boolean;

  /**
   Constrain the resize to a particular element
   */
  public native function get constrainTo():*;

  /**
   True to disable mouse tracking. This is only applied at config time. (defaults to false)
   */
  public native function get disableTrackOver():Boolean;

  /**
   Convenience to initialize drag drop (defaults to false)
   */
  public native function get draggable():Boolean;

  /**
   Animation duration if animate = true (defaults to 0.35)
   */
  public native function get duration():Number;

  /**
   True to resize the element while dragging instead of using a proxy (defaults to false)
   */
  public native function get dynamic():Boolean;

  /**
   Animation easing if animate = true (defaults to <tt>'easingOutStrong'</tt>)
   */
  public native function get easing():String;

  /**
   A css class to add to each handle. Defaults to <tt>''</tt>.
   */
  public native function get handleCls():String;

  /**
   String consisting of the resize handles to display (defaults to undefined). Specify either <tt>'all'</tt> or any of <tt>'n s e w ne nw se sw'</tt>.
   */
  public native function get handles():String;

  /**
   The height of the element in pixels (defaults to null)
   */
  public native function get height():Number;

  /**
   The increment to snap the height resize in pixels (only applies if <code><a href="output/Ext.Resizable.html#Ext.Resizable-dynamic">dynamic</a>==true</code>). Defaults to <tt>0</tt>.
   */
  public native function get heightIncrement():Number;

  /**
   The maximum height for the element (defaults to 10000)
   */
  public native function get maxHeight():Number;

  /**
   The maximum width for the element (defaults to 10000)
   */
  public native function get maxWidth():Number;

  /**
   The minimum height for the element (defaults to 5)
   */
  public native function get minHeight():Number;

  /**
   The minimum width for the element (defaults to 5)
   */
  public native function get minWidth():Number;

  /**
   The minimum x for the element (defaults to 0)
   */
  public native function get minX():Number;

  /**
   The minimum x for the element (defaults to 0)
   */
  public native function get minY():Number;

  /**
   <b>Deprecated</b>. Deprecated style of adding multi-direction resize handles.
   */
  public native function get multiDirectional():Boolean;

  /**
   True to ensure that the resize handles are always visible, false to display them only when the user mouses over the resizable borders. This is only applied at config time. (defaults to false)
   */
  public native function get pinned():Boolean;

  /**
   True to preserve the original ratio between height and width during resize (defaults to false)
   */
  public native function get preserveRatio():Boolean;

  /**
   Constrain the resize to a particular region
   */
  public native function get resizeRegion():Region;

  /**
   True for transparent handles. This is only applied at config time. (defaults to false)
   */
  public native function get transparent():Boolean;

  /**
   The width of the element in pixels (defaults to null)
   */
  public native function get width():Number;

  /**
   The increment to snap the width resize in pixels (only applies if <code><a href="output/Ext.Resizable.html#Ext.Resizable-dynamic">dynamic</a>==true</code>). Defaults to <tt>0</tt>.
   */
  public native function get widthIncrement():Number;

  /**
   True to wrap an element with a div if needed (required for textareas and images, defaults to false) in favor of the handles config option (defaults to false)
   */
  public native function get wrap():Boolean;

  /**
   * Destroys this resizable. If the element was wrapped and removeEl is not true then the element remains.
   *
   * @param removeEl true to remove the element from the DOM
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Resizable-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy(removeEl:Boolean = false):void;

  /**
   * Returns the element this component is bound to.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Resizable-method-getEl Sencha Docs Ext JS 3.4
   */
  public native function getEl():Element;

  /**
   * Returns the resizeChild element (or null).
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Resizable-method-getResizeChild Sencha Docs Ext JS 3.4
   */
  public native function getResizeChild():Element;

  /**
   * Performs resizing of the associated Element. This method is called internally by this class, and should not be called by user code.
   <p>If a Resizable is being used to resize an Element which encapsulates a more complex UI component such as a Panel, this method may be overridden by specifying an implementation as a config option to provide appropriate behaviour at the end of the resize operation on mouseup, for example resizing the Panel, and relaying the Panel's content.</p><p>The new area to be resized to is available by examining the state of the <a href="output/Ext.Resizable.html#Ext.Resizable-proxy">proxy</a> Element. Example:</p><pre><code>new Ext.Panel({
   title: 'Resize me',
   x: 100,
   y: 100,
   renderTo: Ext.getBody(),
   floating: true,
   frame: true,
   width: 400,
   height: 200,
   listeners: {
   render: function(p) {
   new Ext.Resizable(p.getEl(), {
   handles: 'all',
   pinned: true,
   transparent: true,
   resizeElement: function() {
   var box = this.proxy.getBox();
   p.updateBox(box);
   if (p.layout) {
   p.doLayout();
   }
   return box;
   }
   });
   }
   }
   }).show();
   </code></pre>
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Resizable-method-resizeElement Sencha Docs Ext JS 3.4
   */
  public native function resizeElement():void;

  /**
   * Perform a manual resize and fires the 'resize' event.
   *
   * @param width
   * @param height
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Resizable-method-resizeTo Sencha Docs Ext JS 3.4
   */
  public native function resizeTo(width:Number, height:Number):void;

}
}
    