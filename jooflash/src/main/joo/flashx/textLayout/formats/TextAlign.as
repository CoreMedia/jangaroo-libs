package flashx.textLayout.formats {


/**
 * Defines values for setting the <code>textAlign</code> and <code>textAlignLast</code> properties of the TextLayoutFormat class. The values describe the alignment of lines in the paragraph relative to the container.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/formats/TextAlign.html#includeExamplesSummary">View the examples</a></p>
 * @see TextLayoutFormat#textAlign
 * @see TextLayoutFormat#textAlignLast
 *
 */
public final class TextAlign {
  /**
   * Specifies center alignment within the container.
   */
  public static const CENTER:String = "center";
  /**
   * Specifies end edge alignment - text is aligned opposite from the writing order. Equivalent to specifying right in left-to-right text, or left in right-to-left text.
   */
  public static const END:String = "end";
  /**
   * Specifies that text is justified within the lines so they fill the container space.
   */
  public static const JUSTIFY:String = "justify";
  /**
   * Specifies left edge alignment.
   */
  public static const LEFT:String = "left";
  /**
   * Specifies right edge alignment.
   */
  public static const RIGHT:String = "right";
  /**
   * Specifies start edge alignment - text is aligned to match the writing order. Equivalent to setting left in left-to-right text, or right in right-to-left text.
   */
  public static const START:String = "start";
}
}
