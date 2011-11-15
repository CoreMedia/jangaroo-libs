package flashx.textLayout.formats {


/**
 * Defines values for the <code>typographicCase</code> property of the TextLayoutFormat class.
 * @see TextLayoutFormat#typographicCase
 *
 */
public final class TLFTypographicCase {
  /**
   * Specifies that uppercase characters use small-caps glyphs on output.
   */
  public static const CAPS_TO_SMALL_CAPS:String = "capsToSmallCaps";
  /**
   * Specifies default typographic case -- no special features applied.
   */
  public static const DEFAULT:String = "default";
  /**
   * Specifies that all characters use lowercase glyphs on output.
   */
  public static const LOWERCASE:String = "lowercase";
  /**
   * Converts all lowercase characters to uppercase, then applies small caps to only the characters that the conversion changed.
   */
  public static const LOWERCASE_TO_SMALL_CAPS:String = "lowercaseToSmallCaps";
  /**
   * Specifies that all characters use uppercase glyphs on output.
   */
  public static const UPPERCASE:String = "uppercase";
}
}
