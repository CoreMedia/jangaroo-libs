package flash.text.engine {


/**
 * The TabAlignment class is an enumeration of constant values that you can use to set the <code>tabAlignment</code> property of the <code>TabStop</code> class.
 * @see TabStop#alignment
 * @see TextBlock#tabStops
 *
 */
public final class TabAlignment {
  /**
   * Positions the center of the tabbed text at the tab stop.
   */
  public static const CENTER:String = "center";
  /**
   * Positions the alignment token of the tabbed text at the tab stop.
   * @see TabStop#decimalAlignmentToken
   *
   */
  public static const DECIMAL:String = "decimal";
  /**
   * Positions the end of the tabbed text at the tab stop.
   */
  public static const END:String = "end";
  /**
   * Positions the start of the tabbed text at the tab stop.
   */
  public static const START:String = "start";
}
}
