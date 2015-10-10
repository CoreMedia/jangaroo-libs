package ext.form {
import ext.config.textfield;

/**
 * Fires when the <tt><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-autoSize">autoSize</a></b></tt> function is triggered. The field may or may not have actually changed size according to the default logic, but this event provides a hook for the developer to apply additional logic at runtime to resize the field if needed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Field</code>
 This text field
 *       </li>

 *       <li>
 *           <code>width:Number</code>
 The new field width
 *       </li>

 * </ul>
 */
[Event(name="autosize")]

/**
 * Keydown input field event. This event only fires if <tt><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-enableKeyEvents">enableKeyEvents</a></b></tt> is set to true.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.TextField</code>
 This text field
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="keydown")]

/**
 * Keypress input field event. This event only fires if <tt><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-enableKeyEvents">enableKeyEvents</a></b></tt> is set to true.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.TextField</code>
 This text field
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="keypress")]

/**
 * Keyup input field event. This event only fires if <tt><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-enableKeyEvents">enableKeyEvents</a></b></tt> is set to true.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.TextField</code>
 This text field
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="keyup")]


/**
 * Basic text field. Can be used as a direct replacement for traditional text inputs, or as the base class for more sophisticated input controls (like <a href="Ext.form.TextArea.html">Ext.form.TextArea</a> and <a href="Ext.form.ComboBox.html">Ext.form.ComboBox</a>).
 <p style="font-weight: bold"><u>Validation</u></p><p>The validation procedure is described in the documentation for <a href="output/Ext.form.TextField.html#Ext.form.TextField-validateValue">validateValue</a>.</p><p style="font-weight: bold"><u>Alter Validation Behavior</u></p><p>Validation behavior for each field can be configured:</p><div class="mdetail-params"><ul><li><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-invalidText">invalidText</a></code> : the default validation message to show if any validation step above does not provide a message when invalid</li><li><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-maskRe">maskRe</a></code> : filter out keystrokes before any validation occurs</li><li><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-stripCharsRe">stripCharsRe</a></code> : filter characters after being typed in, but before being validated</li><li><code><a href="output/Ext.form.Field.html#Ext.form.Field-invalidClass">invalidClass</a></code> : alternate style when invalid</li><li><code><a href="output/Ext.form.Field.html#Ext.form.Field-validateOnBlur">validateOnBlur</a></code>, <code><a href="output/Ext.form.Field.html#Ext.form.Field-validationDelay">validationDelay</a></code>, and <code><a href="output/Ext.form.Field.html#Ext.form.Field-validationEvent">validationEvent</a></code> : modify how/when validation is triggered</li></ul></div>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'textfield' / the EXML element &lt;textfield>.</p>
 * @see ext.config.textfield
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TextField Sencha Docs Ext JS 3.4
 */
[Native]
public class TextField extends Field {

  /**
   * Creates a new TextField
   *
   * @param config Configuration options
   * @see ext.config.textfield
   */
  public function TextField(config:textfield = null) {
    super(null);
  }

  /**
   Specify <tt>false</tt> to validate that the value's length is &gt; 0 (defaults to <tt>true</tt>)
   */
  public native function get allowBlank():Boolean;

  /**
   The error text to display if the <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-allowBlank">allowBlank</a></tt></b> validation fails (defaults to <tt>'This field is required'</tt>)
   */
  public native function get blankText():String;

  /**
   Specify <tt>true</tt> to disable input keystroke filtering (defaults to <tt>false</tt>)
   */
  public native function get disableKeyFilter():Boolean;

  /**
   The CSS class to apply to an empty field to style the <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-emptyText">emptyText</a></tt></b> (defaults to <tt>'x-form-empty-field'</tt>). This class is automatically added and removed as needed depending on the current field value.
   */
  public native function get emptyClass():String;

  /**
   The default text to place into an empty field (defaults to <tt>null</tt>). <b>Note</b>: that this value will be submitted to the server if this field is enabled and configured with a <a href="output/Ext.form.TextField.html#Ext.form.TextField-name">name</a>.
   */
  public native function get emptyText():String;

  /**
   <tt>true</tt> to enable the proxying of key events for the HTML input field (defaults to <tt>false</tt>)
   */
  public native function get enableKeyEvents():Boolean;

  /**
   <tt>true</tt> if this field should automatically grow and shrink to its content (defaults to <tt>false</tt>)
   */
  public native function get grow():Boolean;

  /**
   The maximum width to allow when <code><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a></b> = true</code> (defaults to <tt>800</tt>)
   */
  public native function get growMax():Number;

  /**
   The minimum width to allow when <code><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a></b> = true</code> (defaults to <tt>30</tt>)
   */
  public native function get growMin():Number;

  /**
   An input mask regular expression that will be used to filter keystrokes that do not match (defaults to <tt>null</tt>). The maskRe will not operate on any paste events.
   */
  public native function get maskRe():RegExp;

  /**
   Maximum input field length allowed by validation (defaults to Number.MAX_VALUE). This behavior is intended to provide instant feedback to the user by improving usability to allow pasting and editing or overtyping and back tracking. To restrict the maximum number of characters that can be entered into the field use <tt><b><a href="output/Ext.form.Field.html#Ext.form.Field-autoCreate">autoCreate</a></b></tt> to add any attributes you want to a field, for example:<pre><code>var myField = new Ext.form.NumberField({
   id: 'mobile',
   anchor:'90%',
   fieldLabel: 'Mobile',
   maxLength: 16, // for validation
   autoCreate: {tag: 'input', type: 'text', size: '20', autocomplete: 'off', maxlength: '10'}
   });
   </code></pre>
   */
  public native function get maxLength():Number;

  /**
   Error text to display if the <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-maxLength">maximum length</a></tt></b> validation fails (defaults to <tt>'The maximum length for this field is {maxLength}'</tt>)
   */
  public native function get maxLengthText():String;

  /**
   Minimum input field length required (defaults to <tt>0</tt>)
   */
  public native function get minLength():Number;

  /**
   Error text to display if the <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-minLength">minimum length</a></tt></b> validation fails (defaults to <tt>'The minimum length for this field is {minLength}'</tt>)
   */
  public native function get minLengthText():String;

  /**
   A JavaScript RegExp object to be tested against the field value during validation (defaults to <tt>null</tt>). If the test fails, the field will be marked invalid using <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-regexText">regexText</a></tt></b>.
   */
  public native function get regex():RegExp;

  /**
   The error text to display if <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-regex">regex</a></tt></b> is used and the test fails during validation (defaults to <tt>''</tt>)
   */
  public native function get regexText():String;

  /**
   <tt>true</tt> to automatically select any existing field text when the field receives input focus (defaults to <tt>false</tt>)
   */
  public native function get selectOnFocus():Boolean;

  /**
   A JavaScript RegExp object used to strip unwanted content from the value before validation (defaults to <tt>null</tt>).
   */
  public native function get stripCharsRe():RegExp;

  /**
   A validation type name as defined in <a href="Ext.form.VTypes.html">Ext.form.VTypes</a> (defaults to <tt>null</tt>)
   */
  public native function get vtype():String;

  /**
   A custom error message to display in place of the default message provided for the <b><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-vtype">vtype</a></code></b> currently set for this field (defaults to <tt>''</tt>). <b>Note</b>: only applies if <b><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-vtype">vtype</a></code></b> is set, else ignored.
   */
  public native function get vtypeText():String;

  /**
   * Automatically grows the field to accommodate the width of the text up to the maximum field width allowed. This only takes effect if <tt><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a></b> = true</tt>, and fires the <a href="output/Ext.form.TextField.html#Ext.form.TextField-autosize">autosize</a> event.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TextField-method-autoSize Sencha Docs Ext JS 3.4
   */
  public native function autoSize():void;

  /**
   * Validates a value according to the field's validation rules and returns an array of errors for any failing validations. Validation rules are processed in the following order:
   <div class="mdetail-params"><ul><li><b>1. Field specific validator</b> <div class="sub-desc"><p>A validator offers a way to customize and reuse a validation specification. If a field is configured with a <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-validator">validator</a></code> function, it will be passed the current field value. The <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-validator">validator</a></code> function is expected to return either:</p><div class="mdetail-params"><ul><li>Boolean <tt>true</tt> if the value is valid (validation continues).</li><li>a String to represent the invalid message if invalid (validation halts).</li></ul></div></div></li><li><b>2. Basic Validation</b> <div class="sub-desc"><p>If the <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-validator">validator</a></code> has not halted validation, basic validation proceeds as follows:</p><div class="mdetail-params"><ul><li><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-allowBlank">allowBlank</a></code> : (Invalid message = <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-emptyText">emptyText</a></code>)<div class="sub-desc">Depending on the configuration of <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-allowBlank">allowBlank</a></code>, a blank field will cause validation to halt at this step and return Boolean true or false accordingly.</div></li><li><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-minLength">minLength</a></code> : (Invalid message = <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-minLengthText">minLengthText</a></code>)<div class="sub-desc">If the passed value does not satisfy the <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-minLength">minLength</a></code> specified, validation halts.</div></li><li><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-maxLength">maxLength</a></code> : (Invalid message = <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-maxLengthText">maxLengthText</a></code>)<div class="sub-desc">If the passed value does not satisfy the <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-maxLength">maxLength</a></code> specified, validation halts.</div></li></ul></div></div></li><li><b>3. Preconfigured Validation Types (VTypes)</b> <div class="sub-desc"><p>If none of the prior validation steps halts validation, a field configured with a <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-vtype">vtype</a></code> will utilize the corresponding <a href="Ext.form.VTypes.html">VTypes</a> validation function. If invalid, either the field's <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-vtypeText">vtypeText</a></code> or the VTypes vtype Text property will be used for the invalid message. Keystrokes on the field will be filtered according to the VTypes vtype Mask property.</p></div></li><li><b>4. Field specific regex test</b> <div class="sub-desc"><p>If none of the prior validation steps halts validation, a field's configured <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-regex">regex</a></code> test will be processed. The invalid message for this test is configured with <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-regexText">regexText</a></code>.</p></div></li></ul></div>
   *
   * @param value The value to validate. The processed raw value will be used if nothing is passed
   * @return Array of any validation errors
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TextField-method-getErrors Sencha Docs Ext JS 3.4
   */
  override public native function getErrors(value:* = null):Array;

  /**
   * Resets the current field value to the originally-loaded value and clears any validation messages. Also adds <tt><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-emptyText">emptyText</a></b></tt> and <tt><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-emptyClass">emptyClass</a></b></tt> if the original value was blank.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TextField-method-reset Sencha Docs Ext JS 3.4
   */
  override public native function reset():void;

  /**
   * Selects text in this field
   *
   * @param start The index where the selection should start (defaults to 0)
   * @param end The index where the selection should end (defaults to the text length)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TextField-method-selectText Sencha Docs Ext JS 3.4
   */
  public native function selectText(start:Number = undefined, end:Number = undefined):void;

}
}
    