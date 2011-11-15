package flashx.textLayout.factory {
import flashx.textLayout.elements.TextFlow;

/**
 * The TextFlowTextLineFactory class provides a simple way to create TextLines for displaying text from a text flow.
 * <p>The text lines are static and created fit in a single bounding rectangle, but can have multiple paragraphs and formats as well as inline graphics. To create TextLine objects directly from a string, use StringTextLineFactory.</p>
 * <p><b>Note:</b> When using inline graphics, the <code>source</code> property of the InlineGraphicElement object must either be an instance of a DisplayObject or a Class object representing an embedded asset. URLRequest objects cannot be used. The width and height of the inline graphic at the time the line is created is used to compose the flow.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/factory/TextFlowTextLineFactory.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.elements.TextFlow
 * @see StringTextLineFactory
 *
 */
public final class TextFlowTextLineFactory extends TextLineFactoryBase {
  /**
   * Creates a TextFlowTextLineFactory object.
   */
  public function TextFlowTextLineFactory() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates TextLine objects from the specified text flow.
   * <p>The text lines are composed to fit the bounds assigned to the <code>compositionBounds</code> property. As each line is created, the factory calls the function specified in the <code>callback</code> parameter. This function is passed the TextLine object and is responsible for displaying the line. If a line has a background color, the factory also calls the callback function with a Shape object containing a rectangle of the background color.</p>
   * @param callback function to call with each generated TextLine object. The callback will be called with a Shape object representing any background color (if present), and with TextLine objects for the text.
   * @param textFlow The TextFlow from which the lines are created.
   *
   */
  public function createTextLines(callback:Function, textFlow:TextFlow):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
