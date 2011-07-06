package ext.config {

import ext.Ext;
import ext.slider.MultiSlider;

/**
 * Represents a single thumb element on a Slider. This would not usually be created manually and would instead be created internally by an <a href="Ext.slider.MultiSlider.html">Ext.Slider</a>.
 * <p>This class serves as a typed config object for constructor of class Thumb.</p>
 *
 * @see ext.slider.Thumb
 */
[ExtConfig(target="ext.slider.Thumb")]
public class thumb {

  public function thumb(config:Object = null) {

    Ext.apply(this, config);
  }


  /**
   True to constrain the thumb so that it cannot overlap its siblings
   */
  public native function get constrain():Boolean;

  /**
   * @private
   */
  public native function set constrain(value:Boolean):void;

  /**
   The Slider to render to (required)
   */
  public native function get slider():MultiSlider;

  /**
   * @private
   */
  public native function set slider(value:MultiSlider):void;


}
}
    