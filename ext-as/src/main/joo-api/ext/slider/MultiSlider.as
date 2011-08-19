package ext.slider {
import ext.BoxComponent;
import ext.IEventObject;

/**
 * Fires before the slider value is changed. By returning false from an event handler, you can cancel the event and prevent the slider from changing.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.slider.MultiSlider</code>
 The slider
 *       </li>

 *       <li>
 *           <code>newValue:Number</code>
 The new value which the slider is being changed to.
 *       </li>

 *       <li>
 *           <code>oldValue:Number</code>
 The old value which the slider was previously.
 *       </li>

 * </ul>
 */
[Event(name="beforechange")]

/**
 * Fires when the slider value is changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.slider.MultiSlider</code>
 The slider
 *       </li>

 *       <li>
 *           <code>newValue:Number</code>
 The new value which the slider has been changed to.
 *       </li>

 *       <li>
 *           <code>thumb:ext.slider.Thumb</code>
 The thumb that was changed
 *       </li>

 * </ul>
 */
[Event(name="change")]

/**
 * Fires when the slider value is changed by the user and any drag operations have completed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.slider.MultiSlider</code>
 The slider
 *       </li>

 *       <li>
 *           <code>newValue:Number</code>
 The new value which the slider has been changed to.
 *       </li>

 *       <li>
 *           <code>thumb:ext.slider.Thumb</code>
 The thumb that was changed
 *       </li>

 * </ul>
 */
[Event(name="changecomplete")]

/**
 * Fires continuously during the drag operation while the mouse is moving.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.slider.MultiSlider</code>
 The slider
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event fired from Ext.dd.DragTracker
 *       </li>

 * </ul>
 */
[Event(name="drag")]

/**
 * Fires after the drag operation has completed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.slider.MultiSlider</code>
 The slider
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event fired from Ext.dd.DragTracker
 *       </li>

 * </ul>
 */
[Event(name="dragend")]

/**
 * Fires after a drag operation has started.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.slider.MultiSlider</code>
 The slider
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event fired from Ext.dd.DragTracker
 *       </li>

 * </ul>
 */
[Event(name="dragstart")]


/**
 * Slider which supports vertical or horizontal orientation, keyboard adjustments, configurable snapping, axis clicking and animation. Can be added as an item to any container. Example usage: <pre>new Ext.Slider({
 renderTo: Ext.getBody(),
 width: 200,
 value: 50,
 increment: 10,
 minValue: 0,
 maxValue: 100
 });
 </pre>Sliders can be created with more than one thumb handle by passing an array of values instead of a single one: <pre>new Ext.Slider({
 renderTo: Ext.getBody(),
 width: 200,
 values: [25, 50, 75],
 minValue: 0,
 maxValue: 100,

 //this defaults to true, setting to false allows the thumbs to pass each other
 <a href="output/Ext.slider.MultiSlider.html#Ext.slider.MultiSlider-constrainThumbs">constrainThumbs</a>: false
 });
 </pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.multislider
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#cls-Ext.slider.MultiSlider Ext JS source
 */
public class MultiSlider extends BoxComponent {

  /**
   *
   *
   * @see ext.config.multislider
   */
  public function MultiSlider() {
    super(null);
  }

  /**
   Determines whether or not a click to the slider component is considered to be a user request to change the value. Specified as an array of [top, bottom], the click event's 'top' property is compared to these numbers and the click only considered a change request if it falls within them. e.g. if the 'top' value of the click event is 4 or 16, the click is not considered a change request as it falls outside of the [5, 15] range
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#prop-Ext.slider.MultiSlider-clickRange Ext JS source
   */
  public native function get clickRange():Array;

  /**
   * @private
   */
  public native function set clickRange(value:Array):void;

  /**
   Array containing references to each thumb
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#prop-Ext.slider.MultiSlider-thumbs Ext JS source
   */
  public native function get thumbs():Array;

  /**
   * @private
   */
  public native function set thumbs(value:Array):void;

  /**
   The number used internally to set the z index of the top thumb (see promoteThumb for details)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#prop-Ext.slider.MultiSlider-topThumbZIndex Ext JS source
   */
  public native function get topThumbZIndex():Number;

  /**
   * @private
   */
  public native function set topThumbZIndex(value:Number):void;

  /**
   Array of values to initialize the thumbs with
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#prop-Ext.slider.MultiSlider-values Ext JS source
   */
  public native function get values():Array;

  /**
   * @private
   */
  public native function set values(value:Array):void;

  /**
   Turn on or off animation. Defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get animate():Boolean;

  /**
   Determines whether or not clicking on the Slider axis will change the slider. Defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get clickToChange():Boolean;

  /**
   True to disallow thumbs from overlapping one another. Defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get constrainThumbs():Boolean;

  /**
   The number of decimal places to which to round the Slider's value. Defaults to 0.
   <p>To disable rounding, configure as <tt><b>false</b></tt>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get decimalPrecision():*;

  /**
   How many units to change the slider when adjusting by drag and drop. Use this option to enable 'snapping'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get increment():Number;

  /**
   How many units to change the Slider when adjusting with keyboard navigation. Defaults to 1. If the increment config is larger, it will be used instead.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get keyIncrement():Number;

  /**
   The maximum value for the Slider. Defaults to 100.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxValue():Number;

  /**
   The minimum value for the Slider. Defaults to 0.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minValue():Number;

  /**
   The value to initialize the slider with. Defaults to minValue.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get value():Number;

  /**
   Orient the Slider vertically rather than horizontally, defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get vertical():Boolean;

  /**
   * Creates a new thumb and adds it to the slider
   *
   * @param value The initial value to set on the thumb. Defaults to 0
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-addThumb Ext JS source
   */
  public native function addThumb(value:Number):void;

  /**
   *
   *
   * @param value The unsnapped value
   * @return The value of the nearest snap target
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-doSnap Ext JS source
   */
  public native function doSnap(value:Number):Number;

  /**
   *
   *
   * @param local Object containing top and left values from a click event
   * @param prop The property of local to compare on. Use 'left' for horizontal sliders, 'top' for vertical ones
   * @return The closest thumb object and its distance from the click event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-getNearest Ext JS source
   */
  public native function getNearest(local:Object, prop:String):Object;

  /**
   *
   *
   * @return The ratio of pixels to mapped values
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-getRatio Ext JS source
   */
  public native function getRatio():Number;

  /**
   * Returns the current value of the slider
   *
   * @param index The index of the thumb to return a value for
   * @return The current value of the slider
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-getValue Ext JS source
   */
  public native function getValue(index:Number):Number;

  /**
   * Returns an array of values - one for the location of each thumb
   *
   * @return The set of thumb values
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-getValues Ext JS source
   */
  public native function getValues():Array;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-initEvents Ext JS source
   */
  public native function initEvents():void;

  /**
   *
   *
   * @param index Index of the thumb to move
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-moveThumb Ext JS source
   */
  public native function moveThumb(index:Number):void;

  /**
   *
   *
   * @param value Raw number value
   * @return The raw value rounded to the correct d.p. and constrained within the set max and min values
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-normalizeValue Ext JS source
   */
  public native function normalizeValue(value:Number):Number;

  /**
   *
   *
   * @param local Object containing top and left values for the click event.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-onClickChange Ext JS source
   */
  public native function onClickChange(local:Object):void;

  /**
   *
   *
   * @param e The Event object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-onKeyDown Ext JS source
   */
  public native function onKeyDown(e:IEventObject):void;

  /**
   *
   *
   * @param e The click event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-onMouseDown Ext JS source
   */
  public native function onMouseDown(e:IEventObject):void;

  /**
   *
   *
   * @param topThumb The thumb to move to the top
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-promoteThumb Ext JS source
   */
  public native function promoteThumb(topThumb:Thumb):void;

  /**
   *
   *
   * @param pos The position along the slider to return a mapped value for
   * @return The mapped value for the given position
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-reverseValue Ext JS source
   */
  public native function reverseValue(pos:Number):Number;

  /**
   * Sets the maximum value for the slider instance. If the current value is more than the maximum value, the current value will be changed.
   *
   * @param val The new maximum value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-setMaxValue Ext JS source
   */
  public native function setMaxValue(val:Number):void;

  /**
   * Sets the minimum value for the slider instance. If the current value is less than the minimum value, the current value will be changed.
   *
   * @param val The new minimum value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-setMinValue Ext JS source
   */
  public native function setMinValue(val:Number):void;

  /**
   * Programmatically sets the value of the Slider. Ensures that the value is constrained within the minValue and maxValue.
   *
   * @param index Index of the thumb to move
   * @param value The value to set the slider to. (This will be constrained within minValue and maxValue)
   * @param animate Turn on or off animation, defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-setValue Ext JS source
   */
  public native function setValue(index:Number, value:Number, animate:Boolean):void;

  /**
   * Synchronizes the thumb position to the proper proportion of the total component width based on the current slider <a href="output/Ext.slider.MultiSlider.html#Ext.slider.MultiSlider-value">value</a>. This will be called automatically when the Slider is resized by a layout, but if it is rendered auto width, this method can be called from another resize handler to sync the Slider if necessary.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-syncThumb Ext JS source
   */
  public native function syncThumb():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.MultiSlider-translateValue Ext JS source
   */
  public native function translateValue():void;

}
}
    