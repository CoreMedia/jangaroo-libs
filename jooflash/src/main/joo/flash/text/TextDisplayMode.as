package flash.text {


/**
 * The TextDisplayMode class contains values that control the subpixel anti-aliasing of the advanced anti-aliasing system.
 * @see TextRenderer#displayMode
 *
 */
public final class TextDisplayMode {
  /**
   * Forces Flash Player to display grayscale anti-aliasing. While this setting avoids text coloring, some users may think it appears blurry.
   */
  public static const CRT:String = "crt";
  /**
   * Allows Flash Player to choose LCD or CRT mode.
   */
  public static const DEFAULT:String = "default";
  /**
   * Forces Flash Player to use LCD subpixel anti-aliasing. Depending on the font and the hardware, this setting can result in much higher resolution text or text coloring.
   */
  public static const LCD:String = "lcd";
}
}
