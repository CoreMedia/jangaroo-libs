package flash.text.engine {


/**
 * The FontLookup class is an enumeration of constant values used with <code>FontDescription.fontLookup</code>.
 * @see FontDescription#fontLookup
 *
 */
public final class FontLookup {
  /**
   * Used to indicate device font lookup. The Flash runtime uses the fonts installed on the system that is running application.
   * <p>Using device fonts results in a smaller movie size, because font data is not included in the file.</p>
   * <p>Text rendered with device fonts is not always displayed the same across different systems and platforms, because the Flash runtime uses the fonts that are installed on the system.</p>
   */
  public static const DEVICE:String = "device";
  /**
   * Used to indicate embedded CFF (Compact Font Format) font lookup. The Flash runtime uses font outlines embedded in the published application.
   * <p>Text rendered with embedded fonts is always displayed in the chosen font, whether that font is installed on the playback system or not.</p>
   * <p>One drawback to embedded fonts is that they increase the size of the application.</p>
   */
  public static const EMBEDDED_CFF:String = "embeddedCFF";
}
}
