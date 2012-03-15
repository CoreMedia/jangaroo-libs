package flash.text.engine {
import flash.events.EventDispatcher;

/**
 * The TextElement class represents a string of formatted text. Assign a TextElement object to the <code>content</code> property of a TextBlock object to create a block of text. Assign it to a GroupElement object to combine it with other text and graphic elements as a unit. Use the ElementFormat class to format the text.
 * @see ContentElement
 * @see ElementFormat
 * @see TextBlock
 *
 */
public final class TextElement extends ContentElement {
  /**
   * Receives the text that is the content of the element.
   * <p>The default value is <code>null</code>.</p>
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
   * Creates a new TextElement instance.
   * @param text The text for the element. The default value is <code>null</code>.
   * @param elementFormat The element format for the text in the element. The default value is <code>null</code>.
   * @param eventMirror The <code>EventDispatcher</code> object that receives copies of every event dispatched to text lines based on this content element. The default value is <code>null</code>.
   * @param textRotation The rotation applied the element as a unit. Use <code>TextRotation</code> constants for this property. The default value is <code>TextRotation.ROTATE_0</code>.
   *
   * @example The following example creates a TextElement object from a string of text, formats it using a font size of 12 and the color red (0xCC0000), and assigns it to the <code>content</code> property of a TextBlock. It calls the createLines() function to break the block of text into lines of 150 pixels each.
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.text.engine.TextBlock;
   *     import flash.text.engine.TextElement;
   *     import flash.text.engine.TextLine;
   *     import flash.text.engine.ElementFormat;
   *
   *     public class TextElementExample extends Sprite {
   *
   *         public function TextElementExample():void {
   *
   *             var str:String = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, " +
   *             "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut " +
   *             "enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut " +
   *             "aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit " +
   *             "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur " +
   *             "sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt " +
   *             "mollit anim id est laborum.";
   *
   *             var format:ElementFormat = new ElementFormat(null, 12, 0xCC0000);
   *             var textElement:TextElement = new TextElement(str, format);
   *             var textBlock:TextBlock = new TextBlock();
   *             textBlock.content = textElement;
   *             createLines(textBlock);
   *         }
   *
   *         private function createLines(textBlock:TextBlock):void {
   *
   *             var yPos = 20;
   *             var textLine:TextLine = textBlock.createTextLine (null, 150);
   *
   *             while (textLine)
   *             {
   *                 addChild(textLine);
   *                 textLine.x = 15;
   *                 yPos += textLine.textHeight+2;
   *                 textLine.y = yPos;
   *                 textLine = textBlock.createTextLine(textLine, 150);
   *             }
   *         }
   *     }
   * }
   * </listing>
   */
  public function TextElement(text:String = null, elementFormat:ElementFormat = null, eventMirror:EventDispatcher = null, textRotation:String = "rotate0") {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Replaces the range of characters that the <code>beginIndex</code> and <code>endIndex</code> parameters specify with the contents of the <code>newText</code> parameter. The <code>beginIndex</code> and <code>endIndex</code> values refer to the current contents of <code>text</code>.
   * <p>To delete text, pass <code>null</code> for <code>newText</code>.</p>
   * <p>To insert text, pass the same value for <code>beginIndex</code> and <code>endIndex</code>. The new text is inserted before the specified index.</p>
   * <p>To append text, pass <code>text.length</code> for <code>beginIndex</code> and <code>endIndex</code>.</p>
   * <p>To set all the text, pass 0 for <code>beginIndex</code> and <code>text.length</code> for <code>endIndex</code>.</p>
   * @param beginIndex The zero-based index value for the start position of the replacement range.
   * @param endIndex The zero-based index value following the end position of the replacement range.
   * @param newText The text to use to replace the specified range of characters.
   *
   * @throws RangeError The <code>beginIndex</code> or <code>endIndex</code> specified is out of range.
   *
   * @example This example calls <code>replaceText()</code> several times to do the following:
   * <ul>
   * <li>insert a string at the beginning of text</li>
   * <li>append a string to the end of text</li>
   * <li>insert a string in the middle of text</li>
   * <li>replace text entirely with new text</li></ul>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.text.engine.FontDescription;
   *     import flash.text.engine.ElementFormat;
   *     import flash.text.engine.TextElement;
   *     import flash.text.engine.TextBlock;
   *     import flash.text.engine.TextLine;
   *
   *
   *     public class TextElement_replaceTextExample extends Sprite {
   *         public function TextElement_replaceTextExample():void {
   *
   *             var str:String = "0123456";
   *             var fontDescription:FontDescription = new FontDescription("Arial");
   *             var format:ElementFormat = new ElementFormat(fontDescription);
   *             format.fontSize = 14;
   *             var textElement:TextElement = new TextElement(str, format);
   *             var textBlock:TextBlock = new TextBlock();
   *             textBlock.content = textElement;
   *             textElement.replaceText(0, 0, "abc");
   *             createLine(textBlock, 20);           //"abc0123456"
   *             textElement.replaceText(10, 10, "abc");
   *             createLine(textBlock, 40);            // "abc0123456abc"
   *             textElement.replaceText(5, 8, "abc");
   *             createLine(textBlock, 60);         // "abc01abc56abc"
   *             textElement.replaceText(0, 13, "abc");
   *             createLine(textBlock, 80);            // "abc"
   *             textElement.replaceText(0, 3, "That's all she wrote!");
   *             createLine(textBlock, 100);        // "That's all she wrote"
   *         }
   *
   *         private function createLine(textBlock:TextBlock, y:Number):void {
   *             var textLine:TextLine = textBlock.createTextLine(null, 150);
   *             textLine.x = 10;
   *             textLine.y = y;
   *             addChild(textLine);
   *         }
   *     }
   * }
   * </listing>
   */
  public function replaceText(beginIndex:int, endIndex:int, newText:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
