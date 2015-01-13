package ext.grid {
import ext.Element;
import ext.Template;
import ext.config.gridview;
import ext.data.Record;
import ext.data.Store;
import ext.menu.BaseItem;
import ext.util.Observable;

import js.HTMLElement;

/**
 * Internal UI Event. Fired before the view is refreshed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>view:ext.grid.GridView</code>

 *       </li>

 * </ul>
 */
[Event(name="beforerefresh")]

/**
 * Internal UI Event. Fired before a row is removed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>view:ext.grid.GridView</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>
 The index of the row to be removed.
 *       </li>

 *       <li>
 *           <code>record:ext.data.Record</code>
 The Record to be removed
 *       </li>

 * </ul>
 */
[Event(name="beforerowremoved")]

/**
 * Internal UI Event. Fired before rows are inserted.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>view:ext.grid.GridView</code>

 *       </li>

 *       <li>
 *           <code>firstRow:Number</code>
 The index of the first row to be inserted.
 *       </li>

 *       <li>
 *           <code>lastRow:Number</code>
 The index of the last row to be inserted.
 *       </li>

 * </ul>
 */
[Event(name="beforerowsinserted")]

/**
 * Internal UI Event. Fired after the GridView's body has been refreshed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>view:ext.grid.GridView</code>

 *       </li>

 * </ul>
 */
[Event(name="refresh")]

/**
 * Internal UI Event. Fired after a row is removed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>view:ext.grid.GridView</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>
 The index of the row that was removed.
 *       </li>

 *       <li>
 *           <code>record:ext.data.Record</code>
 The Record that was removed
 *       </li>

 * </ul>
 */
[Event(name="rowremoved")]

/**
 * Internal UI Event. Fired after rows are inserted.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>view:ext.grid.GridView</code>

 *       </li>

 *       <li>
 *           <code>firstRow:Number</code>
 The index of the first inserted.
 *       </li>

 *       <li>
 *           <code>lastRow:Number</code>
 The index of the last row inserted.
 *       </li>

 * </ul>
 */
[Event(name="rowsinserted")]

/**
 * Internal UI Event. Fired after a row has been updated.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>view:ext.grid.GridView</code>

 *       </li>

 *       <li>
 *           <code>firstRow:Number</code>
 The index of the row updated.
 *       </li>

 *       <li>
 *           <code>record:ext.data.Record</code>
 The Record backing the row updated.
 *       </li>

 * </ul>
 */
[Event(name="rowupdated")]


/**
 * This class encapsulates the user interface of an <a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>. Methods of this class may be used to access user interface elements to enable special display effects. Do not change the DOM structure of the user interface.
 <p>This class does not provide ways to manipulate the underlying data. The data model of a Grid is held in an <a href="Ext.data.Store.html">Ext.data.Store</a>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.gridview
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "grid.GridView")]
public class GridView extends Observable {

  /**
   *
   *
   * @param config
   * @see ext.config.gridview
   */
  public function GridView(config:gridview) {
    super();
  }

  /**
   The template to use when rendering the body. Has a default template
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-property-bodyTpl Sencha Docs Ext JS 3.4
   */
  public native function get bodyTpl():Template;

  /**
   * @private
   */
  public native function set bodyTpl(value:Template):void;

  /**
   The template to use to render each cell. Has a default template
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-property-cellTpl Sencha Docs Ext JS 3.4
   */
  public native function get cellTpl():Template;

  /**
   * @private
   */
  public native function set cellTpl(value:Template):void;

  /**
   A customized implementation of a <a href="Ext.dd.DragZone.html">DragZone</a> which provides default implementations of the template methods of DragZone to enable dragging of the selected rows of a GridPanel. See <a href="Ext.grid.GridDragZone.html">Ext.grid.GridDragZone</a> for details.
   <p>This will <b>only</b> be present:</p><div class="mdetail-params"><ul><li><i>if</i> the owning GridPanel was configured with <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-enableDragDrop">enableDragDrop</a>: <tt>true</tt>.</li><li><i>after</i> the owning GridPanel has been rendered.</li></ul></div>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-property-dragZone Sencha Docs Ext JS 3.4
   */
  public native function get dragZone():GridDragZone;

  /**
   * @private
   */
  public native function set dragZone(value:GridDragZone):void;

  /**
   The template to use when rendering headers. Has a default template
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-property-headerTpl Sencha Docs Ext JS 3.4
   */
  public native function get headerTpl():Template;

  /**
   * @private
   */
  public native function set headerTpl(value:Template):void;

  /**
   <i>Read-only</i>. The GridView's body Element which encapsulates all rows in the Grid. This <a href="Ext.Element.html">Element</a> is only available after the GridPanel has been rendered.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-property-mainBody Sencha Docs Ext JS 3.4
   */
  public native function get mainBody():Element;

  /**
   * @private
   */
  public native function set mainBody(value:Element):void;

  /**
   The master template to use when rendering the GridView. Has a default template
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-property-masterTpl Sencha Docs Ext JS 3.4
   */
  public native function get masterTpl():Template;

  /**
   * @private
   */
  public native function set masterTpl(value:Template):void;

  /**
   Defaults to <tt>false</tt>. Specify <tt>true</tt> to have the column widths re-proportioned when the grid is <b>initially rendered</b>. The <a href="output/Ext.grid.Column.html#Ext.grid.Column-width">initially configured width</a> of each column will be adjusted to fit the grid width and prevent horizontal scrolling. If columns are later resized (manually or programmatically), the other columns in the grid will <b>not</b> be resized to fit the grid width. See <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-forceFit">forceFit</a></tt> also.
   */
  public native function get autoFill():Boolean;

  /**
   The selector used to find cells internally (defaults to <tt>'td.x-grid3-cell'</tt>)
   */
  public native function get cellSelector():String;

  /**
   The number of levels to search for cells in event delegation (defaults to <tt>4</tt>)
   */
  public native function get cellSelectorDepth():Number;

  /**
   The text displayed in the 'Columns' menu item (defaults to <tt>'Columns'</tt>)
   */
  public native function get columnsText():String;

  /**
   True to defer <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-emptyText">emptyText</a></tt> being applied until the store's first load (defaults to <tt>true</tt>).
   */
  public native function get deferEmptyText():Boolean;

  /**
   Default text (html tags are accepted) to display in the grid body when no rows are available (defaults to ''). This value will be used to update the <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-mainBody">mainBody</a></tt>: <pre><code>   this.mainBody.update('&lt;div class="x-grid-empty"&gt;' + this.emptyText + '&lt;/div&gt;');
   </code></pre>
   */
  public native function get emptyText():String;

  /**
   True to add a second TR element per row that can be used to provide a row body that spans beneath the data row. Use the <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-getRowClass">getRowClass</a> method's rowParams config to customize the row body.
   */
  public native function get enableRowBody():Boolean;

  /**
   Defaults to <tt>false</tt>. Specify <tt>true</tt> to have the column widths re-proportioned at <b>all times</b>.
   <p>The <a href="output/Ext.grid.Column.html#Ext.grid.Column-width">initially configured width</a> of each column will be adjusted to fit the grid width and prevent horizontal scrolling. If columns are later resized (manually or programmatically), the other columns in the grid <b>will</b> be resized to fit the grid width.</p><p>Columns which are configured with <code>fixed: true</code> are omitted from being resized.</p><p>See <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-autoFill">autoFill</a></tt>.</p>
   */
  public native function get forceFit():Boolean;

  /**
   The CSS class to add to the header cell when its menu is visible. Defaults to 'x-grid3-hd-menu-open'
   */
  public native function get headerMenuOpenCls():String;

  /**
   True to disable the grid column headers (defaults to <tt>false</tt>). Use the <a href="Ext.grid.ColumnModel.html">ColumnModel</a> <tt><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-menuDisabled">menuDisabled</a></tt> config to disable the <i>menu</i> for individual columns. While this config is true the following will be disabled:<div class="mdetail-params"><ul><li>clicking on header to sort</li><li>the trigger to reveal the menu.</li></ul></div>
   */
  public native function get headersDisabled():Boolean;

  /**
   True to show the dirty cell indicator when a cell has been modified. Defaults to <tt>true</tt>.
   */
  public native function get markDirty():Boolean;

  /**
   The selector used to find row bodies internally (defaults to <tt>'div.x-grid3-row'</tt>)
   */
  public native function get rowBodySelector():String;

  /**
   The number of levels to search for row bodies in event delegation (defaults to <tt>10</tt>)
   */
  public native function get rowBodySelectorDepth():Number;

  /**
   The CSS class added to each row when it is hovered over. Defaults to 'x-grid3-row-over'
   */
  public native function get rowOverCls():String;

  /**
   The selector used to find rows internally (defaults to <tt>'div.x-grid3-row'</tt>)
   */
  public native function get rowSelector():String;

  /**
   The number of levels to search for rows in event delegation (defaults to <tt>10</tt>)
   */
  public native function get rowSelectorDepth():Number;

  /**
   The amount of space to reserve for the vertical scrollbar (defaults to <tt>undefined</tt>). If an explicit value isn't specified, this will be automatically calculated.
   */
  public native function get scrollOffset():Number;

  /**
   The CSS class applied to a selected row (defaults to <tt>'x-grid3-row-selected'</tt>). An example overriding the default styling: <pre><code>   .x-grid3-row-selected {background-color: yellow;}
   </code></pre>Note that this only controls the row, and will not do anything for the text inside it. To style inner facets (like text) use something like: <pre><code>   .x-grid3-row-selected .x-grid3-cell-inner {
   color: #FFCC00;
   }
   </code></pre>
   */
  public native function get selectedRowClass():String;

  /**
   The text displayed in the 'Sort Ascending' menu item (defaults to <tt>'Sort Ascending'</tt>)
   */
  public native function get sortAscText():String;

  /**
   The CSS classes applied to a header when it is sorted. (defaults to <tt>['sort-asc', 'sort-desc']</tt>)
   */
  public native function get sortClasses():Array;

  /**
   The text displayed in the 'Sort Descending' menu item (defaults to <tt>'Sort Descending'</tt>)
   */
  public native function get sortDescText():String;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-afterRender Sencha Docs Ext JS 3.4
   */
  public native function afterRender():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-afterRenderUI Sencha Docs Ext JS 3.4
   */
  public native function afterRenderUI():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-applyEmptyText Sencha Docs Ext JS 3.4
   */
  public native function applyEmptyText():void;

  /**
   *
   *
   * @param preventUpdate True to prevent the resizing of all rows (defaults to false)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-autoExpand Sencha Docs Ext JS 3.4
   */
  public native function autoExpand(preventUpdate:Boolean):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-beforeColMenuShow Sencha Docs Ext JS 3.4
   */
  public native function beforeColMenuShow():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-bind Sencha Docs Ext JS 3.4
   */
  public native function bind():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-clearHeaderSortState Sencha Docs Ext JS 3.4
   */
  public native function clearHeaderSortState():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-deleteRows Sencha Docs Ext JS 3.4
   */
  public native function deleteRows():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy():void;

  /**
   *
   *
   * @param columns The column data acquired from getColumnData.
   * @param records The array of records to render
   * @param store The store to render the rows from
   * @param startRow The index of the first row being rendered. Sometimes we only render a subset of the rows so this is used to maintain logic for striping etc
   * @param colCount The total number of columns in the column model
   * @param stripe True to stripe the rows
   * @return A string containing the HTML for the rendered rows
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-doRender Sencha Docs Ext JS 3.4
   */
  public native function doRender(columns:Array, records:Array, store:Store, startRow:Number, colCount:Number, stripe:Boolean):String;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-ensureVisible Sencha Docs Ext JS 3.4
   */
  public native function ensureVisible():void;

  /**
   * Return the index of the grid column which contains the passed HTMLElement.
   See also <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-findRowIndex">findRowIndex</a>
   *
   * @param el The target element
   * @return The column index, or <b>false</b> if the target element is not within a row of this GridView.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-findCellIndex Sencha Docs Ext JS 3.4
   */
  public native function findCellIndex(el:HTMLElement):Number;

  /**
   * Return the HtmlElement representing the grid row which contains the passed element.
   *
   * @param el The target HTMLElement
   * @return The row element, or null if the target element is not within a row of this GridView.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-findRow Sencha Docs Ext JS 3.4
   */
  public native function findRow(el:HTMLElement):HTMLElement;

  /**
   * Return the HtmlElement representing the grid row body which contains the passed element.
   *
   * @param el The target HTMLElement
   * @return The row body element, or null if the target element is not within a row body of this GridView.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-findRowBody Sencha Docs Ext JS 3.4
   */
  public native function findRowBody(el:HTMLElement):HTMLElement;

  /**
   * Return the index of the grid row which contains the passed HTMLElement. See also <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-findCellIndex">findCellIndex</a>
   *
   * @param el The target HTMLElement
   * @return The row index, or <b>false</b> if the target element is not within a row of this GridView.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-findRowIndex Sencha Docs Ext JS 3.4
   */
  public native function findRowIndex(el:HTMLElement):Number;

  /**
   *
   *
   * @param preventRefresh True to prevent resizing of each row to the new column sizes (defaults to false)
   * @param onlyExpand NOT USED, will be removed in 4.0
   * @param omitColumn The index of a column to leave at its current width. Defaults to undefined
   * @return True if the operation succeeded, false if not or undefined if the grid view is not yet initialized
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-fitColumns Sencha Docs Ext JS 3.4
   */
  public native function fitColumns(preventRefresh:Boolean, onlyExpand:*, omitColumn:Number):Boolean;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-fly Sencha Docs Ext JS 3.4
   */
  public native function fly():void;

  /**
   * Focuses the specified cell.
   *
   * @param row The row index
   * @param col The column index
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-focusCell Sencha Docs Ext JS 3.4
   */
  public native function focusCell(row:Number, col:Number):void;

  /**
   * Focuses the specified row.
   *
   * @param row The row index
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-focusRow Sencha Docs Ext JS 3.4
   */
  public native function focusRow(row:Number):void;

  /**
   * Returns the grid's <tt>&lt;td&gt;</tt> HtmlElement at the specified coordinates.
   *
   * @param row The row index in which to find the cell.
   * @param col The column index of the cell.
   * @return The td at the specified coordinates.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getCell Sencha Docs Ext JS 3.4
   */
  public native function getCell(row:Number, col:Number):HTMLElement;

  /**
   *
   *
   * @return Array of column config objects. This includes the column name, renderer, id style and renderer
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getColumnData Sencha Docs Ext JS 3.4
   */
  public native function getColumnData():Array;

  /**
   *
   *
   * @param colIndex The column index
   * @param isHeader True if getting the style for the column's header
   * @return The CSS string
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getColumnStyle Sencha Docs Ext JS 3.4
   */
  public native function getColumnStyle(colIndex:Number, isHeader:Boolean):String;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getColumnTooltip Sencha Docs Ext JS 3.4
   */
  public native function getColumnTooltip(i:uint):String;

  /**
   *
   *
   * @return The column index
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getColumnWidth Sencha Docs Ext JS 3.4
   */
  public native function getColumnWidth():Number;

  /**
   * Returns the total internal width available to the grid, taking the scrollbar into account
   *
   * @return The total width
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getGridInnerWidth Sencha Docs Ext JS 3.4
   */
  public native function getGridInnerWidth():Number;

  /**
   * Return the <tt>&lt;td&gt;</tt> HtmlElement which represents the Grid's header cell for the specified column index.
   *
   * @param index The column index
   * @return The td element.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getHeaderCell Sencha Docs Ext JS 3.4
   */
  public native function getHeaderCell(index:Number):HTMLElement;

  /**
   *
   *
   * @param index The header index
   * @return The index of the nearest visible header
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getPreviousVisible Sencha Docs Ext JS 3.4
   */
  public native function getPreviousVisible(index:Number):*;

  /**
   *
   *
   * @return X and Y coords
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getResolvedXY Sencha Docs Ext JS 3.4
   */
  public native function getResolvedXY():Array;

  /**
   * Return the <tt>&lt;div&gt;</tt> HtmlElement which represents a Grid row for the specified index.
   *
   * @param index The row index
   * @return The div element.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getRow Sencha Docs Ext JS 3.4
   */
  public native function getRow(index:Number):HTMLElement;

  /**
   * Override this function to apply custom CSS classes to rows during rendering. You can also supply custom parameters to the row template for the current row to customize how it is rendered using the <b>rowParams</b> parameter. This function should return the CSS class name (or empty string '' for none) that will be added to the row's wrapping div. To apply multiple class names, simply return them space-delimited within the string (e.g., 'my-class another-class'). Example usage: <pre><code>viewConfig: {
   forceFit: true,
   showPreview: true, // custom property
   enableRowBody: true, // required to create a second, full-width row to show expanded Record data
   getRowClass: function(record, rowIndex, rp, ds){ // rp = rowParams
   if(this.showPreview){
   rp.body = '&lt;p&gt;'+record.data.excerpt+'&lt;/p&gt;';
   return 'x-grid3-row-expanded';
   }
   return 'x-grid3-row-collapsed';
   }
   },
   </code></pre>
   *
   * @param record The <a href="Ext.data.Record.html">Ext.data.Record</a> corresponding to the current row.
   * @param index The row index.
   * @param rowParams A config object that is passed to the row template during rendering that allows customization of various aspects of a grid row. <p>If <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-enableRowBody">enableRowBody</a> is configured <b>true</b>, then the following properties may be set by this function, and will be used to render a full-width expansion row below each grid row:</p><ul><li><code>body</code> : String <div class="sub-desc">An HTML fragment to be used as the expansion row's body content (defaults to '').</div></li><li><code>bodyStyle</code> : String <div class="sub-desc">A CSS style specification that will be applied to the expansion row's &lt;tr&gt; element. (defaults to '').</div></li></ul>The following property will be passed in, and may be appended to: <ul><li><code>tstyle</code> : String <div class="sub-desc">A CSS style specification that will be applied to the &lt;table&gt; element which encapsulates both the standard grid row, and any expansion row.</div></li></ul>
   * @param store The <a href="Ext.data.Store.html">Ext.data.Store</a> this grid is bound to
   * @return a CSS class name to add to the row.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getRowClass Sencha Docs Ext JS 3.4
   */
  public native function getRowClass(record:Record, index:Number, rowParams:Object, store:Store):String;

  /**
   *
   *
   * @return left, top
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getScrollState Sencha Docs Ext JS 3.4
   */
  public native function getScrollState():Object;

  /**
   *
   *
   * @return
    * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-getTotalWidth Sencha Docs Ext JS 3.4
   */
  public native function getTotalWidth():String;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-handleHdDown Sencha Docs Ext JS 3.4
   */
  public native function handleHdDown():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-handleHdMenuClick Sencha Docs Ext JS 3.4
   */
  public native function handleHdMenuClick():void;

  /**
   * Called by handleHdMenuClick if any button except a sort ASC/DESC button was clicked. The default implementation provides the column hide/show functionality based on the check state of the menu item. A different implementation can be provided if needed.
   *
   * @param item The menu item that was clicked
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-handleHdMenuClickDefault Sencha Docs Ext JS 3.4
   */
  public native function handleHdMenuClickDefault(item:BaseItem):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-handleHdMove Sencha Docs Ext JS 3.4
   */
  public native function handleHdMove():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-handleHdOut Sencha Docs Ext JS 3.4
   */
  public native function handleHdOut():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-handleHdOver Sencha Docs Ext JS 3.4
   */
  public native function handleHdOver():void;

  /**
   *
   *
   * @return True if any rows have been rendered
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-hasRows Sencha Docs Ext JS 3.4
   */
  public native function hasRows():Boolean;

  /**
   *
   *
   * @param newStore The new Store instance
   * @param newColModel The new ColumnModel instance
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-initData Sencha Docs Ext JS 3.4
   */
  public native function initData(newStore:Store, newColModel:ColumnModel):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-initElements Sencha Docs Ext JS 3.4
   */
  public native function initElements():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-initTemplates Sencha Docs Ext JS 3.4
   */
  public native function initTemplates():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-isHideableColumn Sencha Docs Ext JS 3.4
   */
  public native function isHideableColumn():void;

  /**
   *
   *
   * @param cellIndex The header cell index
   * @param el The cell element currently being hovered over
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-isMenuDisabled Sencha Docs Ext JS 3.4
   */
  public native function isMenuDisabled(cellIndex:Number, el:Element):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-layout Sencha Docs Ext JS 3.4
   */
  public native function layout():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-onColumnSplitterMoved Sencha Docs Ext JS 3.4
   */
  public native function onColumnSplitterMoved():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-onLoad Sencha Docs Ext JS 3.4
   */
  public native function onLoad():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-onRowOut Sencha Docs Ext JS 3.4
   */
  public native function onRowOut():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-onRowOver Sencha Docs Ext JS 3.4
   */
  public native function onRowOver():void;

  /**
   *
   *
   * @param startRow The row to start from (defaults to 0)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-processRows Sencha Docs Ext JS 3.4
   */
  public native function processRows(startRow:Number):void;

  /**
   * Refreshs the grid UI
   *
   * @param headersToo True to also refresh the headers
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-refresh Sencha Docs Ext JS 3.4
   */
  public native function refresh(headersToo:Boolean = false):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-refreshRow Sencha Docs Ext JS 3.4
   */
  public native function refreshRow():void;

  /**
   *
   *
   * @return Rendered header row
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-renderHeaders Sencha Docs Ext JS 3.4
   */
  public native function renderHeaders():String;

  /**
   *
   *
   * @param startRow Index of the first row to render
   * @param endRow Index of the last row to render
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-renderRows Sencha Docs Ext JS 3.4
   */
  public native function renderRows(startRow:Number, endRow:Number):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-renderUI Sencha Docs Ext JS 3.4
   */
  public native function renderUI():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-resolveCell Sencha Docs Ext JS 3.4
   */
  public native function resolveCell():void;

  /**
   * Scrolls the grid to the top
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-scrollToTop Sencha Docs Ext JS 3.4
   */
  public native function scrollToTop():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-syncFocusEl Sencha Docs Ext JS 3.4
   */
  public native function syncFocusEl():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-updateAllColumnWidths Sencha Docs Ext JS 3.4
   */
  public native function updateAllColumnWidths():void;

  /**
   *
   *
   * @param col The column index
   * @param hidden True to make the column hidden
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-updateColumnHidden Sencha Docs Ext JS 3.4
   */
  public native function updateColumnHidden(col:Number, hidden:Boolean):void;

  /**
   *
   *
   * @param column The column index
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-updateColumnWidth Sencha Docs Ext JS 3.4
   */
  public native function updateColumnWidth(column:Number):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-updateHeaderSortState Sencha Docs Ext JS 3.4
   */
  public native function updateHeaderSortState():void;

  /**
   *
   *
   * @param updateMain True to update the mainBody's width also (defaults to true)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-updateHeaderWidth Sencha Docs Ext JS 3.4
   */
  public native function updateHeaderWidth(updateMain:Boolean):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-updateHeaders Sencha Docs Ext JS 3.4
   */
  public native function updateHeaders():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridView-method-updateSortIcon Sencha Docs Ext JS 3.4
   */
  public native function updateSortIcon():void;

}
}
    