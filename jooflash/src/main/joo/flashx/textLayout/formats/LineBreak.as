package flashx.textLayout.formats {


/**
 * Defines values for setting the <code>lineBreak</code> property of <code>TextLayoutFormat</code> to specify how lines are broken within wrapping text.
 * @see TextLayoutFormat#linebreak
 *
 */
public final class LineBreak {
  /**
   * Specifies that lines break only at explicit return or line feed characters.
   */
  public static const EXPLICIT:String = "explicit";
  /**
   * Specifies that lines wrap to fit the container width.
   */
  public static const TO_FIT:String = "toFit";
}
}
