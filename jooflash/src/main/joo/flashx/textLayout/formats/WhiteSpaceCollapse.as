package flashx.textLayout.formats {


/**
 * Defines values for setting the <code>whiteSpaceCollapse</code> property of the <code>TextLayoutFormat</code> class.
 * @see TextLayoutFormat#whiteSpaceCollapse
 *
 */
public final class WhiteSpaceCollapse {
  /**
   * Collapse whitespace when importing text (default). Within a block of imported text, removes newlines, tabs, and leading and trailing spaces. Retains line break tags (br/) and Unicode line separator characters.
   */
  public static const COLLAPSE:String = "collapse";
  /**
   * Preserves whitespace when importing text.
   */
  public static const PRESERVE:String = "preserve";
}
}
