package flashx.undo {
/**
 * The UndoManager class manages the history of editing operations on a text flow so that these operations can be undone and redone.
 * <p>The undo manager maintains two stacks of IOperation objects. When a reversible operation is executed, it is placed on the undo stack. If that operation is undone, it is removed from the undo stack, reversed, and placed on the redo stack. Likewise, if that operation is then redone, it is removed from the redo stack, re-executed, and then placed onto the undo stack again. If another operation is executed first, the redo stack is cleared.</p>
 * <p>If the TextFlow is modified directly (not via calls to the edit manager, but directly via calls to the managed FlowElement objects), then the edit manager clears the undo stack to prevent the stack from getting out of sync with the current state.</p>
 * @see flashx.textLayout.edit.EditManager
 *
 */
public class UndoManager implements IUndoManager {
  /**
   * The maximum number of undoable or redoable operations to track.
   * <p>To disable the undo function, set this value to 0.</p>
   */
  public function get undoAndRedoItemLimit():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set undoAndRedoItemLimit(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an UndoManager object.
   */
  public function UndoManager() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether there is currently an operation that can be redone.
   * @return Boolean <code>true</code>, if there is an operation on the redo stack that can be redone. Otherwise, <code>false</code>.
   *
   */
  public function canRedo():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether there is currently an operation that can be undone.
   * @return Boolean <code>true</code>, if there is an operation on the undo stack that can be reversed. Otherwise, <code>false</code>.
   *
   */
  public function canUndo():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Clears both the undo and the redo histories.
   */
  public function clearAll():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Clears the redo stack.
   */
  public function clearRedo():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the next operation to be redone.
   * @return IOperation The redoable IOperation object, or <code>null</code>, if no redoable operation is on the stack.
   *
   */
  public function peekRedo():IOperation {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the next operation to be undone.
   * @return IOperation The undoable IOperation object, or <code>null</code>, if no undoable operation is on the stack.
   *
   */
  public function peekUndo():IOperation {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes the next operation to be redone from the redo stack, and returns it.
   * @return IOperation The redoable IOperation object, or <code>null</code>, if no redoable operation is on the stack.
   *
   */
  public function popRedo():IOperation {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes the next operation to be undone from the undo stack, and returns it.
   * @return IOperation The undoable IOperation object, or <code>null</code>, if no undoable operation is on the stack.
   *
   */
  public function popUndo():IOperation {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a redoable operation to the redo stack.
   * @param operation <code>operation:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/undo/IOperation.html">IOperation</a></code>
   *
   */
  public function pushRedo(operation:IOperation):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds an undoable operation to the undo stack.
   * @param operation <code>operation:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/undo/IOperation.html">IOperation</a></code>
   *
   */
  public function pushUndo(operation:IOperation):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes the next IOperation object from the redo stack and calls the performRedo() function of that object.
   * @see flashx.textLayout.edit.IEditManager#redo()
   *
   */
  public function redo():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes the next IOperation object from the undo stack and calls the performUndo() function of that object.
   * @see flashx.textLayout.edit.IEditManager#undo()
   *
   */
  public function undo():void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
