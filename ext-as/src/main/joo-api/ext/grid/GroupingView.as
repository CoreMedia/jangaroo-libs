package ext.grid {
/**
 * Adds the ability for single level grouping to the grid. A <b class='link' title='ext.data.GroupingStore'>GroupingStore</b>
 * must be used to enable grouping.  Some grouping characteristics may also be configured at the
 * <b class='link' title='Ext.grid.Column Column'>level</b><div class="mdetail-params"><ul>
 * <li><code><b class='link' title='Ext.grid.Column#emptyGroupText'>emptyGroupText</b></li>
 * <li><code><b class='link' title='Ext.grid.Column#groupable'>groupable</b></li>
 * <li><code><b class='link' title='Ext.grid.Column#groupName'>groupName</b></li>
 * <li><code><b class='link' title='Ext.grid.Column#groupRender'>groupRender</b></li>
 * </ul></div>
 * <p>Sample usage:</p>
 * <pre><code>
var grid = new Ext.grid.GridPanel({
    // A groupingStore is required for a GroupingView
    store: new <b class='link'>ext.data.GroupingStore</b>({
        autoDestroy: true,
        reader: reader,
        data: xg.dummyData,
        sortInfo: {field: 'company', direction: 'ASC'},
        <b class='link' title='ext.data.GroupingStore#groupOnSort'>groupOnSort</b>: true,
        <b class='link' title='ext.data.GroupingStore#remoteGroup'>remoteGroup</b>: true,
        <b class='link' title='ext.data.GroupingStore#groupField'>groupField</b>: 'industry'
    }),
    colModel: new <b class='link'>Ext.grid.ColumnModel</b>({
        columns:[
            {id:'company',header: 'Company', width: 60, dataIndex: 'company'},
            // <b class='link' title='Ext.grid.Column#groupable'>groupable</b>, <b class='link' title='Ext.grid.Column#groupName'>groupName</b>, <b class='link' title='Ext.grid.Column#groupRender'>groupRender</b> are also configurable at column level
            {header: 'Price', renderer: Ext.util.Format.usMoney, dataIndex: 'price', <b class='link' title='Ext.grid.Column#groupable groupable}:'>false</b>,
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
        <b class='link' title='Ext.grid.GridView#forceFit'>forceFit</b>: true,
        // custom grouping text template to display the number of items per group
        <b class='link' title='#groupTextTpl}: '{text} ({[values.rs.length]} {[values.rs.length > 1 ? "Items" :'>"Item"]</b>)'
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
 * </code></pre>
*/
public class GroupingView extends GridView {
/**
 * @constructor
 * @param config
 */
public function GroupingView(config:Object = null) {
  super(config);
}
    /**
     * @cfg {String} groupByText Text displayed in the grid header menu for grouping by a column
     * (defaults to 'Group By This Field').
     */
    public var groupByText  : String;
    /**
     * @cfg {String} showGroupsText Text displayed in the grid header for enabling/disabling grouping
     * (defaults to 'Show in Groups').
     */
    public var showGroupsText  : String;
    /**
     * @cfg {Boolean} hideGroupedColumn <code>true</code> to hide the column that is currently grouped (defaults to <code>false</code>)
     */
    public var hideGroupedColumn  : Boolean;
    /**
     * @cfg {Boolean} showGroupName If <code>true</code> will display a prefix plus a ': ' before the group field value
     * in the group header line.  The prefix will consist of the <code><b class='link' title='Ext.grid.Column#groupName'>groupName</b></code>
     * (or the configured <code><b class='link' title='Ext.grid.Column#header'>header</b></code> if not provided) configured in the
     * <b class='link'>Ext.grid.Column</b> for each set of grouped rows (defaults to <code>true</code>).
     */
    public var showGroupName  : Boolean;
    /**
     * @cfg {Boolean} startCollapsed <code>true</code> to start all groups collapsed (defaults to <code>false</code>)
     */
    public var startCollapsed  : Boolean;
    /**
     * @cfg {Boolean} enableGrouping <code>false</code> to disable grouping functionality (defaults to <code>true</code>)
     */
    public var enableGrouping  : Boolean;
    /**
     * @cfg {Boolean} enableGroupingMenu <code>true</code> to enable the grouping control in the column menu (defaults to <code>true</code>)
     */
    public var enableGroupingMenu  : Boolean;
    /**
     * @cfg {Boolean} enableNoGroups <code>true</code> to allow the user to turn off grouping (defaults to <code>true</code>)
     */
    public var enableNoGroups  : Boolean;
    /**
     * @cfg {String} emptyGroupText The text to display when there is an empty group value (defaults to <code>'(None)'</code>).
     * May also be specified per column, see <b class='link'>Ext.grid.Column</b>.<b class='link' title='Ext.grid.Column#emptyGroupText'>emptyGroupText</b>.
     */
    public var emptyGroupText  : String;
    /**
     * @cfg {Boolean} ignoreAdd <code>true</code> to skip refreshing the view when new rows are added (defaults to <code>false</code>)
     */
    public var ignoreAdd  : Boolean;
    /**
     * @cfg {String} groupTextTpl The template used to render the group header (defaults to <code>'{text}'</code>).
     * This is used to format an object which contains the following properties:
     * <div class="mdetail-params"><ul>
     * <li><b>group</b> : String<p class="sub-desc">The <i>rendered</i> value of the group field.
     * By default this is the unchanged value of the group field. If a <code><b class='link' title='Ext.grid.Column#groupRenderer'>groupRenderer</b></code>
     * is specified, it is the result of a call to that function.</p></li>
     * <li><b>gvalue</b> : Object<p class="sub-desc">The <i>raw</i> value of the group field.</p></li>
     * <li><b>text</b> : String<p class="sub-desc">The configured header (as described in <code><b class='link' title='#showGroupName'>showGroupName</b>)</code>
     * if <code><b class='link' title='#showGroupName'>showGroupName</b></code> is <code>true</code>) plus the <i>rendered</i> group field value.</p></li>
     * <li><b>groupId</b> : String<p class="sub-desc">A unique, generated ID which is applied to the
     * View Element which contains the group.</p></li>
     * <li><b>startRow</b> : Number<p class="sub-desc">The row index of the Record which caused group change.</p></li>
     * <li><b>rs</b> : Array<p class="sub-desc">Contains a single element: The Record providing the data
     * for the row which caused group change.</p></li>
     * <li><b>cls</b> : String<p class="sub-desc">The generated class name string to apply to the group header Element.</p></li>
     * <li><b>style</b> : String<p class="sub-desc">The inline style rules to apply to the group header Element.</p></li>
     * </ul></div></p>
     * See <b class='link'>ext.XTemplate</b> for information on how to format data using a template. Possible usage:<pre><code>
var grid = new Ext.grid.GridPanel({
    ...
    view: new Ext.grid.GroupingView({
        groupTextTpl: '{text} ({[values.rs.length]} {[values.rs.length > 1 ? "Items" : "Item"]})'
    }),
});
     * </code></pre>
     */
    public var groupTextTpl  : String;
    /**
     * @cfg {Function} groupRenderer This property must be configured in the <b class='link'>Ext.grid.Column</b> for
     * each column.
     */
    protected var gidSeed  : Function;
    override protected native function initTemplates() : void;
    protected native function findGroup(el) : void;
    protected native function getGroups() : void;
    //override protected native function onAdd() : void;
    override protected native function onRemove(ds, record, index, isUpdate) : void;
    override protected native function refreshRow(record) : void;
    protected native function beforeMenuShow() : void;
    override protected native function renderUI() : void;
    protected native function onGroupByClick() : void;
    protected native function onShowGroupsClick(mi, checked) : void;
    /**
     * Toggles the specified group if no value is passed, otherwise sets the expanded state of the group to the value passed.
     * @param groupId The groupId assigned to the group (see getGroupId)
     * @param expanded
     */
    public native function toggleGroup(groupId : String, expanded : Boolean = undefined) : void;
    /**
     * Toggles all groups if no value is passed, otherwise sets the expanded state of all groups to the value passed.
     * @param expanded
     */
    public native function toggleAllGroups(expanded : Boolean = undefined) : void;
    /**
     * Expands all grouped rows.
     */
    public native function expandAllGroups() : void;
    /**
     * Collapses all grouped rows.
     */
    public native function collapseAllGroups() : void;
    protected native function interceptMouse(e) : void;
    protected native function getGroup(v, r, groupRenderer, rowIndex, colIndex, ds) : void;
    protected native function getGroupField() : void;
    override public native function afterRender() : void;
    //override protected native function renderRows() : void;
    override protected native function doRender(cs, rs, ds, startRow, colCount, stripe) : void;
    /**
     * Dynamically tries to determine the groupId of a specific value
     * @param value
     * @return The group id
     */
    public native function getGroupId(value : String) : String;
    protected native function doGroupStart(buf, g, cs, ds, colCount) : void;
    protected native function doGroupEnd(buf, g, cs, ds, colCount) : void;
    override protected native function getRows() : void;
    protected native function updateGroupWidths() : void;
    //override protected native function onColumnWidthUpdated(col, w, tw) : void;
    //override protected native function onAllColumnWidthsUpdated(ws, tw) : void;
    //override protected native function onColumnHiddenUpdated(col, hidden, tw) : void;
    //override protected native function onLayout() : void;
    protected native function onBeforeRowSelect(sm, rowIndex) : void;
protected static var GROUP_ID = 1000;
}}
