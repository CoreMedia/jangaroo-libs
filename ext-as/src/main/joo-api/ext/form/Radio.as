package ext.form {
/**
 * Single radio field.  Same as Checkbox, but provided as a convenience for automatically setting the input type.
 * Radio grouping is handled automatically by the browser if you give each radio in a group the same name.
*/
public class Radio extends Checkbox {
/**
 * @constructor
 * Creates a new Radio
 * @param config Configuration options
 * @xtype radio
 */
public function Radio(config : Object) {
  super(config);
}
  public var inputType;
    /**
     * Overridden and disabled. The editor element does not support standard valid/invalid marking. @hide
     * @method
     */
    override public native function markInvalid(msg : String = undefined):void;

  /**
     * Overridden and disabled. The editor element does not support standard valid/invalid marking. @hide
     * @method
     */
    override public native function clearInvalid():void;

  /**
     * If this radio is part of a group, it will return the selected value
     * @return 
     */
    public native function getGroupValue() : String;
    override protected native function onClick() : void;
    /**
     * Sets either the checked/unchecked status of this Radio, or, if a string value
     * is passed, checks a sibling Radio of the same name whose value is the value specified.
     * @param value {String/Boolean} Checked value, or the value of the sibling radio button to check.
     * @return this
     */
    override public native function setValue(value : *) : Field;
    protected native function getCheckEl() : void;
}}
