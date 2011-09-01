package ext.form {

import ext.Container;
import ext.Element;
import ext.config.field;

/**
 * Base class for form fields that provides default event handling, sizing, value handling and other functionality. Ext.form.Field is not used directly in applications, instead the subclasses such as <a href="Ext.form.Text.html">Ext.form.Text</a> should be used.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'field' / the EXML element &lt;field>.</p>
 * @see ext.config.field
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#cls-Ext.form.Field Ext JS source
 */
public class Field extends Container {

  /**
   * Creates a new Field
   *
   * @param config Configuration options
   * @see ext.config.field
   */
  public function Field(config:field) {
    super(null);
  }

  /**
   Set to true on all Ext.form.Field subclasses. This is used by <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-getValues">Ext.form.FormPanel.getValues</a> to determine which components inside a form are fields.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#prop-Ext.form.Field-isField Ext JS source
   */
  public native function get isField():Boolean;

  /**
   * @private
   */
  public native function set isField(value:Boolean):void;

  /**
   The label Element associated with this Field. <b>Only available if a <a href="output/Ext.form.Field.html#Ext.form.Field-label">label</a> is specified.</b>

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#prop-Ext.form.Field-labelEl Ext JS source
   */
  public native function get labelEl():Element;

  /**
   * @private
   */
  public native function set labelEl(value:Element):void;

  /**
   The original value of the field as configured in the <a href="output/Ext.form.Field.html#Ext.form.Field-value">value</a> configuration, or as loaded by the last form load operation if the form's <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-trackResetOnLoad">trackResetOnLoad</a> setting is <code>true</code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#prop-Ext.form.Field-originalValue Ext JS source
   */
  public native function get originalValue():*;

  /**
   * @private
   */
  public native function set originalValue(value:*):void;

  /**
   True to automatically create the field input element on render. This is true by default, but should be set to false for any Ext.Field subclasses that don't need an HTML input (e.g. Ext.Slider and similar)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoCreateField():Boolean;

  /**
   The default CSS class for the field (defaults to 'x-form-field')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get fieldCls():String;

  /**
   Optional CSS class that will be added to the actual <input/> element (or whichever different element is defined by <a href="inputAutoEl.html">inputAutoEl</a>). Defaults to undefined.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get inputCls():String;

  /**
   The type attribute for input fields -- e.g. radio, text, password, file (defaults to 'text'). The types 'file' and 'password' must be used to render those field types currently -- there are no separate Ext components for those. Note that if you use <tt>inputType:'file'</tt>, <a href="output/Ext.form.Field.html#Ext.form.Field-emptyText">emptyText</a> is not supported and should be avoided.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get inputType():String;

  /**
   The label to associate with this field. Defaults to <tt>null</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get label():String;

  /**
   The location to render the label of the field. Acceptable values are 'top' and 'left'. Defaults to <tt>'left'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get labelAlign():String;

  /**
   The width of the label, can be any valid CSS size. E.g '20%', '6em', '100px'. Defaults to <tt>'30%'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get labelWidth():*;

  /**
   True to make this field required. Note: this only causes a visual indication. Doesn't prevent user from submitting the form.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get required():Boolean;

  /**
   The tabIndex for this field. Note this only applies to fields that are rendered, not those which are built via applyTo (defaults to undefined).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tabIndex():ext.form.Number;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-afterRender Ext JS source
   */
  public native function afterRender():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-applyRenderSelectors Ext JS source
   */
  override public native function applyRenderSelectors():void;

  /**
   * Returns the <a href="output/Ext.form.Field.html#Ext.form.Field-name">name</a> or <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a> attribute of the field if available.
   *
   * @return name The field <a href="output/Ext.form.Field.html#Ext.form.Field-name">name</a> or <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-getName Ext JS source
   */
  public native function getName():String;

  /**
   * Returns the field data value
   *
   * @return value The field value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-getValue Ext JS source
   */
  public native function getValue():*;

  /**
   *
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-initRenderData Ext JS source
   */
  override public native function initRenderData():Object;

  /**
   * Returns true if the value of this Field has been changed from its original value. Will return false if the field is disabled or has not been rendered yet.
   <p>Note that if the owning <a href="Ext.form.BasicForm.html">form</a> was configured with <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>.<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-trackResetOnLoad">trackResetOnLoad</a> then the <i>original value</i> is updated when the values are loaded by <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>.<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-setValues">setValues</a>.</p>
   *
   * @return True if this field has been changed from its original value (and is not disabled), false otherwise.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-isDirty Ext JS source
   */
  public native function isDirty():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-onRender Ext JS source
   */
  public native function onRender():void;

  /**
   * Resets the current field value to the originally loaded value and clears any validation messages. See <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>.<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-trackResetOnLoad">trackResetOnLoad</a>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-reset Ext JS source
   */
  public native function reset():void;

  /**
   * Set the label width
   *
   * @param width The width of the label, can be any valid CSS size. E.g '20%', '6em', '100px'
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-setLabelWidth Ext JS source
   */
  public native function setLabelWidth(width:*):Field;

  /**
   * Set the field data value
   *
   * @param value The value to set
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field1.html#method-Ext.form.Field-setValue Ext JS source
   */
  public native function setValue(value:*):Field;

}
}
    