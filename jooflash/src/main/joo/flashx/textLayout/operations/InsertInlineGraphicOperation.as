package flashx.textLayout.operations {
import flashx.textLayout.edit.SelectionState;

/**
 * The InsertInlineGraphicOperation class encapsulates the insertion of an inline graphic into a text flow.
 * @see flashx.textLayout.elements.InlineGraphicElement
 * @see flashx.textLayout.edit.EditManager
 * @see flashx.textLayout.events.FlowOperationEvent
 *
 */
public class InsertInlineGraphicOperation extends FlowTextOperation {
  /**
   * The height of the image. May be 'auto', a number of pixels or a percent of the measured height.
   * <p>Legal values are flashx.textLayout.formats.FormatValue.AUTO and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Legal values as a number are from 0 to 32000.</p>
   * <p>Legal values as a percent are numbers from 0 to 1000000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined or "inherit" the InlineGraphicElement will use the default value of "auto".</p>
   *
   */
  public function get height():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set height(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * options are not supported
   */
  public function get options():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set options(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the source for the graphic. The value can be either a String that is interpreted as a URI, a Class that's interpreted as the class of an embeddded DisplayObject, a DisplayObject instance, or a URLRequest. Creates a DisplayObject and, if the InlineGraphicElement object is added into a ParagraphElement in a TextFlow object, causes it to appear inline in the text.
   */
  public function get source():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set source(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The width of the graphic. The value can be 'auto', a number of pixels or a percent of the measured width of the image.
   * <p>Legal values are flashx.textLayout.formats.FormatValue.AUTO and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Legal values as a number are from 0 to 32000.</p>
   * <p>Legal values as a percent are numbers from 0 to 1000000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined or "inherit" the InlineGraphicElement will use the default value of "auto".</p>
   */
  public function get width():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set width(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an InsertInlineGraphicsOperation object.
   * @param operationState Describes the insertion point. If a range is selected, the operation deletes the contents of that range.
   * @param source The graphic source (uri string, URLRequest, DisplayObject, or Class of an embedded asset).
   * @param width The width to assign (number of pixels, percent, or the string 'auto')
   * @param height The height to assign (number of pixels, percent, or the string 'auto')
   * @param options None supported
   *
   */
  public function InsertInlineGraphicOperation(operationState:SelectionState, source:Object, width:Object, height:Object, options:Object = null) {
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
