package flashx.textLayout.edit {
import flashx.textLayout.elements.FlowLeafElement;
import flashx.textLayout.elements.ParagraphElement;
import flashx.textLayout.elements.TextFlow;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The ElementRange class represents the range of objects selected within a text flow.
 * <p>The beginning elements (such as <code>firstLeaf</code>) are always less than or equal to the end elements (in this case, <code>lastLeaf</code>) for each pair of values in an element range.</p>
 * @see flashx.textLayout.elements.TextFlow
 *
 */
public class ElementRange {
  /**
   * The absolute text position of the FlowLeafElement object that contains the end of the range.
   */
  public function get absoluteEnd():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set absoluteEnd(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The absolute text position of the FlowLeafElement object that contains the start of the range.
   */
  public function get absoluteStart():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set absoluteStart(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The format attributes of the characters in the range.
   * <p>If the range spans more than one FlowElement object, which means that more than one character format may exist within the range, the format of the first FlowElement object is returned.</p>
   */
  public function get characterFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The format attributes of the container displaying the range.
   * <p>If the range spans more than one container, the format of the first container is returned.</p>
   */
  public function get containerFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The FlowLeafElement object that contains the start of the range.
   */
  public function get firstLeaf():FlowLeafElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set firstLeaf(value:FlowLeafElement):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The ParagraphElement object that contains the start of the range.
   */
  public function get firstParagraph():ParagraphElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set firstParagraph(value:ParagraphElement):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The FlowLeafElement object that contains the end of the range.
   */
  public function get lastLeaf():FlowLeafElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set lastLeaf(value:FlowLeafElement):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The ParagraphElement object that contains the end of the range.
   */
  public function get lastParagraph():ParagraphElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set lastParagraph(value:ParagraphElement):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The format attributes of the paragraph containing the range.
   * <p>If the range spans more than one paragraph, the format of the first paragraph is returned.</p>
   */
  public function get paragraphFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The TextFlow object that contains the range.
   */
  public function get textFlow():TextFlow {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textFlow(value:TextFlow):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an ElementRange object.
   * @param textFlow the text flow
   * @param absoluteStart absolute text position of the first character in the text range
   * @param absoluteEnd one beyond the absolute text position of the last character in the text range
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/ElementRange.html">ElementRange</a></code>
   *
   */
  public static function createElementRange(textFlow:TextFlow, absoluteStart:int, absoluteEnd:int):ElementRange {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
