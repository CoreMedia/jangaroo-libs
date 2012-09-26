package flashx.textLayout.operations {


/**
 * The UndoOperation class encapsulates an undo operation.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/operations/UndoOperation.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class UndoOperation extends FlowOperation {
  /**
   * The operation to undo.
   */
  public function get operation():FlowOperation {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set operation(value:FlowOperation):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an UndoOperation object.
   * @param op The operation to undo.
   *
   */
  public function UndoOperation(op:FlowOperation) {
    super(null);
  }
}
}
