package flashx.textLayout.elements {


/**
 * The TCYElement (Tatechuuyoko - ta-tae-chu-yo-ko) class is a subclass of SubParagraphGroupElement that causes text to draw horizontally within a vertical line. Traditionally, it is used to make small blocks of non-Japanese text or numbers, such as dates, more readable. TCY can be applied to horizontal text, but has no effect on drawing style unless and until it is turned vertically. TCY blocks which contain no text will be removed from the text flow during the normalization process.
 * <p>In the example below, the image on the right shows TCY applied to the number 57, while the image on the left has no TCY formatting.</p>
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_TCYElement.png" /></p>
 * <p>Default MXML Property<code>mxmlChildren</code></p>
 * @see TextFlow
 * @see ParagraphElement
 * @see SpanElement
 *
 */
public final class TCYElement extends SubParagraphGroupElement {
  /**
   * Constructor - creates a new TCYElement instance.
   */
  public function TCYElement() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
