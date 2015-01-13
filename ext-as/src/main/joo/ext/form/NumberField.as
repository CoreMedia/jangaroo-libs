package ext.form {
import ext.config.numberfield;

/**
 * Numeric text field that provides automatic keystroke filtering and numeric validation.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'numberfield' / the EXML element &lt;numberfield>.</p>
 * @see ext.config.numberfield
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.NumberField Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "form.NumberField")]
public class NumberField extends TextField {

  /**
   * Creates a new NumberField
   *
   * @param config Configuration options
   * @see ext.config.numberfield
   */
  public function NumberField(config:numberfield) {
    super(null);
  }

  /**
   False to disallow decimal values (defaults to true)
   */
  public native function get allowDecimals():Boolean;

  /**
   False to prevent entering a negative sign (defaults to true)
   */
  public native function get allowNegative():Boolean;

  /**
   True to automatically strip not allowed characters from the field. Defaults to <tt>false</tt>
   */
  public native function get autoStripChars():Boolean;

  /**
   The base set of characters to evaluate as valid numbers (defaults to '0123456789').
   */
  public native function get baseChars():String;

  /**
   The maximum precision to display after the decimal separator (defaults to 2)
   */
  public native function get decimalPrecision():Number;

  /**
   Character(s) to allow as the decimal separator (defaults to '.')
   */
  public native function get decimalSeparator():String;

  /**
   The default CSS class for the field (defaults to "x-form-field x-form-num-field")
   */
  override public native function get fieldClass():String;

  /**
   Error text to display if the maximum value validation fails (defaults to "The maximum value for this field is {maxValue}")
   */
  public native function get maxText():String;

  /**
   The maximum allowed value (defaults to Number.MAX_VALUE)
   */
  public native function get maxValue():Number;

  /**
   Error text to display if the minimum value validation fails (defaults to "The minimum value for this field is {minValue}")
   */
  public native function get minText():String;

  /**
   The minimum allowed value (defaults to Number.NEGATIVE_INFINITY)
   */
  public native function get minValue():Number;

  /**
   Error text to display if the value is not a valid number. For example, this can happen if a valid character like '.' or '-' is left in the field with no number (defaults to "{value} is not a valid number")
   */
  public native function get nanText():String;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.NumberField-method-fixPrecision Sencha Docs Ext JS 3.4
   */
  public native function fixPrecision():void;

  /**
   * Runs all of NumberFields validations and returns an array of any errors. Note that this first runs TextField's validations, so the returned array is an amalgamation of all field errors. The additional validations run test that the value is a number, and that it is within the configured min and max values.
   *
   * @param value The value to validate. The processed raw value will be used if nothing is passed
   * @return All validation errors for this field
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.NumberField-method-getErrors Sencha Docs Ext JS 3.4
   */
  override public native function getErrors(value:* = null):Array;

  /**
   * Replaces any existing <a href="output/Ext.form.NumberField.html#Ext.form.NumberField-maxValue">maxValue</a> with the new value.
   *
   * @param value The maximum value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.NumberField-method-setMaxValue Sencha Docs Ext JS 3.4
   */
  public native function setMaxValue(value:Number):void;

  /**
   * Replaces any existing <a href="output/Ext.form.NumberField.html#Ext.form.NumberField-minValue">minValue</a> with the new value.
   *
   * @param value The minimum value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.NumberField-method-setMinValue Sencha Docs Ext JS 3.4
   */
  public native function setMinValue(value:Number):void;

}
}
    