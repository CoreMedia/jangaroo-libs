package ext.form {
/**
 * Numeric text field that provides automatic keystroke filtering and numeric validation.
*/
public class NumberField extends TextField {
/**
 * @constructor
 * Creates a new NumberField
 * @param config Configuration options
 * @xtype numberfield
 */
public function NumberField(config:Object = null) {
  super(config);
}
    /**
     * @cfg {RegExp} stripCharsRe @hide
     */
    /**
     * @cfg {RegExp} maskRe @hide
     */
    /**
     * @cfg {String} fieldClass The default CSS class for the field (defaults to "x-form-field x-form-num-field")
     */
    //public var fieldClass : String;
    /**
     * @cfg {Boolean} allowDecimals False to disallow decimal values (defaults to true)
     */
    public var allowDecimals  : Boolean;
    /**
     * @cfg {String} decimalSeparator Character(s) to allow as the decimal separator (defaults to '.')
     */
    public var decimalSeparator  : String;
    /**
     * @cfg {Number} decimalPrecision The maximum precision to display after the decimal separator (defaults to 2)
     */
    public var decimalPrecision  : Number;
    /**
     * @cfg {Boolean} allowNegative False to prevent entering a negative sign (defaults to true)
     */
    public var allowNegative  : Boolean;
    /**
     * @cfg {Number} minValue The minimum allowed value (defaults to Number.NEGATIVE_INFINITY)
     */
    public var minValue  : Number;
    /**
     * @cfg {Number} maxValue The maximum allowed value (defaults to Number.MAX_VALUE)
     */
    public var maxValue  : Number;
    /**
     * @cfg {String} minText Error text to display if the minimum value validation fails (defaults to "The minimum value for this field is {minValue}")
     */
    public var minText  : String;
    /**
     * @cfg {String} maxText Error text to display if the maximum value validation fails (defaults to "The maximum value for this field is {maxValue}")
     */
    public var maxText  : String;
    /**
     * @cfg {String} nanText Error text to display if the value is not a valid number.  For example, this can happen
     * if a valid character like '.' or '-' is left in the field with no number (defaults to "{value} is not a valid number")
     */
    public var nanText  : String;
    /**
     * @cfg {String} baseChars The base set of characters to evaluate as valid numbers (defaults to '0123456789').
     */
    public var baseChars  : String;
    //override protected native function initEvents() : void;
    //override protected native function validateValue(value) : void;
    //override public native function getValue() : void;
    //override public native function setValue(v) : void;
    protected native function parseValue(value) : void;
    protected native function fixPrecision(value) : void;
    override protected native function beforeBlur() : void;
}}
