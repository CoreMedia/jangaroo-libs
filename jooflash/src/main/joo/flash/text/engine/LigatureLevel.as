package flash.text.engine {


/**
 * The LigatureLevel class is an enumeration of constant values used in setting the <code>ligatureLevel</code> property of the ElementFormat class. A ligature occurs where two or more letter-forms are joined as a single glyph. Ligatures usually replace consecutive characters sharing common components, such as the letter pairs 'fi', 'fl', or 'ae'. They are used with both Latin and Non-Latin character sets.
 * <p><b>Note:</b> When working with Arabic or Syriac fonts, <code>ligatureLevel</code> must be set to MINIMUM or above.</p>
 * @see ElementFormat#ligatureLevel
 *
 */
public final class LigatureLevel {
  /**
   * Used to specify common ligatures.
   */
  public static const COMMON:String = "common";
  /**
   * Used to specify exotic ligatures.
   */
  public static const EXOTIC:String = "exotic";
  /**
   * Used to specify minimum ligatures.
   */
  public static const MINIMUM:String = "minimum";
  /**
   * Used to specify no ligatures.
   */
  public static const NONE:String = "none";
  /**
   * Used to specify uncommon ligatures.
   */
  public static const UNCOMMON:String = "uncommon";
}
}
