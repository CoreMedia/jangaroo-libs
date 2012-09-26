package flashx.textLayout.operations {


/**
 * The RedoOperation class encapsulates a redo operation.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/operations/RedoOperation.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class RedoOperation extends FlowOperation {
  /**
   * The operation to redo.
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
   * Creates a RedoOperation object.
   * @param operation The operation to redo.
   *
   */
  public function RedoOperation(operation:FlowOperation) {
    super(null);
  }
}
}
