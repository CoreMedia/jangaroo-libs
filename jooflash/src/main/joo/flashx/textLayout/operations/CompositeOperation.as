package flashx.textLayout.operations {


/**
 * The CompositeOperation class encapsulates a group of transformations managed as a unit.
 * <p>The CompositeOperation class provides a grouping mechanism for combining multiple FlowOperations into a single atomic operation. Grouping operations allows them to be undone and redone as a unit. For example, several single character inserts followed by several backspaces can be undone together as if they were a single operation. Grouping also provides a mechanism for representing complex operations. For example, a replace operation that modifies more than one text ranges can be represented and managed as a single composite operation.</p>
 * <p><b>Note:</b> It can be more efficient to merge individual atomic operations rather than to combine separate operations into a group. For example, several sequential character inserts can easily be represented as a single insert operation, and undoing or redoing that single operation is more efficient than undoing or redoing a group of insert operations.</p>
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class CompositeOperation extends FlowOperation {
  /**
   * An array containing the operations grouped by this composite operation.
   */
  public function get operations():Array {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set operations(value:Array):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a CompositeOperation object.
   * @param operations The operations to group.
   *
   */
  public function CompositeOperation(operations:Array = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds an additional operation to the end of the list.
   * <p>The new operation must operate on the same TextFlow object as the other operations in the list.</p>
   * @param operation <code>operation:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/operations/FlowOperation.html">FlowOperation</a></code>
   *
   */
  public function addOperation(operation:FlowOperation):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
