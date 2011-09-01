package ext.util {

import ext.config.draggable;
import ext.form.Number;

import js.Event;

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Draggable</code>

 *       </li>

 *       <li>
 *           <code>offset:ext.util.Offset</code>

 *       </li>

 * </ul>
 */
[Event(name="offsetchange")]


/**
 * A core util class to bring Draggable behavior to any DOM element, acts as a base class for Scroller and Sortable
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.draggable
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#cls-Ext.util.Draggable Ext JS source
 */
public class Draggable extends Observable {

  /**
   *
   *
   * @param el The element you want to make draggable.
   * @param config The configuration object for this Draggable.
   * @see ext.config.draggable
   */
  public function Draggable(el:*, config:draggable) {
    super();
  }

  /**
   How long animations for this draggable take by default when using setOffset with animate being true. Defaults to 300.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#prop-Ext.util.Draggable-animationDuration Ext JS source
   */
  public native function get animationDuration():ext.form.Number;

  /**
   * @private
   */
  public native function set animationDuration(value:ext.form.Number):void;

  /**
   Read-only Property representing whether or not the Draggable is currently dragging or not.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#prop-Ext.util.Draggable-dragging Ext JS source
   */
  public native function get dragging():Boolean;

  /**
   * @private
   */
  public native function set dragging(value:Boolean):void;

  /**
   Read-only value representing whether the Draggable can be moved horizontally. This is automatically calculated by Draggable by the direction configuration.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#prop-Ext.util.Draggable-horizontal Ext JS source
   */
  public native function get horizontal():Boolean;

  /**
   * @private
   */
  public native function set horizontal(value:Boolean):void;

  /**
   Read-only Property representing the region that the Draggable is constrained to.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#prop-Ext.util.Draggable-offsetBoundary Ext JS source
   */
  public native function get offsetBoundary():Region;

  /**
   * @private
   */
  public native function set offsetBoundary(value:Region):void;

  /**
   The amount of pixels you have to move before the drag operation starts. Defaults to 0
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#prop-Ext.util.Draggable-threshold Ext JS source
   */
  public native function get threshold():ext.form.Number;

  /**
   * @private
   */
  public native function set threshold(value:ext.form.Number):void;

  /**
   Whether or not to automatically re-calculate the Scroller's and its container's size on every touchstart. Defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#prop-Ext.util.Draggable-updateBoundaryOnTouchStart Ext JS source
   */
  public native function get updateBoundaryOnTouchStart():Boolean;

  /**
   * @private
   */
  public native function set updateBoundaryOnTouchStart(value:Boolean):void;

  /**
   Read-only value representing whether the Draggable can be moved vertically. This is automatically calculated by Draggable by the direction configuration.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#prop-Ext.util.Draggable-vertical Ext JS source
   */
  public native function get vertical():Boolean;

  /**
   * @private
   */
  public native function set vertical(value:Boolean):void;

  /**
   A simple CSS selector that represents elements within the draggable that should NOT initiate a drag.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cancelSelector():String;

  /**
   Can be either a DOM element, an instance of Ext.Element, 'parent' or null for no constrain
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get constrain():*;

  /**
   How many milliseconds a user must hold the draggable before starting a drag operation. Defaults to 0 or immediate.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get delay():ext.form.Number;

  /**
   Possible values: 'vertical', 'horizontal', or 'both' Defaults to 'both'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get direction():String;

  /**
   Whether or not the draggable behavior is disabled on instantiation Defaults to false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabled():Boolean;

  /**
   The element to actually bind touch events to, the only string accepted is 'parent' for convenience. Defaults to this class' element itself
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get eventTarget():*;

  /**
   Draggable and Droppable objects can participate in a group which are capable of interacting. Defaults to 'base'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get group():String;

  /**
   Whether or not the element or it's proxy will be reverted back (with animation) when it's not dropped and held by a Droppable
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get revert():Boolean;

  /**
   Whether or not to translate the element using CSS Transform (much faster) instead of left and top properties, defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useCssTransform():Boolean;

  /**
   * Destroys this Draggable instance.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   * Disable the Draggable.
   *
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-disable Ext JS source
   */
  public native function disable():Draggable;

  /**
   * Enable the Draggable.
   *
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-enable Ext JS source
   */
  public native function enable():Draggable;

  /**
   * Gets the new offset from a touch offset.
   *
   * @param touchPoint The touch offset instance.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-getNewOffsetFromTouchPoint Ext JS source
   */
  public native function getNewOffsetFromTouchPoint(touchPoint:ext.util.Offset):void;

  /**
   * Returns the current offset relative to the original location of this Draggable.
   *
   * @return offset An Ext.util.Offset instance containing the offset.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-getOffset Ext JS source
   */
  public native function getOffset():ext.util.Offset;

  /**
   * Returns the element thats is being visually dragged.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-getProxyEl Ext JS source
   */
  public native function getProxyEl():void;

  /**
   * Internal method that handles a frame of the offset animation.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-handleAnimationFrame Ext JS source
   */
  public native function handleAnimationFrame():void;

  /**
   * Method to determine whether this Draggable is currently dragging.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-isDragging Ext JS source
   */
  public native function isDragging():Boolean;

  /**
   * Method to determine whether this Draggable can be dragged on the x-axis
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-isHorizontal Ext JS source
   */
  public native function isHorizontal():Boolean;

  /**
   * Method to determine whether this Draggable can be dragged on the y-axis
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-isVertical Ext JS source
   */
  public native function isVertical():Boolean;

  /**
   * Use this to move the draggable to a coordinate on the screen.
   *
   * @param x the vertical coordinate in pixels
   * @param y the horizontal coordinate in pixels
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-moveTo Ext JS source
   */
  public native function moveTo(x:ext.form.Number, y:ext.form.Number):Draggable;

  /**
   * Fires when a drag events happens. Internal use only.
   *
   * @param e The event object for the drag event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-onDrag Ext JS source
   */
  public native function onDrag(e:Event):void;

  /**
   * Fires when a dragend event happens. Internal use only.
   *
   * @param e The event object for the dragend event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-onDragEnd Ext JS source
   */
  public native function onDragEnd(e:Event):void;

  /**
   * Fires when the orientation changes. Internal use only.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-onOrientationChange Ext JS source
   */
  public native function onOrientationChange():void;

  /**
   * Fires when the Drag operation starts. Internal use only.
   *
   * @param e The event object for the drag operation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-onStart Ext JS source
   */
  public native function onStart(e:Event):void;

  /**
   * This method will reset the initial region of the Draggable.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-reset Ext JS source
   */
  public native function reset():void;

  /**
   * Sets the dragging flag and adds a dragging class to the element.
   *
   * @param dragging True to enable dragging, false to disable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-setDragging Ext JS source
   */
  public native function setDragging(dragging:Boolean):void;

  /**
   * Combined method to disable or enable the Draggable. This method is called by the enable and disable methods.
   *
   * @param enabled True to enable, false to disable. Defaults to false.
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-setEnabled Ext JS source
   */
  public native function setEnabled(enabled:Boolean):Draggable;

  /**
   * Sets the offset of this Draggable relatively to its original offset.
   *
   * @param offset An object or Ext.util.Offset instance containing the x and y coordinates.
   * @param animate Whether or not to animate the setting of the offset. True to use the default animationDuration, a number to specify the duration for this operation.
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-setOffset Ext JS source
   */
  public native function setOffset(offset:*, animate:*):Draggable;

  /**
   * Internal method that sets the left and top of the proxyEl.
   *
   * @param offset An object or Ext.util.Offset instance containing the x and y coordinates.
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-setStyleOffset Ext JS source
   */
  public native function setStyleOffset(offset:*):Draggable;

  /**
   * Internal method that sets the transform of the proxyEl.
   *
   * @param offset An object or Ext.util.Offset instance containing the x and y coordinates for the transform.
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-setTransformOffset Ext JS source
   */
  public native function setTransformOffset(offset:*):Draggable;

  /**
   * Change the Draggable to use css transforms instead of style offsets or the other way around.
   *
   * @param useCssTransform True to use css transforms instead of style offsets.
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-setUseCssTransform Ext JS source
   */
  public native function setUseCssTransform(useCssTransform:Boolean):Draggable;

  /**
   * Internal method that sets the offset of the Draggable using an animation
   *
   * @param offset An object or Ext.util.Offset instance containing the x and y coordinates for the transform.
   * @param animate Whether or not to animate the setting of the offset. True to use the default animationDuration, a number to specify the duration for this operation.
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-startAnimation Ext JS source
   */
  public native function startAnimation(offset:*, animate:*):Draggable;

  /**
   * Internal method that stops the current offset animation
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-stopAnimation Ext JS source
   */
  public native function stopAnimation():void;

  /**
   * Updates the boundary information for this Draggable. This method shouldn't have to be called by the developer and is mostly used for internal purposes. Might be useful when creating subclasses of Draggable.
   *
   * @param init Whether or not this is happing during instantiation, which we need to apply the transform / style to the DOM element
   * @return this This Draggable instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Draggable.html#method-Ext.util.Draggable-updateBoundary Ext JS source
   */
  public native function updateBoundary(init:Boolean):Draggable;

}
}
    