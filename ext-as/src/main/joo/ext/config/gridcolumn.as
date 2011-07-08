package ext.config {

import ext.Ext;
import ext.form.Field;

/**
 * This class encapsulates column configuration data to be used in the initialization of a <a href="Ext.grid.ColumnModel.html">ColumnModel</a>.
 <p>While subclasses are provided to render data in different ways, this class renders a passed data field unchanged and is usually used for textual columns.</p>
 * <p>This class serves as a typed config object for constructor of class Column.</p>
 *
 * @see ext.grid.Column
 */
[ExtConfig(target="ext.grid.Column")]
public class gridcolumn {

  public function gridcolumn(config:Object = null) {

    Ext.apply(this, config);
  }


  /**
   Set the CSS text-align property of the column. Defaults to undefined.
   */
  public native function get align():String;

  /**
   * @private
   */
  public native function set align(value:String):void;

  /**
   An inline style definition string which is applied to all table cells in the column (excluding headers). Defaults to undefined.
   */
  public native function get css():String;

  /**
   * @private
   */
  public native function set css(value:String):void;

  /**
   <b>Required</b>. The name of the field in the grid's <a href="Ext.data.Store.html">Ext.data.Store</a>'s <a href="Ext.data.Record.html">Ext.data.Record</a> definition from which to draw the column's value.

   */
  public native function get dataIndex():String;

  /**
   * @private
   */
  public native function set dataIndex(value:String):void;

  /**
   Defaults to <tt>true</tt>, enabling the configured <tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-editor">editor</a></tt>. Set to <tt>false</tt> to initially disable editing on this column. The initial configuration may be dynamically altered using <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a>.<a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-setEditable">setEditable()</a>.
   */
  public native function get editable():Boolean;

  /**
   * @private
   */
  public native function set editable(value:Boolean):void;

  /**
   The <a href="Ext.form.Field.html">Ext.form.Field</a> to use when editing values in this column if editing is supported by the grid. See <tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-editable">editable</a></tt> also.
   */
  public native function get editor():Field;

  /**
   * @private
   */
  public native function set editor(value:Field):void;

  /**
   If the grid is being rendered by an <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>, this option may be used to specify the text to display when there is an empty group value. Defaults to the <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>.<a href="output/Ext.grid.GroupingView.html#Ext.grid.GroupingView-emptyGroupText">emptyGroupText</a>.
   */
  public native function get emptyGroupText():String;

  /**
   * @private
   */
  public native function set emptyGroupText(value:String):void;

  /**
   <tt>true</tt> if the column width cannot be changed. Defaults to <tt>false</tt>.
   */
  public native function get fixed():Boolean;

  /**
   * @private
   */
  public native function set fixed(value:Boolean):void;

  /**
   If the grid is being rendered by an <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>, this option may be used to specify the text with which to prefix the group field value in the group header line. See also <a href="output/Ext.grid.Column.html#Ext.grid.Column-groupRenderer">groupRenderer</a> and <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>.<a href="output/Ext.grid.GroupingView.html#Ext.grid.GroupingView-showGroupName">showGroupName</a>.
   */
  public native function get groupName():String;

  /**
   * @private
   */
  public native function set groupName(value:String):void;

  /**
   Optional. If the grid is being rendered by an <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>, this option may be used to specify the function used to format the grouping field value for display in the group <a href="output/Ext.grid.Column.html#Ext.grid.Column-groupName">header</a>. If a <tt><b>groupRenderer</b></tt> is not specified, the configured <tt><b><a href="output/Ext.grid.Column.html#Ext.grid.Column-renderer">renderer</a></b></tt> will be called; if a <tt><b><a href="output/Ext.grid.Column.html#Ext.grid.Column-renderer">renderer</a></b></tt> is also not specified the new value of the group field will be used.
   <p>The called function (either the <tt><b>groupRenderer</b></tt> or <tt><b><a href="output/Ext.grid.Column.html#Ext.grid.Column-renderer">renderer</a></b></tt>) will be passed the following parameters:</p><div class="mdetail-params"><ul><li><b>v</b> : Object<p class="sub-desc">The new value of the group field.</p></li><li><b>unused</b> : undefined<p class="sub-desc">Unused parameter.</p></li><li><b>r</b> : Ext.data.Record<p class="sub-desc">The Record providing the data for the row which caused group change.</p></li><li><b>rowIndex</b> : Number<p class="sub-desc">The row index of the Record which caused group change.</p></li><li><b>colIndex</b> : Number<p class="sub-desc">The column index of the group field.</p></li><li><b>ds</b> : Ext.data.Store<p class="sub-desc">The Store which is providing the data Model.</p></li></ul></div><br/><br/> <p>The function should return a string value.</p>
   */
  public native function get groupRenderer():Function;

  /**
   * @private
   */
  public native function set groupRenderer(value:Function):void;

  /**
   If the grid is being rendered by an <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>, this option may be used to disable the header menu item to group by the column selected. Defaults to <tt>true</tt>, which enables the header menu group option. Set to <tt>false</tt> to disable (but still show) the group option in the header menu for the column. See also <code><a href="output/Ext.grid.Column.html#Ext.grid.Column-groupName">groupName</a></code>.
   */
  public native function get groupable():Boolean;

  /**
   * @private
   */
  public native function set groupable(value:Boolean):void;

  /**
   The header text to be used as innerHTML (html tags are accepted) to display in the Grid view. <b>Note</b>: to have a clickable header with no text displayed use <tt>'&amp;#160;'</tt>.
   */
  public native function get header():String;

  /**
   * @private
   */
  public native function set header(value:String):void;

  /**
   <tt>true</tt> to initially hide this column. Defaults to <tt>false</tt>. A hidden column <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-enableColumnHide">may be shown via the header row menu</a>. If a column is never to be shown, simply do not include this column in the Column Model at all.
   */
  public native function get hidden():Boolean;

  /**
   * @private
   */
  public native function set hidden(value:Boolean):void;

  /**
   Specify as <tt>false</tt> to prevent the user from hiding this column (defaults to true). To disallow column hiding globally for all columns in the grid, use <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-enableColumnHide">Ext.grid.GridPanel.enableColumnHide</a> instead.
   */
  public native function get hideable():Boolean;

  /**
   * @private
   */
  public native function set hideable(value:Boolean):void;

  /**
   A name which identifies this column (defaults to the column's initial ordinal position.) The <tt>id</tt> is used to create a CSS <b>class</b> name which is applied to all table cells (including headers) in that column (in this context the <tt>id</tt> does not need to be unique). The class name takes the form of <pre>x-grid3-td-<b>id</b></pre>Header cells will also receive this class name, but will also have the class <pre>x-grid3-hd</pre>So, to target header cells, use CSS selectors such as:<pre>.x-grid3-hd-row .x-grid3-td-<b>id</b></pre>The <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">Ext.grid.GridPanel.autoExpandColumn</a> grid config option references the column via this unique identifier.
   */
  public native function get id():String;

  /**
   * @private
   */
  public native function set id(value:String):void;

  /**
   Used by ColumnModel setConfig method to avoid reprocessing a Column if <code>isColumn</code> is not set ColumnModel will recreate a new Ext.grid.Column Defaults to true.
   */
  public native function get isColumn():Boolean;

  /**
   * @private
   */
  public native function set isColumn(value:Boolean):void;

  /**
   <tt>true</tt> to disable the column menu. Defaults to <tt>false</tt>.
   */
  public native function get menuDisabled():Boolean;

  /**
   * @private
   */
  public native function set menuDisabled(value:Boolean):void;

  /**
   For an alternative to specifying a renderer see <code><a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a></code>
   <p>Optional. A renderer is an 'interceptor' method which can be used transform data (value, appearance, etc.) before it is rendered). This may be specified in either of three ways:</p><div class="mdetail-params"><ul><li>A renderer function used to return HTML markup for a cell given the cell's data value.</li><li>A string which references a property name of the <a href="Ext.util.Format.html">Ext.util.Format</a> class which provides a renderer function.</li><li>An object specifying both the renderer function, and its execution scope (<tt><b>this</b></tt> reference) e.g.:<pre style="margin-left:1.2em"><code>{
   fn: this.gridRenderer,
   scope: this
   }
   </code></pre></li></ul></div>If not specified, the default renderer uses the raw data value.<br/><br/> <p>For information about the renderer function (passed parameters, etc.), see <a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-setRenderer">Ext.grid.ColumnModel.setRenderer</a>. An example of specifying renderer function inline:</p><pre><code>var companyColumn = {
   header: 'Company Name',
   dataIndex: 'company',
   renderer: function(value, metaData, record, rowIndex, colIndex, store) {
   // provide the logic depending on business rules
   // name of your own choosing to manipulate the cell depending upon
   // the data in the underlying Record object.
   if (value == 'whatever') {
   //metaData.css : String : A CSS class name to add to the TD element of the cell.
   //metaData.attr : String : An html attribute definition string to apply to
   //                         the data container element within the table
   //                         cell (e.g. 'style="color:red;"').
   metaData.css = 'name-of-css-class-you-will-define';
   }
   return value;
   }
   }
   </code></pre>See also <a href="output/Ext.grid.Column.html#Ext.grid.Column-scope">scope</a>.
   */
  public native function get renderer():*;

  /**
   * @private
   */
  public native function set renderer(value:*):void;

  /**
   <tt>false</tt> to disable column resizing. Defaults to <tt>true</tt>.
   */
  public native function get resizable():Boolean;

  /**
   * @private
   */
  public native function set resizable(value:Boolean):void;

  /**
   The scope (<tt><b>this</b></tt> reference) in which to execute the renderer. Defaults to the Column configuration object.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   <tt>true</tt> if sorting is to be allowed on this column. Defaults to the value of the <code><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaultSortable">Ext.grid.ColumnModel.defaultSortable</a></code> property. Whether local/remote sorting is used is specified in <code><a href="output/Ext.data.Store.html#Ext.data.Store-remoteSort">Ext.data.Store.remoteSort</a></code>.
   */
  public native function get sortable():Boolean;

  /**
   * @private
   */
  public native function set sortable(value:Boolean):void;

  /**
   A text string to use as the column header's tooltip. If Quicktips are enabled, this value will be used as the text of the quick tip, otherwise it will be set as the header's HTML title attribute. Defaults to ''.
   */
  public native function get tooltip():String;

  /**
   * @private
   */
  public native function set tooltip(value:String):void;

  /**
   The initial width in pixels of the column. The width of each column can also be affected if any of the following are configured: <div class="mdetail-params"><ul><li><a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>.<tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">autoExpandColumn</a></tt></li><li><a href="Ext.grid.GridView.html">Ext.grid.GridView</a>.<tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-forceFit">forceFit</a></tt> <div class="sub-desc"><p>By specifying <tt>forceFit:true</tt>, <a href="output/Ext.grid.Column.html#Ext.grid.Column-fixed">non-fixed width</a> columns will be re-proportioned (based on the relative initial widths) to fill the width of the grid so that no horizontal scrollbar is shown.</p></div></li><li><a href="Ext.grid.GridView.html">Ext.grid.GridView</a>.<tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-autoFill">autoFill</a></tt></li><li><a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>.<tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-minColumnWidth">minColumnWidth</a></tt></li><li style="list-style: none"><br/><p><b>Note</b>: when the width of each column is determined, a space on the right side is reserved for the vertical scrollbar. The <a href="Ext.grid.GridView.html">Ext.grid.GridView</a>.<tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-scrollOffset">scrollOffset</a></tt> can be modified to reduce or eliminate the reserved offset.</p></li></ul></div>
   */
  public native function get width():Number;

  /**
   * @private
   */
  public native function set width(value:Number):void;

  /**
   A String which references a predefined <a href="Ext.grid.Column.html">Ext.grid.Column</a> subclass type which is preconfigured with an appropriate <code><a href="output/Ext.grid.Column.html#Ext.grid.Column-renderer">renderer</a></code> to be easily configured into a ColumnModel. The predefined <a href="Ext.grid.Column.html">Ext.grid.Column</a> subclass types are: <div class="mdetail-params"><ul><li><b><tt>gridcolumn</tt></b> : <a href="Ext.grid.Column.html">Ext.grid.Column</a> (<b>Default</b>)</li><li><b><tt>booleancolumn</tt></b> : <a href="Ext.grid.BooleanColumn.html">Ext.grid.BooleanColumn</a></li><li><b><tt>numbercolumn</tt></b> : <a href="Ext.grid.NumberColumn.html">Ext.grid.NumberColumn</a></li><li><b><tt>datecolumn</tt></b> : <a href="Ext.grid.DateColumn.html">Ext.grid.DateColumn</a></li><li><b><tt>templatecolumn</tt></b> : <a href="Ext.grid.TemplateColumn.html">Ext.grid.TemplateColumn</a></li></ul></div><p>Configuration properties for the specified <code>xtype</code> may be specified with the Column configuration properties, for example:</p><pre><code>var grid = new Ext.grid.GridPanel({
   ...
   columns: [{
   header: 'Last Updated',
   dataIndex: 'lastChange',
   width: 85,
   sortable: true,
   //renderer: Ext.util.Format.dateRenderer('m/d/Y'),
   xtype: 'datecolumn', // use xtype instead of renderer
   format: 'M/d/Y' // configuration property for <a href="Ext.grid.DateColumn.html">Ext.grid.DateColumn</a>
   }, {
   ...
   }]
   });
   </code></pre>
   */
  public native function get xtype():String;

  /**
   * @private
   */
  public native function set xtype(value:String):void;


}
}
    