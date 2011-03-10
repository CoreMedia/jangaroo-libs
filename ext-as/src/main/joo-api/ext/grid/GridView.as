package ext.grid {
import ext.Element;
import ext.util.Observable;

import js.HTMLElement;

/**
 * <p>This class encapsulates the user interface of an <b class='link'>Ext.grid.GridPanel</b>.
 * Methods of this class may be used to access user interface elements to enable
 * special display effects. Do not change the DOM structure of the user interface.</p>
 * <p>This class does not provide ways to manipulate the underlying data. The data
 * model of a Grid is held in an <b class='link'>ext.data.Store</b>.</p>
*/
public class GridView extends Observable {
/**
 * @constructor
 * @param config
 */
public native function GridView(config : Object);
    /**
     * Override this function to apply custom CSS classes to rows during rendering.  You can also supply custom
     * parameters to the row template for the current row to customize how it is rendered using the <b>rowParams</b>
     * parameter.  This function should return the CSS class name (or empty string '' for none) that will be added
     * to the row's wrapping div.  To apply multiple class names, simply return them space-delimited within the string
     * (e.g., 'my-class another-class'). Example usage:
    <pre><code>
viewConfig: {
    forceFit: true,
    showPreview: true, // custom property
    enableRowBody: true, // required to create a second, full-width row to show expanded Record data
    getRowClass: function(record, rowIndex, rp, ds){ // rp = rowParams
        if(this.showPreview){
            rp.body = '&lt;p>'+record.data.excerpt+'&lt;/p>';
            return 'x-grid3-row-expanded';
        }
        return 'x-grid3-row-collapsed';
    }
},     
    </code></pre>
     * @param record The <b class='link'>ext.data.Record</b> corresponding to the current row.
     * @param index The row index.
     * @param rowParams A config object that is passed to the row template during rendering that allows
     * customization of various aspects of a grid row.
     * <p>If <b class='link' title='#enableRowBody'>enableRowBody</b> is configured <b><code></code>true</b>, then the following properties may be set
     * by this function, and will be used to render a full-width expansion row below each grid row:</p>
     * <ul>
     * <li><code>body</code> : String <div class="sub-desc">An HTML fragment to be used as the expansion row's body content (defaults to '').</div></li>
     * <li><code>bodyStyle</code> : String <div class="sub-desc">A CSS style specification that will be applied to the expansion row's &lt;tr> element. (defaults to '').</div></li>
     * </ul>
     * The following property will be passed in, and may be appended to:
     * <ul>
     * <li><code>tstyle</code> : String <div class="sub-desc">A CSS style specification that willl be applied to the &lt;table> element which encapsulates
     * both the standard grid row, and any expansion row.</div></li>
     * </ul>
     * @param store The <b class='link'>ext.data.Store</b> this grid is bound to
     * @method getRowClass
     * @return a CSS class name to add to the row.
     */
    /**
     * @cfg {Boolean} enableRowBody True to add a second TR element per row that can be used to provide a row body
     * that spans beneath the data row.  Use the <b class='link' title='#getRowClass'>getRowClass</b> method's rowParams config to customize the row body.
     */
    /**
     * @cfg {String} emptyText Default text (html tags are accepted) to display in the grid body when no rows
     * are available (defaults to ''). This value will be used to update the <code><b class='link' title='#mainBody'>mainBody</b></code>:
    <pre><code>
    this.mainBody.update('&lt;div class="x-grid-empty">' + this.emptyText + '&lt;/div>');
    </code></pre>
     */
    /**
     * @cfg {Boolean} headersDisabled True to disable the grid column headers (defaults to <code>false</code>). 
     * Use the <b class='link' title='Ext.grid.ColumnModel'>ColumnModel</b> <code><b class='link' title='Ext.grid.ColumnModel#menuDisabled'>menuDisabled</b></code>
     * config to disable the <i>menu</i> for individual columns.  While this config is true the
     * following will be disabled:<div class="mdetail-params"><ul>
     * <li>clicking on header to sort</li>
     * <li>the trigger to reveal the menu.</li>
     * </ul></div>
     */
    /**
     * <p>A customized implementation of a <b class='link' title='Ext.dd.DragZone'>DragZone</b> which provides default implementations
     * of the template methods of DragZone to enable dragging of the selected rows of a GridPanel.
     * See <b class='link'>Ext.grid.GridDragZone</b> for details.</p>
     * <p>This will <b>only</b> be present:<div class="mdetail-params"><ul>
     * <li><i>if</i> the owning GridPanel was configured with <b class='link' title='Ext.grid.GridPanel#enableDragDrop'>enableDragDrop</b>: <code>true</code>.</li>
     * <li><i>after</i> the owning GridPanel has been rendered.</li>
     * </ul></div>
     * @property dragZone
     */
    /**
     * @cfg {Boolean} deferEmptyText True to defer <code><b class='link' title='#emptyText'>emptyText</b></code> being applied until the store's
     * first load (defaults to <code>true</code>).
     */
    public var deferEmptyText  : Boolean;
    /**
     * @cfg {Number} scrollOffset The amount of space to reserve for the vertical scrollbar
     * (defaults to <code>19</code> pixels).
     */
    public var scrollOffset  : Number;
    /**
     * @cfg {Boolean} autoFill
     * Defaults to <code>false</code>.  Specify <code>true</code> to have the column widths re-proportioned
     * when the grid is <b>initially rendered</b>.  The 
     * <b class='link' title='Ext.grid.Column#width initially configured'>width</b></code> of each column will be adjusted
     * to fit the grid width and prevent horizontal scrolling. If columns are later resized (manually
     * or programmatically), the other columns in the grid will <b>not</b> be resized to fit the grid width.
     * See <code><b class='link' title='#forceFit'>forceFit</b></code> also.
     */
    public var autoFill  : Boolean;
    /**
     * @cfg {Boolean} forceFit
     * Defaults to <code>false</code>.  Specify <code>true</code> to have the column widths re-proportioned
     * at <b>all times</b>.  The <b class='link' title='Ext.grid.Column#width initially configured'>width</b></code> of each
     * column will be adjusted to fit the grid width and prevent horizontal scrolling. If columns are
     * later resized (manually or programmatically), the other columns in the grid <b>will</b> be resized
     * to fit the grid width. See <code><b class='link' title='#autoFill'>autoFill</b></code> also.
     */
    public var forceFit  : Boolean;
    /**
     * @cfg {Array} sortClasses The CSS classes applied to a header when it is sorted. (defaults to <code>["sort-asc", "sort-desc"]</code>)
     */
    public var sortClasses  : Array;
    /**
     * @cfg {String} sortAscText The text displayed in the "Sort Ascending" menu item (defaults to <code>"Sort Ascending"</code>)
     */
    public var sortAscText  : String;
    /**
     * @cfg {String} sortDescText The text displayed in the "Sort Descending" menu item (defaults to <code>"Sort Descending"</code>)
     */
    public var sortDescText  : String;
    /**
     * @cfg {String} columnsText The text displayed in the "Columns" menu item (defaults to <code>"Columns"</code>)
     */
    public var columnsText  : String;
    /**
     * @cfg {String} selectedRowClass The CSS class applied to a selected row (defaults to <code>"x-grid3-row-selected"</code>). An
     * example overriding the default styling:
    <pre><code>
    .x-grid3-row-selected {background-color: yellow;}
    </code></pre>
     * Note that this only controls the row, and will not do anything for the text inside it.  To style inner
     * facets (like text) use something like:
    <pre><code>
    .x-grid3-row-selected .x-grid3-cell-inner {
        color: #FFCC00;
    }
    </code></pre>
     */
    public var selectedRowClass  : String;
    protected var borderWidth ;
    public var tdClass ;
    public var hdCls ;
    public var markDirty ;
    /**
     * @cfg {Number} cellSelectorDepth The number of levels to search for cells in event delegation (defaults to <code>4</code>)
     */
    public var cellSelectorDepth  : Number;
    /**
     * @cfg {Number} rowSelectorDepth The number of levels to search for rows in event delegation (defaults to <code>10</code>)
     */
    public var rowSelectorDepth  : Number;
    /**
     * @cfg {String} cellSelector The selector used to find cells internally (defaults to <code>'td.x-grid3-cell'</code>)
     */
    public var cellSelector  : String;
    /**
     * @cfg {String} rowSelector The selector used to find rows internally (defaults to <code>'div.x-grid3-row'</code>)
     */
    public var rowSelector  : String;
    protected var firstRowCls;
    public var lastRowCls;
    public var rowClsRe;
    protected native function initTemplates() : void;
    protected native function fly(el) : void;
    protected native function getEditorParent() : void;
    protected native function initElements() : void;
        /**
         * <i>Read-only</i>. The GridView's body Element which encapsulates all rows in the Grid.
         * This <b class='link' title='ext.Element'>Element</b> is only available after the GridPanel has been rendered.
         * @property mainBody
         */
    protected native function getRows() : void;
    protected native function findCell(el) : void;
/**
 * <p>Return the index of the grid column which contains the passed element.</p>
 * See also <b class='link' title='#findRowIndex'>findRowIndex</b>
 * @param el The target element
 * @return column index, or <b>false</b> if the target element is not within a row of this GridView.
 */
    public native function findCellIndex(el : Element, requiredCls) : *;
    protected native function getCellIndex(el) : void;
    protected native function findHeaderCell(el) : void;
    protected native function findHeaderIndex(el) : void;
/**
 * Return the HtmlElement representing the grid row which contains the passed element.
 * @param el The target element
 * @return row element, or null if the target element is not within a row of this GridView.
 */
    public native function findRow(el : Element) : Element;
/**
 * <p>Return the index of the grid row which contains the passed element.</p>
 * See also <b class='link' title='#findCellIndex'>findCellIndex</b>
 * @param el The target element
 * @return row index, or <b>false</b> if the target element is not within a row of this GridView.
 */
    public native function findRowIndex(el : Element) : *;
/**
 * Return the <code>&lt;div></code> HtmlElement which represents a Grid row for the specified index.
 * @param index The row index
 * @return The div element.
 */
    public native function getRow(index : Number) : HTMLElement;
/**
 * Returns the grid's <code>&lt;td></code> HtmlElement at the specified coordinates.
 * @param row The row index in which to find the cell.
 * @param col The column index of the cell.
 * @return The td at the specified coordinates.
 */
    public native function getCell(row : Number, col : Number) : HTMLElement;
/**
 * Return the <code>&lt;td></code> HtmlElement which represents the Grid's header cell for the specified column index.
 * @param index The column index
 * @return The td element.
 */
    public native function getHeaderCell(index : Number) : HTMLElement;
    public native function addRowClass(row, cls) : void;
    protected native function removeRowClass(row, cls) : void;
    protected native function removeRow(row) : void;
    protected native function removeRows(firstRow, lastRow) : void;
    public native function getScrollState() : Object;
    protected native function restoreScroll(state) : void;
    /**
     * Scrolls the grid to the top
     */
    public native function scrollToTop() : void;
    protected native function syncScroll() : void;
    protected native function syncHeaderScroll() : void;
    protected native function updateSortIcon(col, dir) : void;
    protected native function updateAllColumnWidths() : void;
    protected native function updateColumnWidth(col, width) : void;
    protected native function updateColumnHidden(col, hidden) : void;
    protected native function doRender(cs, rs, ds, startRow, colCount, stripe) : void;
    protected native function processRows(startRow, skipStripe) : void;
    public native function afterRender() : void;
    protected native function renderUI() : void;
    protected native function layout() : void;
    public native function onLayout(vw, vh) : void;
    public native function onColumnWidthUpdated(col, w, tw) : void;
    public native function onAllColumnWidthsUpdated(ws, tw) : void;
    public native function onColumnHiddenUpdated(col, hidden, tw) : void;
    public native function updateColumnText(col, text) : void;
    public native function afterMove(colIndex) : void;
    protected native function init(grid) : void;
    protected native function getColumnId(index) : void;
    protected native function getOffsetWidth() : void;
    protected native function renderHeaders() : void;
    protected native function getColumnTooltip(i) : void;
    protected native function beforeUpdate() : void;
    protected native function updateHeaders() : void;
    /**
     * Focuses the specified row.
     * @param row The row index
     */
    public native function focusRow(row : Number) : void;
    /**
     * Focuses the specified cell.
     * @param row The row index
     * @param col The column index
     */
    public native function focusCell(row : Number, col : Number, hscroll) : void;
    public native function resolveCell(row, col, hscroll) : void;
    public native function getResolvedXY(resolved) : void;
    public native function syncFocusEl(row, col, hscroll) : void;
    public native function ensureVisible(row, col, hscroll) : void;
    protected native function insertRows(dm, firstRow, lastRow, isUpdate) : void;
    protected native function deleteRows(dm, firstRow, lastRow) : void;
    protected native function getColumnStyle(col, isHeader) : void;
    protected native function getColumnWidth(col) : void;
    protected native function getTotalWidth() : void;
    protected native function fitColumns(preventRefresh, onlyExpand, omitColumn) : void;
    protected native function autoExpand(preventUpdate) : void;
    protected native function getColumnData() : void;
    protected native function renderRows(startRow, endRow) : void;
    protected native function renderBody() : void;
    protected native function refreshRow(record) : void;
    /**
     * Refreshs the grid UI
     * @param headersToo True to also refresh the headers
     */
    public native function refresh(headersToo : Boolean = undefined) : void;
    protected native function applyEmptyText() : void;
    protected native function updateHeaderSortState() : void;
    protected native function destroy() : void;
    protected native function onDenyColumnHide() : void;
    protected native function render() : void;
    protected native function initData(ds, cm) : void;
    protected native function onDataChange() : void;
    protected native function onClear() : void;
    protected native function onUpdate(ds, record) : void;
    protected native function onAdd(ds, records, index) : void;
    protected native function onRemove(ds, record, index, isUpdate) : void;
    protected native function onLoad() : void;
    protected native function onColWidthChange(cm, col, width) : void;
    protected native function onHeaderChange(cm, col, text) : void;
    protected native function onHiddenChange(cm, col, hidden) : void;
    protected native function onColumnMove(cm, oldIndex, newIndex) : void;
    protected native function onColConfigChange() : void;
    protected native function initUI(grid) : void;
    protected native function initEvents() : void;
    protected native function onHeaderClick(g, index) : void;
    protected native function onRowOver(e, t) : void;
    protected native function onRowOut(e, t) : void;
    protected native function handleWheel(e) : void;
    protected native function onRowSelect(row) : void;
    protected native function onRowDeselect(row) : void;
    protected native function onCellSelect(row, col) : void;
    protected native function onCellDeselect(row, col) : void;
    protected native function onColumnSplitterMoved(i, w) : void;
    protected native function handleHdMenuClick(item) : void;
    protected native function isHideableColumn(c) : void;
    protected native function beforeColMenuShow() : void;
    protected native function handleHdDown(e, t) : void;
    protected native function handleHdOver(e, t) : void;
    protected native function handleHdMove(e, t) : void;
    protected native function handleHdOut(e, t) : void;
    protected native function hasRows() : void;
    public native function bind(d, c) : void;
    protected native function b4SplitDragZone (grid, hd) : void;
    public native function b4StartDrag(x, y) : void;
    public native function handleMouseDown(e) : void;
    public native function endDrag(e) : void;
    public native function autoOffset() : void;
}}
