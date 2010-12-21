package ext.util {

/**
 * The date parsing and formatting syntax contains a subset of
 * <a href="http://www.php.net/date">PHP's date() function</a>, and the formats that are
 * supported will provide results equivalent to their PHP versions.
 *
 * <p>The following is a list of all currently supported formats:</p>
 * <pre>
 Format  Description                                                               Example returned values
 ------  -----------------------------------------------------------------------   -----------------------
 d     Day of the month, 2 digits with leading zeros                             01 to 31
 D     A short textual representation of the day of the week                     Mon to Sun
 j     Day of the month without leading zeros                                    1 to 31
 l     A full textual representation of the day of the week                      Sunday to Saturday
 N     ISO-8601 numeric representation of the day of the week                    1 (for Monday) through 7 (for Sunday)
 S     English ordinal suffix for the day of the month, 2 characters             st, nd, rd or th. Works well with j
 w     Numeric representation of the day of the week                             0 (for Sunday) to 6 (for Saturday)
 z     The day of the year (starting from 0)                                     0 to 364 (365 in leap years)
 W     ISO-8601 week number of year, weeks starting on Monday                    01 to 53
 F     A full textual representation of a month, such as January or March        January to December
 m     Numeric representation of a month, with leading zeros                     01 to 12
 M     A short textual representation of a month                                 Jan to Dec
 n     Numeric representation of a month, without leading zeros                  1 to 12
 t     Number of days in the given month                                         28 to 31
 L     Whether it's a leap year                                                  1 if it is a leap year, 0 otherwise.
 o     ISO-8601 year number (identical to (Y), but if the ISO week number (W)    Examples: 1998 or 2004
 belongs to the previous or next year, that year is used instead)
 Y     A full numeric representation of a year, 4 digits                         Examples: 1999 or 2003
 y     A two digit representation of a year                                      Examples: 99 or 03
 a     Lowercase Ante meridiem and Post meridiem                                 am or pm
 A     Uppercase Ante meridiem and Post meridiem                                 AM or PM
 g     12-hour format of an hour without leading zeros                           1 to 12
 G     24-hour format of an hour without leading zeros                           0 to 23
 h     12-hour format of an hour with leading zeros                              01 to 12
 H     24-hour format of an hour with leading zeros                              00 to 23
 i     Minutes, with leading zeros                                               00 to 59
 s     Seconds, with leading zeros                                               00 to 59
 u     Decimal fraction of a second                                              Examples:
 (minimum 1 digit, arbitrary number of digits allowed)                     001 (i.e. 0.001s) or
 100 (i.e. 0.100s) or
 999 (i.e. 0.999s) or
 999876543210 (i.e. 0.999876543210s)
 O     Difference to Greenwich time (GMT) in hours and minutes                   Example: +1030
 P     Difference to Greenwich time (GMT) with colon between hours and minutes   Example: -08:00
 T     Timezone abbreviation of the machine running the code                     Examples: EST, MDT, PDT ...
 Z     Timezone offset in seconds (negative if west of UTC, positive if east)    -43200 to 50400
 c     ISO 8601 date
 Notes:                                                                    Examples:
 1) If unspecified, the month / day defaults to the current month / day,   1991 or
 the time defaults to midnight, while the timezone defaults to the      1992-10 or
 browser's timezone. If a time is specified, it must include both hours 1993-09-20 or
 and minutes. The "T" delimiter, seconds, milliseconds and timezone     1994-08-19T16:20+01:00 or
 are optional.                                                          1995-07-18T17:21:28-02:00 or
 2) The decimal fraction of a second, if specified, must contain at        1996-06-17T18:22:29.98765+03:00 or
 least 1 digit (there is no limit to the maximum number                 1997-05-16T19:23:30,12345-0400 or
 of digits allowed), and may be delimited by either a '.' or a ','      1998-04-15T20:24:31.2468Z or
 Refer to the examples on the right for the various levels of              1999-03-14T20:24:32Z or
 date-time granularity which are supported, or see                         2000-02-13T21:25:33
 http://www.w3.org/TR/NOTE-datetime for more info.                         2001-01-12 22:26:34
 U     Seconds since the Unix Epoch (January 1 1970 00:00:00 GMT)                1193432466 or -2138434463
 M$    Microsoft AJAX serialized dates                                           \/Date(1238606590509)\/ (i.e. UTC milliseconds since epoch) or
 \/Date(1238606590509+0800)\/
 </pre>
 *
 * Example usage (note that you must escape format specifiers with '\\' to render them as character literals):
 * <pre><code>
 // Sample date:
 // 'Wed Jan 10 2007 15:05:01 GMT-0600 (Central Standard Time)'

 var dt = new Date('1/10/2007 03:05:01 PM GMT-0600');
 document.write(dt.format('Y-m-d'));                           // 2007-01-10
 document.write(dt.format('F j, Y, g:i a'));                   // January 10, 2007, 3:05 pm
 document.write(dt.format('l, \\t\\he jS \\of F Y h:i:s A'));  // Wednesday, the 10th of January 2007 03:05:01 PM
 </code></pre>
 *
 * Here are some standard date/time patterns that you might find helpful.  They
 * are not part of the source of Date.js, but to use them you can simply copy this
 * block of code into any script that is included after Date.js and they will also become
 * globally available on the Date object.  Feel free to add or remove patterns as needed in your code.
 * <pre><code>
 DateUtil.patterns = {
 ISO8601Long:"Y-m-d H:i:s",
 ISO8601Short:"Y-m-d",
 ShortDate: "n/j/Y",
 LongDate: "l, F d, Y",
 FullDateTime: "l, F d, Y g:i:s A",
 MonthDay: "F d",
 ShortTime: "g:i A",
 LongTime: "g:i:s A",
 SortableDateTime: "Y-m-d\\TH:i:s",
 UniversalSortableDateTime: "Y-m-d H:i:sO",
 YearMonth: "F, Y"
 };
 </code></pre>
 *
 * Example usage:
 * <pre><code>
 var dt = new Date();
 document.write(dt.format(DateUtil.patterns.ShortDate));
 </code></pre>
 * <p>Developer-written, custom formats may be used by supplying both a formatting and a parsing function
 * which perform to specialized requirements. The functions are stored in <a href="#parseFunctions">parseFunctions</a>
 * and <a href="#formatFunctions">formatFunctions</a>.</p>
 *
 * <p>Most of the date-formatting functions below are the excellent work of Baron Schwartz.
 * (see http://www.xaprb.com/blog/2005/12/12/javascript-closures-for-runtime-efficiency/)
 * They generate precompiled functions from format patterns instead of parsing and
 * processing each pattern every time a date is formatted. These functions are available
 * on every Date object.</p>
 */
public class ExtDate extends Date {

  /**
   * Global flag which determines if strict date parsing should be used.
   * Strict date parsing will not roll-over invalid dates, which is the
   * default behaviour of javascript Date objects.
   * Defaults to <tt>false</tt>.
   * @see ExtDate#parseDate
   */
  public static var useStrict:Boolean = false;

  /**
   * An object hash in which each property is a date parsing function. The property name is the
   * format string which that function parses.
   * <p>This object is automatically populated with date parsing functions as
   * date formats are requested for Ext standard formatting strings.</p>
   * <p>Custom parsing functions may be inserted into this object, keyed by a name which from then on
   * may be used as a format string to <a href="#parseDate">parseDate</a>.</p>
   * <p>Example:</p>
   * <pre><code>
   * DateUtil.parseFunctions['x-date-format'] = myDateParser;
   * </code></pre>
   * <p>A parsing function should return a Date object, and is passed the following parameters:</p>
   * <ul>
   * <li><code>date : String</code> The date string to parse.</li>
   * <li><code>strict : Boolean</code> True to validate date strings while parsing
   * (i.e. prevent javascript Date "rollover") (The default must be false).
   * Invalid date strings should return null when parsed.</li>
   * </ul>
   * <p>To enable Dates to also be <i>formatted</i> according to that format, a corresponding
   * formatting function must be placed into the <a href="#formatFunctions">formatFunctions</a> property.</p>
   */
  public static const parseFunctions:Object = {};

  /**
   * An object hash in which each property is a date formatting function. The property name is the
   * format string which corresponds to the produced formatted date string.
   * <p>This object is automatically populated with date formatting functions as
   * date formats are requested for Ext standard formatting strings.</p>
   * <p>Custom formatting functions may be inserted into this object, keyed by a name which from then on
   * may be used as a format string to {@link #format}. Example:</p>
   * <pre><code>
   * DateUtil.formatFunctions['x-date-format'] = myDateFormatter;
   * </code></pre>
   * <p>A formatting function should return a string representation of the passed Date object, and is passed the following parameters:<div class="mdetail-params"></p>
   * <ul>
   * <li><code>date : Date</code> The Date to format.</li>
   * </ul>
   * <p>To enable date strings to also be <i>parsed</i> according to that format, a corresponding
   * parsing function must be placed into the <a href="#parseFunctions">parseFunctions</a> property.</p>
   */
  public static const formatFunctions:Object = {};

  public static var y2kYear : int;

  /**
   * Date interval constant
   * @static
   * @type String
   */
  public static const MILLI : String = "ms";

  /**
   * Date interval constant
   * @static
   * @type String
   */
  public static const SECOND : String = "s";

  /**
   * Date interval constant
   * @static
   * @type String
   */
  public static const MINUTE : String = "mi";

  /** Date interval constant
   * @static
   * @type String
   */
  public static const HOUR : String = "h";

  /**
   * Date interval constant
   * @static
   * @type String
   */
  public static const DAY : String = "d";

  /**
   * Date interval constant
   * @static
   * @type String
   */
  public static const MONTH : String = "mo";

  /**
   * Date interval constant
   * @static
   * @type String
   */
  public static const YEAR : String = "y";

  /**
   * An object hash containing default date values used during date parsing.
   * <p>The following properties are available:</p>
   * <ul>
   * <li><code>y</code> : Number<div class="sub-desc">The default year value. (defaults to undefined)</div></li>
   * <li><code>m</code> : Number<div class="sub-desc">The default 1-based month value. (defaults to undefined)</div></li>
   * <li><code>d</code> : Number<div class="sub-desc">The default day value. (defaults to undefined)</div></li>
   * <li><code>h</code> : Number<div class="sub-desc">The default hour value. (defaults to undefined)</div></li>
   * <li><code>i</code> : Number<div class="sub-desc">The default minute value. (defaults to undefined)</div></li>
   * <li><code>s</code> : Number<div class="sub-desc">The default second value. (defaults to undefined)</div></li>
   * <li><code>ms</code> : Number<div class="sub-desc">The default millisecond value. (defaults to undefined)</div></li>
   * </ul>
   * <p>Override these properties to customize the default date values used by the <a href="#parseDate">parseDate</a> method.</p>
   * <p><b>Note: In countries which experience Daylight Saving Time (i.e. DST), the <tt>h</tt>, <tt>i</tt>, <tt>s</tt>
   * and <tt>ms</tt> properties may coincide with the exact time in which DST takes effect.
   * It is the responsiblity of the developer to account for this.</b></p>
   * Example Usage:
   * <pre><code>
   // set default day value to the first day of the month
   DateUtil.defaults.d = 1;

   // parse a February date string containing only year and month values.
   // setting the default day value to 1 prevents weird date rollover issues
   // when attempting to parse the following date string on, for example, March 31st 2009.
   DateUtil.parseDate('2009-02', 'Y-m'); // returns a Date object representing February 1st 2009
   </code></pre>
   */
  public static const defaults : Object = {};

  /**
   * An array of textual day names.
   * Override these values for international dates.
   * Example:
   * <pre><code>
   DateUtil.dayNames = [
   'SundayInYourLang',
   'MondayInYourLang',
   ...
   ];
   </code></pre>
   * @type Array
   * @static
   */
  public static var dayNames : Array;

  /**
   * An array of textual month names.
   * Override these values for international dates.
   * Example:
   * <pre><code>
   DateUtil.monthNames = [
   'JanInYourLang',
   'FebInYourLang',
   ...
   ];
   </code></pre>
   * @type Array
   * @static
   */
  public static var monthNames : Array;

  /**
   * An object hash of zero-based javascript month numbers (with short month names as keys. note: keys are case-sensitive).
   * Override these values for international dates.
   * Example:
   * <pre><code>
   DateUtil.monthNumbers = {
   'ShortJanNameInYourLang':0,
   'ShortFebNameInYourLang':1,
   ...
   };
   </code></pre>
   * @type Object
   * @static
   */
  public static var monthNumbers : Object;

  /**
   * Get the short month name for the given month number.
   * Override this function for international dates.
   * @param {Number} month A zero-based javascript month number.
   * @return {String} The short month name.
   * @static
   */
  public static native function getShortMonthName(month:Number):String;

  /**
   * Get the short day name for the given day number.
   * Override this function for international dates.
   * @param {Number} day A zero-based javascript day number.
   * @return {String} The short day name.
   * @static
   */
  public static native function getShortDayName(day:Number):String;

  /**
   * Get the zero-based javascript month number for the given short/full month name.
   * Override this function for international dates.
   * @param {String} name The short/full month name.
   * @return {Number} The zero-based javascript month number.
   * @static
   */
  public static native function getMonthNumber(name:String):Number;

  /**
   * The base format-code to formatting-function hashmap used by the {@link #format} method.
   * Formatting functions are strings (or functions which return strings) which
   * will return the appropriate value when evaluated in the context of the Date object
   * from which the {@link #format} method is called.
   * Add to / override these mappings for custom date formatting.
   * Note: DateUtil.format() treats characters as literals if an appropriate mapping cannot be found.
   * Example:
   * <pre><code>
   DateUtil.formatCodes.x = "String.leftPad(this.getDate(), 2, '0')";
   (new Date()).format("X"); // returns the current day of the month
   </code></pre>
   * @type Object
   * @static
   */
  public static const formatCodes : Object = {};

  /**
   * Checks if the passed Date parameters will cause a javascript Date "rollover".
   * @param {Number} year 4-digit year
   * @param {Number} month 1-based month-of-year
   * @param {Number} day Day of month
   * @param {Number} hour (optional) Hour
   * @param {Number} minute (optional) Minute
   * @param {Number} second (optional) Second
   * @param {Number} millisecond (optional) Millisecond
   * @return {Boolean} true if the passed parameters do not cause a Date "rollover", false otherwise.
   * @static
   */
  public static native function isValid(year:Number, month:Number, day:Number,
                                        hour:Number = undefined, minute:Number = undefined,
                                        second:Number = undefined, millisecond:Number = undefined):Boolean;

  /**
   * Parses the passed string using the specified date format.
   * Note that this function expects normal calendar dates, meaning that months are 1-based (i.e. 1 = January).
   * The {@link #defaults} hash will be used for any date value (i.e. year, month, day, hour, minute, second or millisecond)
   * which cannot be found in the passed string. If a corresponding default date value has not been specified in the {@link #defaults} hash,
   * the current date's year, month, day or DST-adjusted zero-hour time value will be used instead.
   * Keep in mind that the input date string must precisely match the specified format string
   * in order for the parse operation to be successful (failed parse operations return a null value).
   * <p>Example:</p><pre><code>
   //dt = Fri May 25 2007 (current date)
   var dt = new Date();

   //dt = Thu May 25 2006 (today&#39;s month/day in 2006)
   dt = DateUtil.parseDate("2006", "Y");

   //dt = Sun Jan 15 2006 (all date parts specified)
   dt = DateUtil.parseDate("2006-01-15", "Y-m-d");

   //dt = Sun Jan 15 2006 15:20:01
   dt = DateUtil.parseDate("2006-01-15 3:20:01 PM", "Y-m-d g:i:s A");

   // attempt to parse Sun Feb 29 2006 03:20:01 in strict mode
   dt = DateUtil.parseDate("2006-02-29 03:20:01", "Y-m-d H:i:s", true); // returns null
   </code></pre>
   * @param {String} input The raw date string.
   * @param {String} format The expected date string format.
   * @param {Boolean} strict (optional) True to validate date strings while parsing (i.e. prevents javascript Date "rollover")
   (defaults to false). Invalid date strings will return null when parsed.
   * @return {Date} The parsed Date.
   * @static
   */
  public static native function parseDate(input:String, format:String, strict:Boolean = false):ExtDate;

  /**
   * Get the timezone abbreviation of the current date (equivalent to the format specifier 'T').
   *
   * Note: The date string returned by the javascript Date object's toString() method varies
   * between browsers (e.g. FF vs IE) and system region settings (e.g. IE in Asia vs IE in America).
   * For a given date string e.g. "Thu Oct 25 2007 22:55:35 GMT+0800 (Malay Peninsula Standard Time)",
   * getTimezone() first tries to get the timezone abbreviation from between a pair of parentheses
   * (which may or may not be present), failing which it proceeds to get the timezone abbreviation
   * from the GMT offset portion of the date string.
   * @return {String} The abbreviated timezone name (e.g. 'CST', 'PDT', 'EDT', 'MPST' ...).
   */
  public native function getTimezone():String;

  /**
   * Get the offset from GMT of the current date (equivalent to the format specifier 'O').
   * @param {Boolean} colon (optional) true to separate the hours and minutes with a colon (defaults to false).
   * @return {String} The 4-character offset string prefixed with + or - (e.g. '-0600').
   */
  public native function getGMTOffset(colon:Boolean = false):String;

  /**
   * Get the numeric day number of the year, adjusted for leap year.
   * @return {Number} 0 to 364 (365 in leap years).
   */
  public native function getDayOfYear():Number;

  /**
   * Get the numeric ISO-8601 week number of the year.
   * (equivalent to the format specifier 'W', but without a leading zero).
   * @return {Number} 1 to 53
   */
  public native function getWeekOfYear():Number;

  /**
   * Checks if the current date falls within a leap year.
   * @return {Boolean} True if the current date falls within a leap year, false otherwise.
   */
  public native function isLeapYear():Boolean;

  /**
   * Get the first day of the current month, adjusted for leap year.  The returned value
   * is the numeric day index within the week (0-6) which can be used in conjunction with
   * the {@link DateUtil#monthNames} array to retrieve the textual day name.
   * Example:
   * <pre><code>
var dt = new Date('1/10/2007');
document.write(Date.dayNames[dt.getFirstDayOfMonth()]); //output: 'Monday'
</code></pre>
   * @return {Number} The day number (0-6).
   */
  public native function getFirstDayOfMonth():Number;

  /**
   * Get the last day of the current month, adjusted for leap year.  The returned value
   * is the numeric day index within the week (0-6) which can be used in conjunction with
   * the {@link DateUtil#monthNames} array to retrieve the textual day name.
   * Example:
   * <pre><code>
var dt = new Date('1/10/2007');
document.write(Date.dayNames[dt.getLastDayOfMonth()]); //output: 'Wednesday'
</code></pre>
   * @return {Number} The day number (0-6).
   */
  public native function getLastDayOfMonth():Number;


  /**
   * Get the date of the first day of the month in which this date resides.
   * @return {Date}
   */
  public native function getFirstDateOfMonth():ExtDate;

  /**
   * Get the date of the last day of the month in which this date resides.
   * @return {Date}
   */
  public native function getLastDateOfMonth():ExtDate;

  /**
   * Get the number of days in the current month, adjusted for leap year.
   * @return {Number} The number of days in the month.
   */
  public native function getDaysInMonth():Number;

  /**
   * Get the English ordinal suffix of the current day (equivalent to the format specifier 'S').
   * @return {String} 'st, 'nd', 'rd' or 'th'.
   */
  public native function getSuffix():String;

  /**
   * Creates and returns a new Date instance with the exact same date value as the called instance.
   * Dates are copied and passed by reference, so if a copied date variable is modified later, the original
   * variable will also be changed.  When the intention is to create a new variable that will not
   * modify the original instance, you should create a clone.
   *
   * Example of correctly cloning a date:
   * <pre><code>
//wrong way:
var orig = new Date('10/1/2006');
var copy = orig;
copy.setDate(5);
document.write(orig);  //returns 'Thu Oct 05 2006'!

//correct way:
var orig = new Date('10/1/2006');
var copy = orig.clone();
copy.setDate(5);
document.write(orig);  //returns 'Thu Oct 01 2006'
</code></pre>
   * @return {Date} The new Date instance.
   */
  public native function clone():ExtDate;

  /**
   * Checks if the current date is affected by Daylight Saving Time (DST).
   * @return {Boolean} True if the current date is affected by DST.
   */
  public native function isDST():Boolean;

  /**
   * Attempts to clear all time information from this Date by setting the time to midnight of the same day,
   * automatically adjusting for Daylight Saving Time (DST) where applicable.
   * (note: DST timezone information for the browser's host operating system is assumed to be up-to-date)
   * @param {Boolean} clone true to create a clone of this date, clear the time and return it (defaults to false).
   * @return {Date} this or the clone.
   */
  public native function clearTime(clone:Boolean = false):ExtDate;

  /**
   * Provides a convenient method for performing basic date arithmetic. This method
   * does not modify the Date instance being called - it creates and returns
   * a new Date instance containing the resulting date value.
   *
   * Examples:
   * <pre><code>
// Basic usage:
var dt = new Date('10/29/2006').add(Date.DAY, 5);
document.write(dt); //returns 'Fri Nov 03 2006 00:00:00'

// Negative values will be subtracted:
var dt2 = new Date('10/1/2006').add(Date.DAY, -5);
document.write(dt2); //returns 'Tue Sep 26 2006 00:00:00'

// You can even chain several calls together in one line:
var dt3 = new Date('10/1/2006').add(Date.DAY, 5).add(Date.HOUR, 8).add(Date.MINUTE, -30);
document.write(dt3); //returns 'Fri Oct 06 2006 07:30:00'
</code></pre>
   *
   * @param {String} interval A valid date interval enum value.
   * @param {Number} value The amount to add to the current date.
   * @return {Date} The new Date instance.
   */
  public native function add(interval:String, value:Number):ExtDate;

  /**
   * Checks if this date falls on or between the given start and end dates.
   * @param {Date} start Start date
   * @param {Date} end End date
   * @return {Boolean} true if this date falls on or between the given start and end dates.
   */
  public native function between(start:Date, end:Date):Boolean;

  /**
   * Formats a date given the supplied format string.
   * @param {String} format The format string.
   * @return {String} The formatted date.
   */
  public native function format(format:String):String;

}
}
