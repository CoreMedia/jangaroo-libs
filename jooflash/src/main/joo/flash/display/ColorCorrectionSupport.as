package flash.display {


/**
 * The ColorCorrectionSupport class provides values for the <code>flash.display.Stage.colorCorrectionSupport</code> property.
 * @see Stage#colorCorrectionSupport
 *
 */
public final class ColorCorrectionSupport {
  /**
   * Color correction is supported, but off by default.
   */
  public static const DEFAULT_OFF:String = "defaultOff";
  /**
   * Color correction is supported, and on by default.
   */
  public static const DEFAULT_ON:String = "defaultOn";
  /**
   * Color correction is not supported by the host environment.
   */
  public static const UNSUPPORTED:String = "unsupported";
}
}
