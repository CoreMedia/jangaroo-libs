package ext.config {


/**
 * Numeric text field that provides automatic keystroke filtering and numeric validation.
 * <p>This class serves as a typed config object for constructor of class NumberField.</p>
 *
 * @see ext.form.NumberField
 */
[ExtConfig(target="ext.form.NumberField")]
public class numberfield extends textfield {

  public function numberfield(config:Object = null) {

    super(config);
  }


  /**
   False to disallow decimal values (defaults to true)
   */
  public native function get allowDecimals():Boolean;

  /**
   * @private
   */
  public native function set allowDecimals(value:Boolean):void;

  /**
   False to prevent entering a negative sign (defaults to true)
   */
  public native function get allowNegative():Boolean;

  /**
   * @private
   */
  public native function set allowNegative(value:Boolean):void;

  /**
   True to automatically strip not allowed characters from the field. Defaults to <tt>false</tt>
   */
  public native function get autoStripChars():Boolean;

  /**
   * @private
   */
  public native function set autoStripChars(value:Boolean):void;

  /**
   The base set of characters to evaluate as valid numbers (defaults to '0123456789').
   */
  public native function get baseChars():String;

  /**
   * @private
   */
  public native function set baseChars(value:String):void;

  /**
   The maximum precision to display after the decimal separator (defaults to 2)
   */
  public native function get decimalPrecision():Number;

  /**
   * @private
   */
  public native function set decimalPrecision(value:Number):void;

  /**
   Character(s) to allow as the decimal separator (defaults to '.')
   */
  public native function get decimalSeparator():String;

  /**
   * @private
   */
  public native function set decimalSeparator(value:String):void;

  /**
   The default CSS class for the field (defaults to "x-form-field x-form-num-field")
   */
  override public native function get fieldClass():String;

  /**
   * @private
   */
  override public native function set fieldClass(value:String):void;

  /**
   Error text to display if the maximum value validation fails (defaults to "The maximum value for this field is {maxValue}")
   */
  public native function get maxText():String;

  /**
   * @private
   */
  public native function set maxText(value:String):void;

  /**
   The maximum allowed value (defaults to Number.MAX_VALUE)
   */
  public native function get maxValue():Number;

  /**
   * @private
   */
  public native function set maxValue(value:Number):void;

  /**
   Error text to display if the minimum value validation fails (defaults to "The minimum value for this field is {minValue}")
   */
  public native function get minText():String;

  /**
   * @private
   */
  public native function set minText(value:String):void;

  /**
   The minimum allowed value (defaults to Number.NEGATIVE_INFINITY)
   */
  public native function get minValue():Number;

  /**
   * @private
   */
  public native function set minValue(value:Number):void;

  /**
   Error text to display if the value is not a valid number. For example, this can happen if a valid character like '.' or '-' is left in the field with no number (defaults to "{value} is not a valid number")
   */
  public native function get nanText():String;

  /**
   * @private
   */
  public native function set nanText(value:String):void;


}
}
    