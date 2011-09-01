package ext.form {

import ext.config.togglefield;

/**
 * Specialized Slider with a single thumb and only two values. By default the toggle component can be switched between the values of 0 and 1.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'togglefield' / the EXML element &lt;togglefield>.</p>
 * @see ext.config.togglefield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toggle.html#cls-Ext.form.Toggle Ext JS source
 */
public class Toggle extends Slider {

  /**
   * Create a new Toggle.
   *
   * @param config The config object
   * @see ext.config.togglefield
   */
  public function Toggle(config:togglefield = null) {
    super(null);
  }

  /**
   CSS class added to the field when toggled to its maxValue
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxValueCls():String;

  /**
   CSS class added to the field when toggled to its minValue
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minValueCls():String;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toggle.html#method-Ext.form.Toggle-onTap Ext JS source
   */
  override public native function onTap():void;

  /**
   * Toggles between the minValue (0 by default) and the maxValue (1 by default)
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toggle.html#method-Ext.form.Toggle-toggle Ext JS source
   */
  public native function toggle():void;

}
}
    