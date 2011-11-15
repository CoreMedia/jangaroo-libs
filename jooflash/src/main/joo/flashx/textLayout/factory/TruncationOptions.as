package flashx.textLayout.factory {
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The TruncationOptions class specifies options for limiting the number of lines of text created by a text line factory and for indicating when lines have been left out.
 */
public final class TruncationOptions {
  /**
   * The maximum number of lines to create.
   */
  public function get lineCountLimit():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set lineCountLimit(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A string used to indicate that content could not be fully displayed because of limits on the number of lines.
   */
  public function get truncationIndicator():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set truncationIndicator(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The style applied to the truncation indicator string.
   */
  public function get truncationIndicatorFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set truncationIndicatorFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a TruncationOptions object.
   * @param truncationIndicator the string used to indicate that text has been truncated. It appears at the end of the composed text. The default value is the horizontal ellipsis (U+2026).
   * @param lineCountLimit specifies a truncation criterion in the form of the maximum number of lines allowed. The default value of <code>NO_LINE_COUNT_LIMIT</code> indicates that there is no line count limit.
   * @param truncationIndicatorFormat specifies the format for the truncation indicator. A null format (the default value) specifies that the truncation indicator assume the format of content just before the truncation point. The <code>TextLineFactory</code> methods that take a simple string as input also ignore this parameter and implement the default behavior.
   *
   */
  public function TruncationOptions(truncationIndicator:String, lineCountLimit:int, truncationIndicatorFormat:ITextLayoutFormat = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the <code>truncationIndicator</code> property value, <code>\u2026</code>, that represents a horizontal ellipsis.
   * @see #truncationIndicator
   *
   */
  public static const HORIZONTAL_ELLIPSIS:String = "…";
  /**
   * Defines the <code>lineCountLimit</code> property value, <code>-1</code>, that represents no limit.
   * @see #lineCountLimit
   *
   */
  public static const NO_LINE_COUNT_LIMIT:int = -1;
}
}
