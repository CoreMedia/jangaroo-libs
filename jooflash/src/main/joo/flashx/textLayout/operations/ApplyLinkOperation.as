package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;

/**
 * The ApplyLinkOperation class encapsulates a link creation or modification operation.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/operations/ApplyLinkOperation.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.elements.LinkElement
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class ApplyLinkOperation extends FlowTextOperation {
  /**
   * Whether to extend the selection to include the entire text of any existing links overlapped by the selection, and then apply the change.
   */
  public function get extendToLinkBoundary():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set extendToLinkBoundary(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The URI to be associated with the link. If href is an empty string, the URI of links in the selection are removed.
   */
  public function get href():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set href(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The target of the link.
   */
  public function get target():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set target(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an ApplyLinkOperation object.
   * @param operationState The text range to which the operation is applied.
   * @param href The URI to be associated with the link. If href is an empty string, the URI of links in the selection are removed.
   * @param target The target of the link.
   * @param extendToLinkBoundary Whether to extend the selection to include the entire text of any existing links overlapped by the selection, and then apply the change.
   *
   */
  public function ApplyLinkOperation(operationState:SelectionState, href:String, target:String, extendToLinkBoundary:Boolean) {
    super(operationState);
  }
}
}
