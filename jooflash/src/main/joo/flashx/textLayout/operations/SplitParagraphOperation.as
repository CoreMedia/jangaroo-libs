package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;

/**
 * The SplitParagraphOperation class encapsulates a change that splits a paragraph into two elements.
 * <p>The operation creates a new paragraph containing the text from the specified position to the end of the paragraph. If a range of text is specified, the text in the range is deleted first.</p>
 * @see flashx.textLayout.elements.ParagraphElement
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class SplitParagraphOperation extends FlowTextOperation {
  /**
   * Creates a SplitParagraphOperation object.
   * @param operationState Describes the point at which to split the paragraph. If a range of text is specified, the contents of the range are deleted.
   *
   */
  public function SplitParagraphOperation(operationState:SelectionState) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
