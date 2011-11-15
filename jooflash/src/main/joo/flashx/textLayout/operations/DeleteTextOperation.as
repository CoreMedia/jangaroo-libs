package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;

/**
 * The DeleteTextOperation class encapsulates the deletion of a range of text.
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class DeleteTextOperation extends FlowTextOperation {
  /**
   * Indicates whether this operation can be merged with operations executed before or after it.
   * <p>Some delete operations, for example, a sequence of backspace keystrokes, can be fruitfully merged into one operation so that undoing the operation reverses the entire sequence.</p>
   */
  public function get allowMerge():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set allowMerge(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * deleteSelectionState The range of text to delete
   */
  public function get deleteSelectionState():SelectionState {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set deleteSelectionState(value:SelectionState):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a DeleteTextOperation operation.
   * @param operationState The original range of text.
   * @param deleteSelectionState The range of text to delete, if different from the range described by <code>operationState</code>. (Set to <code>null</code> to delete the range described by <code>operationState</code>.)
   * @param allowMerge Set to <code>true</code> if this operation can be merged with the next or previous operation.
   *
   */
  public function DeleteTextOperation(operationState:SelectionState, deleteSelectionState:SelectionState = null, allowMerge:Boolean = false) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
