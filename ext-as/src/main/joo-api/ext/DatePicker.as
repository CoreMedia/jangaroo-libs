package ext {

import ext.config.datepicker;

/**
 * Fires when a date is selected
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DatePicker</code>
 DatePicker
 *       </li>

 *       <li>
 *           <code>date:Date</code>
 The selected date
 *       </li>

 * </ul>
 */
[Event(name="select")]


/**
 * A popup date picker. This class is used by the <a href="Ext.form.DateField.html">DateField</a> class to allow browsing and selection of valid dates.
 <p>All the string values documented below may be overridden by including an Ext locale file in your page.</p>
 * <p>This component is created by the xtype 'datepicker' / the EXML element &lt;datepicker>.</p>
 * @see ext.config.datepicker
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#cls-Ext.DatePicker Ext JS source
 */
public class DatePicker extends Component {

  /**
   * Create a new DatePicker
   *
   * @param config The config object
   * @see ext.config.datepicker
   */
  public function DatePicker(config:datepicker) {
    super(null);
  }

  /**
   The text to display on the cancel button (defaults to <code>'Cancel'</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cancelText():String;

  /**
   An array of textual day names which can be overridden for localization support (defaults to Date.dayNames)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dayNames():Array;

  /**
   An array of 'dates' to disable, as strings. These strings will be used to build a dynamic regular expression so they are very powerful. Some examples: <ul><li>['03/08/2003', '09/16/2003'] would disable those exact dates</li><li>['03/08', '09/16'] would disable those days for every year</li><li>['^03/08'] would only match the beginning (useful if you are using short years)</li><li>['03/../2006'] would disable every day in March 2006</li><li>['^03'] would disable every day in every March</li></ul>Note that the format of the dates included in the array should exactly match the <a href="output/Ext.DatePicker.html#Ext.DatePicker-format">format</a> config. In order to support regular expressions, if you are using a date format that has '.' in it, you will have to escape the dot when restricting dates. For example: ['03\\.08\\.03'].
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabledDates():Array;

  /**
   JavaScript regular expression used to disable a pattern of dates (defaults to null). The <a href="output/Ext.DatePicker.html#Ext.DatePicker-disabledDates">disabledDates</a> config will generate this regex internally, but if you specify disabledDatesRE it will take precedence over the disabledDates value.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabledDatesRE():RegExp;

  /**
   The tooltip text to display when the date falls on a disabled date (defaults to <code>'Disabled'</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabledDatesText():String;

  /**
   An array of days to disable, 0-based. For example, [0, 6] disables Sunday and Saturday (defaults to null).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabledDays():Array;

  /**
   The tooltip to display when the date falls on a disabled day (defaults to <code>'Disabled'</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabledDaysText():String;

  /**
   The default date format string which can be overridden for localization support. The format must be valid according to <a href="output/Date.html#Date-parseDate">Date.parseDate</a> (defaults to <code>'m/d/y'</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get format():String;

  /**
   Maximum allowable date (JavaScript date object, defaults to null)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxDate():Date;

  /**
   The error text to display if the maxDate validation fails (defaults to <code>'This date is after the maximum date'</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxText():String;

  /**
   Minimum allowable date (JavaScript date object, defaults to null)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minDate():Date;

  /**
   The error text to display if the minDate validation fails (defaults to <code>'This date is before the minimum date'</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minText():String;

  /**
   An array of textual month names which can be overridden for localization support (defaults to Date.monthNames)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get monthNames():Array;

  /**
   The header month selector tooltip (defaults to <code>'Choose a month (Control+Up/Down to move years)'</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get monthYearText():String;

  /**
   The next month navigation button tooltip (defaults to <code>'Next Month (Control+Right)'</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get nextText():String;

  /**
   The text to display on the ok button (defaults to <code>' OK '</code> to give the user extra clicking room)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get okText():String;

  /**
   The previous month navigation button tooltip (defaults to <code>'Previous Month (Control+Left)'</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get prevText():String;

  /**
   The scope (<code><b>this</b></code> reference) in which the <code><a href="output/Ext.DatePicker.html#Ext.DatePicker-handler">handler</a></code> function will be called. Defaults to this DatePicker instance.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

  /**
   False to hide the footer area containing the Today button and disable the keyboard handler for spacebar that selects the current date (defaults to <code>true</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get showToday():Boolean;

  /**
   Day index at which the week should begin, 0-based (defaults to 0, which is Sunday)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get startDay():Number;

  /**
   The text to display on the button that selects the current date (defaults to <code>'Today'</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get todayText():String;

  /**
   A string used to format the message for displaying in a tooltip over the button that selects the current date. Defaults to <code>'{0} (Spacebar)'</code> where the <code>{0}</code> token is replaced by today's date.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get todayTip():String;

  /**
   * Gets the current selected value of the date field
   *
   * @return The selected date
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#method-Ext.DatePicker-getValue Ext JS source
   */
  public native function getValue():Date;

  /**
   * Replaces any existing disabled dates with new values and refreshes the DatePicker.
   *
   * @param disabledDates An array of date strings (see the <a href="output/Ext.DatePicker.html#Ext.DatePicker-disabledDates">disabledDates</a> config for details on supported values), or a JavaScript regular expression used to disable a pattern of dates.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#method-Ext.DatePicker-setDisabledDates Ext JS source
   */
  public native function setDisabledDates(disabledDates:*):void;

  /**
   * Replaces any existing disabled days (by index, 0-6) with new values and refreshes the DatePicker.
   *
   * @param disabledDays An array of disabled day indexes. See the <a href="output/Ext.DatePicker.html#Ext.DatePicker-disabledDays">disabledDays</a> config for details on supported values.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#method-Ext.DatePicker-setDisabledDays Ext JS source
   */
  public native function setDisabledDays(disabledDays:Array):void;

  /**
   * Replaces any existing <a href="output/Ext.DatePicker.html#Ext.DatePicker-maxDate">maxDate</a> with the new value and refreshes the DatePicker.
   *
   * @param value The maximum date that can be selected
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#method-Ext.DatePicker-setMaxDate Ext JS source
   */
  public native function setMaxDate(value:Date):void;

  /**
   * Replaces any existing <a href="output/Ext.DatePicker.html#Ext.DatePicker-minDate">minDate</a> with the new value and refreshes the DatePicker.
   *
   * @param value The minimum date that can be selected
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#method-Ext.DatePicker-setMinDate Ext JS source
   */
  public native function setMinDate(value:Date):void;

  /**
   * Sets the value of the date field
   *
   * @param value The date to set
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#method-Ext.DatePicker-setValue Ext JS source
   */
  public native function setValue(value:Date):void;

}
}
    