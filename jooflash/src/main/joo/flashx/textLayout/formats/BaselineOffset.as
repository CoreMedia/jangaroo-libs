package flashx.textLayout.formats {


/**
 * Defines values for the <code>firstBaselineOffset</code> property of the <code>TextLayoutFormat</code> and <code>ContainerFormattedElement</code> classes. Determines the offset from the top inset of the container to the baseline of the first line. Baseline offset may be specified as the ascent of the line, the height of the line, or an auto generated amount.
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO1.jpg" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO2.jpg" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO3.jpg" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO4.jpg" /></p>
 * @see TextLayoutFormat#firstBaselineOffset
 *
 */
public final class BaselineOffset {
  /**
   * Specifies an offset equal to the ascent of the line, that is, the ascent of the tallest font in the line, accounting for inline graphics as having the bottom of the graphic on the baseline.
   */
  public static const ASCENT:String = "ascent";
  /**
   * Aligns the ascent of the line with the container top inset.
   */
  public static const AUTO:String = "auto";
  /**
   * Specifies an offset equal to the height of the line.
   */
  public static const LINE_HEIGHT:String = "lineHeight";
}
}
