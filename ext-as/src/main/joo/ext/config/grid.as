package ext.config {

import ext.data.Store;

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
 * <p>This class serves as a typed config object for constructor of class GridPanel.</p>
 *
 * @see ext.grid.GridPanel
 */
[ExtConfig(target="ext.grid.GridPanel")]
public class grid extends panel {

  public function grid(config:Object = null) {

    super(config);
  }


  /**
   The <tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-id">id</a></tt> of a <a href="Ext.grid.Column.html">column</a> in this grid that should expand to fill unused space. This value specified here can not be <tt>0</tt>.
   <br/><p><b>Note</b>: If the Grid's <a href="Ext.grid.GridView.html">view</a> is configured with <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-forceFit">forceFit</a>=true</tt> the <tt>autoExpandColumn</tt> is ignored. See <a href="Ext.grid.Column.html">Ext.grid.Column</a>.<tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-width">width</a></tt> for additional details.</p><p>See <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandMax">autoExpandMax</a></tt> and <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandMin">autoExpandMin</a></tt> also.</p>
   */
  public native function get autoExpandColumn():String;

  /**
   * @private
   */
  public native function set autoExpandColumn(value:String):void;

  /**
   The maximum width the <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">autoExpandColumn</a></tt> can have (if enabled). Defaults to <tt>1000</tt>.
   */
  public native function get autoExpandMax():Number;

  /**
   * @private
   */
  public native function set autoExpandMax(value:Number):void;

  /**
   The minimum width the <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">autoExpandColumn</a></tt> can have (if enabled). Defaults to <tt>50</tt>.
   */
  public native function get autoExpandMin():Number;

  /**
   * @private
   */
  public native function set autoExpandMin(value:Number):void;

  /**
   An array of events that, when fired, should be bubbled to any parent container. See <a href="output/Ext.util.Observable.html#Ext.util.Observable-enableBubble">Ext.util.Observable.enableBubble</a>. Defaults to <tt>[]</tt>.

   */
  override public native function get bubbleEvents():Array;

  /**
   * @private
   */
  override public native function set bubbleEvents(value:Array):void;

  /**
   Shorthand for <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-colModel">colModel</a></tt>.
   */
  public native function get cm():Object;

  /**
   * @private
   */
  public native function set cm(value:Object):void;

  /**
   The <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a> to use when rendering the grid (required).
   */
  public native function get colModel():Object;

  /**
   * @private
   */
  public native function set colModel(value:Object):void;

  /**
   <tt>true</tt> to add css for column separation lines. Default is <tt>false</tt>.
   */
  public native function get columnLines():Boolean;

  /**
   * @private
   */
  public native function set columnLines(value:Boolean):void;

  /**
   An array of <a href="Ext.grid.Column.html">columns</a> to auto create a <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a>. The ColumnModel may be explicitly created via the <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-colModel">colModel</a></tt> configuration property.
   */
  public native function get columns():Array;

  /**
   * @private
   */
  public native function set columns(value:Array):void;

  /**
   The DD group this GridPanel belongs to. Defaults to <tt>'GridDD'</tt> if not specified.
   */
  public native function get ddGroup():String;

  /**
   * @private
   */
  public native function set ddGroup(value:String):void;

  /**
   Configures the text in the drag proxy. Defaults to: <pre><code>ddText : '{0} selected row{1}'
   </code></pre><tt>{0}</tt> is replaced with the number of selected rows.
   */
  public native function get ddText():String;

  /**
   * @private
   */
  public native function set ddText(value:String):void;

  /**
   Defaults to <tt>true</tt> to enable deferred row rendering.
   <p>This allows the GridPanel to be initially rendered empty, with the expensive update of the row structure deferred so that layouts with GridPanels appear more quickly.</p>
   */
  public native function get deferRowRender():Boolean;

  /**
   * @private
   */
  public native function set deferRowRender(value:Boolean):void;

  /**
   <tt>true</tt> to disable selections in the grid. Defaults to <tt>false</tt>.
   <p>Ignored if a <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-selModel">SelectionModel</a> is specified.</p>
   */
  public native function get disableSelection():Boolean;

  /**
   * @private
   */
  public native function set disableSelection(value:Boolean):void;

  /**
   Defaults to <tt>true</tt> to enable <a href="output/Ext.grid.Column.html#Ext.grid.Column-hidden">hiding of columns</a> with the <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-enableHdMenu">header menu</a>.
   */
  public native function get enableColumnHide():Boolean;

  /**
   * @private
   */
  public native function set enableColumnHide(value:Boolean):void;

  /**
   Defaults to <tt>true</tt> to enable drag and drop reorder of columns. <tt>false</tt> to turn off column reordering via drag drop.
   */
  public native function get enableColumnMove():Boolean;

  /**
   * @private
   */
  public native function set enableColumnMove(value:Boolean):void;

  /**
   <tt>false</tt> to turn off column resizing for the whole grid. Defaults to <tt>true</tt>.
   */
  public native function get enableColumnResize():Boolean;

  /**
   * @private
   */
  public native function set enableColumnResize(value:Boolean):void;

  /**
   Enables dragging of the selected rows of the GridPanel. Defaults to <tt>false</tt>.
   <p>Setting this to <b><tt>true</tt></b> causes this GridPanel's <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-getView">GridView</a> to create an instance of <a href="Ext.grid.GridDragZone.html">Ext.grid.GridDragZone</a>. <b>Note</b>: this is available only <b>after</b> the Grid has been rendered as the GridView's <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-dragZone">dragZone</a></tt> property.</p><p>A cooperating <a href="Ext.dd.DropZone.html">DropZone</a> must be created who's implementations of <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeEnter">onNodeEnter</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOver">onNodeOver</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOut">onNodeOut</a> and <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeDrop">onNodeDrop</a> are able to process the <a href="output/Ext.grid.GridDragZone.html#Ext.grid.GridDragZone-getDragData">data</a> which is provided.</p>
   */
  public native function get enableDragDrop():Boolean;

  /**
   * @private
   */
  public native function set enableDragDrop(value:Boolean):void;

  /**
   Defaults to <tt>true</tt> to enable the drop down button for menu in the headers.
   */
  public native function get enableHdMenu():Boolean;

  /**
   * @private
   */
  public native function set enableHdMenu(value:Boolean):void;

  /**
   True to hide the grid's header. Defaults to <code>false</code>.
   */
  public native function get hideHeaders():Boolean;

  /**
   * @private
   */
  public native function set hideHeaders(value:Boolean):void;

  /**
   An <a href="Ext.LoadMask.html">Ext.LoadMask</a> config or true to mask the grid while loading. Defaults to <code>false</code>.
   */
  public native function get loadMask():Object;

  /**
   * @private
   */
  public native function set loadMask(value:Object):void;

  /**
   Sets the maximum height of the grid - ignored if <tt>autoHeight</tt> is not on.
   */
  public native function get maxHeight():Number;

  /**
   * @private
   */
  public native function set maxHeight(value:Number):void;

  /**
   The minimum width a column can be resized to. Defaults to <tt>25</tt>.
   */
  public native function get minColumnWidth():Number;

  /**
   * @private
   */
  public native function set minColumnWidth(value:Number):void;

  /**
   Any subclass of <a href="Ext.grid.AbstractSelectionModel.html">Ext.grid.AbstractSelectionModel</a> that will provide the selection model for the grid (defaults to <a href="Ext.grid.RowSelectionModel.html">Ext.grid.RowSelectionModel</a> if not specified).
   */
  public native function get selModel():Object;

  /**
   * @private
   */
  public native function set selModel(value:Object):void;

  /**
   Shorthand for <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-selModel">selModel</a></tt>.
   */
  public native function get sm():Object;

  /**
   * @private
   */
  public native function set sm(value:Object):void;

  /**
   An array of events that, when fired, should trigger this component to save its state. Defaults to:<pre><code>stateEvents: ['columnmove', 'columnresize', 'sortchange', 'groupchange']
   </code></pre><p>These can be any types of events supported by this component, including browser or custom events (e.g., <tt>['click', 'customerchange']</tt>).</p><p>See <a href="output/Ext.Component.html#Ext.Component-stateful">Ext.Component.stateful</a> for an explanation of saving and restoring Component state.</p>
   */
  override public native function get stateEvents():Array;

  /**
   * @private
   */
  override public native function set stateEvents(value:Array):void;

  /**
   The <a href="Ext.data.Store.html">Ext.data.Store</a> the grid should use as its data source (required).
   */
  public native function get store():Store;

  /**
   * @private
   */
  public native function set store(value:Store):void;

  /**
   <tt>true</tt> to stripe the rows. Default is <tt>false</tt>. <p>This causes the CSS class <tt><b>x-grid3-row-alt</b></tt> to be added to alternate rows of the grid. A default CSS rule is provided which sets a background colour, but you can override this with a rule which either overrides the <b>background-color</b> style using the '!important' modifier, or which uses a CSS selector of higher specificity.</p>
   */
  public native function get stripeRows():Boolean;

  /**
   * @private
   */
  public native function set stripeRows(value:Boolean):void;

  /**
   True to highlight rows when the mouse is over. Default is <tt>true</tt> for GridPanel, but <tt>false</tt> for EditorGridPanel.
   */
  public native function get trackMouseOver():Boolean;

  /**
   * @private
   */
  public native function set trackMouseOver(value:Boolean):void;

  /**
   The <a href="Ext.grid.GridView.html">Ext.grid.GridView</a> used by the grid. This can be set before a call to <a href="output/Ext.Component.html#Ext.Component-render">render()</a>.
   */
  public native function get view():Object;

  /**
   * @private
   */
  public native function set view(value:Object):void;

  /**
   A config object that will be applied to the grid's UI view. Any of the config options available for <a href="Ext.grid.GridView.html">Ext.grid.GridView</a> can be specified here. This option is ignored if <tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-view">view</a></tt> is specified.
   */
  public native function get viewConfig():Object;

  /**
   * @private
   */
  public native function set viewConfig(value:Object):void;


}
}
    