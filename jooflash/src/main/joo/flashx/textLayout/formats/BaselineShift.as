package flashx.textLayout.formats {


/**
 * Defines constants for specifying subscript or superscript in the <code>baselineShift</code> property of the <code>TextLayoutFormat</code> class. You can specify baseline shift as an absolute pixel offset, a percentage of the current point size, or the constants SUPERSCRIPT or SUBSCRIPT. Positive values shift the line up for horizontal text (right for vertical) and negative values shift it down for horizontal (left for vertical).
 * @see TextLayoutFormat#baselineShift
 *
 */
public final class BaselineShift {
  /**
   * Shifts baseline to the current subscript position.
   */
  public static const SUBSCRIPT:String = "subscript";
  /**
   * Shifts baseline to the current superscript position.
   */
  public static const SUPERSCRIPT:String = "superscript";
}
}
