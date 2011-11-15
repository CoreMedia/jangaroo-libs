package flashx.textLayout.elements {


/**
 * A read only class that describes a range of contiguous text. Such a range occurs when you select a section of text. The range consists of the anchor point of the selection, <code>anchorPosition</code>, and the point that is to be modified by actions, <code>activePosition</code>. As block selections are modified and extended <code>anchorPosition</code> remains fixed and <code>activePosition</code> is modified. The anchor position may be placed in the text before or after the active position.
 * @see TextFlow
 * @see flashx.textLayout.edit.SelectionState
 *
 */
public class TextRange {
  /**
   * End of the selection, as an absolute position in the TextFlow.
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
   * Start of the selection, as an absolute position in the TextFlow.
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
   * Active position of the selection, as an absolute position in the TextFlow.
   */
  public function get activePosition():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set activePosition(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Anchor position of the selection, as an absolute position in the TextFlow.
   */
  public function get anchorPosition():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set anchorPosition(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the TextFlow associated with the selection.
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
   * Constructor - creates a new TextRange instance. A TextRange can be (-1,-1), indicating no range, or a pair of values from 0 to <code>TextFlow.textLength</code>.
   * @param root the TextFlow associated with the selection.
   * @param anchorIndex the index position of the anchor in the selection. The first position in the text is position 0.
   * @param activeIndex the index position of the active location in the selection. The first position in the text is position 0.
   *
   * @see FlowElement#textLength
   *
   */
  public function TextRange(root:TextFlow, anchorIndex:int, activeIndex:int) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Update the range with new anchor or active position values.
   * @param newAnchorPosition the anchor index of the selection.
   * @param newActivePosition the active index of the selection.
   *
   * @return true if selection is changed.
   *
   */
  public function updateRange(newAnchorPosition:int, newActivePosition:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
