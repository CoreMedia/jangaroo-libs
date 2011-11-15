package flash.accessibility {


/**
 * The ISimpleTextSelection class can be used to add support for the MSAA ISimpleTextSelection interface to an AccessibilityImplementation.
 * <p>If an AccessibilityImplementation subclass implements the two getters in this class, a screen reader such as JAWS can determine the text selection range by calling them. The AccessibilityImplementation subclass does not have to formally declare that it implements this interface; you can simply declare getters for these two properties, as follows:</p>
 * <listing>
 *     class TextAreaAccImpl extends AccesibilityImplementation
 *     {
 *     ...
 *         public function get selectionAnchorIndex():int
 *         {
 *         ...
 *         }
 *         public function get selectionActiveIndex():int
 *         {
 *         ...
 *     }
 *     }
 *    </listing>
 * @see AccessibilityImplementation
 *
 */
public interface ISimpleTextSelection {
  /**
   * The zero-based character index value of the last character in the current selection. If you want a component to support inline IME or accessibility, override this method.
   */
  function get selectionActiveIndex():int;

  /**
   * The zero-based character index value of the first character in the current selection. If you want a component to support inline IME or accessibility, override this method.
   */
  function get selectionAnchorIndex():int;
}
}
