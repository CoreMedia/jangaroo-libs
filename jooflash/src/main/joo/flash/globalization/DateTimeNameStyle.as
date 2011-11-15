package flash.globalization {


/**
 * The DateTimeNameStyle class enumerates constants that control the length of the month names and weekday names that are used when formatting dates. Use these constants for the <code>nameStyle</code> parameter of the DateTimeFormatter <code>getMonthNames()</code> and <code>getWeekDayNames()</code> methods.
 * <p>The <code>LONG_ABBREVIATION</code> and <code>SHORT_ABBREVIATION</code> may be the same or different depending on the operating system settings.</p>
 * @see DateTimeFormatter
 *
 */
public final class DateTimeNameStyle {
  /**
   * Specifies the full form or full name style for month names and weekday names. Examples: Tuesday, November.
   */
  public static const FULL:String = "full";
  /**
   * Specifies the long abbreviation style for month names and weekday names. Examples: Tues for Tuesday, Nov for November.
   */
  public static const LONG_ABBREVIATION:String = "longAbbreviation";
  /**
   * Specifies the short abbreviation style for month names and weekday names. Examples: T for Tuesday, N for November.
   */
  public static const SHORT_ABBREVIATION:String = "shortAbbreviation";
}
}
