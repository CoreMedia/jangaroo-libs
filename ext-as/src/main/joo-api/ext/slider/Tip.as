package ext.slider {
import ext.Component;
import ext.IEventObject;
import ext.Plugin;
import ext.Tip;
import ext.config.slidertip;

/**
 * Simple plugin for using an Ext.Tip with a slider to show the slider value. Example usage: <pre>new Ext.Slider({
 width: 214,
 minValue: 0,
 maxValue: 100,
 plugins: new Ext.slider.Tip()
 });
 </pre>Optionally provide your own tip text by overriding getText: <pre> new Ext.Slider({
 width: 214,
 minValue: 0,
 maxValue: 100,
 plugins: new Ext.slider.Tip({
 getText: function(thumb){
 return String.format('<b>{0}% complete</b>', thumb.value);
 }
 })
 });
 </pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.slidertip
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SliderTip.html#cls-Ext.slider.Tip Ext JS source
 */
public class Tip extends ext.Tip implements Plugin {

  /**
   *
   *
   * @see ext.config.slidertip
   */
  public function Tip(config:slidertip = null) {
    super(config);
  }

  /**
   * Used to create the text that appears in the Tip's body. By default this just returns the value of the Slider Thumb that the Tip is attached to. Override to customize.
   *
   * @param thumb The Thumb that the Tip is attached to
   * @return The text to display in the tip
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SliderTip.html#method-Ext.slider.Tip-getText Ext JS source
   */
  public native function getText(thumb:Thumb):String;

  /**
   * Called whenever a dragstart or drag event is received on the associated Thumb. 
   * Aligns the Tip with the Thumb's new position.
   *
   * @param slider The slider
   * @param e The Event object
   * @param thumb The thumb that the Tip is attached to
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SliderTip.html#method-Ext.slider.Tip-onSlide Ext JS source
   */
  public native function onSlide(slider:MultiSlider, e:IEventObject, thumb:Thumb):void;

  public native function init(component:Component):void;

}
}
    