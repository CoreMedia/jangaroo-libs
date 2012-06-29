package ext.grid {
import ext.config.editorgrid;

/**
 * Fires after a cell is edited. The edit event object has the following properties <br/><ul style="padding:5px;padding-left:16px;"><li>grid - This grid</li><li>record - The record being edited</li><li>field - The field name being edited</li><li>value - The value being set</li><li>originalValue - The original value for the field, before the edit.</li><li>row - The grid row index</li><li>column - The grid column index</li></ul><pre><code>grid.on('afteredit', afterEdit, this );

 function afterEdit(e) {
 // execute an XHR to send/commit data to the server, in callback do (if successful):
 e.record.commit();
 };
 </code></pre>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:Object</code>
 An edit event (see above for description)
 *       </li>

 * </ul>
 */
[Event(name="afteredit")]

/**
 * Fires before cell editing is triggered. The edit event object has the following properties <br/><ul style="padding:5px;padding-left:16px;"><li>grid - This grid</li><li>record - The record being edited</li><li>field - The field name being edited</li><li>value - The value for the field being edited.</li><li>row - The grid row index</li><li>column - The grid column index</li><li>cancel - Set this to true to cancel the edit or return false from your handler.</li></ul>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:Object</code>
 An edit event (see above for description)
 *       </li>

 * </ul>
 */
[Event(name="beforeedit")]

/**
 * Fires after a cell is edited, but before the value is set in the record. Return false to cancel the change. The edit event object has the following properties <br/><ul style="padding:5px;padding-left:16px;"><li>grid - This grid</li><li>record - The record being edited</li><li>field - The field name being edited</li><li>value - The value being set</li><li>originalValue - The original value for the field, before the edit.</li><li>row - The grid row index</li><li>column - The grid column index</li><li>cancel - Set this to true to cancel the edit or return false from your handler.</li></ul>Usage example showing how to remove the red triangle (dirty record indicator) from some records (not all). By observing the grid's validateedit event, it can be cancelled if the edit occurs on a targeted row (for example) and then setting the field's new value in the Record directly: <pre><code>grid.on('validateedit', function(e) {
 var myTargetRow = 6;

 if (e.row == myTargetRow) {
 e.cancel = true;
 e.record.data[e.field] = e.value;
 }
 });
 </code></pre>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:Object</code>
 An edit event (see above for description)
 *       </li>

 * </ul>
 */
[Event(name="validateedit")]


/**
 * This class extends the <a href="Ext.grid.GridPanel.html">GridPanel Class</a> to provide cell editing on selected <a href="Ext.grid.Column.html">columns</a>. The editable columns are specified by providing an <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-editor">editor</a> in the <a href="Ext.grid.Column.html">column configuration</a>.
 <p>Editability of columns may be controlled programmatically by inserting an implementation of <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-isCellEditable">isCellEditable</a> into the <a href="Ext.grid.ColumnModel.html">ColumnModel</a>.</p><p>Editing is performed on the value of the <i>field</i> specified by the column's <tt><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-dataIndex">dataIndex</a></tt> in the backing <a href="Ext.data.Store.html">Store</a> (so if you are using a <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-setRenderer">renderer</a> in order to display transformed data, this must be accounted for).</p><p>If a value-to-description mapping is used to render a column, then a <a href="output/Ext.form.Field.html#Ext.form.Field-ComboBox">ComboBox</a> which uses the same <a href="output/Ext.form.Field.html#Ext.form.Field-valueField">value</a>-to-<a href="output/Ext.form.Field.html#Ext.form.Field-displayFieldField">description</a> mapping would be an appropriate editor.</p>If there is a more complex mismatch between the visible data in the grid, and the editable data in the <a href="Edt.data.Store.html">Store</a>, then code to transform the data both before and after editing can be injected using the <a href="output/Ext.grid.EditorGridPanel.html#Ext.grid.EditorGridPanel-beforeedit">beforeedit</a> and <a href="output/Ext.grid.EditorGridPanel.html#Ext.grid.EditorGridPanel-afteredit">afteredit</a> events.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'editorgrid' / the EXML element &lt;editorgrid>.</p>
 * @see ext.config.editorgrid
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.EditorGridPanel Sencha Docs Ext JS 3.4
 */
[Native]
public class EditorGridPanel extends GridPanel {

  /**
   *
   *
   * @param config The config object
   * @see ext.config.editorgrid
   */
  public function EditorGridPanel(config:editorgrid) {
    super(null);
  }

  /**
   True to automatically HTML encode and decode values pre and post edit (defaults to false)
   */
  public native function get autoEncode():Boolean;

  /**
   The number of clicks on a cell required to display the cell's editor (defaults to 2).
   <p>Setting this option to 'auto' means that mousedown <i>on the selected cell</i> starts editing that cell.</p>
   */
  public native function get clicksToEdit():Number;

  /**
   True to force validation even if the value is unmodified (defaults to false)
   */
  public native function get forceValidation():Boolean;

  /**
   Any subclass of AbstractSelectionModel that will provide the selection model for the grid (defaults to <a href="Ext.grid.CellSelectionModel.html">Ext.grid.CellSelectionModel</a> if not specified).
   */
  override public native function get selModel():Object;

  /**
   * Starts editing the specified for the specified row/column
   *
   * @param rowIndex
   * @param colIndex
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.EditorGridPanel-method-startEditing Sencha Docs Ext JS 3.4
   */
  public native function startEditing(rowIndex:Number, colIndex:Number):void;

  /**
   * Stops any active editing
   *
   * @param cancel True to cancel any changes
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.EditorGridPanel-method-stopEditing Sencha Docs Ext JS 3.4
   */
  public native function stopEditing(cancel:Boolean = false):void;

}
}
    