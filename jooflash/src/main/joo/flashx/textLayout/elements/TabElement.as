package flashx.textLayout.elements {


/**
 * The TabElement class represents a <tab/> in the text flow. You assign tab stops as an array of TabStopFormat objects to the <code>ParagraphElement.tabStops</code> property.
 * <p><b>Note</b>:This class exists primarily to support <tab/> in MXML markup. You can add tab characters (\t) directly into the text like this:</p>
 * <listing>
 *      spanElement1.text += '\t';
 *     </listing>
 * <p>Default MXML Property<code>mxmlChildren</code></p>
 * @see flashx.textLayout.formats.TabStopFormat
 * @see FlowElement#tabStops
 * @see SpanElement
 *
 */
public final class TabElement extends SpecialCharacterElement {
  /**
   * Constructor - creates a new TabElement instance.
   */
  public function TabElement() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
