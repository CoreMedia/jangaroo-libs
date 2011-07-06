package ext.config {


/**
 * This class encapsulates the user interface of an <a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>. Methods of this class may be used to access user interface elements to enable special display effects. Do not change the DOM structure of the user interface.
 <p>This class does not provide ways to manipulate the underlying data. The data model of a Grid is held in an <a href="Ext.data.Store.html">Ext.data.Store</a>.</p>
 * <p>This class serves as a typed config object for constructor of class GridView.</p>
 *
 * @see ext.grid.GridView
 */
[ExtConfig(target="ext.grid.GridView")]
public class gridview extends observable {

  public function gridview(config:Object = null) {

    super(config);
  }


  /**
   Defaults to <tt>false</tt>. Specify <tt>true</tt> to have the column widths re-proportioned when the grid is <b>initially rendered</b>. The <a href="output/Ext.grid.Column.html#Ext.grid.Column-width">initially configured width</a> of each column will be adjusted to fit the grid width and prevent horizontal scrolling. If columns are later resized (manually or programmatically), the other columns in the grid will <b>not</b> be resized to fit the grid width. See <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-forceFit">forceFit</a></tt> also.
   */
  public native function get autoFill():Boolean;

  /**
   * @private
   */
  public native function set autoFill(value:Boolean):void;

  /**
   The selector used to find cells internally (defaults to <tt>'td.x-grid3-cell'</tt>)
   */
  public native function get cellSelector():String;

  /**
   * @private
   */
  public native function set cellSelector(value:String):void;

  /**
   The number of levels to search for cells in event delegation (defaults to <tt>4</tt>)
   */
  public native function get cellSelectorDepth():Number;

  /**
   * @private
   */
  public native function set cellSelectorDepth(value:Number):void;

  /**
   The text displayed in the 'Columns' menu item (defaults to <tt>'Columns'</tt>)
   */
  public native function get columnsText():String;

  /**
   * @private
   */
  public native function set columnsText(value:String):void;

  /**
   True to defer <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-emptyText">emptyText</a></tt> being applied until the store's first load (defaults to <tt>true</tt>).
   */
  public native function get deferEmptyText():Boolean;

  /**
   * @private
   */
  public native function set deferEmptyText(value:Boolean):void;

  /**
   Default text (html tags are accepted) to display in the grid body when no rows are available (defaults to ''). This value will be used to update the <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-mainBody">mainBody</a></tt>: <pre><code>   this.mainBody.update('&lt;div class="x-grid-empty"&gt;' + this.emptyText + '&lt;/div&gt;');
   </code></pre>
   */
  public native function get emptyText():String;

  /**
   * @private
   */
  public native function set emptyText(value:String):void;

  /**
   True to add a second TR element per row that can be used to provide a row body that spans beneath the data row. Use the <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-getRowClass">getRowClass</a> method's rowParams config to customize the row body.
   */
  public native function get enableRowBody():Boolean;

  /**
   * @private
   */
  public native function set enableRowBody(value:Boolean):void;

  /**
   Defaults to <tt>false</tt>. Specify <tt>true</tt> to have the column widths re-proportioned at <b>all times</b>.
   <p>The <a href="output/Ext.grid.Column.html#Ext.grid.Column-width">initially configured width</a> of each column will be adjusted to fit the grid width and prevent horizontal scrolling. If columns are later resized (manually or programmatically), the other columns in the grid <b>will</b> be resized to fit the grid width.</p><p>Columns which are configured with <code>fixed: true</code> are omitted from being resized.</p><p>See <tt><a href="output/Ext.grid.GridView.html#Ext.grid.GridView-autoFill">autoFill</a></tt>.</p>
   */
  public native function get forceFit():Boolean;

  /**
   * @private
   */
  public native function set forceFit(value:Boolean):void;

  /**
   The CSS class to add to the header cell when its menu is visible. Defaults to 'x-grid3-hd-menu-open'
   */
  public native function get headerMenuOpenCls():String;

  /**
   * @private
   */
  public native function set headerMenuOpenCls(value:String):void;

  /**
   True to disable the grid column headers (defaults to <tt>false</tt>). Use the <a href="Ext.grid.ColumnModel.html">ColumnModel</a> <tt><a href="output/Ext.grid.ColumnModel.html#Ext.grid.ColumnModel-menuDisabled">menuDisabled</a></tt> config to disable the <i>menu</i> for individual columns. While this config is true the following will be disabled:<div class="mdetail-params"><ul><li>clicking on header to sort</li><li>the trigger to reveal the menu.</li></ul></div>
   */
  public native function get headersDisabled():Boolean;

  /**
   * @private
   */
  public native function set headersDisabled(value:Boolean):void;

  /**
   True to show the dirty cell indicator when a cell has been modified. Defaults to <tt>true</tt>.
   */
  public native function get markDirty():Boolean;

  /**
   * @private
   */
  public native function set markDirty(value:Boolean):void;

  /**
   The selector used to find row bodies internally (defaults to <tt>'div.x-grid3-row'</tt>)
   */
  public native function get rowBodySelector():String;

  /**
   * @private
   */
  public native function set rowBodySelector(value:String):void;

  /**
   The number of levels to search for row bodies in event delegation (defaults to <tt>10</tt>)
   */
  public native function get rowBodySelectorDepth():Number;

  /**
   * @private
   */
  public native function set rowBodySelectorDepth(value:Number):void;

  /**
   The CSS class added to each row when it is hovered over. Defaults to 'x-grid3-row-over'
   */
  public native function get rowOverCls():String;

  /**
   * @private
   */
  public native function set rowOverCls(value:String):void;

  /**
   The selector used to find rows internally (defaults to <tt>'div.x-grid3-row'</tt>)
   */
  public native function get rowSelector():String;

  /**
   * @private
   */
  public native function set rowSelector(value:String):void;

  /**
   The number of levels to search for rows in event delegation (defaults to <tt>10</tt>)
   */
  public native function get rowSelectorDepth():Number;

  /**
   * @private
   */
  public native function set rowSelectorDepth(value:Number):void;

  /**
   The amount of space to reserve for the vertical scrollbar (defaults to <tt>undefined</tt>). If an explicit value isn't specified, this will be automatically calculated.
   */
  public native function get scrollOffset():Number;

  /**
   * @private
   */
  public native function set scrollOffset(value:Number):void;

  /**
   The CSS class applied to a selected row (defaults to <tt>'x-grid3-row-selected'</tt>). An example overriding the default styling: <pre><code>   .x-grid3-row-selected {background-color: yellow;}
   </code></pre>Note that this only controls the row, and will not do anything for the text inside it. To style inner facets (like text) use something like: <pre><code>   .x-grid3-row-selected .x-grid3-cell-inner {
   color: #FFCC00;
   }
   </code></pre>
   */
  public native function get selectedRowClass():String;

  /**
   * @private
   */
  public native function set selectedRowClass(value:String):void;

  /**
   The text displayed in the 'Sort Ascending' menu item (defaults to <tt>'Sort Ascending'</tt>)
   */
  public native function get sortAscText():String;

  /**
   * @private
   */
  public native function set sortAscText(value:String):void;

  /**
   The CSS classes applied to a header when it is sorted. (defaults to <tt>['sort-asc', 'sort-desc']</tt>)
   */
  public native function get sortClasses():Array;

  /**
   * @private
   */
  public native function set sortClasses(value:Array):void;

  /**
   The text displayed in the 'Sort Descending' menu item (defaults to <tt>'Sort Descending'</tt>)
   */
  public native function get sortDescText():String;

  /**
   * @private
   */
  public native function set sortDescText(value:String):void;


}
}
    