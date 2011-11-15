package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;

/**
 * The ApplyTCYOperation class encapsulates a TCY transformation.
 * @see flashx.textLayout.elements.TCYElement
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class ApplyTCYOperation extends FlowTextOperation {
  /**
   * Indicates whether the operation applies or removes TCY formatting.
   * <p>If <code>true</code>, then the operation transforms the range into a TCY element. If <code>false</code>, then the operation removes TCY formatting from the first TCY element in the range.</p>
   * @see flashx.textLayout.elements.TCYElement
   *
   */
  public function get tcyOn():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set tcyOn(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an ApplyTCYOperation object.
   * @param operationState Describes the range of text to which the operation is applied.
   * @param tcyOn Specifies whether to apply TCY (<code>true</code>), or remove TCY (<code>false</code>).
   *
   */
  public function ApplyTCYOperation(operationState:SelectionState, tcyOn:Boolean) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
