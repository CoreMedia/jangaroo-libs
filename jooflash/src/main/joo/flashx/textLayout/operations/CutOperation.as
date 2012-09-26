package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;
import flashx.textLayout.edit.TextScrap;

/**
 * The CutOperation class encapsulates a cut operation.
 * <p>The specified range is removed from the text flow.</p>
 * <p><b>Note:</b> The edit manager is responsible for copying the text scrap to the clipboard. Undoing a cut operation does not restore the original clipboard state.</p>
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class CutOperation extends FlowTextOperation {
  /**
   * scrapToCut the original removed text
   */
  public function get scrapToCut():TextScrap {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scrapToCut(value:TextScrap):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a CutOperation object.
   * @param operationState The range of text to be cut.
   * @param scrapToCut A copy of the deleted text.
   *
   */
  public function CutOperation(operationState:SelectionState, scrapToCut:TextScrap) {
    super(operationState);
  }
}
}
