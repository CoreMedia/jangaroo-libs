package ext.slider {
import ext.config.slider;

/**
 * Slider which supports vertical or horizontal orientation, keyboard adjustments, configurable snapping, axis clicking and animation. Can be added as an item to any container. Example usage: <pre><code>new Ext.slider.SingleSlider({
 renderTo: Ext.getBody(),
 width: 200,
 value: 50,
 increment: 10,
 minValue: 0,
 maxValue: 100
 });
 </code></pre>The class Ext.slider.SingleSlider is aliased to Ext.Slider for backwards compatibility.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.singleslider
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.SingleSlider Sencha Docs Ext JS 3.4
 */
[Native]
public class SingleSlider extends MultiSlider {

  /**
   *
   *
   * @see ext.config.singleslider
   */
  public function SingleSlider(config:slider = null) {
    super(null);
  }

  /**
   * Returns the current value of the slider
   *
   * @param index The index of the thumb to return a value for
   * @return The current value of the slider
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.SingleSlider-method-getValue Sencha Docs Ext JS 3.4
   */
  override public native function getValue(index:Number):Number;

  /**
   * Programmatically sets the value of the Slider. Ensures that the value is constrained within the minValue and maxValue.
   *
   * @param index Index of the thumb to move
   * @param value The value to set the slider to. (This will be constrained within minValue and maxValue)
   * @param animate Turn on or off animation, defaults to true
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.SingleSlider-method-setValue Sencha Docs Ext JS 3.4
   */
  override public native function setValue(index:Number, value:Number, animate:Boolean):void;

  /**
   * Synchronizes the thumb position to the proper proportion of the total component width based on the current slider <a href="output/Ext.slider.SingleSlider.html#Ext.slider.SingleSlider-value">value</a>. This will be called automatically when the Slider is resized by a layout, but if it is rendered auto width, this method can be called from another resize handler to sync the Slider if necessary.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.SingleSlider-method-syncThumb Sencha Docs Ext JS 3.4
   */
  override public native function syncThumb():void;

}
}
    