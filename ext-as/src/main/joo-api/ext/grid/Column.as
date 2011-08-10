package ext.grid {

import ext.Editor;
import ext.config.gridcolumn;
import ext.form.Field;

/**
 * Fires when this Column is clicked.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Column</code>

 *       </li>

 *       <li>
 *           <code>The:Grid</code>
 owning GridPanel
 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * Fires when this Column is right clicked.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Column</code>

 *       </li>

 *       <li>
 *           <code>The:Grid</code>
 owning GridPanel
 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="contextmenu")]

/**
 * Fires when this Column is double clicked.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Column</code>

 *       </li>

 *       <li>
 *           <code>The:Grid</code>
 owning GridPanel
 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="dblclick")]

/**
 * Fires when this Column receives a mousedown event.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Column</code>

 *       </li>

 *       <li>
 *           <code>The:Grid</code>
 owning GridPanel
 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="mousedown")]


/**
 * This class encapsulates column configuration data to be used in the initialization of a <a href="Ext.grid.ColumnModel.html">ColumnModel</a>.
 <p>While subclasses are provided to render data in different ways, this class renders a passed data field unchanged and is usually used for textual columns.</p>
 * <p>This component is created by the xtype 'gridcolumn' / the EXML element &lt;gridcolumn>.</p>
 * @see ext.config.gridcolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#cls-Ext.grid.Column Ext JS source
 */
public class Column {

  /**
   * Create a new Column.
   *
   * @param config The config object
   * @see ext.config.gridcolumn
   */
  public function Column(config:gridcolumn = null) {
    super();
  }

  /**
   Optional. A function which returns displayable data when passed the following parameters: <div class="mdetail-params"><ul><li><b>value</b> : Object<p class="sub-desc">The data value for the cell.</p></li><li><b>metadata</b> : Object<p class="sub-desc">An object in which you may set the following attributes:</p><ul><li><b>css</b> : String<p class="sub-desc">A CSS class name to add to the cell's TD element.</p></li><li><b>attr</b> : String<p class="sub-desc">An HTML attribute definition string to apply to the data container element <i>within</i> the table cell (e.g. 'style="color:red;"').</p></li></ul><br/><br/></li><li><b>record</b> : Ext.data.record<p class="sub-desc">The <a href="Ext.data.Record.html">Ext.data.Record</a> from which the data was extracted.</p></li><li><b>rowIndex</b> : Number<p class="sub-desc">Row index</p></li><li><b>colIndex</b> : Number<p class="sub-desc">Column index</p></li><li><b>store</b> : Ext.data.Store<p class="sub-desc">The <a href="Ext.data.Store.html">Ext.data.Store</a> object from which the Record was extracted.</p></li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#prop-Ext.grid.Column-renderer Ext JS source
   */
  public native function get renderer():Function;

  /**
   * @private
   */
  public native function set renderer(value:Function):void;

  /**
   Set the CSS text-align property of the column. Defaults to undefined.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get align():String;

  /**
   An inline style definition string which is applied to all table cells in the column (excluding headers). Defaults to undefined.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get css():String;

  /**
   <b>Required</b>. The name of the field in the grid's <a href="Ext.data.Store.html">Ext.data.Store</a>'s <a href="Ext.data.Record.html">Ext.data.Record</a> definition from which to draw the column's value.

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dataIndex():String;

  /**
   Defaults to <tt>true</tt>, enabling the configured <tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-editor">editor</a></tt>. Set to <tt>false</tt> to initially disable editing on this column. The initial configuration may be dynamically altered using <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a>.<a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-setEditable">setEditable()</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get editable():Boolean;

  /**
   The <a href="Ext.form.Field.html">Ext.form.Field</a> to use when editing values in this column if editing is supported by the grid. See <tt><a href="output/Ext.grid.Column.html#Ext.grid.Column-editable">editable</a></tt> also.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get editor():Field;

  /**
   If the grid is being rendered by an <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>, this option may be used to specify the text to display when there is an empty group value. Defaults to the <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>.<a href="output/Ext.grid.GroupingView.html#Ext.grid.GroupingView-emptyGroupText">emptyGroupText</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get emptyGroupText():String;

  /**
   <tt>true</tt> if the column width cannot be changed. Defaults to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get fixed():Boolean;

  /**
   If the grid is being rendered by an <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>, this option may be used to specify the text with which to prefix the group field value in the group header line. See also <a href="output/Ext.grid.Column.html#Ext.grid.Column-groupRenderer">groupRenderer</a> and <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>.<a href="output/Ext.grid.GroupingView.html#Ext.grid.GroupingView-showGroupName">showGroupName</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get groupName():String;

  /**
   If the grid is being rendered by an <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a>, this option may be used to disable the header menu item to group by the column selected. Defaults to <tt>true</tt>, which enables the header menu group option. Set to <tt>false</tt> to disable (but still show) the group option in the header menu for the column. See also <code><a href="output/Ext.grid.Column.html#Ext.grid.Column-groupName">groupName</a></code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get groupable():Boolean;

  /**
   The header text to be used as innerHTML (html tags are accepted) to display in the Grid view. <b>Note</b>: to have a clickable header with no text displayed use <tt>'&amp;#160;'</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get header():String;

  /**
   <tt>true</tt> to initially hide this column. Defaults to <tt>false</tt>. A hidden column <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-enableColumnHide">may be shown via the header row menu</a>. If a column is never to be shown, simply do not include this column in the Column Model at all.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hidden():Boolean;

  /**
   Specify as <tt>false</tt> to prevent the user from hiding this column (defaults to true). To disallow column hiding globally for all columns in the grid, use <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-enableColumnHide">Ext.grid.GridPanel.enableColumnHide</a> instead.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideable():Boolean;

  /**
   A name which identifies this column (defaults to the column's initial ordinal position.) The <tt>id</tt> is used to create a CSS <b>class</b> name which is applied to all table cells (including headers) in that column (in this context the <tt>id</tt> does not need to be unique). The class name takes the form of <pre>x-grid3-td-<b>id</b></pre>Header cells will also receive this class name, but will also have the class <pre>x-grid3-hd</pre>So, to target header cells, use CSS selectors such as:<pre>.x-grid3-hd-row .x-grid3-td-<b>id</b></pre>The <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">Ext.grid.GridPanel.autoExpandColumn</a> grid config option references the column via this unique identifier.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get id():String;

  /**
   Used by ColumnModel setConfig method to avoid reprocessing a Column if <code>isColumn</code> is not set ColumnModel will recreate a new Ext.grid.Column Defaults to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get isColumn():Boolean;

  /**
   <tt>true</tt> to disable the column menu. Defaults to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get menuDisabled():Boolean;

  /**
   <tt>false</tt> to disable column resizing. Defaults to <tt>true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get resizable():Boolean;

  /**
   The scope (<tt><b>this</b></tt> reference) in which to execute the renderer. Defaults to the Column configuration object.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

  /**
   <tt>true</tt> if sorting is to be allowed on this column. Defaults to the value of the <code><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-defaultSortable">Ext.grid.ColumnModel.defaultSortable</a></code> property. Whether local/remote sorting is used is specified in <code><a href="output/Ext.data.Store.html#Ext.data.Store-remoteSort">Ext.data.Store.remoteSort</a></code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sortable():Boolean;

  /**
   A text string to use as the column header's tooltip. If Quicktips are enabled, this value will be used as the text of the quick tip, otherwise it will be set as the header's HTML title attribute. Defaults to ''.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tooltip():String;

  /**
   The initial width in pixels of the column. The width of each column can also be affected if any of the following are configured: <div class="mdetail-params"><ul><li><a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>.<tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-autoExpandColumn">autoExpandColumn</a></tt></li><li><a href="Ext.grid.GridView.html">Ext.grid.GridView</a>.<tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-forceFit">forceFit</a></tt> <div class="sub-desc"><p>By specifying <tt>forceFit:true</tt>, <a href="output/Ext.grid.Column.html#Ext.grid.Column-fixed">non-fixed width</a> columns will be re-proportioned (based on the relative initial widths) to fill the width of the grid so that no horizontal scrollbar is shown.</p></div></li><li><a href="Ext.grid.GridView.html">Ext.grid.GridView</a>.<tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-autoFill">autoFill</a></tt></li><li><a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>.<tt><a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-minColumnWidth">minColumnWidth</a></tt></li><li style="list-style: none"><br/><p><b>Note</b>: when the width of each column is determined, a space on the right side is reserved for the vertical scrollbar. The <a href="Ext.grid.GridView.html">Ext.grid.GridView</a>.<tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-scrollOffset">scrollOffset</a></tt> can be modified to reduce or eliminate the reserved offset.</p></li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get width():Number;

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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get xtype():String;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#method-Ext.grid.Column-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   * Returns the <a href="Ext.Editor.html">editor</a> defined for this column that was created to wrap the <a href="Ext.form.Field.html">Field</a> used to edit the cell.
   *
   * @param rowIndex The row index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#method-Ext.grid.Column-getCellEditor Ext JS source
   */
  public native function getCellEditor(rowIndex:Number):Editor;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#method-Ext.grid.Column-processEvent Ext JS source
   */
  public native function processEvent():void;

  /**
   * Sets a new editor for this column.
   *
   * @param editor The editor to set
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#method-Ext.grid.Column-setEditor Ext JS source
   */
  public native function setEditor(editor:*):void;

}
}
    