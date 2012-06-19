package ext.grid {
import ext.Element;
import ext.Panel;
import ext.config.grid;
import ext.data.Store;

/**
 * Fires when the body element is scrolled
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>scrollLeft:Number</code>

 *       </li>

 *       <li>
 *           <code>scrollTop:Number</code>

 *       </li>

 * </ul>
 */
[Event(name="bodyscroll")]

/**
 * Fires when a cell is clicked. The data for the cell is drawn from the <a href="Ext.data.Record.html">Record</a> for this row. To access the data in the listener function use the following technique: <pre><code>function(grid, rowIndex, columnIndex, e) {
 var record = grid.getStore().getAt(rowIndex);  // Get the Record
 var fieldName = grid.getColumnModel().getDataIndex(columnIndex); // Get field name
 var data = record.get(fieldName);
 }
 </code></pre>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="cellclick")]

/**
 * Fires when a cell is right clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>cellIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="cellcontextmenu")]

/**
 * Fires when a cell is double clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="celldblclick")]

/**
 * Fires before a cell is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="cellmousedown")]

/**
 * The raw click event for the entire grid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * Fires when the user moves a column
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>oldIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>newIndex:Number</code>

 *       </li>

 * </ul>
 */
[Event(name="columnmove")]

/**
 * Fires when the user resizes a column
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>columnIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>newSize:Number</code>

 *       </li>

 * </ul>
 */
[Event(name="columnresize")]

/**
 * Fires when the container is clicked. The container consists of any part of the grid body that is not covered by a row.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="containerclick")]

/**
 * Fires when the container is right clicked. The container consists of any part of the grid body that is not covered by a row.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="containercontextmenu")]

/**
 * Fires when the container is double clicked. The container consists of any part of the grid body that is not covered by a row.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="containerdblclick")]

/**
 * Fires before the container is clicked. The container consists of any part of the grid body that is not covered by a row.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="containermousedown")]

/**
 * The raw contextmenu event for the entire grid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="contextmenu")]

/**
 * The raw dblclick event for the entire grid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="dblclick")]

/**
 * Fires when the grid's grouping changes (only applies for grids with a <a href="Ext.grid.GroupingView.html">GroupingView</a>)
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>groupField:String</code>
 A string with the grouping field, null if the store is not grouped.
 *       </li>

 * </ul>
 */
[Event(name="groupchange")]

/**
 * Fires when group header is clicked. <b>Only applies for grids with a <a href="Ext.grid.GroupingView.html">GroupingView</a></b>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>groupField:String</code>

 *       </li>

 *       <li>
 *           <code>groupValue:String</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="groupclick")]

/**
 * Fires when group header is right clicked. <b>Only applies for grids with a <a href="Ext.grid.GroupingView.html">GroupingView</a></b>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>groupField:String</code>

 *       </li>

 *       <li>
 *           <code>groupValue:String</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="groupcontextmenu")]

/**
 * Fires when group header is double clicked. <b>Only applies for grids with a <a href="Ext.grid.GroupingView.html">GroupingView</a></b>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>groupField:String</code>

 *       </li>

 *       <li>
 *           <code>groupValue:String</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="groupdblclick")]

/**
 * Fires before a group header is clicked. <b>Only applies for grids with a <a href="Ext.grid.GroupingView.html">GroupingView</a></b>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>groupField:String</code>

 *       </li>

 *       <li>
 *           <code>groupValue:String</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="groupmousedown")]

/**
 * Fires when a header is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="headerclick")]

/**
 * Fires when a header is right clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="headercontextmenu")]

/**
 * Fires when a header cell is double clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="headerdblclick")]

/**
 * Fires before a header is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>columnIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="headermousedown")]

/**
 * The raw keydown event for the entire grid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="keydown")]

/**
 * The raw keypress event for the entire grid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="keypress")]

/**
 * The raw mousedown event for the entire grid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="mousedown")]

/**
 * The raw mouseout event for the entire grid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="mouseout")]

/**
 * The raw mouseover event for the entire grid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="mouseover")]

/**
 * The raw mouseup event for the entire grid.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="mouseup")]

/**
 * Fires when the grid is reconfigured with a new store and/or column model.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>store:ext.data.Store</code>
 The new store
 *       </li>

 *       <li>
 *           <code>colModel:ext.grid.ColumnModel</code>
 The new column model
 *       </li>

 * </ul>
 */
[Event(name="reconfigure")]

/**
 * Fires when the row body is clicked. <b>Only applies for grids with <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-enableRowBody">enableRowBody</a> configured.</b>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="rowbodyclick")]

/**
 * Fires when the row body is right clicked. <b>Only applies for grids with <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-enableRowBody">enableRowBody</a> configured.</b>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="rowbodycontextmenu")]

/**
 * Fires when the row body is double clicked. <b>Only applies for grids with <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-enableRowBody">enableRowBody</a> configured.</b>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="rowbodydblclick")]

/**
 * Fires before the row body is clicked. <b>Only applies for grids with <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-enableRowBody">enableRowBody</a> configured.</b>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="rowbodymousedown")]

/**
 * Fires when a row is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="rowclick")]

/**
 * Fires when a row is right clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="rowcontextmenu")]

/**
 * Fires when a row is double clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="rowdblclick")]

/**
 * Fires before a row is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="rowmousedown")]

/**
 * Fires when the grid's store sort changes
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 *       <li>
 *           <code>sortInfo:Object</code>
 An object with the keys field and direction
 *       </li>

 * </ul>
 */
[Event(name="sortchange")]

/**
 * Fires when the grid view is available (use this for selecting a default row).
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Grid</code>

 *       </li>

 * </ul>
 */
[Event(name="viewready")]


/**
 * This class represents the primary interface of a component based grid control to represent data in a tabular format of rows and columns. The GridPanel is composed of the following:
 <div class="mdetail-params"><ul><li><b><a href="Ext.data.Store.html">Store</a></b> : The Model holding the data records (rows)</li><li><b><a href="Ext.grid.ColumnModel.html">Column model</a></b> : Column makeup</li><li><b><a href="Ext.grid.GridView.html">View</a></b> : Encapsulates the user interface</li><li><b><a href="Ext.grid.AbstractSelectionModel.html">selection model</a></b> : Selection behavior</li></ul></div><p>Example usage:</p><pre><code>var grid = new Ext.grid.GridPanel({
 <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-store">store</a>: new <a href="Ext.data.Store.html">Ext.data.Store</a>({
 <a href="output/Ext.data.Store.html#Ext.data.Store-autoDestroy">autoDestroy</a>: true,
 <a href="output/Ext.data.Store.html#Ext.data.Store-reader">reader</a>: reader,
 <a href="output/Ext.data.Store.html#Ext.data.Store-data">data</a>: xg.dummyData
 }),
 <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-colModel">colModel</a>: new <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a>({
 <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaults">defaults</a>: {
 width: 120,
 sortable: true
 },
 <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-columns">columns</a>: [
 {id: 'company', header: 'Company', width: 200, sortable: true, dataIndex: 'company'},
 {header: 'Price', renderer: Ext.util.Format.usMoney, dataIndex: 'price'},
 {header: 'Change', dataIndex: 'change'},
 {header: '% Change', dataIndex: 'pctChange'},
 // instead of specifying renderer: Ext.util.Format.dateRenderer('m/d/Y') use xtype
 {
 header: 'Last Updated', width: 135, dataIndex: 'lastChange',
 xtype: 'datecolumn', format: 'M d, Y'
 }
 ]
 }),
 <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-viewConfig">viewConfig</a>: {
 <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-forceFit">forceFit</a>: true,

 //      Return CSS class to apply to rows depending upon data values
 <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-getRowClass">getRowClass</a>: function(record, index) {
 var c = record.<a href="output/Ext.data.Record.html#Ext.data.Record-get">get</a>('change');
 if (c &lt; 0) {
 return 'price-fall';
 } else if (c &gt; 0) {
 return 'price-rise';
 }
 }
 },
 <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-sm">sm</a>: new Ext.grid.RowSelectionModel({singleSelect:true}),
 width: 600,
 height: 300,
 frame: true,
 title: 'Framed with Row Selection and Horizontal Scrolling',
 iconCls: 'icon-grid'
 });
 </code></pre><p style="font-weight: bold"><u>Notes:</u></p><div class="mdetail-params"><ul><li>Although this class inherits many configuration options from base classes, some of them (such as autoScroll, autoWidth, layout, items, etc) are not used by this class, and will have no effect.</li><li>A grid <b>requires</b> a width in which to scroll its columns, and a height in which to scroll its rows. These dimensions can either be set explicitly through the <tt><a href="output/Ext.BoxComponent.html#Ext.BoxComponent-height">height</a></tt> and <tt><a href="output/Ext.BoxComponent.html#Ext.BoxComponent-width">width</a></tt> configuration options or implicitly set by using the grid as a child item of a <a href="Ext.Container.html">Container</a> which will have a <a href="output/Ext.Container.html#Ext.Container-layout">layout manager</a> provide the sizing of its child items (for example the Container of the Grid may specify <tt><a href="output/Ext.Container.html#Ext.Container-layout">layout</a>:'fit'</tt>).</li><li>To access the data in a Grid, it is necessary to use the data model encapsulated by the <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-store">Store</a>. See the <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-cellclick">cellclick</a> event for more details.</li></ul></div>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'grid' / the EXML element &lt;grid>.</p>
 * @see ext.config.grid
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridPanel Sencha Docs Ext JS 3.4
 */
[Native]
public class GridPanel extends Panel {

  /**
   *
   *
   * @param config The config object
   * @see ext.config.grid
   */
  public function GridPanel(config:grid) {
    super(null);
  }

  /**
   The <tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-id">id</a></tt> of a <a href="Ext.grid.Column.html">column</a> in this grid that should expand to fill unused space. This value specified here can not be <tt>0</tt>.
   <br/><p><b>Note</b>: If the Grid's <a href="Ext.grid.GridView.html">view</a> is configured with <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-forceFit">forceFit</a>=true</tt> the <tt>autoExpandColumn</tt> is ignored. See <a href="Ext.grid.Column.html">Ext.grid.Column</a>.<tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-width">width</a></tt> for additional details.</p><p>See <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandMax">autoExpandMax</a></tt> and <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandMin">autoExpandMin</a></tt> also.</p>
   */
  public native function get autoExpandColumn():String;

  /**
   The maximum width the <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">autoExpandColumn</a></tt> can have (if enabled). Defaults to <tt>1000</tt>.
   */
  public native function get autoExpandMax():Number;

  /**
   The minimum width the <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">autoExpandColumn</a></tt> can have (if enabled). Defaults to <tt>50</tt>.
   */
  public native function get autoExpandMin():Number;

  /**
   Shorthand for <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-colModel">colModel</a></tt>.
   */
  public native function get cm():Object;

  /**
   The <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a> to use when rendering the grid (required).
   */
  public native function get colModel():Object;

  /**
   <tt>true</tt> to add css for column separation lines. Default is <tt>false</tt>.
   */
  public native function get columnLines():Boolean;

  /**
   The DD group this GridPanel belongs to. Defaults to <tt>'GridDD'</tt> if not specified.
   */
  public native function get ddGroup():String;

  /**
   Configures the text in the drag proxy. Defaults to: <pre><code>ddText : '{0} selected row{1}'
   </code></pre><tt>{0}</tt> is replaced with the number of selected rows.
   */
  public native function get ddText():String;

  /**
   Defaults to <tt>true</tt> to enable deferred row rendering.
   <p>This allows the GridPanel to be initially rendered empty, with the expensive update of the row structure deferred so that layouts with GridPanels appear more quickly.</p>
   */
  public native function get deferRowRender():Boolean;

  /**
   <tt>true</tt> to disable selections in the grid. Defaults to <tt>false</tt>.
   <p>Ignored if a <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-selModel">SelectionModel</a> is specified.</p>
   */
  public native function get disableSelection():Boolean;

  /**
   Defaults to <tt>true</tt> to enable <a href="output/Ext.grid.Column.html#Ext.grid.Column-hidden">hiding of columns</a> with the <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-enableHdMenu">header menu</a>.
   */
  public native function get enableColumnHide():Boolean;

  /**
   Defaults to <tt>true</tt> to enable drag and drop reorder of columns. <tt>false</tt> to turn off column reordering via drag drop.
   */
  public native function get enableColumnMove():Boolean;

  /**
   <tt>false</tt> to turn off column resizing for the whole grid. Defaults to <tt>true</tt>.
   */
  public native function get enableColumnResize():Boolean;

  /**
   Enables dragging of the selected rows of the GridPanel. Defaults to <tt>false</tt>.
   <p>Setting this to <b><tt>true</tt></b> causes this GridPanel's <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-getView">GridView</a> to create an instance of <a href="Ext.grid.GridDragZone.html">Ext.grid.GridDragZone</a>. <b>Note</b>: this is available only <b>after</b> the Grid has been rendered as the GridView's <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-dragZone">dragZone</a></tt> property.</p><p>A cooperating <a href="Ext.dd.DropZone.html">DropZone</a> must be created who's implementations of <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeEnter">onNodeEnter</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOver">onNodeOver</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOut">onNodeOut</a> and <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeDrop">onNodeDrop</a> are able to process the <a href="output/Ext.grid.GridDragZone.html#Ext.grid.GridDragZone-getDragData">data</a> which is provided.</p>
   */
  public native function get enableDragDrop():Boolean;

  /**
   Defaults to <tt>true</tt> to enable the drop down button for menu in the headers.
   */
  public native function get enableHdMenu():Boolean;

  /**
   True to hide the grid's header. Defaults to <code>false</code>.
   */
  public native function get hideHeaders():Boolean;

  /**
   An <a href="Ext.LoadMask.html">Ext.LoadMask</a> config or true to mask the grid while loading. Defaults to <code>false</code>.
   */
  public native function get loadMask():Object;

  /**
   Sets the maximum height of the grid - ignored if <tt>autoHeight</tt> is not on.
   */
  public native function get maxHeight():Number;

  /**
   The minimum width a column can be resized to. Defaults to <tt>25</tt>.
   */
  public native function get minColumnWidth():Number;

  /**
   Any subclass of <a href="Ext.grid.AbstractSelectionModel.html">Ext.grid.AbstractSelectionModel</a> that will provide the selection model for the grid (defaults to <a href="Ext.grid.RowSelectionModel.html">Ext.grid.RowSelectionModel</a> if not specified).
   */
  public native function get selModel():Object;

  /**
   <tt>true</tt> to stripe the rows. Default is <tt>false</tt>. <p>This causes the CSS class <tt><b>x-grid3-row-alt</b></tt> to be added to alternate rows of the grid. A default CSS rule is provided which sets a background colour, but you can override this with a rule which either overrides the <b>background-color</b> style using the '!important' modifier, or which uses a CSS selector of higher specificity.</p>
   */
  public native function get stripeRows():Boolean;

  /**
   True to highlight rows when the mouse is over. Default is <tt>true</tt> for GridPanel, but <tt>false</tt> for EditorGridPanel.
   */
  public native function get trackMouseOver():Boolean;

  /**
   A config object that will be applied to the grid's UI view. Any of the config options available for <a href="Ext.grid.GridView.html">Ext.grid.GridView</a> can be specified here. This option is ignored if <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-view">view</a></tt> is specified.
   */
  public native function get viewConfig():Object;

  /**
   * Returns the grid's ColumnModel.
   *
   * @return The column model
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridPanel-method-getColumnModel Sencha Docs Ext JS 3.4
   */
  public native function getColumnModel():ColumnModel;

  /**
   * Called to get grid's drag proxy text, by default returns this.ddText.
   *
   * @return The text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridPanel-method-getDragDropText Sencha Docs Ext JS 3.4
   */
  public native function getDragDropText():String;

  /**
   * Returns the grid's underlying element.
   *
   * @return The element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridPanel-method-getGridEl Sencha Docs Ext JS 3.4
   */
  public native function getGridEl():Element;

  /**
   * Returns the grid's selection model configured by the <code><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-selModel">selModel</a></code> configuration option. If no selection model was configured, this will create and return a <a href="Ext.grid.RowSelectionModel.html">RowSelectionModel</a>.
   *
   * @return
    * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridPanel-method-getSelectionModel Sencha Docs Ext JS 3.4
   */
  public native function getSelectionModel():AbstractSelectionModel;

  /**
   * Returns the grid's data store.
   *
   * @return The store
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridPanel-method-getStore Sencha Docs Ext JS 3.4
   */
  public native function getStore():Store;

  /**
   * Returns the grid's GridView object.
   *
   * @return The grid view
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridPanel-method-getView Sencha Docs Ext JS 3.4
   */
  public native function getView():GridView;

  /**
   * Reconfigures the grid to use a different Store and Column Model and fires the 'reconfigure' event. The View will be bound to the new objects and refreshed.
   <p>Be aware that upon reconfiguring a GridPanel, certain existing settings <i>may</i> become invalidated. For example the configured <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">autoExpandColumn</a> may no longer exist in the new ColumnModel. Also, an existing <a href="Ext.PagingToolbar.html">PagingToolbar</a> will still be bound to the old Store, and will need rebinding. Any <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-plugins">plugins</a> might also need reconfiguring with the new data.</p>
   *
   * @param store The new <a href="Ext.data.Store.html">Ext.data.Store</a> object
   * @param colModel The new <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a> object
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GridPanel-method-reconfigure Sencha Docs Ext JS 3.4
   */
  public native function reconfigure(store:Store, colModel:ColumnModel):void;

}
}
    