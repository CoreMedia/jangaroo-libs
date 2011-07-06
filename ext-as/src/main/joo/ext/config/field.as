package ext.config {


/**
 * Base class for form fields that provides default event handling, sizing, value handling and other functionality.
 * <p>This class serves as a typed config object for constructor of class Field.</p>
 *
 * @see ext.form.Field
 */
[ExtConfig(target="ext.form.Field")]
public class field extends box {

  public function field(config:Object = null) {

    super(config);
  }


  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element spec, or true for a default element spec. Used to create the <a href="output/Ext.Component.html#Ext.Component-getEl">Element</a> which will encapsulate this Component. See <tt><a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a></tt> for details. Defaults to:
   <pre><code>{tag: 'input', type: 'text', size: '20', autocomplete: 'off'}</code></pre>
   */
  public native function get autoCreate():*;

  /**
   * @private
   */
  public native function set autoCreate(value:*):void;

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
  public native function get fieldClass():String;

  /**
   * @private
   */
  public native function set fieldClass(value:String):void;

  /**
   The CSS class to use when the field receives focus (defaults to 'x-form-focus')
   */
  public native function get focusClass():String;

  /**
   * @private
   */
  public native function set focusClass(value:String):void;

  /**
   The type attribute for input fields -- e.g. radio, text, password, file (defaults to 'text'). The types 'file' and 'password' must be used to render those field types currently -- there are no separate Ext components for those. Note that if you use <tt>inputType:'file'</tt>, <a href="output/Ext.form.Field.html#Ext.form.Field-emptyText">emptyText</a> is not supported and should be avoided.
   */
  public native function get inputType():String;

  /**
   * @private
   */
  public native function set inputType(value:String):void;

  /**
   The CSS class to use when marking a field invalid (defaults to 'x-form-invalid')
   */
  public native function get invalidClass():String;

  /**
   * @private
   */
  public native function set invalidClass(value:String):void;

  /**
   The error text to use when marking a field invalid and no message is provided (defaults to 'The value in this field is invalid')
   */
  public native function get invalidText():String;

  /**
   * @private
   */
  public native function set invalidText(value:String):void;

  /**
   <b>Experimental</b> The effect used when displaying a validation message under the field (defaults to 'normal').
   */
  public native function get msgFx():String;

  /**
   * @private
   */
  public native function set msgFx(value:String):void;

  /**
   The location where the message text set through <a href="output/Ext.form.Field.html#Ext.form.Field-markInvalid">markInvalid</a> should display. Must be one of the following values:
   <div class="mdetail-params"><ul><li><code>qtip</code> Display a quick tip containing the message when the user hovers over the field. This is the default. <div style="font-weight: bold" class="subdesc"><a href="output/Ext.QuickTips.html#Ext.QuickTips-init">Ext.QuickTips.init</a> must have been called for this setting to work.</div></li><li><code>title</code> Display the message in a default browser title attribute popup.</li><li><code>under</code> Add a block div beneath the field containing the error message.</li><li><code>side</code> Add an error icon to the right of the field, displaying the message in a popup on hover.</li><li><code>[element id]</code> Add the error message directly to the innerHTML of the specified element.</li></ul></div>
   */
  public native function get msgTarget():String;

  /**
   * @private
   */
  public native function set msgTarget(value:String):void;

  /**
   The field's HTML name attribute (defaults to ''). <b>Note</b>: this property must be set if this field is to be automatically included with <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-submit">form submit()</a>.
   */
  public native function get name():String;

  /**
   * @private
   */
  public native function set name(value:String):void;

  /**
   <tt>true</tt> to disable <a href="output/Ext.form.Field.html#Ext.form.Field-markInvalid">marking the field invalid</a>. Defaults to <tt>false</tt>.
   */
  public native function get preventMark():Boolean;

  /**
   * @private
   */
  public native function set preventMark(value:Boolean):void;

  /**
   <tt>true</tt> to mark the field as readOnly in HTML (defaults to <tt>false</tt>). <br/><p><b>Note</b>: this only sets the element's readOnly DOM attribute. Setting <code>readOnly=true</code>, for example, will not disable triggering a ComboBox or DateField; it gives you the option of forcing the user to choose via the trigger without typing in the text box. To hide the trigger use <code><a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-hideTrigger">hideTrigger</a></code>.</p>
   */
  public native function get readOnly():Boolean;

  /**
   * @private
   */
  public native function set readOnly(value:Boolean):void;

  /**
   False to clear the name attribute on the field so that it is not submitted during a form post. Defaults to <tt>true</tt>.
   */
  public native function get submitValue():Boolean;

  /**
   * @private
   */
  public native function set submitValue(value:Boolean):void;

  /**
   The tabIndex for this field. Note this only applies to fields that are rendered, not those which are built via applyTo (defaults to undefined).
   */
  public native function get tabIndex():Number;

  /**
   * @private
   */
  public native function set tabIndex(value:Number):void;

  /**
   Whether the field should validate when it loses focus (defaults to true).
   */
  public native function get validateOnBlur():Boolean;

  /**
   * @private
   */
  public native function set validateOnBlur(value:Boolean):void;

  /**
   The length of time in milliseconds after user input begins until validation is initiated (defaults to 250)
   */
  public native function get validationDelay():Number;

  /**
   * @private
   */
  public native function set validationDelay(value:Number):void;

  /**
   The event that should initiate field validation. Set to false to disable automatic validation (defaults to 'keyup').
   */
  public native function get validationEvent():*;

  /**
   * @private
   */
  public native function set validationEvent(value:*):void;

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
    