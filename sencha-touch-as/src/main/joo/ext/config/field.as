package ext.config {

import ext.form.Number;

/**
 * Base class for form fields that provides default event handling, sizing, value handling and other functionality. Ext.form.Field is not used directly in applications, instead the subclasses such as <a href="Ext.form.Text.html">Ext.form.Text</a> should be used.

 *
 * <p>This class represents the xtype 'field' and serves as a
 * typed config object for constructor of class Field.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.Field
 */
[ExtConfig(target="ext.form.Field", xtype="field")]
public class field extends container {

  public function field(config:Object = null) {

    super(config);
  }


  /**
   True to automatically create the field input element on render. This is true by default, but should be set to false for any Ext.Field subclasses that don't need an HTML input (e.g. Ext.Slider and similar)
   */
  public native function get autoCreateField():Boolean;

  /**
   * @private
   */
  public native function set autoCreateField(value:Boolean):void;

  /**
   A custom CSS class to apply to the field's underlying element (defaults to '').
   */
  override public native function get cls():String;

  /**
   * @private
   */
  override public native function set cls(value:String):void;

  /**
   True to disable the field (defaults to false). <p>Be aware that conformant with the <a href="http://www.w3.org/TR/html401/interact/forms.html#h-17.12.1">HTML specification</a>, disabled Fields will not be <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-submit">submitted</a>.</p>
   */
  override public native function get disabled():Boolean;

  /**
   * @private
   */
  override public native function set disabled(value:Boolean):void;

  /**
   The default CSS class for the field (defaults to 'x-form-field')
   */
  public native function get fieldCls():String;

  /**
   * @private
   */
  public native function set fieldCls(value:String):void;

  /**
   Optional CSS class that will be added to the actual <input/> element (or whichever different element is defined by <a href="inputAutoEl.html">inputAutoEl</a>). Defaults to undefined.
   */
  public native function get inputCls():String;

  /**
   * @private
   */
  public native function set inputCls(value:String):void;

  /**
   The type attribute for input fields -- e.g. radio, text, password, file (defaults to 'text'). The types 'file' and 'password' must be used to render those field types currently -- there are no separate Ext components for those. Note that if you use <tt>inputType:'file'</tt>, <a href="output/Ext.form.Field.html#Ext.form.Field-emptyText">emptyText</a> is not supported and should be avoided.
   */
  public native function get inputType():String;

  /**
   * @private
   */
  public native function set inputType(value:String):void;

  /**
   The label to associate with this field. Defaults to <tt>null</tt>.
   */
  public native function get label():String;

  /**
   * @private
   */
  public native function set label(value:String):void;

  /**
   The location to render the label of the field. Acceptable values are 'top' and 'left'. Defaults to <tt>'left'</tt>
   */
  public native function get labelAlign():String;

  /**
   * @private
   */
  public native function set labelAlign(value:String):void;

  /**
   The width of the label, can be any valid CSS size. E.g '20%', '6em', '100px'. Defaults to <tt>'30%'</tt>
   */
  public native function get labelWidth():*;

  /**
   * @private
   */
  public native function set labelWidth(value:*):void;

  /**
   The field's HTML name attribute (defaults to ''). <b>Note</b>: this property must be set if this field is to be automatically included with <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-submit">form submit()</a>.
   */
  public native function get name():String;

  /**
   * @private
   */
  public native function set name(value:String):void;

  /**
   True to make this field required. Note: this only causes a visual indication. Doesn't prevent user from submitting the form.
   */
  public native function get required():Boolean;

  /**
   * @private
   */
  public native function set required(value:Boolean):void;

  /**
   The tabIndex for this field. Note this only applies to fields that are rendered, not those which are built via applyTo (defaults to undefined).
   */
  public native function get tabIndex():ext.form.Number;

  /**
   * @private
   */
  public native function set tabIndex(value:ext.form.Number):void;

  /**
   A value to initialize this field with (defaults to undefined).
   */
  public native function get value():*;

  /**
   * @private
   */
  public native function set value(value:*):void;


}
}
    