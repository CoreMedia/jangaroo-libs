package flash.text.engine {


/**
 * The CFFHinting class defines values for cff hinting in the FontDescription class.
 * <p>Hinting adjusts the display of an outline font so it lines up with the pixel grid. At small screen sizes, hinting produces a clear, legible text for human readers.</p>
 * @see FontDescription
 *
 */
public final class CFFHinting {
  /**
   * Fits strong horizontal stems to the pixel grid for improved readability. This constant is used in setting the <code>cffHinting</code> property of the FontDescription class. Use the syntax <code>CFFHinting.HORIZONTAL_STEM</code>.
   * <p><b>Note:</b> Not recommended for animation.</p>
   * @see FontDescription#cffHinting
   *
   */
  public static const HORIZONTAL_STEM:String = "horizontalStem";
  /**
   * No hinting is applied. Horizontal stems in the glyphs are not forced to the pixel grid. This constant is used in setting the <code>cffHinting</code> property of the FontDescription class. Recommended setting for animation or for large font sizes. Use the syntax <code>CFFHinting.NONE</code>.
   * @see FontDescription#cffHinting
   *
   */
  public static const NONE:String = "none";
}
}
