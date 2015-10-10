package ext.grid {
import ext.config.cellselectionmodel;
import ext.data.Record;

/**
 * Fires before a cell is selected, return false to cancel the selection.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:SelectionModel</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>
 The selected row index
 *       </li>

 *       <li>
 *           <code>colIndex:Number</code>
 The selected cell index
 *       </li>

 * </ul>
 */
[Event(name="beforecellselect")]

/**
 * Fires when a cell is selected.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:SelectionModel</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>
 The selected row index
 *       </li>

 *       <li>
 *           <code>colIndex:Number</code>
 The selected cell index
 *       </li>

 * </ul>
 */
[Event(name="cellselect")]

/**
 * Fires when the active selection changes.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:SelectionModel</code>

 *       </li>

 *       <li>
 *           <code>selection:Object</code>
 null for no selection or an object with two properties <div class="mdetail-params"><ul><li><b>cell</b> : see <a href="output/Ext.grid.CellSelectionModel.html#Ext.grid.CellSelectionModel-getSelectedCell">getSelectedCell</a></li><li><b>record</b> : Ext.data.record<p class="sub-desc">The <a href="Ext.data.Record.html">Record</a> which provides the data for the row containing the selection</p></li></ul></div>
 *       </li>

 * </ul>
 */
[Event(name="selectionchange")]


/**
 * This class provides the basic implementation for <i>single</i> <b>cell</b> selection in a grid. The object stored as the selection contains the following properties: <div class="mdetail-params"><ul><li><b>cell</b> : see <a href="output/Ext.grid.CellSelectionModel.html#Ext.grid.CellSelectionModel-getSelectedCell">getSelectedCell</a></li><li><b>record</b> : Ext.data.record The <a href="Ext.data.Record.html">Record</a> which provides the data for the row containing the selection</li></ul></div>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.cellselectionmodel
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.CellSelectionModel Sencha Docs Ext JS 3.4
 */
[Native]
public class CellSelectionModel extends AbstractSelectionModel {

  /**
   *
   *
   * @param config The object containing the configuration of this model.
   * @see ext.config.cellselectionmodel
   */
  public function CellSelectionModel(config:cellselectionmodel = null) {
    super();
  }

  /**
   * If anything is selected, clears all selections and fires the selectionchange event.
   *
   * @param preventNotify <tt>true</tt> to prevent the gridview from being notified about the change.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.CellSelectionModel-method-clearSelections Sencha Docs Ext JS 3.4
   */
  public native function clearSelections(preventNotify:Boolean):void;

  /**
   * Returns an array containing the row and column indexes of the currently selected cell (e.g., [0, 0]), or null if none selected. The array has elements: <div class="mdetail-params"><ul><li><b>rowIndex</b> : Number<p class="sub-desc">The index of the selected row</p></li><li><b>cellIndex</b> : Number<p class="sub-desc">The index of the selected cell. Due to possible column reordering, the cellIndex should <b>not</b> be used as an index into the Record's data. Instead, use the cellIndex to determine the <i>name</i> of the selected cell and use the field name to retrieve the data value from the record:</p><pre><code>// get name
   var fieldName = grid.getColumnModel().getDataIndex(cellIndex);
   // get data value based on name
   var data = record.get(fieldName);
   </code></pre><br/><br/></li></ul></div>
   *
   * @return An array containing the row and column indexes of the selected cell, or null if none selected.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.CellSelectionModel-method-getSelectedCell Sencha Docs Ext JS 3.4
   */
  public native function getSelectedCell():Array;

  /**
   * Returns <tt>true</tt> if there is a selection.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.CellSelectionModel-method-hasSelection Sencha Docs Ext JS 3.4
   */
  public native function hasSelection():Boolean;

  /**
   * Selects a cell. Before selecting a cell, fires the <a href="output/Ext.grid.CellSelectionModel.html#Ext.grid.CellSelectionModel-beforecellselect">beforecellselect</a> event. If this check is satisfied the cell will be selected and followed up by firing the <a href="output/Ext.grid.CellSelectionModel.html#Ext.grid.CellSelectionModel-cellselect">cellselect</a> and <a href="output/Ext.grid.CellSelectionModel.html#Ext.grid.CellSelectionModel-selectionchange">selectionchange</a> events.
   *
   * @param rowIndex The index of the row to select
   * @param colIndex The index of the column to select
   * @param preventViewNotify Specify <tt>true</tt> to prevent notifying the view (disables updating the selected appearance)
   * @param preventFocus Whether to prevent the cell at the specified rowIndex / colIndex from being focused.
   * @param r The record to select
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.CellSelectionModel-method-select Sencha Docs Ext JS 3.4
   */
  public native function select(rowIndex:Number, colIndex:Number, preventViewNotify:Boolean = false, preventFocus:Boolean = false, r:Record = null):void;

}
}
    