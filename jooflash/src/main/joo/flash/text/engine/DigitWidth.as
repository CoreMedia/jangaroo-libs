package flash.text.engine {


/**
 * The DigitWidth class is an enumeration of constant values used in setting the <code>digitWidth</code> property of the ElementFormat class.
 * @see ElementFormat#digitWidth
 *
 */
public final class DigitWidth {
  /**
   * Used to specify default digit width. The results are font-dependent; characters use the settings specified by the font designer without any features applied.
   */
  public static const DEFAULT:String = "default";
  /**
   * Used to specify proportional digit width.
   */
  public static const PROPORTIONAL:String = "proportional";
  /**
   * Used to specify tabular digit width.
   */
  public static const TABULAR:String = "tabular";
}
}
