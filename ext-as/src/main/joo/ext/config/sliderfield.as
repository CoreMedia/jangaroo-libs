package ext.config {


/**
 * Wraps a <a href="Ext.slider.MultiSlider.html">Slider</a> so it can be used as a form field.
 *
 * <p>This class represents the xtype 'sliderfield' and serves as a
 * typed config object for constructor of class SliderField.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.SliderField
 */
[ExtConfig(target="ext.form.SliderField", xtype="sliderfield")]
public class sliderfield extends field {

  public function sliderfield(config:Object = null) {

    super(config);
  }


  /**
   A function used to display custom text for the slider tip. Defaults to <tt>null</tt>, which will use the default on the plugin.
   */
  public native function get tipText():Function;

  /**
   * @private
   */
  public native function set tipText(value:Function):void;

  /**
   True to use an Ext.slider.Tip to display tips for the value. Defaults to <tt>true</tt>.
   */
  public native function get useTips():Boolean;

  /**
   * @private
   */
  public native function set useTips(value:Boolean):void;


}
}
    