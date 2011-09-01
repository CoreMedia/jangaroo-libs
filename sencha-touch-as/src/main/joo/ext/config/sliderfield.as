package ext.config {

import ext.form.Number;

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
 * <p>This class represents the xtype 'sliderfield' and serves as a
 * typed config object for constructor of class Slider.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.Slider
 */
[ExtConfig(target="ext.form.Slider", xtype="sliderfield")]
public class sliderfield extends field {

  public function sliderfield(config:Object = null) {

    super(config);
  }


  /**
   When set to a number greater than 0, it will be the animation duration in ms, defaults to 200
   */
  public native function get animationDuration():ext.form.Number;

  /**
   * @private
   */
  public native function set animationDuration(value:ext.form.Number):void;

  /**
   The increment by which to snap each thumb when its value changes. Defaults to 1. Any thumb movement will be snapped to the nearest value that is a multiple of the increment (e.g. if increment is 10 and the user tries to move the thumb to 67, it will be snapped to 70 instead)
   */
  public native function get increment():ext.form.Number;

  /**
   * @private
   */
  public native function set increment(value:ext.form.Number):void;

  /**
   Overrides <a href="Ext.form.Field.html">Ext.form.Field</a>'s inputCls. Defaults to 'x-slider'
   */
  override public native function get inputCls():String;

  /**
   * @private
   */
  override public native function set inputCls(value:String):void;

  /**
   The highest value any thumb on this slider can be set to (defaults to 100)
   */
  public native function get maxValue():ext.form.Number;

  /**
   * @private
   */
  public native function set maxValue(value:ext.form.Number):void;

  /**
   The lowest value any thumb on this slider can be set to (defaults to 0)
   */
  public native function get minValue():ext.form.Number;

  /**
   * @private
   */
  public native function set minValue(value:ext.form.Number):void;

  /**
   Optional array of Ext.form.Slider.Thumb instances. Usually <a href="values.html">values</a> should be used instead
   */
  public native function get thumbs():Array;

  /**
   * @private
   */
  public native function set thumbs(value:Array):void;

  /**
   The current track width. Used when the field is hidden so setValue will continue to work (needs the fieldEls width).
   */
  public native function get trackWidth():ext.form.Number;

  /**
   * @private
   */
  public native function set trackWidth(value:ext.form.Number):void;

  /**
   The value to initialize the thumb at (defaults to 0)
   */
  override public native function get value():*;

  /**
   * @private
   */
  override public native function set value(value:*):void;

  /**
   The values to initialize each thumb with. One thumb will be created for each value. This configuration should always be defined but if it is not then it will be treated as though [0] was passed. This is intentionally doc'd as private and is not fully supported/implemented yet.
   */
  public native function get values():Array;

  /**
   * @private
   */
  public native function set values(value:Array):void;


}
}
    