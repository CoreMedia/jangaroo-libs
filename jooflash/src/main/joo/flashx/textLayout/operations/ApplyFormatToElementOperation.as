package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;
import flashx.textLayout.elements.FlowElement;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The ApplyFormatToElementOperation class encapsulates a style change to an element.
 * <p>This operation applies one or more formats to a flow element.</p>
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.formats.TextLayoutFormat
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class ApplyFormatToElementOperation extends FlowElementOperation {
  /**
   * The character formats applied in this operation.
   * <p>If <code>null</code> no character formats are changed.</p>
   */
  public function get format():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set format(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an ApplyFormatToElementOperation object.
   * @param operationState Specifies the text flow containing the element to which this operation is applied.
   * @param targetElement specifies the element to which this operation is applied.
   * @param format The formats to apply in this operation.
   * @param relativeStart <code>relativeStart:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code> (default = <code>0</code>)
   * @param relativeEnd <code>relativeEnd:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code> (default = <code>-1</code>)
   *
   */
  public function ApplyFormatToElementOperation(operationState:SelectionState, targetElement:FlowElement, format:ITextLayoutFormat, relativeStart:int = 0, relativeEnd:int = -1) {
    super(operationState, targetElement);
  }
}
}
