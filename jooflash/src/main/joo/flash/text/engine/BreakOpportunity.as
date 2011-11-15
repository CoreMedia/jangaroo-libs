package flash.text.engine {


/**
 * The BreakOpportunity class is an enumeration of constant values that you can use to set the <code>breakOpportunity</code> property of the ElementFormat class. This property determines which characters can be used for breaking when wrapping text is broken into multiple lines.
 * @see ElementFormat#breakOpportunity
 *
 */
public final class BreakOpportunity {
  /**
   * Treats all characters in the ContentElement object as line break opportunities, meaning that a line break will occur afer each character. You can use this option to generate the shortest possible lines, which you can use to create text on a line or similar effects.
   */
  public static const ALL:String = "all";
  /**
   * Treats any character in the ContentElement object as a line break opportunity. This value is typically used when Roman text is embedded in Asian text and it is desirable for breaks to happen in the middle of words.
   */
  public static const ANY:String = "any";
  /**
   * Bases line break opportunities on Unicode character properties. This setting implements the Unicode line breaking properties defined by the Unicode Standard Annex #14.
   * @see http://unicode.org/reports/tr14/tr14-12.html Article on Unicode line breaking properties.
   *
   */
  public static const AUTO:String = "auto";
  /**
   * Treats no characters in the ContentElement object as line break opportunities.
   */
  public static const NONE:String = "none";
}
}
