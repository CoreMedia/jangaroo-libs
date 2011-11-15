package flashx.undo {
/**
 * IUndoManager defines the interface for managing the undo and redo stacks.
 * <p>An undo manager maintains a stack of operations that can be undone and redone.</p>
 */
public interface IUndoManager {
  /**
   * The maximum number of undoable or redoable operations to track.
   * <p>To disable the undo function, set this value to 0.</p>
   */
  function get undoAndRedoItemLimit():int;

  /**
   * @private
   */
  function set undoAndRedoItemLimit(value:int):void;

  /**
   * Indicates whether there is currently an operation that can be redone.
   * @return Boolean <code>true</code>, if there is an operation on the redo stack that can be redone. Otherwise, <code>false</code>.
   *
   */
  function canRedo():Boolean;

  /**
   * Indicates whether there is currently an operation that can be undone.
   * @return Boolean <code>true</code>, if there is an operation on the undo stack that can be reversed. Otherwise, <code>false</code>.
   *
   */
  function canUndo():Boolean;

  /**
   * Clears both the undo and the redo histories.
   */
  function clearAll():void;

  /**
   * Clears the redo stack.
   */
  function clearRedo():void;

  /**
   * Returns the next operation to be redone.
   * @return IOperation The redoable IOperation object, or <code>null</code>, if no redoable operation is on the stack.
   *
   */
  function peekRedo():IOperation;

  /**
   * Returns the next operation to be undone.
   * @return IOperation The undoable IOperation object, or <code>null</code>, if no undoable operation is on the stack.
   *
   */
  function peekUndo():IOperation;

  /**
   * Removes the next operation to be redone from the redo stack, and returns it.
   * @return IOperation The redoable IOperation object, or <code>null</code>, if no redoable operation is on the stack.
   *
   */
  function popRedo():IOperation;

  /**
   * Removes the next operation to be undone from the undo stack, and returns it.
   * @return IOperation The undoable IOperation object, or <code>null</code>, if no undoable operation is on the stack.
   *
   */
  function popUndo():IOperation;

  /**
   * Adds a redoable operation to the redo stack.
   * @param operation <code>operation:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/undo/IOperation.html">IOperation</a></code>
   *
   */
  function pushRedo(operation:IOperation):void;

  /**
   * Adds an undoable operation to the undo stack.
   * @param operation <code>operation:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/undo/IOperation.html">IOperation</a></code>
   *
   */
  function pushUndo(operation:IOperation):void;

  /**
   * Removes the next IOperation object from the redo stack and calls the performRedo() function of that object.
   * @see flashx.textLayout.edit.IEditManager#redo()
   * @see #canRedo()
   * @see #clearRedo()
   * @see #peekRedo()
   * @see #pushRedo()
   * @see #popRedo()
   *
   */
  function redo():void;

  /**
   * Removes the next IOperation object from the undo stack and calls the performUndo() function of that object.
   * @see flashx.textLayout.edit.IEditManager#undo()
   * @see #canUndo()
   * @see #clearUndo()
   * @see #peekUndo()
   * @see #pushUndo()
   * @see #popUndo()
   *
   */
  function undo():void;
}
}
