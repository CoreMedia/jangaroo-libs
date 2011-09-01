package ext.config {


/**
 * Specialized Slider with a single thumb and only two values. By default the toggle component can be switched between the values of 0 and 1.

 *
 * <p>This class represents the xtype 'togglefield' and serves as a
 * typed config object for constructor of class Toggle.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.Toggle
 */
[ExtConfig(target="ext.form.Toggle", xtype="togglefield")]
public class togglefield extends sliderfield {

  public function togglefield(config:Object = null) {

    super(config);
  }


  /**
   CSS class added to the field when toggled to its maxValue
   */
  public native function get maxValueCls():String;

  /**
   * @private
   */
  public native function set maxValueCls(value:String):void;

  /**
   CSS class added to the field when toggled to its minValue
   */
  public native function get minValueCls():String;

  /**
   * @private
   */
  public native function set minValueCls(value:String):void;


}
}
    