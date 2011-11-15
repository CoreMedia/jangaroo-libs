package flash.text.engine {
import flash.geom.Rectangle;

/**
 * The FontMetrics class contains measurement and offset information about a font. The <code>ElementFormat.getFontMetrics()</code> method returns objects of this class.
 * @see ElementFormat#getFontMetrics()
 *
 */
public final class FontMetrics {
  /**
   * The emBox value represents the design space of the font and is used to place Chinese, Korean, or Japanese glyphs relative to the Roman baseline. Typically a square, sized to the point size of the font. The origin (coordinate 0,0) of the emBox is set to the left edge and Roman baseline of the rect. For example, for a 10-point font, the emBox can be a rect [L,T,R,B] of [0, -8.8, 10, 1.2].
   */
  public var emBox:Rectangle;
  /**
   * The strikethroughOffset value is the suggested vertical offset from the Roman baseline for a strikethrough.
   * <p>Note that depending on the rotation of the line, this value is either added or subtracted from the position of the line to find the position for the strikethrough. In a line with <code>TextRotation.ROTATE_0</code>, <code>strikethrough.y = line.y + strikethroughOffset</code>. In a line with <code>TextRotation.ROTATE_90</code>, <code>strikethrough.x = line.x - strikethroughOffset</code>.</p>
   * <p>When applying decorations such as strikethroughs to a <code>TextLine</code>, the recommended procedure is to specify an <code>eventMirror</code> on the <code>ContentElement</code> which is to receive the decoration. In response to the <code>Event.ADDED</code> event, the <code>bounds</code> of the <code>TextLineMirrorRegion</code> can be used in conjunction with the <code>strikethroughOffset</code> to place the strikethrough.</p>
   * @see ContentElement#eventMirror
   * @see TextLineMirrorRegion
   *
   */
  public var strikethroughOffset:Number;
  /**
   * The strikethroughThickness value is the suggested thickness for a strikethrough.
   */
  public var strikethroughThickness:Number;
  /**
   * The subscriptOffset value is the suggested vertical offset from the Roman baseline for a subscript.
   * <p>The subscriptOffset value is used with <code>ElementFormat.baselineShift</code> to position the subscript.</p>
   * @see ElementFormat#baselineShift
   *
   */
  public var subscriptOffset:Number;
  /**
   * The subscriptScale value is the suggested scale factor to apply to the point size for a subscript. A scale factor of 1.0 means no scaling.
   */
  public var subscriptScale:Number;
  /**
   * The superscriptOffset value is the suggested vertical offset from the Roman baseline for a superscript.
   * <p>The superscriptOffset value is used with <code>ElementFormat.baselineShift</code> to position the superscript.</p>
   * @see ElementFormat#baselineShift
   *
   */
  public var superscriptOffset:Number;
  /**
   * The superscriptScale value is the suggested scale factor to apply to the point size for a superscript. A scale factor of 1.0 means no scaling.
   */
  public var superscriptScale:Number;
  /**
   * The underlineOffset value is the suggested vertical offset from the Roman baseline for an underline.
   * <p>Note that depending on the rotation of the line, this value is either added or subtracted from the position of the line to find the position for the underline. In a line with <code>TextRotation.ROTATE_0</code>, <code>underline.y = line.y + underlineOffset</code>. In a line with <code>TextRotation.ROTATE_90</code>, <code>underline.x = line.x - underlineOffset</code>.</p>
   * <p>When applying decorations such as underlines to a <code>TextLine</code>, the recommended procedure is to specify an <code>eventMirror</code> on the <code>ContentElement</code> which is to receive the decoration. In response to the <code>Event.ADDED</code> event, the <code>bounds</code> of the <code>TextLineMirrorRegion</code> can be used in conjunction with the <code>underlineOffset</code> to place the underline.</p>
   * @see ContentElement#eventMirror
   * @see flash.events.Event
   * @see TextLineMirrorRegion
   * @see TextRotation
   *
   */
  public var underlineOffset:Number;
  /**
   * The underlineThickness value is the suggested thickness for an underline.
   */
  public var underlineThickness:Number;

  /**
   * Creates a FontMetrics object. The FontMetrics object contains information about the metrics of a font in an element format. The <code>flash.text.engine.ElementFormat.getFontMetrics()</code> method returns objects of this class.
   * @param emBox The emBox of the font in pixels.
   * @param strikethroughOffset The offset for a strikethrough in pixels.
   * @param strikethroughThickness The thickness for a strikethrough in pixels.
   * @param underlineOffset The offset for an underline in pixels.
   * @param underlineThickness The thickness for an underline in pixels.
   * @param subscriptOffset The offset for a subscript in pixels.
   * @param subscriptScale The scale to apply to the point size of a subscript.
   * @param superscriptOffset The offset for a superscript in pixels.
   * @param superscriptScale The scale to apply to the point size of a superscript.
   *
   * @see ElementFormat#getFontMetrics()
   *
   */
  public function FontMetrics(emBox:Rectangle, strikethroughOffset:Number, strikethroughThickness:Number, underlineOffset:Number, underlineThickness:Number, subscriptOffset:Number, subscriptScale:Number, superscriptOffset:Number, superscriptScale:Number) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
