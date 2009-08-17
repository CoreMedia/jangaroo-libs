package ext.grid {
import ext.Editor;
import ext.util.Observable;

/**
 * <p>After the data has been read into the client side cache (<b class='link' title='ext.data.Store'>Store</b>),
 * the ColumnModel is used to configure how and what parts of that data will be displayed in the
 * vertical slices (columns) of the grid. The Ext.grid.ColumnModel Class is the default implementation
 * of a ColumnModel used by implentations of <b class='link' title='Ext.grid.GridPanel'>GridPanel</b>.</p>
 * <p>Data is mapped into the store's records and then indexed into the ColumnModel using the
 * <tt><b class='link' title='Ext.grid.Column#dataIndex'>dataIndex</b></tt>:</p>
 * <pre><code>
{data source} == mapping ==> {data store} == <b><tt><b class='link' title='Ext.grid.Column#dataIndex'>dataIndex}</tt></b> ==> {ColumnModel</b>
 * </code></pre>
 * <p>Each <b class='link' title='Ext.grid.Column'>Column</b> in the grid's ColumnModel is configured with a
 * <tt><b class='link' title='Ext.grid.Column#dataIndex'>dataIndex</b></tt> to specify how the data within
 * each record in the store is indexed into the ColumnModel.</p>
 * <p>There are two ways to initialize the ColumnModel class:</p>
 * <p><u>Initialization Method 1: an Array</u></p>
<pre><code>
 var colModel = new Ext.grid.ColumnModel([
    { header: "Ticker", width: 60, sortable: true},
    { header: "Company Name", width: 150, sortable: true, id: 'company'},
    { header: "Market Cap.", width: 100, sortable: true},
    { header: "$ Sales", width: 100, sortable: true, renderer: money},
    { header: "Employees", width: 100, sortable: true, resizable: false}
 ]);
 </code></pre>
 * <p>The ColumnModel may be initialized with an Array of <b class='link'>Ext.grid.Column</b> column configuration
 * objects to define the initial layout / display of the columns in the Grid. The order of each
 * <b class='link'>Ext.grid.Column</b> column configuration object within the specified Array defines the initial
 * order of the column display.  A Column's display may be initially hidden using the
 * <tt><b class='link' title='Ext.grid.Column#hidden'>hidden</b></tt></b> config property (and then shown using the column
 * header menu).  Field's that are not included in the ColumnModel will not be displayable at all.</p>
 * <p>How each column in the grid correlates (maps) to the <b class='link'>ext.data.Record</b> field in the
 * <b class='link' title='ext.data.Store'>Store</b> the column draws its data from is configured through the
 * <b><tt><b class='link' title='Ext.grid.Column#dataIndex'>dataIndex</b></tt></b>.  If the
 * <b><tt><b class='link' title='Ext.grid.Column#dataIndex'>dataIndex</b></tt></b> is not explicitly defined (as shown in the
 * example above) it will use the column configuration's index in the Array as the index.</p>
 * <p>See <b><tt><b class='link'>Ext.grid.Column</b></tt></b> for additional configuration options for each column.</p>
 * <p><u>Initialization Method 2: an Object</u></p>
 * <p>In order to use configuration options from <tt>Ext.grid.ColumnModel</tt>, an Object may be used to
 * initialize the ColumnModel.  The column configuration Array will be specified in the <tt><b class='link'>#columns</b></tt>
 * config property. The <tt><b class='link'>#defaults</b></tt> config property can be used to apply defaults
 * for all columns, e.g.:</p><pre><code>
 var colModel = new Ext.grid.ColumnModel({
    columns: [
        { header: "Ticker", width: 60, menuDisabled: false},
        { header: "Company Name", width: 150, id: 'company'},
        { header: "Market Cap."},
        { header: "$ Sales", renderer: money},
        { header: "Employees", resizable: false}
    ],
    defaults: {
        sortable: true,
        menuDisabled: true,
        width: 100
    },
    listeners: {
        <b class='link'>#hiddenchange</b>: function(cm, colIndex, hidden) {
            saveConfig(colIndex, hidden);
        }
    }
});
 </code></pre>
 * <p>In both examples above, the ability to apply a CSS class to all cells in a column (including the
 * header) is demonstrated through the use of the <b><tt><b class='link' title='Ext.grid.Column#id'>id</b></tt></b> config
 * option. This column could be styled by including the following css:</p><pre><code>
 //add this css *after* the core css is loaded
.x-grid3-td-company {
    color: red; // entire column will have red font
}
// modify the header row only, adding an icon to the column header
.x-grid3-hd-company {
    background: transparent
        url(../../resources/images/icons/silk/building.png)
        no-repeat 3px 3px ! important;
        padding-left:20px;
}
 </code></pre>
 * Note that the "Company Name" column could be specified as the
 * <b><tt><b class='link'>Ext.grid.GridPanel</b>.<b class='link' title='Ext.grid.GridPanel#autoExpandColumn'>autoExpandColumn</b></tt></b>.
*/
public class ColumnModel extends Observable {
/**
 * @constructor
 * @param config Specify either an Array of <b class='link'>Ext.grid.Column</b> configuration objects or specify
 * a configuration Object (see introductory section discussion utilizing Initialization Method 2 above).
 */
public function ColumnModel(config : *) {
  super();
  config++;
}
    /**
     * An Array of <b class='link' title='Ext.grid.Column Column'>definition</b> objects representing the configuration
     * of this ColumnModel.  See <b class='link'>Ext.grid.Column</b> for the configuration properties that may
     * be specified.
     * @property config
     */
  public var config : Array;
    /**
     * @cfg {Number} defaultWidth (optional) The width of columns which have no <tt><b class='link'>#width</b></tt>
     * specified (defaults to <tt>100</tt>).  This property shall preferably be configured through the
     * <tt><b class='link'>#defaults</b></tt> config property.
     */
    public var defaultWidth : Number;
    /**
     * @cfg {Boolean} defaultSortable (optional) Default sortable of columns which have no
     * sortable specified (defaults to <tt>false</tt>).  This property shall preferably be configured
     * through the <tt><b class='link'>#defaults</b></tt> config property.
     */
    public var defaultSortable : Boolean;
    /**
     * @cfg {Array} columns An Array of object literals.  The config options defined by
     * <b class='link'>Ext.grid.Column</b> are the options which may appear in the object literal for each
     * individual column definition.
     */
    /**
     * @cfg {Object} defaults Object literal which will be used to apply <b class='link'>Ext.grid.Column</b>
     * configuration options to all <tt><b class='link'>#columns</b></tt>.  Configuration options specified with
     * individual <b class='link' title='Ext.grid.Column'>column</b> configs will supersede these <tt><b><b class='link'>#defaults</b></b></tt>.
     */
    /**
     * Returns the id of the column at the specified index.
     * @param index The column index
     * @return the id
     */
    public native function getColumnId(index : Number) : String;
    public native function getColumnAt(index : Number) : void;
    /**
     * <p>Reconfigures this column model according to the passed Array of column definition objects.
     * For a description of the individual properties of a column definition object, see the
     * <a href="#Ext.grid.ColumnModel-configs">Config Options</a>.</p>
     * <p>Causes the <b class='link'>#configchange</b> event to be fired. A <b class='link' title='Ext.grid.GridPanel'>GridPanel</b>
     * using this ColumnModel will listen for this event and refresh its UI automatically.</p>
     * @param config Array of Column definition objects.
     * @param initial Specify <tt>true</tt> to bypass cleanup which deletes the <tt>totalWidth</tt>
     * and destroys existing editors.
     */
    public native function setConfig(config : Array, initial : Boolean) : void;
    /**
     * Returns the column for a specified id.
     * @param id The column id
     * @return the column
     */
    public native function getColumnById(id : String) : Object;
    /**
     * Returns the index for a specified column id.
     * @param id The column id
     * @return the index, or -1 if not found
     */
    public native function getIndexById(id : String) : Number;
    /**
     * Moves a column from one position to another.
     * @param oldIndex The index of the column to move.
     * @param newIndex The position at which to reinsert the column.
     */
    public native function moveColumn(oldIndex : Number, newIndex : Number) : void;
    /**
     * Returns the number of columns.
     * @param visibleOnly Optional. Pass as true to only include visible columns.
     * @return 
     */
    public native function getColumnCount(visibleOnly : Boolean) : Number;
    /**
     * Returns the column configs that return true by the passed function that is called
     * with (columnConfig, index)
<pre><code>
// returns an array of column config objects for all hidden columns
var columns = grid.getColumnModel().getColumnsBy(function(c){
  return c.hidden;
});
</code></pre>
     * @param fn
     * @param scope
     * @return result
     */
    public native function getColumnsBy(fn : Function, scope : Object = undefined) : Array;
    /**
     * Returns true if the specified column is sortable.
     * @param col The column index
     * @return 
     */
    public native function isSortable(col : Number) : Boolean;
    /**
     * Returns true if the specified column menu is disabled.
     * @param col The column index
     * @return 
     */
    public native function isMenuDisabled(col : Number) : Boolean;
    /**
     * Returns the rendering (formatting) function defined for the column.
     * @param col The column index.
     * @return The function used to render the cell. See <b class='link'>#setRenderer</b>.
     */
    public native function getRenderer(col : Number) : Function;
    /**
     * Sets the rendering (formatting) function for a column.  See <b class='link'>Ext.util.Format</b> for some
     * default formatting functions.
     * @param col The column index
     * @param fn The function to use to process the cell's raw data
     * to return HTML markup for the grid view. The render function is called with
     * the following parameters:<ul>
     * <li><b>value</b> : Object<p class="sub-desc">The data value for the cell.</p></li>
     * <li><b>metadata</b> : Object<p class="sub-desc">An object in which you may set the following attributes:<ul>
     * <li><b>css</b> : String<p class="sub-desc">A CSS class name to add to the cell's TD element.</p></li>
     * <li><b>attr</b> : String<p class="sub-desc">An HTML attribute definition string to apply to the data container element <i>within</i> the table cell
     * (e.g. 'style="color:red;"').</p></li></ul></p></li>
     * <li><b>record</b> : Ext.data.record<p class="sub-desc">The <b class='link'>ext.data.Record</b> from which the data was extracted.</p></li>
     * <li><b>rowIndex</b> : Number<p class="sub-desc">Row index</p></li>
     * <li><b>colIndex</b> : Number<p class="sub-desc">Column index</p></li>
     * <li><b>store</b> : ext.data.Store<p class="sub-desc">The <b class='link'>ext.data.Store</b> object from which the Record was extracted.</p></li></ul>
     */
    public native function setRenderer(col : Number, fn : Function) : void;
    /**
     * Returns the width for the specified column.
     * @param col The column index
     * @return 
     */
    public native function getColumnWidth(col : Number) : Number;
    /**
     * Sets the width for a column.
     * @param col The column index
     * @param width The new width
     * @param suppressEvent True to suppress firing the <code><b class='link'>#widthchange</b></code>
     * event. Defaults to false.
     */
    public native function setColumnWidth(col : Number, width : Number, suppressEvent : Boolean) : void;
    /**
     * Returns the total width of all columns.
     * @param includeHidden True to include hidden column widths
     * @return 
     */
    public native function getTotalWidth(includeHidden : Boolean) : Number;
    /**
     * Returns the header for the specified column.
     * @param col The column index
     * @return 
     */
    public native function getColumnHeader(col : Number) : String;
    /**
     * Sets the header for a column.
     * @param col The column index
     * @param header The new header
     */
    public native function setColumnHeader(col : Number, header : String) : void;
    /**
     * Returns the tooltip for the specified column.
     * @param col The column index
     * @return 
     */
    public native function getColumnTooltip(col : Number) : String;
    /**
     * Sets the tooltip for a column.
     * @param col The column index
     * @param tooltip The new tooltip
     */
    public native function setColumnTooltip(col : Number, tooltip : String) : void;
    /**
     * Returns the dataIndex for the specified column.
<pre><code>
// Get field name for the column
var fieldName = grid.getColumnModel().getDataIndex(columnIndex);
</code></pre>
     * @param col The column index
     * @return The column's dataIndex
     */
    public native function getDataIndex(col : Number) : String;
    /**
     * Sets the dataIndex for a column.
     * @param col The column index
     * @param dataIndex The new dataIndex
     */
    public native function setDataIndex(col : Number, dataIndex : String) : void;
    /**
     * Finds the index of the first matching column for the given dataIndex.
     * @param col The dataIndex to find
     * @return The column index, or -1 if no match was found
     */
    public native function findColumnIndex(col : String) : Number;
    /**
     * Returns true if the cell is editable.
<pre><code>
var store = new ext.data.Store({...});
var colModel = new Ext.grid.ColumnModel({
  columns: [...],
  isCellEditable: function(col, row) {
    var record = store.getAt(row);
    if (record.get('readonly')) { // replace with your condition
      return false;
    }
    return Ext.grid.ColumnModel.prototype.isCellEditable.call(this, col, row);
  }
});
var grid = new Ext.grid.GridPanel({
  store: store,
  colModel: colModel,
  ...
});
</code></pre>
     * @param colIndex The column index
     * @param rowIndex The row index
     * @return 
     */
    public native function isCellEditable(colIndex : Number, rowIndex : Number) : Boolean;
    /**
     * Returns the editor defined for the cell/column.
     * @param colIndex The column index
     * @param rowIndex The row index
     * @return The <b class='link' title='ext.Editor'>Editor</b> that was created to wrap
     * the <b class='link' title='ext.form.Field'>Field</b> used to edit the cell.
     */
    public native function getCellEditor(colIndex : Number, rowIndex : Number) : Editor;
    /**
     * Sets if a column is editable.
     * @param col The column index
     * @param editable True if the column is editable
     */
    public native function setEditable(col : Number, editable : Boolean) : void;
    /**
     * Returns true if the column is hidden.
     * @param colIndex The column index
     * @return 
     */
    public native function isHidden(colIndex : Number) : Boolean;
    /**
     * Returns true if the column width cannot be changed
     */
    public native function isFixed(colIndex) : void;
    /**
     * Returns true if the column can be resized
     * @return 
     */
    public native function isResizable(colIndex) : Boolean;
    /**
     * Sets if a column is hidden.
<pre><code>
myGrid.getColumnModel().setHidden(0, true); // hide column 0 (0 = the first column).
</code></pre>
     * @param colIndex The column index
     * @param hidden True if the column is hidden
     */
    public native function setHidden(colIndex : Number, hidden : Boolean) : void;
    /**
     * Sets the editor for a column and destroys the prior editor.
     * @param col The column index
     * @param editor The editor object
     */
    public native function setEditor(col : Number, editor : Object) : void;
    /**
     * Destroys this column model by purging any event listeners, and removing any editors.
     */
    public native function destroy() : void;
protected native function defaultRenderer (value) : void;
}}
