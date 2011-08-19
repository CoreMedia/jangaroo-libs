package ext.config {


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
 *
 * <p>This class serves as a
 * typed config object for constructor of class ColumnModel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.grid.ColumnModel
 */
[ExtConfig(target="ext.grid.ColumnModel")]
public class columnmodel extends observable {

  public function columnmodel(config:Object = null) {

    super(config);
  }


  /**
   An Array of object literals. The config options defined by <b><a href="Ext.grid.Column.html">Ext.grid.Column</a></b> are the options which may appear in the object literal for each individual column definition.
   */
  public native function get columns():Array;

  /**
   * @private
   */
  public native function set columns(value:Array):void;

  /**
   Default sortable of columns which have no sortable specified (defaults to <tt>false</tt>). This property shall preferably be configured through the <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaults">defaults</a></b></tt> config property.
   */
  public native function get defaultSortable():Boolean;

  /**
   * @private
   */
  public native function set defaultSortable(value:Boolean):void;

  /**
   The width of columns which have no <tt><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-width">width</a></tt> specified (defaults to <tt>100</tt>). This property shall preferably be configured through the <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaults">defaults</a></b></tt> config property.
   */
  public native function get defaultWidth():Number;

  /**
   * @private
   */
  public native function set defaultWidth(value:Number):void;

  /**
   Object literal which will be used to apply <a href="Ext.grid.Column.html">Ext.grid.Column</a> configuration options to all <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-columns">columns</a></b></tt>. Configuration options specified with individual <a href="Ext.grid.Column.html">column</a> configs will supersede these <tt><b><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaults">defaults</a></b></tt>.
   */
  public native function get defaults():Object;

  /**
   * @private
   */
  public native function set defaults(value:Object):void;


}
}
    