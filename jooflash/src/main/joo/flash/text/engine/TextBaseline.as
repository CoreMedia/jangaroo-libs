package flash.text.engine {


/**
 * The TextBaseline class is an enumeration of constant values to use in setting the <code>dominantBaseline</code> and <code>alignmentBaseline</code> properties of the ElementFormat class. You can also use it in the <code>baselineZero</code> property of the TextBlock class. Consider this situation:
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textBaselines.gif" /></p>
 * <p>The line consists of four <code>TextElement</code> objects, containing 'a', 'b', 'cccccccc', and 'X' respectively. The element containing 'X' determines the line baselines because it is the largest element in the line. The roman baseline of the 'X' element is aligned with the roman baseline of the line. The ideographic top of the 'a' element is aligned with the ideographic top of the line. The ideographic bottom of the 'b' element is aligned with the ideographic bottom of the line. The ideographic center of the 'cccccccc' element is aligned with the ideographic center of the line.</p>
 * @see ElementFormat#dominantBaseline
 * @see ElementFormat#alignmentBaseline
 * @see TextBlock#baselineZero
 *
 */
public final class TextBaseline {
  /**
   * Specifies an ascent baseline. For a text element, the font and point size of the text determine this value. For a graphic element, the text engine uses the geometric top of the element.
   * @see ElementFormat#dominantBaseline
   * @see ElementFormat#alignmentBaseline
   * @see TextBlock#baselineZero
   *
   */
  public static const ASCENT:String = "ascent";
  /**
   * Specifies a descent baseline. For a text element, the font and point size of the text determine this value. For a graphic element, the text element uses the geometric bottom of the element.
   * @see ElementFormat#dominantBaseline
   * @see ElementFormat#alignmentBaseline
   * @see TextBlock#baselineZero
   *
   */
  public static const DESCENT:String = "descent";
  /**
   * Specifies an ideographic bottom baseline. For a text element, the font and point size of the text determine this value. For a graphic element, the text engine uses the geometric bottom of the element.
   * @see ElementFormat#dominantBaseline
   * @see ElementFormat#alignmentBaseline
   * @see TextBlock#baselineZero
   *
   */
  public static const IDEOGRAPHIC_BOTTOM:String = "ideographicBottom";
  /**
   * Specifies an ideographic center baseline. For a text element, the font and point size of the text determine this value. For a graphic element, the text engine uses the geometric center of the element.
   * @see ElementFormat#dominantBaseline
   * @see ElementFormat#alignmentBaseline
   * @see TextBlock#baselineZero
   *
   */
  public static const IDEOGRAPHIC_CENTER:String = "ideographicCenter";
  /**
   * Specifies an ideographic top baseline. For a text element, the font and point size of the text determine this value. For a graphic element, the text engine uses the geometric top of the element.
   * @see ElementFormat#dominantBaseline
   * @see ElementFormat#alignmentBaseline
   * @see TextBlock#baselineZero
   *
   */
  public static const IDEOGRAPHIC_TOP:String = "ideographicTop";
  /**
   * Specifies a roman baseline. For a text element, the font and point size of the text determine this value. For a graphic element, the text engine uses the geometric bottom of the element.
   * @see ElementFormat#dominantBaseline
   * @see ElementFormat#alignmentBaseline
   * @see TextBlock#baselineZero
   *
   */
  public static const ROMAN:String = "roman";
  /**
   * Specifies that the alignmentBaseline is the same as the dominantBaseline. Use this value only to set <code>ElementFormat.alignmentBaseline</code>.
   * @see ElementFormat#alignmentBaseline
   *
   */
  public static const USE_DOMINANT_BASELINE:String = "useDominantBaseline";
}
}
