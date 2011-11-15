package flash.globalization {


/**
 * Enumerates constants that determine a locale-specific date and time formatting pattern. These constants are used when constructing a DateTimeFormatter object or when calling the <code>DateTimeFormatter.setDateTimeStyles()</code> method.
 * <p>The <code>CUSTOM</code> constant cannot be used in the DateTimeFormatter constructor or the <code>DateFormatter.setDateTimeStyles()</code> method. This constant is instead set as the <code>timeStyle</code> and <code>dateStyle</code> property as a side effect of calling the <code>DateTimeFormatter.setDateTimePattern()</code> method.</p>
 * @see DateTimeFormatter
 *
 */
public final class DateTimeStyle {
  /**
   * Specifies that a custom pattern string is used to specify the date or time style.
   */
  public static const CUSTOM:String = "custom";
  /**
   * Specifies the long style of a date or time.
   */
  public static const LONG:String = "long";
  /**
   * Specifies the medium style of a date or time.
   */
  public static const MEDIUM:String = "medium";
  /**
   * Specifies that the date or time should not be included in the formatted string.
   */
  public static const NONE:String = "none";
  /**
   * Specifies the short style of a date or time.
   */
  public static const SHORT:String = "short";
}
}
