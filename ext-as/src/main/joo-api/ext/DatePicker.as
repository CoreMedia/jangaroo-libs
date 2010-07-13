package ext {
import ext.util.ExtDate;

/**
 * Simple date picker class.
*/
public class DatePicker extends Component {
/**
 * @constructor
 * Create a new DatePicker
 * @param config The config object
 * @xtype datepicker
 */
public function DatePicker(config : Object) {
  super(config);
}
    /**
     * @cfg {String} todayText
     * The text to display on the button that selects the current date (defaults to <code>'Today'</code>)
     */
    public var todayText  : String;
    /**
     * @cfg {String} okText
     * The text to display on the ok button (defaults to <code>'&#160;OK&#160;'</code> to give the user extra clicking room)
     */
    public var okText  : String;
    /**
     * @cfg {String} cancelText
     * The text to display on the cancel button (defaults to <code>'Cancel'</code>)
     */
    public var cancelText  : String;
    /**
     * @cfg {String} todayTip
     * The tooltip to display for the button that selects the current date (defaults to <code>'{current date} (Spacebar)'</code>)
     */
    public var todayTip  : String;
    /**
     * @cfg {String} minText
     * The error text to display if the minDate validation fails (defaults to <code>'This date is before the minimum date'</code>)
     */
    public var minText  : String;
    /**
     * @cfg {String} maxText
     * The error text to display if the maxDate validation fails (defaults to <code>'This date is after the maximum date'</code>)
     */
    public var maxText  : String;
    /**
     * @cfg {String} format
     * The default date format string which can be overriden for localization support.  The format must be
     * valid according to <b class='link'>Date#parseDate</b> (defaults to <code>'m/d/y'</code>).
     */
    public var format  : String;
    /**
     * @cfg {String} disabledDaysText
     * The tooltip to display when the date falls on a disabled day (defaults to <code>'Disabled'</code>)
     */
    public var disabledDaysText  : String;
    /**
     * @cfg {String} disabledDatesText
     * The tooltip text to display when the date falls on a disabled date (defaults to <code>'Disabled'</code>)
     */
    public var disabledDatesText  : String;
    /**
     * @cfg {Array} monthNames
     * An array of textual month names which can be overriden for localization support (defaults to Date.monthNames)
     */
    public var monthNames  : Array;
    /**
     * @cfg {Array} dayNames
     * An array of textual day names which can be overriden for localization support (defaults to Date.dayNames)
     */
    public var dayNames  : Array;
    /**
     * @cfg {String} nextText
     * The next month navigation button tooltip (defaults to <code>'Next Month (Control+Right)'</code>)
     */
    public var nextText  : String;
    /**
     * @cfg {String} prevText
     * The previous month navigation button tooltip (defaults to <code>'Previous Month (Control+Left)'</code>)
     */
    public var prevText  : String;
    /**
     * @cfg {String} monthYearText
     * The header month selector tooltip (defaults to <code>'Choose a month (Control+Up/Down to move years)'</code>)
     */
    public var monthYearText  : String;
    /**
     * @cfg {Number} startDay
     * Day index at which the week should begin, 0-based (defaults to 0, which is Sunday)
     */
    public var startDay  : Number;
    /**
     * @cfg {Boolean} showToday
     * False to hide the footer area containing the Today button and disable the keyboard handler for spacebar
     * that selects the current date (defaults to <code>true</code>).
     */
    public var showToday  : Boolean;
    /**
     * @cfg {Date} minDate
     * Minimum allowable date (JavaScript date object, defaults to null)
     */
    /**
     * @cfg {Date} maxDate
     * Maximum allowable date (JavaScript date object, defaults to null)
     */
    /**
     * @cfg {Array} disabledDays
     * An array of days to disable, 0-based. For example, [0, 6] disables Sunday and Saturday (defaults to null).
     */
    /**
     * @cfg {RegExp} disabledDatesRE
     * JavaScript regular expression used to disable a pattern of dates (defaults to null).  The <b class='link' title='#disabledDates'>disabledDates</b>
     * config will generate this regex internally, but if you specify disabledDatesRE it will take precedence over the
     * disabledDates value.
     */
    /**
     * @cfg {Array} disabledDates
     * An array of 'dates' to disable, as strings. These strings will be used to build a dynamic regular
     * expression so they are very powerful. Some examples:
     * <ul>
     * <li>['03/08/2003', '09/16/2003'] would disable those exact dates</li>
     * <li>['03/08', '09/16'] would disable those days for every year</li>
     * <li>['^03/08'] would only match the beginning (useful if you are using short years)</li>
     * <li>['03/../2006'] would disable every day in March 2006</li>
     * <li>['^03'] would disable every day in every March</li>
     * </ul>
     * Note that the format of the dates included in the array should exactly match the <b class='link' title='#format'>format</b> config.
     * In order to support regular expressions, if you are using a date format that has '.' in it, you will have to
     * escape the dot when restricting dates. For example: ['03\\.08\\.03'].
     */
    override protected native function initComponent() : void;

    protected native function initDisabledDays() : void;

    /**
     * Replaces any existing disabled dates with new values and refreshes the DatePicker.
     * @param disabledDates An array of date strings (see the <b class='link' title='#disabledDates'>disabledDates</b> config
     * for details on supported values), or a JavaScript regular expression used to disable a pattern of dates.
     */
    public native function setDisabledDates(disabledDates : *) : void;
    /**
     * Replaces any existing disabled days (by index, 0-6) with new values and refreshes the DatePicker.
     * @param disabledDays An array of disabled day indexes. See the <b class='link' title='#disabledDays'>disabledDays</b> config
     * for details on supported values.
     */
    public native function setDisabledDays(disabledDays : Array) : void;
    /**
     * Replaces any existing <b class='link' title='#minDate'>minDate</b> with the new value and refreshes the DatePicker.
     * @param value The minimum date that can be selected
     */
    public native function setMinDate(value : Date) : void;
    /**
     * Replaces any existing <b class='link' title='#maxDate'>maxDate</b> with the new value and refreshes the DatePicker.
     * @param value The maximum date that can be selected
     */
    public native function setMaxDate(value : Date) : void;
    /**
     * Sets the value of the date field
     * @param value The date to set
     */
    public native function setValue(value : Date) : void;
    /**
     * Gets the current selected value of the date field
     * @return The selected date
     */
    public native function getValue() : ExtDate;
    override public native function focus(selectText : Boolean = undefined, delay : * = undefined) : Component;
    override protected native function onEnable() : void;
    override protected native function onDisable() : void;
    protected native function doDisabled(disabled) : void;
    override protected native function onRender(container : Element, position : Element) : void;
    protected native function createMonthPicker() : void;
    protected native function showMonthPicker() : void;
    protected native function updateMPYear(y) : void;
    protected native function updateMPMonth(sm) : void;
    protected native function selectMPMonth(m) : void;
    protected native function onMonthClick(e, t) : void;
    protected native function onMonthDblClick(e, t) : void;
    protected native function hideMonthPicker(disableAnim) : void;
    protected native function showPrevMonth(e) : void;
    protected native function showNextMonth(e) : void;
    protected native function showPrevYear() : void;
    protected native function showNextYear() : void;
    protected native function handleMouseWheel(e) : void;
    protected native function handleDateClick(e, t) : void;
    protected native function selectToday() : void;
    protected native function update(date, forceRefresh) : void;
    override protected native function beforeDestroy() : void;
    /**
     * @cfg {String} autoEl @hide
     */
}}
