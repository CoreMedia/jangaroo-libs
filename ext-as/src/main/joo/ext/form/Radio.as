package ext.form {
import ext.config.radio;

/**
 * Single radio field. Same as Checkbox, but provided as a convenience for automatically setting the input type. Radio grouping is handled automatically by the browser if you give each radio in a group the same name.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'radio' / the EXML element &lt;radio>.</p>
 * @see ext.config.radio
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Radio Sencha Docs Ext JS 3.4
 */
[Native]
public class Radio extends Checkbox {

  /**
   * Creates a new Radio
   *
   * @param config Configuration options
   * @see ext.config.radio
   */
  public function Radio(config:radio = null) {
    super(null);
  }

  /**
   * If this radio is part of a group, it will return the selected value
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Radio-method-getGroupValue Sencha Docs Ext JS 3.4
   */
  public native function getGroupValue():String;

  /**
   * Sets either the checked/unchecked status of this Radio, or, if a string value is passed, checks a sibling Radio of the same name whose value is the value specified.
   *
   * @param value The value to set
   * @param flag a boolean flag used by some subclasses
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Radio-method-setValue Sencha Docs Ext JS 3.4
   */
  override public native function setValue(value:*, flag:Boolean = false):Field;

}
}
    