package flashx.textLayout.compose {
import flashx.textLayout.elements.TextFlow;

/**
 * The FlowComposerBase class is the base class for Text Layout Framework flow composer classes, which control the composition of text lines in ContainerController objects.
 * <p>FlowComposerBase is a utility class that implements methods and properties that are common to several types of flow composer. Application code would not typically instantiate or use this class (unless extending it to create a custom flow composer).</p>
 * @see flashx.textLayout.elements.TextFlow#flowComposer
 *
 */
public class FlowComposerBase {
  /**
   * The absolute position immediately preceding the first element in the text flow that requires composition and updating.
   */
  public function get damageAbsoluteStart():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The total number of lines in the flow.
   */
  public function get numLines():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The ISWFContext instance used to make FTE calls as needed.
   * <p>By default, the ISWFContext implementation is this FlowComposerBase object. Applications can provide a custom implementation to use fonts embedded in a different SWF file or to cache and reuse text lines.</p>
   * @see ISWFContext
   *
   */
  public function get swfContext():ISWFContext {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set swfContext(value:ISWFContext):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The TextFlow object to which this flow composer is attached.
   * @see flashx.textLayout.elements.TextFlow
   *
   */
  public function get textFlow():TextFlow {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor.
   */
  public function FlowComposerBase() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Mark lines as damaged and needing a recompose.
   * @param startPosition beginning of range to damage
   * @param damageLength number of characters to damage
   * @param damageType type of damage. One of flashx.textLayout.compose.FlowDamageType
   *
   */
  public function damage(startPosition:int, damageLength:int, damageType:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the TextFlowLine object containing the content at the specified position.
   * <p>A position can be considered to be the division between two characters or other elements of a text flow. If the value in <code>absolutePosition</code> is a position between the last element of one line and the first element of the next, then the preceding line is returned if the <code>preferPrevious</code> parameter is set to <code>true</code> and the later line is returned if the <code>preferPrevious</code> parameter is set to <code>false</code>.</p>
   * @param absolutePosition The position of the content for which you want the TextFlowLine object.
   * @param preferPrevious Specifies which line to return when the position is between the last element of one line and the first element of the next.
   *
   * @return the TextFlowLine containing the content at the specified position, or null if not found.
   *
   */
  public function findLineAtPosition(absolutePosition:int, preferPrevious:Boolean = false):TextFlowLine {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the sequential line number of the TextFlowLine object that contains the content at the specified position.
   * <p>The number of the first line is 0 and the number of the last line is equal to the number of lines minus one. If the position specified in <code>absolutePosition</code> is past the end of the text flow, this method must return the number that will be assigned to the next new line added to the text flow (which is equal to the number of current lines).</p>
   * <p>A position can be considered to be the division between two characters or other elements of a text flow. If the value in <code>absolutePosition</code> is a position between the last line of one container and the first line of the next, then the preceding container is returned if the <code>preferPrevious</code> parameter is set to <code>true</code> and the later container is returned if the <code>preferPrevious</code> parameter is set to <code>false</code>.</p>
   * @param absolutePosition The position of the content for which you want the text line.
   * @param preferPrevious Specifies which container index to return when the position is between the last line in one container and the first line in the next.
   *
   * @return the index of the text line at the specified position. If not found, treats as past the end and returns the number of lines.
   *
   */
  public function findLineIndexAtPosition(absolutePosition:int, preferPrevious:Boolean = false):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the line with the specified line number.
   * <p>The list of lines is numbered from zero to the number of lines minus one. If the value in <code>index</code> is outside the bounds of the list of lines, then this function returns <code>null</code>.</p>
   * @param index The line number of the TextFlowLine object to return.
   *
   * @return the TextFlowLine with the specified line number, or <code>null</code>, if not found.
   *
   */
  public function getLineAt(index:int):TextFlowLine {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether any TextFlowLine objects between the beginning of the flow and the line containing the content at the specified position are marked as damaged.
   * @param absolutePosition the last position in the area of interest
   *
   * @return true if any of the TextFlowLine objects from the start of the flow up to the line containing the content at <code>absolutePosition</code> are marked as damaged.
   *
   */
  public function isDamaged(absolutePosition:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Update the lengths in the lines to maintain mapping to the TextFlow.
   * @param startPosition beginning of change in length
   * @param deltaLength change in number of characters.
   *
   */
  public function updateLengths(startPosition:int, deltaLength:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
