package flash.display {


/**
 * The ColorCorrection class provides values for the <code>flash.display.Stage.colorCorrection</code> property.
 * @see Stage#colorCorrection
 *
 */
public final class ColorCorrection {
  /**
   * Uses the host's default color correction. For the web player the host is usually a browser, and Flash Player tries to use the same color correction as the web page hosting the SWF file.
   */
  public static const DEFAULT:String = "default";
  /**
   * Turns off color correction regardless of the player host environment. This setting provides faster performance.
   */
  public static const OFF:String = "off";
  /**
   * Turns on color correction regardless of the player host environment, if available.
   */
  public static const ON:String = "on";
}
}
