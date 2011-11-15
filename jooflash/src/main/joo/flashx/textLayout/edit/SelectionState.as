package flashx.textLayout.edit {
import flashx.textLayout.elements.TextFlow;
import flashx.textLayout.elements.TextRange;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The SelectionState class represents a selection in a text flow.
 * <p>A selection range has an anchor point, representing the point at which the selection of text began, and an active point, representing the point to which the selection is extended. The active point can be before or after the anchor point in the text. If a selection is modified (for example, by a user shift-clicking with the mouse), the active point changes while the anchor point always remains in the same position.</p>
 * @see ISelectionManager#getSelectionState()
 * @see flashx.textLayout.elements.TextFlow
 * @see flashx.textLayout.elements.TextRange
 *
 */
public class SelectionState extends TextRange {
  /**
   * The format attributes applied to inserted text.
   * <p><b>Note:</b> The <code>pointFormat</code> object does not include inherited styles. To get all the applicable style definitions, use the <code>getCommonCharacterFormat()</code> method of the ISelectionManager class.</p>
   * @see ISelectionManager#getCommonCharacterFormat()
   *
   */
  public function get pointFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set pointFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a SelectionState object.
   * <p><b>Note:</b> Do not construct a SelectionState object in order to create a selection. To create a selection in a text flow, call the <code>setSelection()</code> method of the relevant ISelectionManager instance (which is the SelectionManager or EditManager object assigned to the <code>interactionManager</code> property of the text flow).</p>
   * @param root The TextFlow associated with the selection.
   * @param anchorPosition The anchor index of the selection.
   * @param activePosition The active index of the selection.
   * @param format The TextLayoutFormat to be applied on next character typed when a point selection
   *
   * @see ISelectionManager#getSelectionState()
   * @see SelectionManager
   * @see EditManager
   *
   */
  public function SelectionState(root:TextFlow, anchorPosition:int, activePosition:int, format:ITextLayoutFormat = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Updates the selection range with new anchor or active position values.
   * <p>The <code>pointFormat</code> styles are cleared if the selection is changed.</p>
   * @param newAnchorPosition the anchor index of the selection.
   * @param newActivePosition the active index of the selection.
   *
   * @return true if selection is changed
   *
   */
  override public function updateRange(newAnchorPosition:int, newActivePosition:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
