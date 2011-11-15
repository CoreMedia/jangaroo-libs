package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;
import flashx.textLayout.elements.TextFlow;
import flashx.undo.IOperation;

/**
 * The FlowOperation class is the base class for all Text Layout Framework operations.
 * <p>Operations are transformations of a text flow. An Operation class defines the logic for performing and undoing the transformation. Operations are executed by an edit manager. Most applications do not need to create or manage operations directly (unless implementing a custom edit manager).</p>
 * <p>When an operation is performed, the edit manager dispatches an Operation object within the FlowOperationEvent object. You can query this Operation object to decide whether or not to allow the operation, to decide whether to perform some other operation as well, or to update related user-interface elements.</p>
 * @see flashx.textLayout.events.FlowOperationEvent
 * @see flashx.textLayout.edit.EditManager
 *
 */
public class FlowOperation implements IOperation {
  /**
   * The text flow generation before the operation.
   * <p>A generation of 0 indicates that the operation did not complete.</p>
   */
  public function get beginGeneration():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The text flow generation after the operation.
   * <p>A generation of 0 indicates that the operation did not complete.</p>
   */
  public function get endGeneration():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The TextFlow object to which this operation is applied.
   */
  public function get textFlow():TextFlow {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textFlow(value:TextFlow):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Arbitrary data associated with an element.
   */
  public var userData:*;

  /**
   * Creates the FlowOperation object.
   * @param textFlow The text flow to which this operation is applied.
   *
   */
  public function FlowOperation(textFlow:TextFlow) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Test if this operation be placed on the undo stack.
   * @return true means to push the operation onto the undo stack. false means do not push this operation.
   *
   */
  public function canUndo():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Executes the operation.
   * <p>This method must be overridden in derived classes. The base class method does nothing. You should not call <code>doOperation()</code> directly. The edit manager calls the method when it executes the operation.</p>
   * @return Boolean <code>true</code>, if the operation succeeded. Otherwise, <code>false</code>.
   *
   */
  public function doOperation():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Re-executes the operation.
   * <p>This method must be overridden in derived classes. The base class method does nothing. You should not call <code>redo()</code> directly. The edit manager calls the method when it re-executes the operation.</p>
   * @return The SelectionState object passed to the operation when it was performed. This SelectionState object can be the current selection or a selection created specifically for the operation.
   *
   */
  public function redo():SelectionState {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Reverses the operation.
   * <p>This method must be overridden in derived classes. The base class method does nothing. You should not call <code>undo()</code> directly. The edit manager calls the method when it reverses the operation.</p>
   * @return The SelectionState object passed to the operation when it was performed. This SelectionState object can be the current selection or a selection created specifically for the operation.
   *
   */
  public function undo():SelectionState {
    throw new Error('not implemented'); // TODO: implement!
  }

  public function performRedo():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  public function performUndo():void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
