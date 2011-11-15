package flash.text.engine {


/**
 * The TextLineValidity class is an enumeration of constant values for setting the <code>validity</code> property of the TextLine class.
 * @see TextBlock#firstInvalidLine
 * @see TextLine#validity
 *
 */
public final class TextLineValidity {
  /**
   * Specifies that the line is invalid.
   */
  public static const INVALID:String = "invalid";
  /**
   * Specifies that the text line is possibly invalid. The Flash runtime uses this validity during rebreaking of a previously broken text block whose content has not changed. You cannot set this value.
   */
  public static const POSSIBLY_INVALID:String = "possiblyInvalid";
  /**
   * Specifies that the line is static, and that the connection between the line and the text block has been severed.
   */
  public static const STATIC:String = "static";
  /**
   * Specifies that the text line is valid.
   */
  public static const VALID:String = "valid";
}
}
