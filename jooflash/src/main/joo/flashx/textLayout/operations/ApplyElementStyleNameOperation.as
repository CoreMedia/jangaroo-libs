package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;
import flashx.textLayout.elements.FlowElement;

/**
 * The ApplyElementStyleNameOperation class encapsulates a style name change.
 * @see flashx.textLayout.elements.FlowElement#styleName
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class ApplyElementStyleNameOperation extends FlowElementOperation {
  /**
   * The style name assigned by this operation.
   */
  public function get newStyleName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set newStyleName(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a ApplyElementStyleNameOperation object.
   * <p>If the <code>relativeStart</code> and <code>relativeEnd</code> parameters are set, then the existing element is split into multiple elements, the selected portion using the new style name and the rest using the existing style name.</p>
   * @param operationState Describes the current selection.
   * @param targetElement Specifies the element to change.
   * @param newStyleName The style name to assign.
   * @param relativeStart An offset from the beginning of the target element.
   * @param relativeEnd An offset from the end of the target element.
   *
   */
  public function ApplyElementStyleNameOperation(operationState:SelectionState, targetElement:FlowElement, newStyleName:String, relativeStart:int = 0, relativeEnd:int = -1) {
    super(operationState, targetElement);
  }
}
}
