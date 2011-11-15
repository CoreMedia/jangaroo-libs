package flashx.textLayout.elements {


/**
 * The SpecialCharacterElement class is an abstract base class for elements that represent special characters.
 * <p>You cannot create a SpecialCharacterElement object directly. Invoking <code>new SpecialCharacterElement()</code> throws an error exception.</p>
 * <p>Default MXML Property<code>mxmlChildren</code></p>
 * @see BreakElement
 * @see TabElement
 *
 */
public class SpecialCharacterElement extends SpanElement {
  /**
   * Base class - invoking <code>new SpecialCharacterElement()</code> throws an error exception.
   */
  public function SpecialCharacterElement() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
