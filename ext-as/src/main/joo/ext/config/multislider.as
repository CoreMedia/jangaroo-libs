package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class MultiSlider.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.slider.MultiSlider
 */
[ExtConfig(target="ext.slider.MultiSlider", xtype="multislider")]
public class multislider extends box {

  public function multislider(config:Object = null) {

    super(config);
  }


  /**
   Turn on or off animation. Defaults to true
   */
  public native function get animate():Boolean;

  /**
   * @private
   */
  public native function set animate(value:Boolean):void;

  /**
   Determines whether or not clicking on the Slider axis will change the slider. Defaults to true
   */
  public native function get clickToChange():Boolean;

  /**
   * @private
   */
  public native function set clickToChange(value:Boolean):void;

  /**
   True to disallow thumbs from overlapping one another. Defaults to true
   */
  public native function get constrainThumbs():Boolean;

  /**
   * @private
   */
  public native function set constrainThumbs(value:Boolean):void;

  /**
   The number of decimal places to which to round the Slider's value. Defaults to 0.
   <p>To disable rounding, configure as <tt><b>false</b></tt>.</p>
   */
  public native function get decimalPrecision():*;

  /**
   * @private
   */
  public native function set decimalPrecision(value:*):void;

  /**
   How many units to change the slider when adjusting by drag and drop. Use this option to enable 'snapping'.
   */
  public native function get increment():Number;

  /**
   * @private
   */
  public native function set increment(value:Number):void;

  /**
   How many units to change the Slider when adjusting with keyboard navigation. Defaults to 1. If the increment config is larger, it will be used instead.
   */
  public native function get keyIncrement():Number;

  /**
   * @private
   */
  public native function set keyIncrement(value:Number):void;

  /**
   The maximum value for the Slider. Defaults to 100.
   */
  public native function get maxValue():Number;

  /**
   * @private
   */
  public native function set maxValue(value:Number):void;

  /**
   The minimum value for the Slider. Defaults to 0.
   */
  public native function get minValue():Number;

  /**
   * @private
   */
  public native function set minValue(value:Number):void;

  /**
   The value to initialize the slider with. Defaults to minValue.
   */
  public native function get value():Number;

  /**
   * @private
   */
  public native function set value(value:Number):void;

  /**
   Orient the Slider vertically rather than horizontally, defaults to false.
   */
  public native function get vertical():Boolean;

  /**
   * @private
   */
  public native function set vertical(value:Boolean):void;


}
}
    