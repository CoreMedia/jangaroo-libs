package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The ClearFormatOperation class encapsulates a way to undefine formats.
 * <p>An UndefineFormatOperation undefines properties set in the leaf format to the text in the specified range (no change is made if the specified range is a single point). It undefines properties set in the paragraph format to any paragraphs at least partially within the range (or a single paragraph if the range is a single point). And it undefines properties set in the container format to any containers at least partially within the range (or a single container if the range is a single point).</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/operations/ClearFormatOperation.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class ClearFormatOperation extends FlowTextOperation {
  /**
   * The format properties to undefine on the containers in the range.
   * <p>The formats of any containers at least partially within the range are updated. If the range of this operation is a point, then a single container is updated. If <code>containerFormat</code> is <code>null</code>, then no container formats are changed.</p>
   */
  public function get containerFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set containerFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The format properties to undefine on the leaf elements in the range.
   * <p>If the range of this operation is a point, or if <code>leafFormat</code> is <code>null</code>, then no leaf element formats are changed.</p>
   */
  public function get leafFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set leafFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The format properties to undefine on the paragraphs in the range.
   * <p>The formats of any paragraphs at least partially within the range are updated. If the range of this operation is a point, then a single paragraph is updated. If <code>paragraphFormat</code> is <code>null</code>, then no paragraph formats are changed.</p>
   */
  public function get paragraphFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paragraphFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an ClearFormatOperation object.
   * @param operationState Defines the text range to which the format is applied.
   * @param leafFormat The format whose set values indicate properties to undefine to LeafFlowElement objects in the selected range.
   * @param paragraphFormat The format whose set values indicate properties to undefine to ParagraphElement objects in the selected range.
   * @param containerFormat The format whose set values indicate properties to undefine to ContainerController objects in the selected range.
   *
   */
  public function ClearFormatOperation(operationState:SelectionState, leafFormat:ITextLayoutFormat, paragraphFormat:ITextLayoutFormat, containerFormat:ITextLayoutFormat = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/SelectionState.html">SelectionState</a></code>
   *
   */
  override public function redo():SelectionState {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
