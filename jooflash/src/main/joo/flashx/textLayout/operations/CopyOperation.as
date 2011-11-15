package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;

/**
 * The CopyOperation class encapsulates a copy operation.
 * <p><b>Note:</b> The operation is responsible for copying the text scrap to the clipboard. Undonig a copy operation does not restore the original clipboard state.</p>
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class CopyOperation extends FlowTextOperation {
  /**
   * Creates a CopyOperation object.
   * @param operationState The range of text to be copied.
   *
   */
  public function CopyOperation(operationState:SelectionState) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
