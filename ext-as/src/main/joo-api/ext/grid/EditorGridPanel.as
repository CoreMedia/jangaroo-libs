package ext.grid {
/**
 * <p>This class extends the <b class='link' title='GridPanel'>Class</b> to provide cell editing
 * on selected <b class='link' title='Ext.grid.Column'>columns</b>. The editable columns are specified by providing
 * an <b class='link' title='Ext.grid.ColumnModel#editor'>editor</b> in the <b class='link' title='Ext.grid.Column column'>configuration</b>.</p>
 * <p>Editability of columns may be controlled programatically by inserting an implementation
 * of <b class='link' title='Ext.grid.ColumnModel#isCellEditable'>isCellEditable</b> into the
 * <b class='link' title='Ext.grid.ColumnModel'>ColumnModel</b>.</p>
 * <p>Editing is performed on the value of the <i>field</i> specified by the column's
 * <code><b class='link' title='Ext.grid.ColumnModel#dataIndex'>dataIndex</b></code> in the backing <b class='link' title='ext.data.Store'>Store</b>
 * (so if you are using a <b class='link' title='Ext.grid.ColumnModel#setRenderer'>renderer</b> in order to display
 * transformed data, this must be accounted for).</p>
 * <p>If a value-to-description mapping is used to render a column, then a <b class='link' title='ext.form.Field#ComboBox'>ComboBox</b>
 * which uses the same <b class='link' title='ext.form.Field#valueField'>value</b>-to-<b class='link' title='ext.form.Field#displayFieldField'>description</b>
 * mapping would be an appropriate editor.</p>
 * If there is a more complex mismatch between the visible data in the grid, and the editable data in
 * the <b class='link' title='Edt.data.Store'>Store</b>, then code to transform the data both before and after editing can be
 * injected using the <b class='link' title='#beforeedit'>beforeedit</b> and <b class='link' title='#afteredit'>afteredit</b> events.
*/
public class EditorGridPanel extends GridPanel {
/**
 * @constructor
 * @param config The config object
 * @xtype editorgrid
 */
public function EditorGridPanel(config:Object = null) {
  super(config);
}
    /**
     * @cfg {Number} clicksToEdit
     * <p>The number of clicks on a cell required to display the cell's editor (defaults to 2).</p>
     * <p>Setting this option to 'auto' means that mousedown <i>on the selected cell</i> starts
     * editing that cell.</p>
     */
    public var clicksToEdit : Number;
    /**
    * @cfg {Boolean} forceValidation
    * True to force validation even if the value is unmodified (defaults to false)
    */
    public var forceValidation : Boolean;
    protected var isEditor ;
    protected var detectEdit;
	/**
	 * @cfg {Boolean} autoEncode
	 * True to automatically HTML encode and decode values pre and post edit (defaults to false)
	 */
	public var autoEncode  : Boolean;
	/**
	 * @cfg {Boolean} trackMouseOver @hide
	 */
    //protected var trackMouseOver : Boolean;
    override protected native function initComponent() : void;
            /**
             * @cfg {Object} selModel Any subclass of AbstractSelectionModel that will provide the selection model for
             * the grid (defaults to <b class='link'>Ext.grid.CellSelectionModel</b> if not specified).
             */
    override protected native function initEvents() : void;
    protected native function onCellDblClick(g, row, col) : void;
    protected native function onAutoEditClick(e, t) : void;
    protected native function onEditComplete(ed, value, startValue) : void;
    /**
     * Starts editing the specified for the specified row/column
     * @param rowIndex
     * @param colIndex
     */
    public native function startEditing(rowIndex : Number, colIndex : Number) : void;
                    /**
                     * The currently active editor or null
                     */
    protected native function preEditValue(r, field) : void;
	protected native function postEditValue(value, originalValue, r, field) : void;
    /**
     * Stops any active editing
     * @param cancel True to cancel any changes
     */
    override public native function stopEditing(cancel : Boolean = undefined) : void;
}}
