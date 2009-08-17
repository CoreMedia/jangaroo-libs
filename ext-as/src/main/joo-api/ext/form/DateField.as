package ext.form {
/**
 * Provides a date input field with a <b class='link'>ext.DatePicker</b> dropdown and automatic date validation.
*/
public class DateField extends TriggerField {
/**
 * @constructor
 * Create a new DateField
 * @param config
 * @xtype datefield
 */
public function DateField(config : Object) {
  super(config);
}
    /**
     * @cfg {String} format
     * The default date format string which can be overriden for localization support.  The format must be
     * valid according to <b class='link'>Date#parseDate</b> (defaults to <tt>'m/d/Y'</tt>).
     */
    public var format  : String;
    /**
     * @cfg {String} altFormats
     * Multiple date formats separated by "<tt>|</tt>" to try when parsing a user input value and it
     * does not match the defined format (defaults to
     * <tt>'m/d/Y|n/j/Y|n/j/y|m/j/y|n/d/y|m/j/Y|n/d/Y|m-d-y|m-d-Y|m/d|m-d|md|mdy|mdY|d|Y-m-d'</tt>).
     */
    public var altFormats  : String;
    /**
     * @cfg {String} disabledDaysText
     * The tooltip to display when the date falls on a disabled day (defaults to <tt>'Disabled'</tt>)
     */
    public var disabledDaysText  : String;
    /**
     * @cfg {String} disabledDatesText
     * The tooltip text to display when the date falls on a disabled date (defaults to <tt>'Disabled'</tt>)
     */
    public var disabledDatesText  : String;
    /**
     * @cfg {String} minText
     * The error text to display when the date in the cell is before <tt><b class='link'>#minValue</b></tt> (defaults to
     * <tt>'The date in this field must be after {minValue}'</tt>).
     */
    public var minText  : String;
    /**
     * @cfg {String} maxText
     * The error text to display when the date in the cell is after <tt><b class='link'>#maxValue</b></tt> (defaults to
     * <tt>'The date in this field must be before {maxValue}'</tt>).
     */
    public var maxText  : String;
    /**
     * @cfg {String} invalidText
     * The error text to display when the date in the field is invalid (defaults to
     * <tt>'{value} is not a valid date - it must be in the format {format}'</tt>).
     */
    //public var invalidText  : String;
    /**
     * @cfg {String} triggerClass
     * An additional CSS class used to style the trigger button.  The trigger will always get the
     * class <tt>'x-form-trigger'</tt> and <tt>triggerClass</tt> will be <b>appended</b> if specified
     * (defaults to <tt>'x-form-date-trigger'</tt> which displays a calendar icon).
     */
    public var triggerClass  : String;
    /**
     * @cfg {Boolean} showToday
     * <tt>false</tt> to hide the footer area of the DatePicker containing the Today button and disable
     * the keyboard handler for spacebar that selects the current date (defaults to <tt>true</tt>).
     */
    public var showToday  : Boolean;
    /**
     * @cfg {Date/String} minValue
     * The minimum allowed date. Can be either a Javascript date object or a string date in a
     * valid format (defaults to null).
     */
    /**
     * @cfg {Date/String} maxValue
     * The maximum allowed date. Can be either a Javascript date object or a string date in a
     * valid format (defaults to null).
     */
    /**
     * @cfg {Array} disabledDays
     * An array of days to disable, 0 based (defaults to null). Some examples:<pre><code>
// disable Sunday and Saturday:
disabledDays:  [0, 6]
// disable weekdays:
disabledDays: [1,2,3,4,5]
     * </code></pre>
     */
    /**
     * @cfg {Array} disabledDates
     * An array of "dates" to disable, as strings. These strings will be used to build a dynamic regular
     * expression so they are very powerful. Some examples:<pre><code>
// disable these exact dates:
disabledDates: ["03/08/2003", "09/16/2003"]
// disable these days for every year:
disabledDates: ["03/08", "09/16"]
// only match the beginning (useful if you are using short years):
disabledDates: ["^03/08"]
// disable every day in March 2006:
disabledDates: ["03/../2006"]
// disable every day in every March:
disabledDates: ["^03"]
     * </code></pre>
     * Note that the format of the dates included in the array should exactly match the <b class='link'>#format</b> config.
     * In order to support regular expressions, if you are using a <b class='link' title='#format date'>format</b> that has "." in
     * it, you will have to escape the dot when restricting dates. For example: <tt>["03\\.08\\.03"]</tt>.
     */
    /**
     * @cfg {String/Object} autoCreate
     * A <b class='link' title='ext.DomHelper DomHelper element specification'>object</b>, or <tt>true</tt> for the default element
     * specification object:<pre><code>
     * autoCreate: {tag: "input", type: "text", size: "10", autocomplete: "off"}
     * </code></pre>
     */
    //protected var defaultAutoCreate  : *;
    override protected native function initComponent() : void;
    protected native function initDisabledDays() : void;
    /**
     * Replaces any existing disabled dates with new values and refreshes the DatePicker.
     * @param disabledDates An array of date strings (see the <tt><b class='link'>#disabledDates</b></tt> config
     * for details on supported values) used to disable a pattern of dates.
     */
    public native function setDisabledDates(disabledDates : Array) : void;
    /**
     * Replaces any existing disabled days (by index, 0-6) with new values and refreshes the DatePicker.
     * @param disabledDays An array of disabled day indexes. See the <tt><b class='link'>#disabledDays</b></tt>
     * config for details on supported values.
     */
    public native function setDisabledDays(disabledDays : Array) : void;
    /**
     * Replaces any existing <tt><b class='link'>#minValue</b></tt> with the new value and refreshes the DatePicker.
     * @param value The minimum date that can be selected
     */
    public native function setMinValue(value : Date) : void;
    /**
     * Replaces any existing <tt><b class='link'>#maxValue</b></tt> with the new value and refreshes the DatePicker.
     * @param value The maximum date that can be selected
     */
    public native function setMaxValue(value : Date) : void;
    override protected native function validateValue(value : *) : Boolean;
    override protected native function validateBlur(e) : void;
    /**
     * Returns the current date value of the date field.
     * @return The date value
     */
    override public native function getValue() : *;
    /**
     * Sets the value of the date field.  You can pass a date object or any string that can be
     * parsed into a valid date, using <tt><b class='link'>#format</b></tt> as the date format, according
     * to the same rules as <b class='link'>Date#parseDate</b> (the default format used is <tt>"m/d/Y"</tt>).
     * <br />Usage:
     * <pre><code>
//All of these calls set the same date value (May 4, 2006)

//Pass a date object:
var dt = new Date('5/4/2006');
dateField.setValue(dt);

//Pass a date string (default format):
dateField.setValue('05/04/2006');

//Pass a date string (custom format):
dateField.format = 'Y-m-d';
dateField.setValue('2006-05-04');
</code></pre>
     * @param date The date or valid date string
     * @return this
     */
    override public native function setValue(date : *) : Field;
    protected native function parseDate(value) : void;
    override protected native function onDestroy() : void;
    protected native function formatDate(date) : void;
    /**
     * @method onTriggerClick
     * @hide
     */
    override public native function onTriggerClick(e : *) : void;
    protected native function menuEvents(method) : void;
    public native function onSelect(m, d) : void;
    public native function onMenuHide() : void;
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
