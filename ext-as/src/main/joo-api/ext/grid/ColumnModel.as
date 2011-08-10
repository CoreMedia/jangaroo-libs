package ext.grid {

import ext.Editor;
import ext.config.columnmodel;
import ext.util.Observable;

/**
 * Fires when a column is moved.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.grid.ColumnModel</code>

 *       </li>

 *       <li>
 *           <code>oldIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>newIndex:Number</code>

 *       </li>

 * </ul>
 */
[Event(name="columnmoved")]

/**
 * Fires when the configuration is changed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.grid.ColumnModel</code>

 *       </li>

 * </ul>
 */
[Event(name="configchange")]

/**
 * Fires when the text of a header changes.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.grid.ColumnModel</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>
 The column index
 *       </li>

 *       <li>
 *           <code>newText:String</code>
 The new header text
 *       </li>

 * </ul>
 */
[Event(name="headerchange")]

/**
 * Fires when a column is hidden or "unhidden".
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.grid.ColumnModel</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>
 The column index
 *       </li>

 *       <li>
 *           <code>hidden:Boolean</code>
 true if hidden, false otherwise
 *       </li>

 * </ul>
 */
[Event(name="hiddenchange")]

/**
 * Fires when the width of a column is programmatically changed using <code><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-setColumnWidth">setColumnWidth</a></code>. Note internal resizing suppresses the event from firing. See also <a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>.<code><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-columnresize">columnresize</a></code>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.grid.ColumnModel</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>
 The column index
 *       </li>

 *       <li>
 *           <code>newWidth:Number</code>
 The new width
 *       </li>

 * </ul>
 */
[Event(name="widthchange")]


/**
 * After the data has been read into the client side cache (<b><a href="Ext.data.Store.html">Store</a></b>), the ColumnModel is used to configure how and what parts of that data will be displayed in the vertical slices (columns) of the grid. The Ext.grid.ColumnModel Class is the default implementation of a ColumnModel used by implementations of <a href="Ext.grid.GridPanel.html">GridPanel</a>.
 <p>Data is mapped into the store's records and then indexed into the ColumnModel using the <tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-dataIndex">dataIndex</a></tt>:</p><pre><code>{data source} == mapping ==&gt; {data store} == <b><tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-dataIndex">dataIndex</a></tt></b> ==&gt; {ColumnModel}
 </code></pre><p>Each <a href="Ext.grid.Column.html">Column</a> in the grid's ColumnModel is configured with a <tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-dataIndex">dataIndex</a></tt> to specify how the data within each record in the store is indexed into the ColumnModel.</p><p>There are two ways to initialize the ColumnModel class:</p><p><u>Initialization Method 1: an Array</u></p><pre><code>var colModel = new Ext.grid.ColumnModel([
 { header: "Ticker", width: 60, sortable: true},
 { header: "Company Name", width: 150, sortable: true, id: 'company'},
 { header: "Market Cap.", width: 100, sortable: true},
 { header: "$ Sales", width: 100, sortable: true, renderer: money},
 { header: "Employees", width: 100, sortable: true, resizable: false}
 ]);
 </code></pre><p>The ColumnModel may be initialized with an Array of <a href="Ext.grid.Column.html">Ext.grid.Column</a> column configuration objects to define the initial layout / display of the columns in the Grid. The order of each <a href="Ext.grid.Column.html">Ext.grid.Column</a> column configuration object within the specified Array defines the initial order of the column display. A Column's display may be initially hidden using the <tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-hidden">hidden</a></tt> config property (and then shown using the column header menu). Fields that are not included in the ColumnModel will not be displayable at all.</p><p>How each column in the grid correlates (maps) to the <a href="Ext.data.Record.html">Ext.data.Record</a> field in the <a href="Ext.data.Store.html">Store</a> the column draws its data from is configured through the <b><tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-dataIndex">dataIndex</a></tt></b>. If the <b><tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-dataIndex">dataIndex</a></tt></b> is not explicitly defined (as shown in the example above) it will use the column configuration's index in the Array as the index.</p><p>See <b><tt><a href="Ext.grid.Column.html">Ext.grid.Column</a></tt></b> for additional configuration options for each column.</p><p><u>Initialization Method 2: an Object</u></p><p>In order to use configuration options from <tt>Ext.grid.ColumnModel</tt>, an Object may be used to initialize the ColumnModel. The column configuration Array will be specified in the <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-columns">columns</a></b></tt> config property. The <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaults">defaults</a></b></tt> config property can be used to apply defaults for all columns, e.g.:</p><pre><code>var colModel = new Ext.grid.ColumnModel({
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
 <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-hiddenchange">hiddenchange</a>: function(cm, colIndex, hidden) {
 saveConfig(colIndex, hidden);
 }
 }
 });
 </code></pre><p>In both examples above, the ability to apply a CSS class to all cells in a column (including the header) is demonstrated through the use of the <b><tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-id">id</a></tt></b> config option. This column could be styled by including the following css:</p><pre><code>//add this css &#42;after&#42; the core css is loaded
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
 </code></pre>Note that the "Company Name" column could be specified as the <b><tt><a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>.<a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">autoExpandColumn</a></tt></b>.
 * @see ext.config.columnmodel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#cls-Ext.grid.ColumnModel Ext JS source
 */
public class ColumnModel extends Observable {

  /**
   *
   *
   * @param config Specify either an Array of <a href="Ext.grid.Column.html">Ext.grid.Column</a> configuration objects or specify a configuration Object (see introductory section discussion utilizing Initialization Method 2 above).
   * @see ext.config.columnmodel
   */
  public function ColumnModel(config:columnmodel) {
    super();
  }

  /**
   An Array of <a href="Ext.grid.Column.html">Column definition</a> objects representing the configuration of this ColumnModel. See <a href="Ext.grid.Column.html">Ext.grid.Column</a> for the configuration properties that may be specified.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#prop-Ext.grid.ColumnModel-config Ext JS source
   */
  public native function get config():Array;

  /**
   * @private
   */
  public native function set config(value:Array):void;

  /**
   An Array of object literals. The config options defined by <b><a href="Ext.grid.Column.html">Ext.grid.Column</a></b> are the options which may appear in the object literal for each individual column definition.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get columns():Array;

  /**
   Default sortable of columns which have no sortable specified (defaults to <tt>false</tt>). This property shall preferably be configured through the <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaults">defaults</a></b></tt> config property.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultSortable():Boolean;

  /**
   The width of columns which have no <tt><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-width">width</a></tt> specified (defaults to <tt>100</tt>). This property shall preferably be configured through the <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaults">defaults</a></b></tt> config property.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultWidth():Number;

  /**
   Object literal which will be used to apply <a href="Ext.grid.Column.html">Ext.grid.Column</a> configuration options to all <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-columns">columns</a></b></tt>. Configuration options specified with individual <a href="Ext.grid.Column.html">column</a> configs will supersede these <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaults">defaults</a></b></tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaults():Object;

  /**
   * Destroys this column model by purging any event listeners. Destroys and dereferences all Columns.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   * Finds the index of the first matching column for the given dataIndex.
   *
   * @param col The dataIndex to find
   * @return The column index, or -1 if no match was found
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-findColumnIndex Ext JS source
   */
  public native function findColumnIndex(col:String):Number;

  /**
   * Returns the editor defined for the cell/column.
   *
   * @param colIndex The column index
   * @param rowIndex The row index
   * @return The <a href="Ext.Editor.html">Editor</a> that was created to wrap the <a href="Ext.form.Field.html">Field</a> used to edit the cell.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getCellEditor Ext JS source
   */
  public native function getCellEditor(colIndex:Number, rowIndex:Number):Editor;

  /**
   * Returns the column for a specified id.
   *
   * @param id The column id
   * @return the column
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getColumnById Ext JS source
   */
  public native function getColumnById(id:String):Object;

  /**
   * Returns the number of columns.
   *
   * @param visibleOnly Pass as true to only include visible columns.
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getColumnCount Ext JS source
   */
  public native function getColumnCount(visibleOnly:Boolean = false):Number;

  /**
   * Returns the header for the specified column.
   *
   * @param col The column index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getColumnHeader Ext JS source
   */
  public native function getColumnHeader(col:Number):String;

  /**
   * Returns the id of the column at the specified index.
   *
   * @param index The column index
   * @return the id
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getColumnId Ext JS source
   */
  public native function getColumnId(index:Number):String;

  /**
   * Returns the tooltip for the specified column.
   *
   * @param col The column index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getColumnTooltip Ext JS source
   */
  public native function getColumnTooltip(col:Number):String;

  /**
   * Returns the width for the specified column.
   *
   * @param col The column index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getColumnWidth Ext JS source
   */
  public native function getColumnWidth(col:Number):Number;

  /**
   * Returns the column configs that return true by the passed function that is called with (columnConfig, index) <pre><code>// returns an array of column config objects for all hidden columns
   var columns = grid.getColumnModel().getColumnsBy(function(c){
   return c.hidden;
   });
   </code></pre>
   *
   * @param fn A function which, when passed a <a href="Ext.grid.Column.html">Column</a> object, must return <code>true</code> if the column is to be included in the returned Array.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this ColumnModel.
   * @return result
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getColumnsBy Ext JS source
   */
  public native function getColumnsBy(fn:Function, scope:Object = null):Array;

  /**
   * Returns the dataIndex for the specified column. <pre><code>// Get field name for the column
   var fieldName = grid.getColumnModel().getDataIndex(columnIndex);
   </code></pre>
   *
   * @param col The column index
   * @return The column's dataIndex
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getDataIndex Ext JS source
   */
  public native function getDataIndex(col:Number):String;

  /**
   * Returns the index for a specified column id.
   *
   * @param id The column id
   * @return the index, or -1 if not found
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getIndexById Ext JS source
   */
  public native function getIndexById(id:String):Number;

  /**
   * Returns the rendering (formatting) function defined for the column.
   *
   * @param col The column index.
   * @return The function used to render the cell. See <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-setRenderer">setRenderer</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getRenderer Ext JS source
   */
  public native function getRenderer(col:Number):Function;

  /**
   * Returns the total width of all columns.
   *
   * @param includeHidden True to include hidden column widths
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-getTotalWidth Ext JS source
   */
  public native function getTotalWidth(includeHidden:Boolean):Number;

  /**
   * Returns true if the cell is editable. <pre><code>var store = new Ext.data.Store({...});
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
   *
   * @param colIndex The column index
   * @param rowIndex The row index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-isCellEditable Ext JS source
   */
  public native function isCellEditable(colIndex:Number, rowIndex:Number):Boolean;

  /**
   * Returns <tt>true</tt> if the column is <code><a href="output/Ext.grid.Column.html#Ext.grid.Column-fixed">fixed</a></code>, <tt>false</tt> otherwise.
   *
   * @param colIndex The column index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-isFixed Ext JS source
   */
  public native function isFixed(colIndex:Number):Boolean;

  /**
   * Returns <tt>true</tt> if the column is <code><a href="output/Ext.grid.Column.html#Ext.grid.Column-hidden">hidden</a></code>, <tt>false</tt> otherwise.
   *
   * @param colIndex The column index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-isHidden Ext JS source
   */
  public native function isHidden(colIndex:Number):Boolean;

  /**
   * Returns true if the specified column menu is disabled.
   *
   * @param col The column index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-isMenuDisabled Ext JS source
   */
  public native function isMenuDisabled(col:Number):Boolean;

  /**
   * Returns true if the column can be resized
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-isResizable Ext JS source
   */
  public native function isResizable():Boolean;

  /**
   * Returns true if the specified column is sortable.
   *
   * @param col The column index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-isSortable Ext JS source
   */
  public native function isSortable(col:Number):Boolean;

  /**
   * Moves a column from one position to another.
   *
   * @param oldIndex The index of the column to move.
   * @param newIndex The position at which to reinsert the column.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-moveColumn Ext JS source
   */
  public native function moveColumn(oldIndex:Number, newIndex:Number):void;

  /**
   * Sets the header for a column.
   *
   * @param col The column index
   * @param header The new header
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setColumnHeader Ext JS source
   */
  public native function setColumnHeader(col:Number, header:String):void;

  /**
   * Sets the tooltip for a column.
   *
   * @param col The column index
   * @param tooltip The new tooltip
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setColumnTooltip Ext JS source
   */
  public native function setColumnTooltip(col:Number, tooltip:String):void;

  /**
   * Sets the width for a column.
   *
   * @param col The column index
   * @param width The new width
   * @param suppressEvent True to suppress firing the <code><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-widthchange">widthchange</a></code> event. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setColumnWidth Ext JS source
   */
  public native function setColumnWidth(col:Number, width:Number, suppressEvent:Boolean):void;

  /**
   * Reconfigures this column model according to the passed Array of column definition objects. For a description of the individual properties of a column definition object, see the <a href="#Ext.grid.ColumnModel-configs">Config Options</a>.
   <p>Causes the <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-configchange">configchange</a> event to be fired. A <a href="Ext.grid.GridPanel.html">GridPanel</a> using this ColumnModel will listen for this event and refresh its UI automatically.</p>
   *
   * @param config Array of Column definition objects.
   * @param initial Specify <tt>true</tt> to bypass cleanup which deletes the <tt>totalWidth</tt> and destroys existing editors.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setConfig Ext JS source
   */
  public native function setConfig(config:Array, initial:Boolean):void;

  /**
   * Sets the dataIndex for a column.
   *
   * @param col The column index
   * @param dataIndex The new dataIndex
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setDataIndex Ext JS source
   */
  public native function setDataIndex(col:Number, dataIndex:String):void;

  /**
   * Sets if a column is editable.
   *
   * @param col The column index
   * @param editable True if the column is editable
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setEditable Ext JS source
   */
  public native function setEditable(col:Number, editable:Boolean):void;

  /**
   * Sets the editor for a column and destroys the prior editor.
   *
   * @param col The column index
   * @param editor The editor object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setEditor Ext JS source
   */
  public native function setEditor(col:Number, editor:Object):void;

  /**
   * Sets if a column is hidden. <pre><code>myGrid.getColumnModel().setHidden(0, true); // hide column 0 (0 = the first column).
   </code></pre>
   *
   * @param colIndex The column index
   * @param hidden True if the column is hidden
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setHidden Ext JS source
   */
  public native function setHidden(colIndex:Number, hidden:Boolean):void;

  /**
   * Sets the rendering (formatting) function for a column. See <a href="Ext.util.Format.html">Ext.util.Format</a> for some default formatting functions.
   *
   * @param col The column index
   * @param fn The function to use to process the cell's raw data to return HTML markup for the grid view. The render function is called with the following parameters:<ul><li><b>value</b> : Object<p class="sub-desc">The data value for the cell.</p></li><li><b>metadata</b> : Object<p class="sub-desc">An object in which you may set the following attributes:</p><ul><li><b>css</b> : String<p class="sub-desc">A CSS class name to add to the cell's TD element.</p></li><li><b>attr</b> : String<p class="sub-desc">An HTML attribute definition string to apply to the data container element <i>within</i> the table cell (e.g. 'style="color:red;"').</p></li></ul><br/><br/></li><li><b>record</b> : Ext.data.record<p class="sub-desc">The <a href="Ext.data.Record.html">Ext.data.Record</a> from which the data was extracted.</p></li><li><b>rowIndex</b> : Number<p class="sub-desc">Row index</p></li><li><b>colIndex</b> : Number<p class="sub-desc">Column index</p></li><li><b>store</b> : Ext.data.Store<p class="sub-desc">The <a href="Ext.data.Store.html">Ext.data.Store</a> object from which the Record was extracted.</p></li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setRenderer Ext JS source
   */
  public native function setRenderer(col:Number, fn:Function):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnModel.html#method-Ext.grid.ColumnModel-setState Ext JS source
   */
  public native function setState():void;

}
}
    