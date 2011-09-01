package ext.form {

import ext.config.checkboxfield;

/**
 * Fires when the checkbox is checked.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Checkbox</code>
 This checkbox
 *       </li>

 * </ul>
 */
[Event(name="check")]

/**
 * Fires when the checkbox is unchecked.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Checkbox</code>
 This checkbox
 *       </li>

 * </ul>
 */
[Event(name="uncheck")]


/**
 * Simple Checkbox class. Can be used as a direct replacement for traditional checkbox fields.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'checkboxfield' / the EXML element &lt;checkboxfield>.</p>
 * @see ext.config.checkboxfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#cls-Ext.form.Checkbox Ext JS source
 */
public class Checkbox extends Field {

  /**
   *
   *
   * @param config Optional config object
   * @see ext.config.checkboxfield
   */
  public function Checkbox(config:checkboxfield) {
    super(null);
  }

  /**
   <tt>true</tt> if the checkbox should render initially checked (defaults to <tt>false</tt>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get checked():Boolean;

  /**
   * Set the checked state of the checkbox to true
   *
   * @return this This checkbox
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#method-Ext.form.Checkbox-check Ext JS source
   */
  public native function check():Checkbox;

  /**
   * Returns an array of values from the checkboxes in the group that are checked,
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#method-Ext.form.Checkbox-getGroupValues Ext JS source
   */
  public native function getGroupValues():Array;

  /**
   * Returns the checked state of the checkbox.
   *
   * @return True if checked, else otherwise
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#method-Ext.form.Checkbox-isChecked Ext JS source
   */
  public native function isChecked():Boolean;

  /**
   * Set the checked state of the checkbox.
   *
   * @return this This checkbox
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#method-Ext.form.Checkbox-setChecked Ext JS source
   */
  public native function setChecked():Checkbox;

  /**
   * Set the status of all matched checkboxes in the same group to checked
   *
   * @param values An array of values
   * @return This checkbox
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#method-Ext.form.Checkbox-setGroupValues Ext JS source
   */
  public native function setGroupValues(values:Array):Checkbox;

  /**
   * Set the checked state of the checkbox to false
   *
   * @return this This checkbox
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#method-Ext.form.Checkbox-uncheck Ext JS source
   */
  public native function uncheck():Checkbox;

}
}
    