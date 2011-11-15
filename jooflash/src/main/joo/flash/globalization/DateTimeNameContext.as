package flash.globalization {


/**
 * The DateTimeNameContext class enumerates constant values representing the formatting context in which a month name or weekday name is used. These constants are used for the <code>context</code> parameters for the DateTimeFormatter's <code>getMonthNames()</code> and <code>getWeekDayNames()</code> methods.
 * <p>The context parameter only changes the results of those methods for certain locales and operating systems. For most locales the lists of month names and weekday names do not differ by context.</p>
 * @see DateTimeFormatter#getMonthNames()
 * @see DateTimeFormatter#getWeekDayNames()
 *
 */
public final class DateTimeNameContext {
  /**
   * Indicates that the date element name is used within a date format.
   */
  public static const FORMAT:String = "format";
  /**
   * Indicates that the date element name is used in a "stand alone" context, independent of other formats. For example, the name can be used to show only the month name in a calendar or the weekday name in a date chooser.
   */
  public static const STANDALONE:String = "standalone";
}
}
