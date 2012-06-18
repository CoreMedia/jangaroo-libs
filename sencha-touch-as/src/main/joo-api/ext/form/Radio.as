package ext.form {

import ext.config.radiofield;

/**
 * Single radio field. Same as Checkbox, but provided as a convenience for automatically setting the input type. Radio grouping is handled automatically by the browser if you give each radio in a group the same name.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'radiofield' / the EXML element &lt;radiofield>.</p>
 * @see ext.config.radiofield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Radio.html#cls-Ext.form.Radio Ext JS source
 */
[Native]
public class Radio extends Checkbox {

  /**
   * Creates a new Radio
   *
   * @param config Configuration options
   * @see ext.config.radiofield
   */
  public function Radio(config:radiofield) {
    super(null);
  }

  /**
   * Returns the selected value if this radio is part of a group (other radio fields with the same name, in the same FormPanel),
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Radio.html#method-Ext.form.Radio-getGroupValue Ext JS source
   */
  public native function getGroupValue():String;

  /**
   * Set the matched radio field's status (that has the same value as the given string) to checked
   *
   * @param value The value of the radio field to check
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Radio.html#method-Ext.form.Radio-setGroupValue Ext JS source
   */
  public native function setGroupValue(value:String):String;

}
}
    