package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The InsertTextOperation class encapsulates a text insertion operation.
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class InsertTextOperation extends FlowTextOperation {
  /**
   * The character format applied to the inserted text.
   */
  public function get characterFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set characterFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The text deleted by this operation, if any.
   * <p><code>null</code> if no text is deleted.</p>
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
   * The text inserted by this operation.
   */
  public function get text():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set text(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an InsertTextOperation object.
   * @param operationState Describes the insertion point or range of text.
   * @param text The string to insert.
   * @param deleteSelectionState Describes the range of text to delete before doing insertion, if different than the range described by <code>operationState</code>.
   *
   */
  public function InsertTextOperation(operationState:SelectionState, text:String, deleteSelectionState:SelectionState = null) {
    super(operationState);
  }

  /**
   * Re-executes the operation after it has been undone.
   * <p>This function is called by the edit manager, when necessary.</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/SelectionState.html">SelectionState</a></code>
   *
   */
  override public function redo():SelectionState {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
