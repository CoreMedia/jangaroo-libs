package flashx.textLayout.elements {


/**
 * The SpanElement class represents a run of text that has a single set of formatting attributes applied. SpanElement objects contain the text in a paragraph. A simple paragraph (ParagraphElement) includes one or more SpanElement objects.
 * <p>A ParagraphElement will have a single SpanElement object if all the text in the paragraph shares the same set of attributes. It has multiple SpanElement objects if the text in the paragraph has multiple formats.</p>
 * <p>Default MXML Property<code>mxmlChildren</code></p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/SpanElement.html#includeExamplesSummary">View the examples</a></p>
 * @see FlowElement
 * @see ParagraphElement
 * @see TextFlow
 *
 */
public class SpanElement extends FlowLeafElement {
  /**
   * Sets text based on content within span tags; always deletes existing children. This property is intended for use during mxml compiled import. When TLF markup elements have other TLF markup elements as children, the children are assigned to this property.
   * @throws TypeError if array element is not a SpecialCharacterElement or a String
   *
   */
  public function get mxmlChildren():Array {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set mxmlChildren(value:Array):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Receives the String of text that this SpanElement object holds.
   * <p>The text of a span does not include the carriage return (CR) at the end of the paragraph but it is included in the value of <code>textLength</code>.</p>
   */
  override public function get text():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set text(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor - creates a SpanElement object to hold a run of text in a paragraph.
   */
  public function SpanElement() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Updates the text in text span based on the specified start and end positions. To insert text, set the end position equal to the start position. To append text to the existing text in the span, set the start position and the end position equal to the length of the existing text.
   * <p>The replaced text includes the start character and up to but not including the end character.</p>
   * @param relativeStartPosition The index position of the beginning of the text to be replaced, relative to the start of the span. The first character in the span is at position 0.
   * @param relativeEndPosition The index one position after the last character of the text to be replaced, relative to the start of the span. Set this value equal to <code>relativeStartPos</code> for an insert.
   * @param textValue The replacement text or the text to add, as the case may be.
   *
   * @throws RangeError The <code>relativeStartPosition</code> or <code>relativeEndPosition</code> specified is out of range or a surrogate pair is being split as a result of the replace.
   *
   * @example This example calls replaceText() several times to do the following: insert a string at the beginning of text; append a string to the end of text; insert a string in the middle of text; replace text entirely with a new string.
   * <p>The example uses a second span (span2) to display the results.</p>
   * <listing>
   * package flashx.textLayout.elements.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class SpanElement_replaceTextExample  extends Sprite
   *     {
   *         public function SpanElement_replaceTextExample()
   *         {
   *             // create container and add it to the stage
   *             var container:Sprite = new Sprite();
   *             this.stage.addChild(container);
   *             // create TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span:SpanElement = new SpanElement;
   *             var span2:SpanElement = new SpanElement;
   *             // add composer and container controller
   *             var controller:ContainerController = new ContainerController(container, 200, 700 );
   *             textFlow.flowComposer.addController(controller);
   *             textFlow.fontSize = 24;    // set font size
   *             // create text string and add it to the span
   *             var str:String = "0123456";
   *             span.text = str;
   *             // insert at the beginning
   *             span.replaceText(0, 0, "abc");
   *             span2.text = span.text + '\n';
   *             // append to the end of the text
   *             span.replaceText(10, 10, "abc");
   *             span2.text += span.text + '\n';
   *             // insert string in the middle of the text
   *             span.replaceText(5, 8, "abc");
   *             span2.text += span.text + '\n';
   *             // replace text with string
   *             span.replaceText(0, 13, "abc");
   *             span2.text += span.text + '\n';
   *             // replace text with string
   *             span.replaceText(0, 3, "That's all she wrote!\n");
   *             span2.text += span.text + '\n';
   *             // display the results
   *             paragraph.addChild(span2);
   *             textFlow.addChild(paragraph);
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function replaceText(relativeStartPosition:int, relativeEndPosition:int, textValue:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
