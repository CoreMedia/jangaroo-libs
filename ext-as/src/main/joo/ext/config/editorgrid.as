package ext.config {
import ext.grid.AbstractSelectionModel;

/**
 * This class extends the <a href="Ext.grid.GridPanel.html">GridPanel Class</a> to provide cell editing on selected <a href="Ext.grid.Column.html">columns</a>. The editable columns are specified by providing an <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-editor">editor</a> in the <a href="Ext.grid.Column.html">column configuration</a>.
 <p>Editability of columns may be controlled programmatically by inserting an implementation of <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-isCellEditable">isCellEditable</a> into the <a href="Ext.grid.ColumnModel.html">ColumnModel</a>.</p><p>Editing is performed on the value of the <i>field</i> specified by the column's <tt><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-dataIndex">dataIndex</a></tt> in the backing <a href="Ext.data.Store.html">Store</a> (so if you are using a <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-setRenderer">renderer</a> in order to display transformed data, this must be accounted for).</p><p>If a value-to-description mapping is used to render a column, then a <a href="output/Ext.form.Field.html#Ext.form.Field-ComboBox">ComboBox</a> which uses the same <a href="output/Ext.form.Field.html#Ext.form.Field-valueField">value</a>-to-<a href="output/Ext.form.Field.html#Ext.form.Field-displayFieldField">description</a> mapping would be an appropriate editor.</p>If there is a more complex mismatch between the visible data in the grid, and the editable data in the <a href="Edt.data.Store.html">Store</a>, then code to transform the data both before and after editing can be injected using the <a href="output/Ext.grid.EditorGridPanel.html#Ext.grid.EditorGridPanel-beforeedit">beforeedit</a> and <a href="output/Ext.grid.EditorGridPanel.html#Ext.grid.EditorGridPanel-afteredit">afteredit</a> events.
 *
 * <p>This class represents the xtype 'editorgrid' and serves as a
 * typed config object for constructor of class EditorGridPanel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.grid.EditorGridPanel
 */
[ExtConfig(target="ext.grid.EditorGridPanel", xtype="editorgrid")]
public class editorgrid extends grid {

  public function editorgrid(config:Object = null) {

    super(config);
  }


  /**
   True to automatically HTML encode and decode values pre and post edit (defaults to false)
   */
  public native function get autoEncode():Boolean;

  /**
   * @private
   */
  public native function set autoEncode(value:Boolean):void;

  /**
   The number of clicks on a cell required to display the cell's editor (defaults to 2).
   <p>Setting this option to 'auto' means that mousedown <i>on the selected cell</i> starts editing that cell.</p>
   */
  public native function get clicksToEdit():Number;

  /**
   * @private
   */
  public native function set clicksToEdit(value:Number):void;

  /**
   True to force validation even if the value is unmodified (defaults to false)
   */
  public native function get forceValidation():Boolean;

  /**
   * @private
   */
  public native function set forceValidation(value:Boolean):void;

  /**
   Any subclass of AbstractSelectionModel that will provide the selection model for the grid (defaults to <a href="Ext.grid.CellSelectionModel.html">Ext.grid.CellSelectionModel</a> if not specified).
   */
  override public native function get selModel():AbstractSelectionModel;

  /**
   * @private
   */
  override public native function set selModel(value:AbstractSelectionModel):void;


}
}
    