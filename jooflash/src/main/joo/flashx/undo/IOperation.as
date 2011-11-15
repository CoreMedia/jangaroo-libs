package flashx.undo {


/**
 * IOperation defines the interface for operations that can be undone and redone.
 */
public interface IOperation {
  /**
   * Reperforms the operation.
   * <p>The operation is also responsible for pushing itself onto the undo stack.</p>
   */
  function performRedo():void;

  /**
   * Reverses the operation.
   * <p>The operation is also responsible for pushing itself onto the redo stack.</p>
   */
  function performUndo():void;
}
}
