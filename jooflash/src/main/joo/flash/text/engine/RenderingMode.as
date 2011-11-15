package flash.text.engine {


/**
 * The RenderingMode class provides values for rendering mode in the FontDescription class.
 * @see FontDescription
 *
 */
public final class RenderingMode {
  /**
   * Sets rendering mode to CFF (Compact Font Format). CFF rendering improves readability of text on a display. This setting is recommended for applications that have a lot of small text. This constant is used for the <code>renderingMode</code> property in the FontDescription class. Use the syntax <code>RenderingMode.CFF</code>.
   * @see FontDescription#renderingMode
   *
   */
  public static const CFF:String = "cff";
  /**
   * Sets rendering mode to the rendering mode that is used in Flash Player 7 and earlier. This setting is recommended for animated text. This constant is used for the <code>renderingMode</code> property in the FontDescription class. Use the syntax <code>RenderingMode.NORMAL</code>.
   * @see FontDescription#renderingMode
   *
   */
  public static const NORMAL:String = "normal";
}
}
