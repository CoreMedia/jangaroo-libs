package flashx.textLayout.formats {


/**
 * Defines values for specifying that a formatting property is to inherit its parent's value or have it's value generated automatically. The <code>INHERIT</code> constant specifies that a property inherits its parent's value while the <code>AUTO</code> constant specifies that an internal algorithm automatically determine the property's value. As one example, you can set <code>TextLayoutFormat.columnWidth</code> using these values. Typically, a property's description indicates whether it accepts these constants.
 * @see TextLayoutFormat
 *
 */
public final class FormatValue {
  /**
   * Specifies that a property's value is automatically generated.
   */
  public static const AUTO:String = "auto";
  /**
   * Specifies that a property is to inherit its parent's value.
   */
  public static const INHERIT:String = "inherit";
}
}
