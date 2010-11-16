package ext.form {
/**
 * Provides a time input field with a time dropdown and automatic time validation.  Example usage:
 * <pre><code>
new ext.form.TimeField({
    minValue: '9:00 AM',
    maxValue: '6:00 PM',
    increment: 30
});
</code></pre>
*/
public class TimeField extends ComboBox {
/**
 * @constructor
 * Create a new TimeField
 * @param config
 * @xtype timefield
 */
public function TimeField(config : Object) {
  super(config);
}
    /**
     * @cfg {Date/String} minValue
     * The minimum allowed time. Can be either a Javascript date object with a valid time value or a string 
     * time in a valid format -- see <b class='link' title='#format'>format</b> and <b class='link' title='#altFormats'>altFormats</b> (defaults to null).
     */
    public var minValue  : *;
    /**
     * @cfg {Date/String} maxValue
     * The maximum allowed time. Can be either a Javascript date object with a valid time value or a string 
     * time in a valid format -- see <b class='link' title='#format'>format</b> and <b class='link' title='#altFormats'>altFormats</b> (defaults to null).
     */
    public var maxValue  : *;
    /**
     * @cfg {String} minText
     * The error text to display when the date in the cell is before minValue (defaults to
     * 'The time in this field must be equal to or after {0}').
     */
    public var minText  : String;
    /**
     * @cfg {String} maxText
     * The error text to display when the time is after maxValue (defaults to
     * 'The time in this field must be equal to or before {0}').
     */
    public var maxText  : String;
    /**
     * @cfg {String} invalidText
     * The error text to display when the time in the field is invalid (defaults to
     * '{value} is not a valid time').
     */
    //public var invalidText  : String;
    /**
     * @cfg {String} format
     * The default time format string which can be overriden for localization support.  The format must be
     * valid according to <b class='link'>Date#parseDate</b> (defaults to 'g:i A', e.g., '3:15 PM').  For 24-hour time
     * format try 'H:i' instead.
     */
    public var format  : String;
    /**
     * @cfg {String} altFormats
     * Multiple date formats separated by "|" to try when parsing a user input value and it doesn't match the defined
     * format (defaults to 'g:ia|g:iA|g:i a|g:i A|h:i|g:i|H:i|ga|ha|gA|h a|g a|g A|gi|hi|gia|hia|g|H').
     */
    public var altFormats  : String;
    /**
     * @cfg {Number} increment
     * The number of minutes between each time value in the list (defaults to 15).
     */
    public var increment : Number;
    //public var mode;
    //public var triggerAction;
    //public var typeAhead;
    public var initDate;
    override protected native function initComponent() : void;
    override public native function getValue() : *;
    override public native function setValue(value : *) : Field;
    //public var validateValue ;
    public var parseDate ;
    public var formatDate ;
    override protected native function beforeBlur() : void;
    /**
     * @cfg {Boolean} grow @hide
     */
    /**
     * @cfg {Number} growMin @hide
     */
    /**
     * @cfg {Number} growMax @hide
     */
    /**
     * @hide
     * @method autoSize
     */
}}
