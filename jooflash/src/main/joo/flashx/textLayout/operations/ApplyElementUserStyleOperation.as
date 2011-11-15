package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;
import flashx.textLayout.elements.FlowElement;

/**
 * The ApplyElementUserStyleOperation class encapsulates a change in a style value of an element.
 * @see flashx.textLayout.elements.FlowElement#userStyles
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class ApplyElementUserStyleOperation extends FlowElementOperation {
  /**
   * The new style value.
   */
  public function get newValue():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set newValue(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The name of the style changed.
   */
  public function get styleName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set styleName(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a ApplyElementUserStyleOperation object.
   * <p>If the <code>relativeStart</code> and <code>relativeEnd</code> parameters are set, then the existing element is split into multiple elements, the selected portion using the new style value and the rest using the existing style value.</p>
   * @param operationState Describes the range of text to style.
   * @param targetElement Specifies the element to change.
   * @param styleName The name of the style to change.
   * @param value The new style value.
   * @param relativeStart An offset from the beginning of the target element.
   * @param relativeEnd An offset from the end of the target element.
   *
   */
  public function ApplyElementUserStyleOperation(operationState:SelectionState, targetElement:FlowElement, styleName:String, value:*, relativeStart:int = 0, relativeEnd:int = -1) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
