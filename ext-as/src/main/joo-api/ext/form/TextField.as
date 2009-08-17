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
 * function is expected to return boolean <tt>true</tt> if the value is valid or return a string to
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
     * for the <b><code><b class='link'>#vtype</b></code></b> currently set for this field (defaults to <tt>''</tt>).  <b>Note</b>:
     * only applies if <b><code><b class='link'>#vtype</b></code></b> is set, else ignored.
     */
    /**
     * @cfg {RegExp} stripCharsRe A JavaScript RegExp object used to strip unwanted content from the value
     * before validation (defaults to <tt>null</tt>).
     */
    /**
     * @cfg {Boolean} grow <tt>true</tt> if this field should automatically grow and shrink to its content
     * (defaults to <tt>false</tt>)
     */
    public var grow  : Boolean;
    /**
     * @cfg {Number} growMin The minimum width to allow when <code><b class='link'>#grow</b> = true</code> (defaults
     * to <tt>30</tt>)
     */
    public var growMin  : Number;
    /**
     * @cfg {Number} growMax The maximum width to allow when <code><b class='link'>#grow</b> = true</code> (defaults
     * to <tt>800</tt>)
     */
    public var growMax  : Number;
    /**
     * @cfg {String} vtype A validation type name as defined in <b class='link'>ext.form.VTypes</b> (defaults to <tt>null</tt>)
     */
    public var vtype  : String;
    /**
     * @cfg {RegExp} maskRe An input mask regular expression that will be used to filter keystrokes that do
     * not match (defaults to <tt>null</tt>)
     */
    public var maskRe  : RegExp;
    /**
     * @cfg {Boolean} disableKeyFilter Specify <tt>true</tt> to disable input keystroke filtering (defaults
     * to <tt>false</tt>)
     */
    public var disableKeyFilter  : Boolean;
    /**
     * @cfg {Boolean} allowBlank Specify <tt>false</tt> to validate that the value's length is > 0 (defaults to
     * <tt>true</tt>)
     */
    public var allowBlank  : Boolean;
    /**
     * @cfg {Number} minLength Minimum input field length required (defaults to <tt>0</tt>)
     */
    public var minLength  : Number;
    /**
     * @cfg {Number} maxLength Maximum input field length allowed by validation (defaults to Number.MAX_VALUE).
     * This behavior is intended to provide instant feedback to the user by improving usability to allow pasting
     * and editing or overtyping and back tracking. To restrict the maximum number of characters that can be
     * entered into the field use <tt><b class='link' title='ext.form.Field#autoCreate'>autoCreate</b></tt> to add
     * any attributes you want to a field, for example:<pre><code>
var myField = new ext.form.NumberField({
    id: 'mobile',
    anchor:'90%',
    fieldLabel: 'Mobile',
    maxLength: 16, // for validation
    autoCreate: {tag: 'input', type: 'text', size: '20', autocomplete: 'off', maxlength: '10'}
});
</code></pre>
     */
    public var maxLength  : Number;
    /**
     * @cfg {String} minLengthText Error text to display if the <b><tt><b class='link' title='#minLength minimum'>length</b></tt></b>
     * validation fails (defaults to <tt>'The minimum length for this field is {minLength}'</tt>)
     */
    public var minLengthText  : String;
    /**
     * @cfg {String} maxLengthText Error text to display if the <b><tt><b class='link' title='#maxLength maximum'>length</b></tt></b>
     * validation fails (defaults to <tt>'The maximum length for this field is {maxLength}'</tt>)
     */
    public var maxLengthText  : String;
    /**
     * @cfg {Boolean} selectOnFocus <tt>true</tt> to automatically select any existing field text when the field
     * receives input focus (defaults to <tt>false</tt>)
     */
    public var selectOnFocus  : Boolean;
    /**
     * @cfg {String} blankText The error text to display if the <b><tt><b class='link'>#allowBlank</b></tt></b> validation
     * fails (defaults to <tt>'This field is required'</tt>)
     */
    public var blankText  : String;
    /**
     * @cfg {Function} validator A custom validation function to be called during field validation
     * (defaults to <tt>null</tt>). If specified, this function will be called first, allowing the
     * developer to override the default validation process. This function will be passed the current
     * field value and expected to return boolean <tt>true</tt> if the value is valid or a string
     * error message if invalid.
     */
    public var validator  : Function;
    /**
     * @cfg {RegExp} regex A JavaScript RegExp object to be tested against the field value during validation
     * (defaults to <tt>null</tt>). If the test fails, the field will be marked invalid using
     * <b><tt><b class='link'>#regexText</b></tt></b>.
     */
    public var regex  : RegExp;
    /**
     * @cfg {String} regexText The error text to display if <b><tt><b class='link'>#regex</b></tt></b> is used and the
     * test fails during validation (defaults to <tt>''</tt>)
     */
    public var regexText  : String;
    /**
     * @cfg {String} emptyText The default text to place into an empty field (defaults to <tt>null</tt>).
     * <b>Note</b>: that this value will be submitted to the server if this field is enabled and configured
     * with a <b class='link'>#name</b>.
     */
    public var emptyText  : String;
    /**
     * @cfg {String} emptyClass The CSS class to apply to an empty field to style the <b><tt><b class='link'>#emptyText</b></tt></b>
     * (defaults to <tt>'x-form-empty-field'</tt>).  This class is automatically added and removed as needed
     * depending on the current field value.
     */
    public var emptyClass  : String;
    /**
     * @cfg {Boolean} enableKeyEvents <tt>true</tt> to enable the proxying of key events for the HTML input
     * field (defaults to <tt>false</tt>)
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
     * Also adds <tt><b class='link'>#emptyText</b></b></tt> and <tt><b><b class='link'>#emptyClass</b></tt> if the
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
     * This only takes effect if <tt><b><b class='link'>#grow</b></b> = true</tt>, and fires the <b class='link'>#autosize</b> event.
     */
    public native function autoSize() : void;
    override protected native function onDestroy() : void;
}}
