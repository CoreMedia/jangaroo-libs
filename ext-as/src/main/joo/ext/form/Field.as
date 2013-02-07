package ext.form {
import ext.BoxComponent;
import ext.Element;
import ext.config.field;

/**
 * Fires when this field loses input focus.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Field</code>

 *       </li>

 * </ul>
 */
[Event(name="blur")]

/**
 * Fires just before the field blurs if the field value has changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Field</code>

 *       </li>

 *       <li>
 *           <code>newValue:&#42;</code>
 The new value
 *       </li>

 *       <li>
 *           <code>oldValue:&#42;</code>
 The original value
 *       </li>

 * </ul>
 */
[Event(name="change")]

/**
 * Fires when this field receives input focus.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Field</code>

 *       </li>

 * </ul>
 */
[Event(name="focus")]

/**
 * Fires after the field has been marked as invalid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Field</code>

 *       </li>

 *       <li>
 *           <code>msg:String</code>
 The validation message
 *       </li>

 * </ul>
 */
[Event(name="invalid")]

/**
 * Fires when any key related to navigation (arrows, tab, enter, esc, etc.) is pressed. To handle other keys see <a href="output/Ext.Panel.html#Ext.Panel-keys">Ext.Panel.keys</a> or <a href="Ext.KeyMap.html">Ext.KeyMap</a>. You can check <a href="output/Ext.EventObject.html#Ext.EventObject-getKey">Ext.EventObject.getKey</a> to determine which key was pressed. For example: <pre><code>var form = new Ext.form.FormPanel({
 ...
 items: [{
 fieldLabel: 'Field 1',
 name: 'field1',
 allowBlank: false
 },{
 fieldLabel: 'Field 2',
 name: 'field2',
 listeners: {
 specialkey: function(field, e){
 // e.HOME, e.END, e.PAGE_UP, e.PAGE_DOWN,
 // e.TAB, e.ESC, arrow keys: e.LEFT, e.RIGHT, e.UP, e.DOWN
 if (e.<a href="output/Ext.EventObject.html#Ext.EventObject-getKey">getKey()</a> == e.ENTER) {
 var form = field.ownerCt.getForm();
 form.submit();
 }
 }
 }
 }
 ],
 ...
 });
 </code></pre>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Field</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="specialkey")]

/**
 * Fires after the field has been validated with no errors.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Field</code>

 *       </li>

 * </ul>
 */
[Event(name="valid")]


/**
 * Base class for form fields that provides default event handling, sizing, value handling and other functionality.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'field' / the EXML element &lt;field>.</p>
 * @see ext.config.field
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.form.Field")]
public class Field extends BoxComponent {

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
   The label Element associated with this Field. <b>Only available after this Field has been rendered by a <a href="form.html">Ext.layout.FormLayout</a> layout manager.</b>

   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-property-label Sencha Docs Ext JS 3.4
   */
  public native function get label():Element;

  /**
   * @private
   */
  public native function set label(value:Element):void;

  /**
   The original value of the field as configured in the <a href="output/Ext.form.Field.html#Ext.form.Field-value">value</a> configuration, or as loaded by the last form load operation if the form's <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-trackResetOnLoad">trackResetOnLoad</a> setting is <code>true</code>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-property-originalValue Sencha Docs Ext JS 3.4
   */
  public native function get originalValue():*;

  /**
   * @private
   */
  public native function set originalValue(value:*):void;

  /**
   The value that the Field had at the time it was last focused. This is the value that is passed to the <a href="output/Ext.form.Field.html#Ext.form.Field-change">change</a> event which is fired if the value has been changed when the Field is blurred.
   <p><b>This will be undefined until the Field has been visited.</b> Compare <a href="output/Ext.form.Field.html#Ext.form.Field-originalValue">originalValue</a>.</p>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-property-startValue Sencha Docs Ext JS 3.4
   */
  public native function get startValue():*;

  /**
   * @private
   */
  public native function set startValue(value:*):void;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element spec, or true for a default element spec. Used to create the <a href="output/Ext.Component.html#Ext.Component-getEl">Element</a> which will encapsulate this Component. See <tt><a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a></tt> for details. Defaults to:
   <pre><code>{tag: 'input', type: 'text', size: '20', autocomplete: 'off'}</code></pre>
   */
  public native function get autoCreate():*;

  /**
   The default CSS class for the field (defaults to 'x-form-field')
   */
  public native function get fieldClass():String;

  /**
   The CSS class to use when the field receives focus (defaults to 'x-form-focus')
   */
  public native function get focusClass():String;

  /**
   The type attribute for input fields -- e.g. radio, text, password, file (defaults to 'text'). The types 'file' and 'password' must be used to render those field types currently -- there are no separate Ext components for those. Note that if you use <tt>inputType:'file'</tt>, <a href="output/Ext.form.Field.html#Ext.form.Field-emptyText">emptyText</a> is not supported and should be avoided.
   */
  public native function get inputType():String;

  /**
   The CSS class to use when marking a field invalid (defaults to 'x-form-invalid')
   */
  public native function get invalidClass():String;

  /**
   The error text to use when marking a field invalid and no message is provided (defaults to 'The value in this field is invalid')
   */
  public native function get invalidText():String;

  /**
   <b>Experimental</b> The effect used when displaying a validation message under the field (defaults to 'normal').
   */
  public native function get msgFx():String;

  /**
   The location where the message text set through <a href="output/Ext.form.Field.html#Ext.form.Field-markInvalid">markInvalid</a> should display. Must be one of the following values:
   <div class="mdetail-params"><ul><li><code>qtip</code> Display a quick tip containing the message when the user hovers over the field. This is the default. <div style="font-weight: bold" class="subdesc"><a href="output/Ext.QuickTips.html#Ext.QuickTips-init">Ext.QuickTips.init</a> must have been called for this setting to work.</div></li><li><code>title</code> Display the message in a default browser title attribute popup.</li><li><code>under</code> Add a block div beneath the field containing the error message.</li><li><code>side</code> Add an error icon to the right of the field, displaying the message in a popup on hover.</li><li><code>[element id]</code> Add the error message directly to the innerHTML of the specified element.</li></ul></div>
   */
  public native function get msgTarget():String;

  /**
   <tt>true</tt> to disable <a href="output/Ext.form.Field.html#Ext.form.Field-markInvalid">marking the field invalid</a>. Defaults to <tt>false</tt>.
   */
  public native function get preventMark():Boolean;

  /**
   <tt>true</tt> to mark the field as readOnly in HTML (defaults to <tt>false</tt>). <br/><p><b>Note</b>: this only sets the element's readOnly DOM attribute. Setting <code>readOnly=true</code>, for example, will not disable triggering a ComboBox or DateField; it gives you the option of forcing the user to choose via the trigger without typing in the text box. To hide the trigger use <code><a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-hideTrigger">hideTrigger</a></code>.</p>
   */
  public native function get readOnly():Boolean;

  /**
   False to clear the name attribute on the field so that it is not submitted during a form post. Defaults to <tt>true</tt>.
   */
  public native function get submitValue():Boolean;

  /**
   The tabIndex for this field. Note this only applies to fields that are rendered, not those which are built via applyTo (defaults to undefined).
   */
  public native function get tabIndex():Number;

  /**
   Whether the field should validate when it loses focus (defaults to true).
   */
  public native function get validateOnBlur():Boolean;

  /**
   The length of time in milliseconds after user input begins until validation is initiated (defaults to 250)
   */
  public native function get validationDelay():Number;

  /**
   The event that should initiate field validation. Set to false to disable automatic validation (defaults to 'keyup').
   */
  public native function get validationEvent():*;

  /**
   * Alignment for 'side' target
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-alignErrorIcon Sencha Docs Ext JS 3.4
   */
  protected native function alignErrorIcon():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-beforeBlur Sencha Docs Ext JS 3.4
   */
  protected native function beforeBlur():void;

  /**
   * Clear any invalid styles/messages for this field
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-clearInvalid Sencha Docs Ext JS 3.4
   */
  public native function clearInvalid():void;

  /**
   * Gets the active error message for this field.
   *
   * @return Returns the active error message on the field, if there is no error, an empty string is returned.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-getActiveError Sencha Docs Ext JS 3.4
   */
  public native function getActiveError():String;

  /**
   * Runs this field's validators and returns an array of error messages for any validation failures. This is called internally during validation and would not usually need to be used manually. Each subclass should override or augment the return value to provide their own errors
   *
   * @param value The value to validate. The processed raw value will be used if nothing is passed
   * @return All error messages for this field
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-getErrors Sencha Docs Ext JS 3.4
   */
  public native function getErrors(value:* = null):Array;

  /**
   * Returns the <a href="output/Ext.form.Field.html#Ext.form.Field-name">name</a> or <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a> attribute of the field if available.
   *
   * @return name The field <a href="output/Ext.form.Field.html#Ext.form.Field-name">name</a> or <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-getName Sencha Docs Ext JS 3.4
   */
  public native function getName():String;

  /**
   * Returns the raw data value which may or may not be a valid, defined value. To return a normalized value see <a href="output/Ext.form.Field.html#Ext.form.Field-getValue">getValue</a>.
   *
   * @return value The field value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-getRawValue Sencha Docs Ext JS 3.4
   */
  public native function getRawValue():*;

  /**
   * Returns the normalized data value (undefined or emptyText will be returned as ''). To return the raw value see <a href="output/Ext.form.Field.html#Ext.form.Field-getRawValue">getRawValue</a>.
   *
   * @return value The field value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-getValue Sencha Docs Ext JS 3.4
   */
  public native function getValue():*;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-initEvents Sencha Docs Ext JS 3.4
   */
  protected native function initEvents():void;

  /**
   * Returns true if the value of this Field has been changed from its original value. Will return false if the field is disabled or has not been rendered yet.
   <p>Note that if the owning <a href="Ext.form.BasicForm.html">form</a> was configured with <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>.<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-trackResetOnLoad">trackResetOnLoad</a> then the <i>original value</i> is updated when the values are loaded by <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>.<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-setValues">setValues</a>.</p>
   *
   * @return True if this field has been changed from its original value (and is not disabled), false otherwise.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-isDirty Sencha Docs Ext JS 3.4
   */
  public native function isDirty():Boolean;

  /**
   * Returns whether or not the field value is currently valid by <a href="output/Ext.form.Field.html#Ext.form.Field-validateValue">validating</a> the <a href="output/Ext.form.Field.html#Ext.form.Field-processValue">processed value</a> of the field. <b>Note</b>: <a href="output/Ext.form.Field.html#Ext.form.Field-disabled">disabled</a> fields are ignored.
   *
   * @param preventMark True to disable marking the field invalid
   * @return True if the value is valid, else false
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-isValid Sencha Docs Ext JS 3.4
   */
  public native function isValid(preventMark:Boolean):Boolean;

  /**
   * Display an error message associated with this field, using <a href="output/Ext.form.Field.html#Ext.form.Field-msgTarget">msgTarget</a> to determine how to display the message and applying <a href="output/Ext.form.Field.html#Ext.form.Field-invalidClass">invalidClass</a> to the field's UI element.
   <p><b>Note</b>: this method does not cause the Field's <a href="output/Ext.form.Field.html#Ext.form.Field-validate">validate</a> method to return <code>false</code> if the value does <i>pass</i> validation. So simply marking a Field as invalid will not prevent submission of forms submitted with the <a href="output/Ext.form.Action.Submit.html#Ext.form.Action.Submit-clientValidation">Ext.form.Action.Submit.clientValidation</a> option set.</p><a href="output/Ext.form.Field.html#Ext.form.Field-isValid">invalid</a>.
   *
   * @param msg The validation message (defaults to <a href="output/Ext.form.Field.html#Ext.form.Field-invalidText">invalidText</a>)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-markInvalid Sencha Docs Ext JS 3.4
   */
  public native function markInvalid(msg:String = null):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-onBlur Sencha Docs Ext JS 3.4
   */
  protected native function onBlur():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-onFocus Sencha Docs Ext JS 3.4
   */
  protected native function onFocus():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-postBlur Sencha Docs Ext JS 3.4
   */
  protected native function postBlur():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-preFocus Sencha Docs Ext JS 3.4
   */
  protected native function preFocus():void;

  /**
   * This method should only be overridden if necessary to prepare raw values for validation (see <a href="output/Ext.form.Field.html#Ext.form.Field-validate">validate</a> and <a href="output/Ext.form.Field.html#Ext.form.Field-isValid">isValid</a>). This method is expected to return the processed value for the field which will be used for validation (see validateValue method).
   *
   * @param value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-processValue Sencha Docs Ext JS 3.4
   */
  public native function processValue(value:*):void;

  /**
   * Resets the current field value to the originally loaded value and clears any validation messages. See <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>.<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-trackResetOnLoad">trackResetOnLoad</a>
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-reset Sencha Docs Ext JS 3.4
   */
  public native function reset():void;

  /**
   * Sets the current activeError to the given string. Fires the 'invalid' event. This does not set up the error icon, only sets the message and fires the event. To show the error icon, use markInvalid instead, which calls this method internally
   *
   * @param msg The error message
   * @param suppressEvent True to suppress the 'invalid' event from being fired
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-setActiveError Sencha Docs Ext JS 3.4
   */
  public native function setActiveError(msg:String, suppressEvent:Boolean):void;

  /**
   * Sets the underlying DOM field's value directly, bypassing validation. To set the value with validation see <a href="output/Ext.form.Field.html#Ext.form.Field-setValue">setValue</a>.
   *
   * @param value The value to set
   * @return value The field value that is set
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-setRawValue Sencha Docs Ext JS 3.4
   */
  public native function setRawValue(value:*):*;

  /**
   * Sets the read only state of this field.
   *
   * @param readOnly Whether the field should be read only.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-setReadOnly Sencha Docs Ext JS 3.4
   */
  public native function setReadOnly(readOnly:Boolean):void;

  /**
   * Sets a data value into the field and validates it. To set the value directly without validation see <a href="output/Ext.form.Field.html#Ext.form.Field-setRawValue">setRawValue</a>.
   *
   * @param value The value to set
   * @param flag a boolean flag used by some subclasses
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-setValue Sencha Docs Ext JS 3.4
   */
  public native function setValue(value:*, flag:Boolean = false):Field;

  /**
   * Clears the activeError and fires the 'valid' event. This is called internally by clearInvalid and would not usually need to be called manually
   *
   * @param suppressEvent True to suppress the 'invalid' event from being fired
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-unsetActiveError Sencha Docs Ext JS 3.4
   */
  public native function unsetActiveError(suppressEvent:Boolean):void;

  /**
   * Validates the field value
   *
   * @return True if the value is valid, else false
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-validate Sencha Docs Ext JS 3.4
   */
  public native function validate():Boolean;

  /**
   * Uses getErrors to build an array of validation errors. If any errors are found, markInvalid is called with the first and false is returned, otherwise true is returned. Previously, subclasses were invited to provide an implementation of this to process validations - from 3.2 onwards getErrors should be overridden instead.
   *
   * @param value The current value of the field
   * @return True if all validations passed, false if one or more failed
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Field-method-validateValue Sencha Docs Ext JS 3.4
   */
  public native function validateValue(value:*):Boolean;

}
}
    