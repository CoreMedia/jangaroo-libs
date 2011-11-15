package flash.text.engine {


/**
 * The Kerning class is an enumeration of constant values used with <code>ElementFormat.kerning</code>.
 * @see ElementFormat#kerning
 *
 */
public final class Kerning {
  /**
   * Used to indicate that kerning is enabled except where inappropriate in Asian typography. Kerning is applied between two characters if neither is Kanji, Hiragana, or Katakana.
   */
  public static const AUTO:String = "auto";
  /**
   * Used to indicate kerning is disabled.
   */
  public static const OFF:String = "off";
  /**
   * Used to indicate kerning is enabled.
   */
  public static const ON:String = "on";
}
}
