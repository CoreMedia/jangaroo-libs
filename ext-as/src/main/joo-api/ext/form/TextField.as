package ext.form {
/**
 * <p>Basic text field.  Can be used as a direct replacement for traditional text inputs,
 * or as the base class for more sophisticated input controls (like <b class='link'>ext.form.TextArea</b>
 * and <b class='link'>ext.form.ComboBox</b>).</p>
 * <p><b><u>Validation</u></b></p>
 * <p>Field validation is processed in a particular order.  If validation fails at any particular
 * step the validation routine halts.</p>
 * <div class="mdetail-params"><ul>
 * <li><b>1. Field specific validator</b>
 * <div class="sub-desc">
 * <p>If a field is configured with a <code><b class='link' title='ext.form.TextField#validator'>validator</b></code> function,
 * it will be passed the current field value.  The <code><b class='link' title='ext.form.TextField#validator'>validator</b></code>
 * function is expected to return boolean <code>true</code> if the value is valid or return a string to
 * represent the invalid message if invalid.</p>
 * </div></li>
 * <li><b>2. Built in Validation</b>
 * <div class="sub-desc">
 * <p>Basic validation is affected with the following configuration properties:</p>
 * <pre>
 * <u>Validation</u>    <u>Invalid Message</u>
 * <code><b class='link' title='ext.form.TextField#allowBlank'>allowBlank</b>    <b class='link' title='ext.form.TextField#emptyText'>emptyText</b></code>
 * <code><b class='link' title='ext.form.TextField#minLength'>minLength</b>     <b class='link' title='ext.form.TextField#minLengthText'>minLengthText</b></code>
 * <code><b class='link' title='ext.form.TextField#maxLength'>maxLength</b>     <b class='link' title='ext.form.TextField#maxLengthText'>maxLengthText</b></code>
 * </pre>
 * </div></li>
 * <li><b>3. Preconfigured Validation Types (VTypes)</b>
 * <div class="sub-desc">
 * <p>Using VTypes offers a convenient way to reuse validation. If a field is configured with a
 * <code><b class='link' title='ext.form.TextField#vtype'>vtype</b></code>, the corresponding <b class='link' title='ext.form.VTypes'>VTypes</b>
 * validation function will be used for validation.  If invalid, either the field's
 * <code><b class='link' title='ext.form.TextField#vtypeText'>vtypeText</b></code> or the VTypes vtype Text property will be
 * used for the invalid message.  Keystrokes on the field will be filtered according to the VTypes
 * vtype Mask property.</p>
 * </div></li>
 * <li><b>4. Field specific regex test</b>
 * <div class="sub-desc">
 * <p>Each field may also specify a <code><b class='link' title='ext.form.TextField#regex'>regex</b></code> test.
 * The invalid message for this test is configured with
 * <code><b class='link' title='ext.form.TextField#regexText'>regexText</b></code>.</p>
 * </div></li>
 * <li><b>Alter Validation Behavior</b>
 * <div class="sub-desc">
 * <p>Validation behavior for each field can be configured:</p><ul>
 * <li><code><b class='link' title='ext.form.TextField#invalidText'>invalidText</b></code> : the default validation message to
 * show if any validation step above does not provide a message when invalid</li>
 * <li><code><b class='link' title='ext.form.TextField#maskRe'>maskRe</b></code> : filter out keystrokes before any validation occurs</li>
 * <li><code><b class='link' title='ext.form.TextField#stripCharsRe'>stripCharsRe</b></code> : filter characters after being typed in,
 * but before being validated</li>
 * <li><code><b class='link' title='ext.form.Field#invalidClass'>invalidClass</b></code> : alternate style when invalid</li>
 * <li><code><b class='link' title='ext.form.Field#validateOnBlur'>validateOnBlur</b></code>,
 * <code><b class='link' title='ext.form.Field#validationDelay'>validationDelay</b></code>, and
 * <code><b class='link' title='ext.form.Field#validationEvent'>validationEvent</b></code> : modify how/when validation is triggered</li>
 * </ul>
 * </div></li>
 * </ul></div>
*/
public class TextField extends Field {
/**
 * @constructor
 * Creates a new TextField
 * @param config Configuration options
 * @xtype textfield
 */
public function TextField(config : Object) {
  super(config);
}
    /**
     * @cfg {String} vtypeText A custom error message to display in place of the default message provided
     * for the <b><code><b class='link' title='#vtype'>vtype</b></code></b> currently set for this field (defaults to <code>''</code>).  <b>Note</b>:
     * only applies if <b><code><b class='link' title='#vtype'>vtype</b></code></b> is set, else ignored.
     */
    /**
     * @cfg {RegExp} stripCharsRe A JavaScript RegExp object used to strip unwanted content from the value
     * before validation (defaults to <code>null</code>).
     */
    /**
     * @cfg {Boolean} grow <code>true</code> if this field should automatically grow and shrink to its content
     * (defaults to <code>false</code>)
     */
    public var grow  : Boolean;
    /**
     * @cfg {Number} growMin The minimum width to allow when <code><b class='link' title='#grow'>grow</b> = true</code> (defaults
     * to <code>30</code>)
     */
    public var growMin  : Number;
    /**
     * @cfg {Number} growMax The maximum width to allow when <code><b class='link' title='#grow'>grow</b> = true</code> (defaults
     * to <code>800</code>)
     */
    public var growMax  : Number;
    /**
     * @cfg {String} vtype A validation type name as defined in <b class='link'>ext.form.VTypes</b> (defaults to <code>null</code>)
     */
    public var vtype  : String;
    /**
     * @cfg {RegExp} maskRe An input mask regular expression that will be used to filter keystrokes that do
     * not match (defaults to <code>null</code>)
     */
    public var maskRe  : RegExp;
    /**
     * @cfg {Boolean} disableKeyFilter Specify <code>true</code> to disable input keystroke filtering (defaults
     * to <code>false</code>)
     */
    public var disableKeyFilter  : Boolean;
    /**
     * @cfg {Boolean} allowBlank Specify <code>false</code> to validate that the value's length is > 0 (defaults to
     * <code>true</code>)
     */
    public var allowBlank  : Boolean;
    /**
     * @cfg {Number} minLength Minimum input field length required (defaults to <code>0</code>)
     */
    public var minLength  : Number;
    /**
     * @cfg {Number} maxLength Maximum input field length allowed by validation (defaults to Number.MAX_VALUE).
     * This behavior is intended to provide instant feedback to the user by improving usability to allow pasting
     * and editing or overtyping and back tracking. To restrict the maximum number of characters that can be
     * entered into the field use <code><b class='link' title='ext.form.Field#autoCreate'>autoCreate</b></code> to add
     * any attributes you want to a field, for example:<pre><code>
var myField = new ext.form.NumberField({
    id&#58; 'mobile',
    anchor&#58;'90%',
    fieldLabel&#58; 'Mobile',
    maxLength&#58; 16, // for validation
    autoCreate&#58; {tag: 'input', type: 'text', size: '20', autocomplete: 'off', maxlength: '10'}
});
</code></pre>
     */
    public var maxLength  : Number;
    /**
     * @cfg {String} minLengthText Error text to display if the <b><code><b class='link' title='#minLength minimum'>length</b></code></b>
     * validation fails (defaults to <code>'The minimum length for this field is {minLength}'</code>)
     */
    public var minLengthText  : String;
    /**
     * @cfg {String} maxLengthText Error text to display if the <b><code><b class='link' title='#maxLength maximum'>length</b></code></b>
     * validation fails (defaults to <code>'The maximum length for this field is {maxLength}'</code>)
     */
    public var maxLengthText  : String;
    /**
     * @cfg {Boolean} selectOnFocus <code>true</code> to automatically select any existing field text when the field
     * receives input focus (defaults to <code>false</code>)
     */
    public var selectOnFocus  : Boolean;
    /**
     * @cfg {String} blankText The error text to display if the <b><code><b class='link' title='#allowBlank'>allowBlank</b></code></b> validation
     * fails (defaults to <code>'This field is required'</code>)
     */
    public var blankText  : String;
    /**
     * @cfg {Function} validator A custom validation function to be called during field validation
     * (defaults to <code>null</code>). If specified, this function will be called first, allowing the
     * developer to override the default validation process. This function will be passed the current
     * field value and expected to return boolean <code>true</code> if the value is valid or a string
     * error message if invalid.
     */
    public var validator  : Function;
    /**
     * @cfg {RegExp} regex A JavaScript RegExp object to be tested against the field value during validation
     * (defaults to <code>null</code>). If the test fails, the field will be marked invalid using
     * <b><code><b class='link' title='#regexText'>regexText</b></code></b>.
     */
    public var regex  : RegExp;
    /**
     * @cfg {String} regexText The error text to display if <b><code><b class='link' title='#regex'>regex</b></code></b> is used and the
     * test fails during validation (defaults to <code>''</code>)
     */
    public var regexText  : String;
    /**
     * @cfg {String} emptyText The default text to place into an empty field (defaults to <code>null</code>).
     * <b>Note</b>: that this value will be submitted to the server if this field is enabled and configured
     * with a <b class='link' title='#name'>name</b>.
     */
    public var emptyText  : String;
    /**
     * @cfg {String} emptyClass The CSS class to apply to an empty field to style the <b><code><b class='link' title='#emptyText'>emptyText</b></code></b>
     * (defaults to <code>'x-form-empty-field'</code>).  This class is automatically added and removed as needed
     * depending on the current field value.
     */
    public var emptyClass  : String;
    /**
     * @cfg {Boolean} enableKeyEvents <code>true</code> to enable the proxying of key events for the HTML input
     * field (defaults to <code>false</code>)
     */
    override protected native function initComponent() : void;
    override protected native function initEvents() : void;
    override public native function processValue(value : *) : void;
    public native function filterValidation(e) : void;
    override protected native function onDisable() : void;
    override protected native function onEnable() : void;
    protected native function onKeyUpBuffered(e) : void;
    protected native function onKeyUp(e) : void;
    protected native function onKeyDown(e) : void;
    protected native function onKeyPress(e) : void;
    /**
     * Resets the current field value to the originally-loaded value and clears any validation messages.
     * Also adds <code><b class='link' title='#emptyText'>emptyText</b></b></code> and <code><b><b class='link' title='#emptyClass'>emptyClass</b></code> if the
     * original value was blank.
     */
    override public native function reset() : void;
    public native function applyEmptyText() : void;
    protected native function preFocus() : void;
    protected native function postBlur() : void;
    protected native function filterKeys(e) : void;
    override public native function setValue(v : *) : Field;
    /**
     * Validates a value according to the field's validation rules and marks the field as invalid
     * if the validation fails
     * @param value The value to validate
     * @return True if the value is valid, else false
     */
    override protected native function validateValue(value : *) : Boolean;
    /**
     * Selects text in this field
     * @param start The index where the selection should start (defaults to 0)
     * @param end The index where the selection should end (defaults to the text length)
     */
    public native function selectText(start : Number = undefined, end : Number = undefined) : void;
    /**
     * Automatically grows the field to accommodate the width of the text up to the maximum field width allowed.
     * This only takes effect if <code><b><b class='link' title='#grow'>grow</b></b> = true</code>, and fires the <b class='link' title='#autosize'>autosize</b> event.
     */
    public native function autoSize() : void;
    override protected native function onDestroy() : void;
}}
