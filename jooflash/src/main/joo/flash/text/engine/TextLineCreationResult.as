package flash.text.engine {


/**
 * The TextLineCreationResult class is an enumeration of constant values used with <code>TextBlock.textLineCreationResult</code>.
 * @see TextBlock#createTextLine()
 * @see TextBlock#textLineCreationResult
 *
 */
public final class TextLineCreationResult {
  /**
   * Indicates no line was created because all text in the block had already been broken.
   */
  public static const COMPLETE:String = "complete";
  /**
   * Indicates the line was created with an emergency break because no break opportunity was available in the specified width.
   */
  public static const EMERGENCY:String = "emergency";
  /**
   * Indicates no line was created because no text could fit in the specified width and <code>fitSomething</code> was not specified in the call to <code>createTextLine()</code>.
   */
  public static const INSUFFICIENT_WIDTH:String = "insufficientWidth";
  /**
   * Indicates the line was successfully broken.
   */
  public static const SUCCESS:String = "success";
}
}
