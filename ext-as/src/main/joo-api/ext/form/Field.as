package ext.form {
import ext.BoxComponent;
import ext.Element;

/**
 * Base class for form fields that provides default event handling, sizing, value handling and other functionality.
*/
public class Field extends BoxComponent {
/**
 * @constructor
 * Creates a new Field
 * @param config Configuration options
 * @xtype field
 */
public function Field(config : Object) {
  super(config);
}
    /**
     * @cfg {String} inputType The type attribute for input fields -- e.g. radio, text, password, file (defaults
     * to "text"). The types "file" and "password" must be used to render those field types currently -- there are
     * no separate Ext components for those. Note that if you use <tt>inputType:'file'</tt>, <b class='link'>#emptyText</b>
     * is not supported and should be avoided.
     */
    /**
     * @cfg {Number} tabIndex The tabIndex for this field. Note this only applies to fields that are rendered,
     * not those which are built via applyTo (defaults to undefined).
     */
    /**
     * @cfg {Mixed} value A value to initialize this field with (defaults to undefined).
     */
    /**
     * @cfg {String} name The field's HTML name attribute (defaults to "").
     * <b>Note</b>: this property must be set if this field is to be automatically included with
     * <b class='link' title='ext.form.BasicForm#submit form'>submit()</b>.
     */
    /**
     * @cfg {String} cls A custom CSS class to apply to the field's underlying element (defaults to "").
     */
    /**
     * @cfg {String} invalidClass The CSS class to use when marking a field invalid (defaults to "x-form-invalid")
     */
    public var invalidClass  : String;
    /**
     * @cfg {String} invalidText The error text to use when marking a field invalid and no message is provided
     * (defaults to "The value in this field is invalid")
     */
    public var invalidText  : String;
    /**
     * @cfg {String} focusClass The CSS class to use when the field receives focus (defaults to "x-form-focus")
     */
    public var focusClass  : String;
    /**
     * @cfg {String/Boolean} validationEvent The event that should initiate field validation. Set to false to disable
      automatic validation (defaults to "keyup").
     */
    public var validationEvent  : *;
    /**
     * @cfg {Boolean} validateOnBlur Whether the field should validate when it loses focus (defaults to true).
     */
    public var validateOnBlur  : Boolean;
    /**
     * @cfg {Number} validationDelay The length of time in milliseconds after user input begins until validation
     * is initiated (defaults to 250)
     */
    public var validationDelay  : Number;
    /**
     * @cfg {String/Object} autoCreate <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element spec, or true for a default
     * element spec. Used to create the <b class='link' title='ext.Component#getEl'>Element</b> which will encapsulate this Component.
     * See <tt><b class='link' title='ext.Component#autoEl'>autoEl</b></tt> for details.  Defaults to:</p>
     * <pre><code>{tag: "input", type: "text", size: "20", autocomplete: "off"}</code></pre>
     */
    public var defaultAutoCreate  : *;
    /**
     * @cfg {String} fieldClass The default CSS class for the field (defaults to "x-form-field")
     */
    public var fieldClass  : String;
    /**
     * @cfg {String} msgTarget The location where error text should display.  Should be one of the following values
     * (defaults to 'qtip'):
     *<pre>
Value         Description
-----------   ----------------------------------------------------------------------
qtip          Display a quick tip when the user hovers over the field
title         Display a default browser title attribute popup
under         Add a block div beneath the field containing the error text
side          Add an error icon to the right of the field with a popup on hover
[element id]  Add the error text directly to the innerHTML of the specified element
</pre>
     */
    public var msgTarget  : String;
    /**
     * @cfg {String} msgFx <b>Experimental</b> The effect used when displaying a validation message under the field
     * (defaults to 'normal').
     */
    public var msgFx  : String;
    /**
     * @cfg {Boolean} readOnly <tt>true</tt> to mark the field as readOnly in HTML
     * (defaults to <tt>false</tt>).
     * <br><p><b>Note</b>: this only sets the element's readOnly DOM attribute.
     * Setting <code>readOnly=true</code>, for example, will not disable triggering a
     * ComboBox or DateField; it gives you the option of forcing the user to choose
     * via the trigger without typing in the text box. To hide the trigger use
     * <code><b class='link' title='ext.form.TriggerField#hideTrigger'>hideTrigger</b></code>.</p>
     */
    public var readOnly  : Boolean;
    /**
     * @cfg {Boolean} disabled True to disable the field (defaults to false).
     * <p>Be aware that conformant with the <a href="http://www.w3.org/TR/html401/interact/forms.html#h-17.12.1">HTML specification</a>,
     * disabled Fields will not be <b class='link' title='ext.form.BasicForm#submit'>submitted</b>.</p>
     */
    //public var disabled  : Boolean;
    protected var isFormField : Boolean;
    protected var hasFocus : Boolean;
    override protected native function initComponent() : void;
    /**
     * Returns the <b class='link' title='ext.form.Field#name'>name</b> or <b class='link' title='ext.form.ComboBox#hiddenName'>hiddenName</b>
     * attribute of the field if available.
     * @return name The field <b class='link' title='ext.form.Field#name'>name</b> or <b class='link' title='ext.form.ComboBox#hiddenName'>hiddenName</b>  
     */
    public native function getName() : String;
    override protected native function onRender(container : Element, position : Element) : void;
    protected native function getItemCt() : void;
    protected native function initValue() : void;
        /**
         * The original value of the field as configured in the <b class='link'>#value</b> configuration, or
         * as loaded by the last form load operation if the form's <b class='link' title='ext.form.BasicForm#trackResetOnLoad'>trackResetOnLoad</b>
         * setting is <code>true</code>.
         * @property originalValue
         */
    /**
     * <p>Returns true if the value of this Field has been changed from its original value.
     * Will return false if the field is disabled or has not been rendered yet.</p>
     * <p>Note that if the owning <b class='link' title='ext.form.BasicForm'>form</b> was configured with
     * <b class='link'>ext.form.BasicForm</b>.<b class='link' title='ext.form.BasicForm#trackResetOnLoad'>trackResetOnLoad</b>
     * then the <i>original value</i> is updated when the values are loaded by
     * <b class='link'>ext.form.BasicForm</b>.<b class='link' title='ext.form.BasicForm#setValues'>setValues</b>.</p>
     * @return True if this field has been changed from its original value (and
     * is not disabled), false otherwise.
     */
    public native function isDirty() : Boolean;
    override protected native function afterRender() : void;
    protected native function fireKey(e) : void;
    /**
     * Resets the current field value to the originally loaded value and clears any validation messages.
     * See <b class='link'>ext.form.BasicForm</b>.<b class='link' title='ext.form.BasicForm#trackResetOnLoad'>trackResetOnLoad</b>
     */
    public native function reset() : void;
    protected native function initEvents() : void;
    protected native function onFocus() : void;
    protected native function beforeBlur()  : void;
    protected native function onBlur() : void;
    /**
     * Returns whether or not the field value is currently valid
     * @param preventMark True to disable marking the field invalid
     * @return True if the value is valid, else false
     */
    public native function isValid(preventMark : Boolean) : Boolean;
    /**
     * Validates the field value
     * @return True if the value is valid, else false
     */
    public native function validate() : Boolean;
    public native function processValue(value : *) : void;
    protected native function validateValue(value : *) : Boolean;
    /**
     * Mark this field as invalid, using <b class='link'>#msgTarget</b> to determine how to display the error and
     * applying <b class='link'>#invalidClass</b> to the field's element.
     * @param msg The validation message (defaults to <b class='link'>#invalidText</b>)
     */
    public native function markInvalid(msg : String = undefined) : void;
    /**
     * Clear any invalid styles/messages for this field
     */
    public native function clearInvalid() : void;
    protected native function getMessageHandler() : void;
    protected native function getErrorCt() : void;
    protected native function alignErrorIcon() : void;
    /**
     * Returns the raw data value which may or may not be a valid, defined value.  To return a normalized value see <b class='link'>#getValue</b>.
     * @return value The field value
     */
    public native function getRawValue() : *;
    /**
     * Returns the normalized data value (undefined or emptyText will be returned as '').  To return the raw value see <b class='link'>#getRawValue</b>.
     * @return value The field value
     */
    public native function getValue() : *;
    /**
     * Sets the underlying DOM field's value directly, bypassing validation.  To set the value with validation see <b class='link'>#setValue</b>.
     * @param value The value to set
     * @return value The field value that is set
     */
    public native function setRawValue(value : *) : *;
    /**
     * Sets a data value into the field and validates it.  To set the value directly without validation see <b class='link'>#setRawValue</b>.
     * @param value The value to set
     * @return this
     */
    public native function setValue(value : *) : Field;
    public native function append(v) : void;
    protected override native function adjustSize(w, h) : void;
    protected native function adjustWidth(tag, w) : void;
    /**
     * @cfg {Boolean} autoWidth @hide
     */
    /**
     * @cfg {Boolean} autoHeight @hide
     */
    /**
     * @cfg {String} autoEl @hide
     */
    public var normal  : String;
    public var slide ;
    public var slideRight ;
}}
