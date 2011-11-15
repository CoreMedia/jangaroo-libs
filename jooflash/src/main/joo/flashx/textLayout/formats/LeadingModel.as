package flashx.textLayout.formats {


/**
 * Defines values for setting the <code>leadingModel</code> property of the <code>TextLayoutFormat</code> class, composed of valid combinations of leading basis and leading direction. Leading basis describes which baselines determine the leading (or <code>lineHeight</code>) of lines in a paragraph. Leading direction specifies whether the <code>lineHeight</code> property refers to the distance of a line's baseline from that of the line before it or the line after it.
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_baselines.jpg" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LD1.jpg" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LD2.jpg" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LD3.jpg" /></p>
 * @see TextLayoutFormat#leadingModel
 * @see TextLayoutFormat#lineHeight
 * @see flash.text.TextField
 * @see flash.text.engine.TextLine
 *
 */
public final class LeadingModel {
  /**
   * Specifies a leading model that approximates the line spacing behavior of <code>TextField</code>. It is similar to <code>ASCENT_DESCENT_UP</code> in that <code>lineHeight</code> refers to the distance of a line's ascent baseline from the previous line's descent baseline. However, baseline positions approximate those determined by <code>TextField</code>, rather than using metrics offered by <code>TextLine</code>.
   */
  public static const APPROXIMATE_TEXT_FIELD:String = "approximateTextField";
  /**
   * Specifies that leading basis is ASCENT/DESCENT and leading direction is UP. In other words, <code>lineHeight</code> refers to the distance of a line's ascent baseline from the previous line's descent baseline.
   */
  public static const ASCENT_DESCENT_UP:String = "ascentDescentUp";
  /**
   * Specifies that leading model is chosen automatically based on the paragraph's <code>locale</code> property. For Japanese and Chinese, it is IDEOGRAPHIC_TOP_DOWN and for all others it is ROMAN_UP.
   */
  public static const AUTO:String = "auto";
  /**
   * Specifies that leading basis is IDEOGRAPHIC_CENTER and leading direction is down. In other words, <code>lineHeight</code> refers to the distance of a line's ideographic center baseline from the next line's ideographic center baseline.
   */
  public static const IDEOGRAPHIC_CENTER_DOWN:String = "ideographicCenterDown";
  /**
   * Specifies that leading basis is IDEOGRAPHIC_CENTER and leading direction is UP. In other words, <code>lineHeight</code> refers to the distance of a line's ideographic center baseline from the previous line's ideographic center baseline.
   */
  public static const IDEOGRAPHIC_CENTER_UP:String = "ideographicCenterUp";
  /**
   * Specifies that leading basis is IDEOGRAPHIC_TOP and leading direction is DOWN. In other words, <code>lineHeight</code> refers to the distance of a line's ideographic top baseline from the next line's ideographic top baseline.
   */
  public static const IDEOGRAPHIC_TOP_DOWN:String = "ideographicTopDown";
  /**
   * Specifies that leading basis is IDEOGRAPHIC_TOP and leading direction is UP. In other words, <code>lineHeight</code> refers to the distance of a line's ideographic top baseline from the previous line's ideographic top baseline.
   */
  public static const IDEOGRAPHIC_TOP_UP:String = "ideographicTopUp";
  /**
   * Specifies that leading basis is ROMAN and leading direction is UP. In other words, <code>lineHeight</code> refers to the distance of a line's Roman baseline from the previous line's Roman baseline.
   */
  public static const ROMAN_UP:String = "romanUp";
}
}
