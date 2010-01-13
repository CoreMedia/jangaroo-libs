package ext.grid {

import ext.data.Record;

/**
 * This class provides the basic implementation for <i>single</i> <b>cell</b> selection in a grid.
 * The object stored as the selection contains the following properties:
 * <div class="mdetail-params"><ul>
 * <li><b>cell</b> : see <b class='link' title='#getSelectedCell'>getSelectedCell</b> 
 * <li><b>record</b> : Ext.data.record The <b class='link' title='ext.data.Record'>Record</b>
 * which provides the data for the row containing the selection</li>
 * </ul></div>
*/
public class CellSelectionModel extends AbstractSelectionModel {
/**
 * @constructor
 * @param config The object containing the configuration of this model.
 */
public function CellSelectionModel(config : Object) {
  super();
  config++;
}
    public native function initEvents() : void;

	protected native function beforeEdit(e);

	protected native function onRowUpdated(v, index, r);

	protected native function onViewChange();

	/**
     * Returns an array containing the row and column indexes of the currently selected cell
     * (e.g., [0, 0]), or null if none selected. The array has elements:
     * <div class="mdetail-params"><ul>
     * <li><b>rowIndex</b> : Number<p class="sub-desc">The index of the selected row</p></li>
     * <li><b>cellIndex</b> : Number<p class="sub-desc">The index of the selected cell. 
     * Due to possible column reordering, the cellIndex should <b>not</b> be used as an
     * index into the Record's data. Instead, use the cellIndex to determine the <i>name</i>
     * of the selected cell and use the field name to retrieve the data value from the record:<pre><code>
&#47;/ get name
var fieldName = grid.getColumnModel().getDataIndex(cellIndex);
&#47;/ get data value based on name
var data = record.get(fieldName);
     * </code></pre></p></li>
     * </ul></div>
     * @return An array containing the row and column indexes of the selected cell, or null if none selected.
	 */
    public native function getSelectedCell() : Array;
    /**
     * If anything is selected, clears all selections and fires the selectionchange event.
     * @param preventNotify <code>true</code> to prevent the gridview from
     * being notified about the change.
     */
    public native function clearSelections(preventNotify : Boolean) : void;
    /**
     * Returns <code>true</code> if there is a selection.
     * @return 
     */
    public native function hasSelection() : Boolean;

    /**
     * Selects a cell.  Before selecting a cell, fires the
     * <b class='link' title='#beforecellselect'>beforecellselect</b> event.  If this check is satisfied the cell
     * will be selected and followed up by  firing the <b class='link' title='#cellselect'>cellselect</b> and
     * <b class='link' title='#selectionchange'>selectionchange</b> events.
     * @param rowIndex The index of the row to select
     * @param colIndex The index of the column to select
     * @param preventViewNotify Specify <code>true</code> to
     * prevent notifying the view (disables updating the selected appearance)
     * @param preventFocus Whether to prevent the cell at
     * the specified rowIndex / colIndex from being focused.
     * @param r The record to select
     */
    public native function select(rowIndex : Number, colIndex : Number, preventViewNotify : Boolean = undefined, preventFocus : Boolean = undefined, r : Record = undefined) : void;
    protected native function isSelectable(rowIndex, colIndex, cm) : void;
    
    protected native function handleKeyDown(e);
    protected native function acceptsNav(row, col, cm);

    protected native function onEditorKey(field, e);
}
}
