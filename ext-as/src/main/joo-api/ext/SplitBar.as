package ext {

import ext.util.Observable;

/**
 * Fires before the splitter is dragged
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.SplitBar</code>

 *       </li>

 * </ul>
 */
[Event(name="beforeresize")]

/**
 * Fires when the splitter is moved
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.SplitBar</code>

 *       </li>

 *       <li>
 *           <code>newSize:Number</code>
 the new width or height
 *       </li>

 * </ul>
 */
[Event(name="moved")]

/**
 * Fires when the splitter is moved (alias for <a href="output/Ext.SplitBar.html#Ext.SplitBar-moved">moved</a>)
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.SplitBar</code>

 *       </li>

 *       <li>
 *           <code>newSize:Number</code>
 the new width or height
 *       </li>

 * </ul>
 */
[Event(name="resize")]


/**
 * Creates draggable splitter bar functionality from two elements (element to be dragged and element to be resized). <br/><br/>Usage: <pre><code>var split = new Ext.SplitBar("elementToDrag", "elementToSize",
 Ext.SplitBar.HORIZONTAL, Ext.SplitBar.LEFT);
 split.setAdapter(new Ext.SplitBar.AbsoluteLayoutAdapter("container"));
 split.minSize = 100;
 split.maxSize = 600;
 split.animate = true;
 split.on('moved', splitterMoved);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.splitbar
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#cls-Ext.SplitBar Ext JS source
 */
public class SplitBar extends Observable {

  /**
   * Create a new SplitBar
   *
   * @param dragElement The element to be dragged and act as the SplitBar.
   * @param resizingElement The element to be resized based on where the SplitBar element is dragged
   * @param orientation Either Ext.SplitBar.HORIZONTAL or Ext.SplitBar.VERTICAL. (Defaults to HORIZONTAL)
   * @param placement Either Ext.SplitBar.LEFT or Ext.SplitBar.RIGHT for horizontal or Ext.SplitBar.TOP or Ext.SplitBar.BOTTOM for vertical. (By default, this is determined automatically by the initial position of the SplitBar).
   * @see ext.config.splitbar
   */
  public function SplitBar(dragElement:*, resizingElement:*, orientation:Number = undefined, placement:Number = undefined) {
    super();
  }

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-adapter Ext JS source
   */
  public native function get adapter():Object;

  /**
   * @private
   */
  public native function set adapter(value:Object):void;

  /**
   Whether to animate the transition to the new size
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-animate Ext JS source
   */
  public native function get animate():Boolean;

  /**
   * @private
   */
  public native function set animate(value:Boolean):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-b4StartDrag Ext JS source
   */
  public native function get b4StartDrag():Object;

  /**
   * @private
   */
  public native function set b4StartDrag(value:Object):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-dd Ext JS source
   */
  public native function get dd():Object;

  /**
   * @private
   */
  public native function set dd(value:Object):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-dragSpecs Ext JS source
   */
  public native function get dragSpecs():Object;

  /**
   * @private
   */
  public native function set dragSpecs(value:Object):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-el Ext JS source
   */
  public native function get el():Object;

  /**
   * @private
   */
  public native function set el(value:Object):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-endDrag Ext JS source
   */
  public native function get endDrag():Object;

  /**
   * @private
   */
  public native function set endDrag(value:Object):void;

  /**
   The maximum size of the resizing element. (Defaults to 2000)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-maxSize Ext JS source
   */
  public native function get maxSize():Number;

  /**
   * @private
   */
  public native function set maxSize(value:Number):void;

  /**
   The minimum size of the resizing element. (Defaults to 0)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-minSize Ext JS source
   */
  public native function get minSize():Number;

  /**
   * @private
   */
  public native function set minSize(value:Number):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-orientation Ext JS source
   */
  public native function get orientation():Number;

  /**
   * @private
   */
  public native function set orientation(value:Number):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-placement Ext JS source
   */
  public native function get placement():Object;

  /**
   * @private
   */
  public native function set placement(value:Object):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-proxy Ext JS source
   */
  public native function get proxy():Object;

  /**
   * @private
   */
  public native function set proxy(value:Object):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-resizingEl Ext JS source
   */
  public native function get resizingEl():Object;

  /**
   * @private
   */
  public native function set resizingEl(value:Object):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-shim Ext JS source
   */
  public native function get shim():Object;

  /**
   * @private
   */
  public native function set shim(value:Object):void;

  /**
   The increment, in pixels by which to move this SplitBar. When <i>undefined</i>, the SplitBar moves smoothly.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-tickSize Ext JS source
   */
  public native function get tickSize():Number;

  /**
   * @private
   */
  public native function set tickSize(value:Number):void;

  /**
   Whether to create a transparent shim that overlays the page when dragging, enables dragging across iframes.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar-useShim Ext JS source
   */
  public native function get useShim():Boolean;

  /**
   * @private
   */
  public native function set useShim(value:Boolean):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-createProxy Ext JS source
   */
  public native function createProxy():void;

  /**
   * Destroy this splitbar.
   *
   * @param removeEl True to remove the element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-destroy Ext JS source
   */
  public native function destroy(removeEl:Boolean):void;

  /**
   * Get the adapter this SplitBar uses
   *
   * @return The adapter object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-getAdapter Ext JS source
   */
  public native function getAdapter():Object;

  /**
   * Gets the maximum size for the resizing element
   *
   * @return The maximum size
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-getMaximumSize Ext JS source
   */
  public native function getMaximumSize():Number;

  /**
   * Gets the minimum size for the resizing element
   *
   * @return The minimum size
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-getMinimumSize Ext JS source
   */
  public native function getMinimumSize():Number;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-onEndProxyDrag Ext JS source
   */
  public native function onEndProxyDrag():void;

  /**
   * Set the adapter this SplitBar uses
   *
   * @param adapter A SplitBar adapter object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-setAdapter Ext JS source
   */
  public native function setAdapter(adapter:Object):void;

  /**
   * Sets the initialize size for the resizing element
   *
   * @param size The initial size
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-setCurrentSize Ext JS source
   */
  public native function setCurrentSize(size:Number):void;

  /**
   * Sets the maximum size for the resizing element
   *
   * @param maxSize The maximum size
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-setMaximumSize Ext JS source
   */
  public native function setMaximumSize(maxSize:Number):void;

  /**
   * Sets the minimum size for the resizing element
   *
   * @param minSize The minimum size
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar-setMinimumSize Ext JS source
   */
  public native function setMinimumSize(minSize:Number):void;

  /**
   * Orientation constant - Create a vertical SplitBar
   */
  public static const VERTICAL:Number = 1;

  /**
   * Orientation constant - Create a horizontal SplitBar
   */
  public static const HORIZONTAL:Number = 2;

  /**
   * Placement constant - The resizing element is to the left of the splitter element
   */
  public static const LEFT:Number = 1;

  /**
   * Placement constant - The resizing element is to the right of the splitter element
   */
  public static const RIGHT:Number = 2;

  /**
   * Placement constant - The resizing element is positioned above the splitter element
   */
  public static const TOP:Number = 3;

  /**
   * Placement constant - The resizing element is positioned under splitter element
   */
  public static const BOTTOM:Number = 4;

}
}
    