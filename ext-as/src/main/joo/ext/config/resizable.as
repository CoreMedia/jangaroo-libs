package ext.config {

import ext.lib.Region;

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
 * <p>This class serves as a typed config object for constructor of class Resizable.</p>
 *
 * @see ext.Resizable
 */
[ExtConfig(target="ext.Resizable")]
public class resizable extends observable {

  public function resizable(config:Object = null) {

    super(config);
  }


  /**
   String 'auto' or an array [width, height] with values to be <b>added</b> to the resize operation's new size (defaults to <tt>[0, 0]</tt>)
   */
  public native function get adjustments():*;

  /**
   * @private
   */
  public native function set adjustments(value:*):void;

  /**
   True to animate the resize (not compatible with dynamic sizing, defaults to false)
   */
  public native function get animate():Boolean;

  /**
   * @private
   */
  public native function set animate(value:Boolean):void;

  /**
   Constrain the resize to a particular element
   */
  public native function get constrainTo():*;

  /**
   * @private
   */
  public native function set constrainTo(value:*):void;

  /**
   True to disable mouse tracking. This is only applied at config time. (defaults to false)
   */
  public native function get disableTrackOver():Boolean;

  /**
   * @private
   */
  public native function set disableTrackOver(value:Boolean):void;

  /**
   Convenience to initialize drag drop (defaults to false)
   */
  public native function get draggable():Boolean;

  /**
   * @private
   */
  public native function set draggable(value:Boolean):void;

  /**
   Animation duration if animate = true (defaults to 0.35)
   */
  public native function get duration():Number;

  /**
   * @private
   */
  public native function set duration(value:Number):void;

  /**
   True to resize the element while dragging instead of using a proxy (defaults to false)
   */
  public native function get dynamic():Boolean;

  /**
   * @private
   */
  public native function set dynamic(value:Boolean):void;

  /**
   Animation easing if animate = true (defaults to <tt>'easingOutStrong'</tt>)
   */
  public native function get easing():String;

  /**
   * @private
   */
  public native function set easing(value:String):void;

  /**
   False to disable resizing (defaults to true)
   */
  public native function get enabled():Boolean;

  /**
   * @private
   */
  public native function set enabled(value:Boolean):void;

  /**
   A css class to add to each handle. Defaults to <tt>''</tt>.
   */
  public native function get handleCls():String;

  /**
   * @private
   */
  public native function set handleCls(value:String):void;

  /**
   String consisting of the resize handles to display (defaults to undefined). Specify either <tt>'all'</tt> or any of <tt>'n s e w ne nw se sw'</tt>.
   */
  public native function get handles():String;

  /**
   * @private
   */
  public native function set handles(value:String):void;

  /**
   The height of the element in pixels (defaults to null)
   */
  public native function get height():Number;

  /**
   * @private
   */
  public native function set height(value:Number):void;

  /**
   The increment to snap the height resize in pixels (only applies if <code><a href="output/Ext.Resizable.html#Ext.Resizable-dynamic">dynamic</a>==true</code>). Defaults to <tt>0</tt>.
   */
  public native function get heightIncrement():Number;

  /**
   * @private
   */
  public native function set heightIncrement(value:Number):void;

  /**
   The maximum height for the element (defaults to 10000)
   */
  public native function get maxHeight():Number;

  /**
   * @private
   */
  public native function set maxHeight(value:Number):void;

  /**
   The maximum width for the element (defaults to 10000)
   */
  public native function get maxWidth():Number;

  /**
   * @private
   */
  public native function set maxWidth(value:Number):void;

  /**
   The minimum height for the element (defaults to 5)
   */
  public native function get minHeight():Number;

  /**
   * @private
   */
  public native function set minHeight(value:Number):void;

  /**
   The minimum width for the element (defaults to 5)
   */
  public native function get minWidth():Number;

  /**
   * @private
   */
  public native function set minWidth(value:Number):void;

  /**
   The minimum x for the element (defaults to 0)
   */
  public native function get minX():Number;

  /**
   * @private
   */
  public native function set minX(value:Number):void;

  /**
   The minimum x for the element (defaults to 0)
   */
  public native function get minY():Number;

  /**
   * @private
   */
  public native function set minY(value:Number):void;

  /**
   <b>Deprecated</b>. Deprecated style of adding multi-direction resize handles.
   */
  public native function get multiDirectional():Boolean;

  /**
   * @private
   */
  public native function set multiDirectional(value:Boolean):void;

  /**
   True to ensure that the resize handles are always visible, false to display them only when the user mouses over the resizable borders. This is only applied at config time. (defaults to false)
   */
  public native function get pinned():Boolean;

  /**
   * @private
   */
  public native function set pinned(value:Boolean):void;

  /**
   True to preserve the original ratio between height and width during resize (defaults to false)
   */
  public native function get preserveRatio():Boolean;

  /**
   * @private
   */
  public native function set preserveRatio(value:Boolean):void;

  /**
   True to resize the first child, or id/element to resize (defaults to false)
   */
  public native function get resizeChild():*;

  /**
   * @private
   */
  public native function set resizeChild(value:*):void;

  /**
   Constrain the resize to a particular region
   */
  public native function get resizeRegion():Region;

  /**
   * @private
   */
  public native function set resizeRegion(value:Region):void;

  /**
   True for transparent handles. This is only applied at config time. (defaults to false)
   */
  public native function get transparent():Boolean;

  /**
   * @private
   */
  public native function set transparent(value:Boolean):void;

  /**
   The width of the element in pixels (defaults to null)
   */
  public native function get width():Number;

  /**
   * @private
   */
  public native function set width(value:Number):void;

  /**
   The increment to snap the width resize in pixels (only applies if <code><a href="output/Ext.Resizable.html#Ext.Resizable-dynamic">dynamic</a>==true</code>). Defaults to <tt>0</tt>.
   */
  public native function get widthIncrement():Number;

  /**
   * @private
   */
  public native function set widthIncrement(value:Number):void;

  /**
   True to wrap an element with a div if needed (required for textareas and images, defaults to false) in favor of the handles config option (defaults to false)
   */
  public native function get wrap():Boolean;

  /**
   * @private
   */
  public native function set wrap(value:Boolean):void;


}
}
    