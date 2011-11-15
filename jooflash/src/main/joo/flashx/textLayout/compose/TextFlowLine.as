package flashx.textLayout.compose {
import flash.geom.Rectangle;
import flash.text.engine.TextLine;

import flashx.textLayout.container.ContainerController;
import flashx.textLayout.elements.ParagraphElement;

/**
 * The TextFlowLine class represents a single line of text in a text flow.
 * <p>Use this class to access information about how a line of text has been composed: its position, height, width, and so on. When the text flow (TextFlow) is modified, the lines immediately before and at the site of the modification are marked as invalid because they need to be recomposed. Lines after the site of the modification might not be damaged immediately, but they might be regenerated once the text is composed. You can access a TextFlowLine that has been damaged, but any values you access reflect the old state of the TextFlow. When the TextFlow is recomposed, it generates new lines and you can get the new line for a given position by calling <code>TextFlow.flowComposer.findLineAtPosition()</code>.</p>
 */
public final class TextFlowLine implements IVerticalJustificationLine {
  /**
   * The location of the line as an absolute character position in the TextFlow object.
   * @see flashx.textLayout.elements.TextFlow
   *
   */
  public function get absoluteStart():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of pixels from the baseline to the top of the tallest characters in the line. For a TextLine that contains only a graphic element, <code>ascent</code> is set to 0.
   */
  public function get ascent():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The number of the column in which the line has been placed, with the first column being 0.
   */
  public function get columnIndex():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The controller (ContainerController object) for the container in which the line has been placed.
   * @see flashx.textLayout.container.ContainerController
   *
   */
  public function get controller():ContainerController {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of pixels from the baseline to the bottom of the lowest-descending characters in the line. For a TextLine that contains only a graphic element, <code>descent</code> is set to 0.
   */
  public function get descent():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The height of the line in pixels.
   */
  public function get height():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The line's offset in pixels from the appropriate container inset (as dictated by paragraph direction and container block progression), prior to alignment of lines in the paragraph.
   */
  public function get lineOffset():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * One of the values from TextFlowLineLocation for specifying a line's location within a paragraph.
   * @see flashx.textLayout.elements.ParagraphElement
   * @see TextFlowLineLocation
   *
   */
  public function get location():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The paragraph (ParagraphElement) in which the line resides.
   * @see flashx.textLayout.elements.ParagraphElement
   *
   */
  public function get paragraph():ParagraphElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The amount of space to leave after the line.
   * <p>If the line is the last line of a paragraph that has a space-after, the line will have a <code>spaceAfter</code> value. If the line comes at the bottom of a column, then the <code>spaceAfter</code> is ignored. Otherwise, the line comes before another line in the column, and the following line must be positioned vertically to insure that there is at least this much space left between this last line of the paragraph and the first line of the following paragraph.</p>
   * @see flashx.textLayout.formats.TextLayoutFormat#paragraphSpaceAfter
   *
   */
  public function get spaceAfter():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The amount of space to leave before the line.
   * <p>If the line is the first line of a paragraph that has a space-before applied, the line will have a <code>spaceBefore</code> value. If the line comes at the top of a column, <code>spaceBefore</code> is ignored. Otherwise, the line follows another line in the column, and it is positioned vertically to insure that there is at least this much space left between this line and the last line of the preceding paragraph.</p>
   * @see flashx.textLayout.formats.TextLayoutFormat#paragraphSpaceBefore
   *
   */
  public function get spaceBefore():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The height of the text line, which is equal to <code>ascent</code> plus <code>descent</code>. The value is calculated based on the difference between the baselines that bound the line, either ideographic top and bottom or ascent and descent depending on whether the baseline at y=0 is ideographic (for example, TextBaseline.IDEOGRAPHIC_TOP) or not.
   * @see flash.text.engine.TextBaseline
   *
   */
  public function get textHeight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The number of characters to the next line, including trailing spaces.
   */
  public function get textLength():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the <code>flash.text.engine.TextLine</code> object for this TextFlowLine exists. The value is <code>true</code> if the TextLine object has <i>not</i> been garbage collected and <code>false</code> if it has been.
   * @see flash.text.engine.TextLine
   *
   */
  public function get textLineExists():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The width of the line if it was not justified. For unjustified text, this value is the same as <code>textLength</code>. For justified text, this value is what the length would have been without justification, and <code>textLength</code> represents the actual line width. For example, when the following String is justified and assigned a width of 500, it has an actual width of 500 but an unjustified width of 268.9921875.
   */
  public function get unjustifiedTextWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The validity of the line.
   * <p>A line can be invalid if the text, the attributes applied to it, or the controller settings have changed since the line was created. An invalid line can still be displayed, and you can use it, but the values used will be the values at the time it was created. The line returned by <code>getTextLine()</code> also will be in an invalid state.</p>
   * @see #getTextLine()
   * @see flash.text.engine.TextLine#validity
   * @see FlowDamageType#GEOMETRY
   *
   */
  public function get validity():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The horizontal position of the line relative to its container, expressed as the offset in pixels from the left of the container.
   * <p><b>Note:</b> Although this property is technically <code>read-write</code>, you should treat it as <code>read-only</code>. The setter exists only to satisfy the requirements of the IVerticalJustificationLine interface that defines both a getter and setter for this property. Use of the setter, though possible, will lead to unpredictable results.</p>
   * @see #y
   *
   */
  public function get x():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set x(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The vertical position of the line relative to its container, expressed as the offset in pixels from the top of the container.
   * <p><b>Note:</b> Although this property is technically <code>read-write</code>, you should treat it as <code>read-only</code>. The setter exists only to satisfy the requirements of the IVerticalJustificationLine interface that defines both a getter and setter for this property. Use of the setter, though possible, will lead to unpredictable results.</p>
   * @see #x
   *
   */
  public function get y():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set y(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor - creates a new TextFlowLine instance.
   * <p><b>Note</b>: No client should call this. It's exposed for writing your own composer.</p>
   * @param textLine The TextLine display object to use for this line.
   * @param paragraph The paragraph (ParagraphElement) in which to place the line.
   * @param outerTargetWidth The width the line is composed to, excluding indents.
   * @param lineOffset The line's offset in pixels from the appropriate container inset (as dictated by paragraph direction and container block progression), prior to alignment of lines in the paragraph.
   * @param absoluteStart The character position in the text flow at which the line begins.
   * @param numChars The number of characters in the line.
   *
   * @see flash.text.engine.TextLine
   * @see flashx.textLayout.elements.ParagraphElement
   * @see #absoluteStart
   *
   */
  public function TextFlowLine(textLine:TextLine, paragraph:ParagraphElement, outerTargetWidth:Number = 0, lineOffset:Number = 0, absoluteStart:int = 0, numChars:int = 0) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the bounds of the line as a rectangle.
   * @return a rectangle that represents the boundaries of the line.
   *
   */
  public function getBounds():Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the <code>flash.text.engine.TextLine</code> object for this line, which might be recreated if it does not exist due to garbage collection. Set <code>forceValid</code> to <code>true</code> to cause the TextLine to be regenerated. Returns null if the TextLine cannot be recreated.
   * @param forceValid if true, the TextLine is regenerated, if it exists but is invalid.
   *
   * @return object for this line or <code>null</code> if the TextLine object cannot be recreated.
   *
   * @see flash.text.engine.TextLine
   *
   */
  public function getTextLine(forceValid:Boolean = false):TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
