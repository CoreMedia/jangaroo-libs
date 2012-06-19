package ext.grid {
import ext.config.groupingview;

/**
 * Adds the ability for single level grouping to the grid. A <a href="Ext.data.GroupingStore.html">GroupingStore</a> must be used to enable grouping. Some grouping characteristics may also be configured at the <a href="Ext.grid.Column.html">Column level</a><div class="mdetail-params"><ul><li><code><a href="output/Ext.grid.Column.html#Ext.grid.Column-emptyGroupText">emptyGroupText</a></code></li><li><code><a href="output/Ext.grid.Column.html#Ext.grid.Column-groupable">groupable</a></code></li><li><code><a href="output/Ext.grid.Column.html#Ext.grid.Column-groupName">groupName</a></code></li><li><code><a href="output/Ext.grid.Column.html#Ext.grid.Column-groupRender">groupRender</a></code></li></ul></div><p>Sample usage:</p><pre><code>var grid = new Ext.grid.GridPanel({
 // A groupingStore is required for a GroupingView
 store: new <a href="Ext.data.GroupingStore.html">Ext.data.GroupingStore</a>({
 autoDestroy: true,
 reader: reader,
 data: xg.dummyData,
 sortInfo: {field: 'company', direction: 'ASC'},
 <a href="output/Ext.data.GroupingStore.html#Ext.data.GroupingStore-groupOnSort">groupOnSort</a>: true,
 <a href="output/Ext.data.GroupingStore.html#Ext.data.GroupingStore-remoteGroup">remoteGroup</a>: true,
 <a href="output/Ext.data.GroupingStore.html#Ext.data.GroupingStore-groupField">groupField</a>: 'industry'
 }),
 colModel: new <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a>({
 columns:[
 {id:'company',header: 'Company', width: 60, dataIndex: 'company'},
 // <a href="output/Ext.grid.Column.html#Ext.grid.Column-groupable">groupable</a>, <a href="output/Ext.grid.Column.html#Ext.grid.Column-groupName">groupName</a>, <a href="output/Ext.grid.Column.html#Ext.grid.Column-groupRender">groupRender</a> are also configurable at column level
 {header: 'Price', renderer: Ext.util.Format.usMoney, dataIndex: 'price', <a href="output/Ext.grid.Column.html#Ext.grid.Column-groupable">groupable</a>: false},
 {header: 'Change', dataIndex: 'change', renderer: Ext.util.Format.usMoney},
 {header: 'Industry', dataIndex: 'industry'},
 {header: 'Last Updated', renderer: Ext.util.Format.dateRenderer('m/d/Y'), dataIndex: 'lastChange'}
 ],
 defaults: {
 sortable: true,
 menuDisabled: false,
 width: 20
 }
 }),

 view: new Ext.grid.GroupingView({
 <a href="output/Ext.grid.GridView.html#Ext.grid.GridView-forceFit">forceFit</a>: true,
 // custom grouping text template to display the number of items per group
 <a href="output/Ext.grid.GroupingView.html#Ext.grid.GroupingView-groupTextTpl">groupTextTpl</a>: '{text} ({[values.rs.length]} {[values.rs.length &gt; 1 ? "Items" : "Item"]})'
 }),

 frame:true,
 width: 700,
 height: 450,
 collapsible: true,
 animCollapse: false,
 title: 'Grouping Example',
 iconCls: 'icon-grid',
 renderTo: document.body
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.groupingview
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GroupingView Sencha Docs Ext JS 3.4
 */
[Native]
public class GroupingView extends GridView {

  /**
   *
   *
   * @param config
   * @see ext.config.groupingview
   */
  public function GroupingView(config:groupingview) {
    super(null);
  }

  /**
   True to cancel any editing when the group header is toggled. Defaults to <tt>true</tt>.
   */
  public native function get cancelEditOnToggle():Boolean;

  /**
   The text to display when there is an empty group value (defaults to <tt>'(None)'</tt>). May also be specified per column, see <a href="Ext.grid.Column.html">Ext.grid.Column</a>.<a href="output/Ext.grid.Column.html#Ext.grid.Column-emptyGroupText">emptyGroupText</a>.
   */
  public native function get emptyGroupText():String;

  /**
   <tt>false</tt> to disable grouping functionality (defaults to <tt>true</tt>)
   */
  public native function get enableGrouping():Boolean;

  /**
   <tt>true</tt> to enable the grouping control in the column menu (defaults to <tt>true</tt>)
   */
  public native function get enableGroupingMenu():Boolean;

  /**
   <tt>true</tt> to allow the user to turn off grouping (defaults to <tt>true</tt>)
   */
  public native function get enableNoGroups():Boolean;

  /**
   Text displayed in the grid header menu for grouping by a column (defaults to 'Group By This Field').
   */
  public native function get groupByText():String;

  /**
   Indicates how to construct the group identifier. <tt>'value'</tt> constructs the id using raw value, <tt>'display'</tt> constructs the id using the rendered value. Defaults to <tt>'value'</tt>.
   */
  public native function get groupMode():String;

  /**
   The template used to render the group header (defaults to <tt>'{text}'</tt>). This is used to format an object which contains the following properties: <div class="mdetail-params"><ul><li><b>group</b> : String<p class="sub-desc">The <i>rendered</i> value of the group field. By default this is the unchanged value of the group field. If a <tt><b><a href="output/Ext.grid.Column.html#Ext.grid.Column-groupRenderer">groupRenderer</a></b></tt> is specified, it is the result of a call to that function.</p></li><li><b>gvalue</b> : Object<p class="sub-desc">The <i>raw</i> value of the group field.</p></li><li><b>text</b> : String<p class="sub-desc">The configured header (as described in <tt><a href="output/Ext.grid.GroupingView.html#Ext.grid.GroupingView-showGroupName">showGroupName</a>)</tt> if <tt><a href="output/Ext.grid.GroupingView.html#Ext.grid.GroupingView-showGroupName">showGroupName</a></tt> is <tt>true</tt>) plus the <i>rendered</i> group field value.</p></li><li><b>groupId</b> : String<p class="sub-desc">A unique, generated ID which is applied to the View Element which contains the group.</p></li><li><b>startRow</b> : Number<p class="sub-desc">The row index of the Record which caused group change.</p></li><li><b>rs</b> : Array<p class="sub-desc">Contains a single element: The Record providing the data for the row which caused group change.</p></li><li><b>cls</b> : String<p class="sub-desc">The generated class name string to apply to the group header Element.</p></li><li><b>style</b> : String<p class="sub-desc">The inline style rules to apply to the group header Element.</p></li></ul></div><br/><br/> See <a href="Ext.XTemplate.html">Ext.XTemplate</a> for information on how to format data using a template. Possible usage:<pre><code>var grid = new Ext.grid.GridPanel({
   ...
   view: new Ext.grid.GroupingView({
   groupTextTpl: '{text} ({[values.rs.length]} {[values.rs.length &gt; 1 ? "Items" : "Item"]})'
   }),
   });
   </code></pre>
   */
  public native function get groupTextTpl():String;

  /**
   <tt>true</tt> to hide the column that is currently grouped (defaults to <tt>false</tt>)
   */
  public native function get hideGroupedColumn():Boolean;

  /**
   <tt>true</tt> to skip refreshing the view when new rows are added (defaults to <tt>false</tt>)
   */
  public native function get ignoreAdd():Boolean;

  /**
   If <tt>true</tt> will display a prefix plus a ': ' before the group field value in the group header line. The prefix will consist of the <tt><b><a href="output/Ext.grid.Column.html#Ext.grid.Column-groupName">groupName</a></b></tt> (or the configured <tt><b><a href="output/Ext.grid.Column.html#Ext.grid.Column-header">header</a></b></tt> if not provided) configured in the <a href="Ext.grid.Column.html">Ext.grid.Column</a> for each set of grouped rows (defaults to <tt>true</tt>).
   */
  public native function get showGroupName():Boolean;

  /**
   Text displayed in the grid header for enabling/disabling grouping (defaults to 'Show in Groups').
   */
  public native function get showGroupsText():String;

  /**
   <tt>true</tt> to start all groups collapsed (defaults to <tt>false</tt>)
   */
  public native function get startCollapsed():Boolean;

  /**
   * Collapses all grouped rows.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GroupingView-method-collapseAllGroups Sencha Docs Ext JS 3.4
   */
  public native function collapseAllGroups():void;

  /**
   * Expands all grouped rows.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GroupingView-method-expandAllGroups Sencha Docs Ext JS 3.4
   */
  public native function expandAllGroups():void;

  /**
   * Dynamically tries to determine the groupId of a specific value
   *
   * @param value
   * @return The group id
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GroupingView-method-getGroupId Sencha Docs Ext JS 3.4
   */
  public native function getGroupId(value:String):String;

  /**
   * Toggles all groups if no value is passed, otherwise sets the expanded state of all groups to the value passed.
   *
   * @param expanded
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GroupingView-method-toggleAllGroups Sencha Docs Ext JS 3.4
   */
  public native function toggleAllGroups(expanded:Boolean = false):void;

  /**
   * Toggles the specified group if no value is passed, otherwise sets the expanded state of the group to the value passed.
   *
   * @param groupId The groupId assigned to the group (see getGroupId)
   * @param expanded
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GroupingView-method-toggleGroup Sencha Docs Ext JS 3.4
   */
  public native function toggleGroup(groupId:String, expanded:Boolean = false):void;

  /**
   * Toggle the group that contains the specific row.
   *
   * @param rowIndex The row inside the group
   * @param expanded
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.GroupingView-method-toggleRowIndex Sencha Docs Ext JS 3.4
   */
  public native function toggleRowIndex(rowIndex:Number, expanded:Boolean = false):void;

}
}
    