package flash.text.engine {


/**
 * The TextRotation class is an enumeration of constant values used with the following properties: <code>ElementFormat.textRotation</code>, <code>ContentElement.textRotation</code>, <code>TextBlock.lineRotation</code>, and <code>TextLine.getAtomTextRotation()</code>.
 * <p>The final rotation of any glyph is the sum of <code>TextBlock.lineRotation</code>, <code>ElementFormat.textRotation</code>, and <code>ContentElement.textRotation</code></p>
 * @see ElementFormat#textRotation
 * @see ContentElement#textRotation
 * @see TextBlock#lineRotation
 * @see TextLine#getAtomTextRotation()
 *
 */
public final class TextRotation {
  /**
   * Specifies a 90 degree counter clockwise rotation for full width and wide glyphs only, as determined by the Unicode properties of the glyph. This value is typically used with Asian text to rotate only those glyphs that require rotation. This rotation is applied only in vertical text to return full width and wide characters to a vertical orientation without affecting other characters.
   */
  public static const AUTO:String = "auto";
  /**
   * Specifies no rotation.
   */
  public static const ROTATE_0:String = "rotate0";
  /**
   * Specifies a 180 degree rotation.
   */
  public static const ROTATE_180:String = "rotate180";
  /**
   * Specifies a 270 degree clockwise rotation.
   */
  public static const ROTATE_270:String = "rotate270";
  /**
   * Specifies a 90 degree clockwise rotation.
   */
  public static const ROTATE_90:String = "rotate90";
}
}
