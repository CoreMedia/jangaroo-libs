package ext.form {

import ext.config.checkbox;

/**
 * Fires when the checkbox is checked or unchecked.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Checkbox</code>
 This checkbox
 *       </li>

 *       <li>
 *           <code>checked:Boolean</code>
 The new checked value
 *       </li>

 * </ul>
 */
[Event(name="check")]


/**
 * Single checkbox field. Can be used as a direct replacement for traditional checkbox fields.
 * <p>This component is created by the xtype 'checkbox' / the EXML element &lt;checkbox>.</p>
 * @see ext.config.checkbox
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#cls-Ext.form.Checkbox Ext JS source
 */
public class Checkbox extends Field {

  /**
   * Creates a new Checkbox
   *
   * @param config Configuration options
   * @see ext.config.checkbox
   */
  public function Checkbox(config:checkbox) {
    super(null);
  }

  /**
   A DomHelper element spec, or true for a default element spec (defaults to {tag: 'input', type: 'checkbox', autocomplete: 'off'})
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get autoCreate():*;

  /**
   The text that appears beside the checkbox
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get boxLabel():String;

  /**
   <tt>true</tt> if the checkbox should render initially checked (defaults to <tt>false</tt>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get checked():Boolean;

  /**
   The default CSS class for the checkbox (defaults to 'x-form-field')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get fieldClass():String;

  /**
   The CSS class to use when the checkbox receives focus (defaults to undefined)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get focusClass():String;

  /**
   The value that should go into the generated input element's value attribute
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get inputValue():String;

  /**
   An object to use as the scope ('this' reference) of the <a href="output/Ext.form.Checkbox.html#Ext.form.Checkbox-handler">handler</a> function (defaults to this Checkbox).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

  /**
   * Returns the checked state of the checkbox.
   *
   * @return True if checked, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#method-Ext.form.Checkbox-getValue Ext JS source
   */
  override public native function getValue():*;

  /**
   * Sets the checked state of the checkbox, fires the 'check' event, and calls a <code><a href="output/Ext.form.Checkbox.html#Ext.form.Checkbox-handler">handler</a></code> (if configured).
   *
   * @param value The value to set
   * @param flag a boolean flag used by some subclasses
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Checkbox.html#method-Ext.form.Checkbox-setValue Ext JS source
   */
  override public native function setValue(value:*, flag:Boolean = false):Field;

}
}
    