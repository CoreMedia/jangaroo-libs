package ext.form {

import ext.config.sliderfield;

/**
 * Fires before the value of a thumb is changed. Return false to cancel the change
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.form.Slider</code>
 The slider instance
 *       </li>

 *       <li>
 *           <code>thumb:</code>
 The thumb instance
 *       </li>

 *       <li>
 *           <code>newValue:ext.form.Number</code>
 The value that the thumb will be set to
 *       </li>

 *       <li>
 *           <code>oldValue:ext.form.Number</code>
 The previous value
 *       </li>

 * </ul>
 */
[Event(name="beforechange")]

/**
 * Fires when the value of a thumb is changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.form.Slider</code>
 The slider instance
 *       </li>

 *       <li>
 *           <code>thumb:</code>
 The thumb instance
 *       </li>

 *       <li>
 *           <code>newValue:ext.form.Number</code>
 The value that the thumb will be set to
 *       </li>

 *       <li>
 *           <code>oldValue:ext.form.Number</code>
 The previous value
 *       </li>

 * </ul>
 */
[Event(name="change")]

/**
 * Fires while the thumb is actively dragging.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.form.Slider</code>
 The slider instance
 *       </li>

 *       <li>
 *           <code>thumb:</code>
 The thumb instance
 *       </li>

 *       <li>
 *           <code>value:ext.form.Number</code>
 The value of the thumb.
 *       </li>

 * </ul>
 */
[Event(name="drag")]

/**
 * Fires when the thumb is finished dragging.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>slider:ext.form.Slider</code>
 The slider instance
 *       </li>

 *       <li>
 *           <code>thumb:</code>
 The thumb instance
 *       </li>

 *       <li>
 *           <code>value:ext.form.Number</code>
 The value of the thumb.
 *       </li>

 * </ul>
 */
[Event(name="dragend")]


/**
 * Form component allowing a user to move a 'thumb' along a slider axis to choose a value. Sliders can equally be used outside of the context of a form. Example usage:
 <pre><code>new Ext.form.FormPanel({
 items: [
 {
 xtype   : 'sliderfield',
 label   : 'Volume',
 value   : 5,
 minValue: 0,
 maxValue: 10
 }
 ]
 });
 </code></pre>Or as a standalone component: <pre><code>var slider = new Ext.form.Slider({
 value: 5,
 minValue: 0,
 maxValue: 10
 });

 slider.setValue(8); //will update the value and move the thumb;
 slider.getValue(); //returns 8
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'sliderfield' / the EXML element &lt;sliderfield>.</p>
 * @see ext.config.sliderfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#cls-Ext.form.Slider Ext JS source
 */
public class Slider extends Field {

  /**
   * Create a new Slider.
   *
   * @param config The config object
   * @see ext.config.sliderfield
   */
  public function Slider(config:sliderfield = null) {
    super(null);
  }

  /**
   When set to a number greater than 0, it will be the animation duration in ms, defaults to 200
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get animationDuration():ext.form.Number;

  /**
   The increment by which to snap each thumb when its value changes. Defaults to 1. Any thumb movement will be snapped to the nearest value that is a multiple of the increment (e.g. if increment is 10 and the user tries to move the thumb to 67, it will be snapped to 70 instead)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get increment():ext.form.Number;

  /**
   The highest value any thumb on this slider can be set to (defaults to 100)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxValue():ext.form.Number;

  /**
   The lowest value any thumb on this slider can be set to (defaults to 0)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minValue():ext.form.Number;

  /**
   Optional array of Ext.form.Slider.Thumb instances. Usually <a href="values.html">values</a> should be used instead
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get thumbs():Array;

  /**
   The current track width. Used when the field is hidden so setValue will continue to work (needs the fieldEls width).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get trackWidth():ext.form.Number;

  /**
   The values to initialize each thumb with. One thumb will be created for each value. This configuration should always be defined but if it is not then it will be treated as though [0] was passed. This is intentionally doc'd as private and is not fully supported/implemented yet.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get values():Array;

  /**
   *
   *
   * @param value The value to snap
   * @return The snapped value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-constrain Ext JS source
   */
  public native function constrain(value:ext.form.Number):ext.form.Number;

  /**
   * Disables the slider by calling the internal <a href="output/Ext.form.Slider.html#Ext.form.Slider-setThumbsDisabled">setThumbsDisabled</a> method
   *
   * @param silent Passing true, will supress the 'disable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-disable Ext JS source
   */
  override public native function disable(silent:Boolean):void;

  /**
   * Enables the slider by calling the internal <a href="output/Ext.form.Slider.html#Ext.form.Slider-setThumbsDisabled">setThumbsDisabled</a> method.
   *
   * @param silent Passing false will supress the 'enable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-enable Ext JS source
   */
  override public native function enable(silent:Boolean):void;

  /**
   *
   *
   * @param value The value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-getNearest Ext JS source
   */
  public native function getNearest(value:ext.form.Number):Number;

  /**
   *
   *
   * @param value The internal slider value
   * @return The pixel value, rounded and relative to the left edge of the scroller
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-getPixelValue Ext JS source
   */
  public native function getPixelValue(value:ext.form.Number):ext.form.Number;

  /**
   *
   *
   * @param pixelValue The pixel value, relative to the left edge of the slider
   * @return The value based on slider units
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-getSliderValue Ext JS source
   */
  public native function getSliderValue(pixelValue:ext.form.Number):ext.form.Number;

  /**
   * Returns the Thumb instance bound to this Slider
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-getThumb Ext JS source
   */
  public native function getThumb():*;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-getThumbValue Ext JS source
   */
  public native function getThumbValue():void;

  /**
   * Returns the current value of the Slider's thumb
   *
   * @return The thumb value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-getValue Ext JS source
   */
  override public native function getValue():*;

  /**
   *
   *
   * @param thumb The thumb to move
   * @param pixel The pixel the thumb should be centered on
   * @param animationDuration True to animationDuration the movement
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-moveThumb Ext JS source
   */
  public native function moveThumb(thumb:*, pixel:ext.form.Number, animationDuration:Boolean):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-onDrag Ext JS source
   */
  public native function onDrag():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-onTap Ext JS source
   */
  public native function onTap():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-onThumbDragEnd Ext JS source
   */
  public native function onThumbDragEnd():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-renderThumbs Ext JS source
   */
  public native function renderThumbs():void;

  /**
   *
   *
   * @param disable True to disable, false to enable
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-setThumbsDisabled Ext JS source
   */
  public native function setThumbsDisabled(disable:Boolean):void;

  /**
   * Sets the new value of the slider, constraining it within <a href="minValue.html">minValue</a> and <a href="maxValue.html">maxValue</a>, and snapping to the nearest <a href="increment.html">increment</a> if set
   *
   * @param value The new value
   * @param animationDuration Animation duration, 0 for no animation
   * @param moveThumb Whether or not to move the thumb as well. Defaults to true
   * @return this This Slider
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.form.Slider-setValue Ext JS source
   */
  public native function setValueSlider(value:ext.form.Number, animationDuration:ext.form.Number, moveThumb:Boolean):Slider;

}
}
    