package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;
import flashx.textLayout.elements.FlowElement;

/**
 * The FlowElementOperation class is the base class for operations that transform a FlowElement.
 * @see flashx.textLayout.formats.TextLayoutFormat
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class FlowElementOperation extends FlowTextOperation {
  /**
   * An offset from the start of the <code>targetElement</code>.
   */
  public function get relativeEnd():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set relativeEnd(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * An offset from the beginning of the <code>targetElement</code>.
   */
  public function get relativeStart():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set relativeStart(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the element this operation modifies.
   */
  public function get targetElement():FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set targetElement(value:FlowElement):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a FlowElementOperation object.
   * @param operationState Specifies the TextFlow object this operation acts upon.
   * @param targetElement Specifies the element this operation modifies.
   * @param relativeStart An offset from the beginning of the <code>targetElement</code>.
   * @param relativeEnd An offset from the end of the <code>targetElement</code>.
   *
   */
  public function FlowElementOperation(operationState:SelectionState, targetElement:FlowElement, relativeStart:int = 0, relativeEnd:int = -1) {
    super(operationState);
  }
}
}
