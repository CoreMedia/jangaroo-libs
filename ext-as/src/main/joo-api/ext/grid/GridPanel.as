package ext.grid {
import ext.Element;
import ext.Panel;
import ext.data.Store;

/**
 * <p>This class represents the primary interface of a component based grid control to represent data
 * in a tabular format of rows and columns. The GridPanel is composed of the following:</p>
 * <div class="mdetail-params"><ul>
 * <li><b class='link' title='ext.data.Store'>Store</b> : The Model holding the data records (rows)
 * <div class="sub-desc"></div></li>
 * <li><b class='link' title='Ext.grid.ColumnModel Column'>model</b> : Column makeup
 * <div class="sub-desc"></div></li>
 * <li><b class='link' title='Ext.grid.GridView'>View</b> : Encapsulates the user interface 
 * <div class="sub-desc"></div></li>
 * <li><b class='link' title='Ext.grid.AbstractSelectionModel selection'>model</b> : Selection behavior 
 * <div class="sub-desc"></div></li>
 * </ul></div>
 * <p>Example usage:</p>
 * <pre><code>
var grid = new Ext.grid.GridPanel({
    <b class='link' title='#store'>store</b>: new <b class='link'>ext.data.Store</b>({
        <b class='link' title='ext.data.Store#autoDestroy'>autoDestroy</b>: true,
        <b class='link' title='ext.data.Store#reader'>reader</b>: reader,
        <b class='link' title='ext.data.Store#data'>data</b>: xg.dummyData
    }),
    <b class='link' title='#columns'>columns</b>: [
        {id: 'company', header: 'Company', width: 200, sortable: true, dataIndex: 'company'},
        {header: 'Price', width: 120, sortable: true, renderer: Ext.util.Format.usMoney, dataIndex: 'price'},
        {header: 'Change', width: 120, sortable: true, dataIndex: 'change'},
        {header: '% Change', width: 120, sortable: true, dataIndex: 'pctChange'},
        &#47;/ instead of specifying renderer: Ext.util.Format.dateRenderer('m/d/Y') use xtype
        {header: 'Last Updated', width: 135, sortable: true, dataIndex: 'lastChange', xtype: 'datecolumn', format: 'M d, Y'}
    ],
    <b class='link' title='#viewConfig'>viewConfig</b>: {
        <b class='link' title='Ext.grid.GridView#forceFit'>forceFit</b>: true,

&#47;/      Return CSS class to apply to rows depending upon data values
        <b class='link' title='Ext.grid.GridView#getRowClass'>getRowClass</b>: function(record, index) {
            var c = record.<b class='link' title='ext.data.Record#get'>get</b>('change');
            if (c < 0) {
                return 'price-fall';
            } else if (c > 0) {
                return 'price-rise';
            }
        }
    },
    <b class='link' title='#sm}: new'>Ext.grid.RowSelectionModel({singleSelect:true</b>),
    width&#58; 600,
    height&#58; 300,
    frame&#58; true,
    title&#58; 'Framed with Row Selection and Horizontal Scrolling',
    iconCls&#58; 'icon-grid'
});
 * </code></pre>
 * <p><b><u>Notes:</u></b></p>
 * <div class="mdetail-params"><ul>
 * <li>Although this class inherits many configuration options from base classes, some of them
 * (such as autoScroll, autoWidth, layout, items, etc) are not used by this class, and will
 * have no effect.</li>
 * <li>A grid <b>requires</b> a width in which to scroll its columns, and a height in which to
 * scroll its rows. These dimensions can either be set explicitly through the
 * <code><b class='link' title='ext.BoxComponent#height'>height</b></code> and <code><b class='link' title='ext.BoxComponent#width'>width</b></code>
 * configuration options or implicitly set by using the grid as a child item of a
 * <b class='link' title='ext.Container'>Container</b> which will have a <b class='link' title='ext.Container#layout layout'>manager</b>
 * provide the sizing of its child items (for example the Container of the Grid may specify
 * <code><b class='link' title='ext.Container#layout'>layout</b>:'fit'</code>).</li>
 * <li>To access the data in a Grid, it is necessary to use the data model encapsulated
 * by the <b class='link' title='#store'>Store</b>. See the <b class='link' title='#cellclick'>cellclick</b> event for more details.</li>
 * </ul></div>
*/
public class GridPanel extends Panel {
/**
 * @constructor
 * @param config The config object
 * @xtype grid
 */
public function GridPanel(config : Object) {
  super(config);
}
    /**
     * @cfg {String} autoExpandColumn
     * <p>The <code><b class='link' title='Ext.grid.Column#id'>id</b></code> of a <b class='link' title='Ext.grid.Column'>column</b> in
     * this grid that should expand to fill unused space. This value specified here can not
     * be <code>0</code>.</p>
     * <br><p><b>Note</b>: If the Grid's <b class='link' title='Ext.grid.GridView'>view</b> is configured with
     * <code><b class='link' title='Ext.grid.GridView#forceFit'>forceFit</b>=true</code> the <code>autoExpandColumn</code>
     * is ignored. See <b class='link'>Ext.grid.Column</b>.<code><b class='link' title='Ext.grid.Column#width'>width</b></code>
     * for additional details.</p>
     * <p>See <code><b class='link' title='#autoExpandMax'>autoExpandMax</b></code> and <code><b class='link' title='#autoExpandMin'>autoExpandMin</b></code> also.</p>
     */
    public var autoExpandColumn  : String;
    /**
     * @cfg {Number} autoExpandMax The maximum width the <code><b class='link' title='#autoExpandColumn'>autoExpandColumn</b></code>
     * can have (if enabled). Defaults to <code>1000</code>.
     */
    public var autoExpandMax  : Number;
    /**
     * @cfg {Number} autoExpandMin The minimum width the <code><b class='link' title='#autoExpandColumn'>autoExpandColumn</b></code>
     * can have (if enabled). Defaults to <code>50</code>.
     */
    public var autoExpandMin  : Number;
    /**
     * @cfg {Boolean} columnLines <code>true</code> to add css for column separation lines.
     * Default is <code>false</code>.
     */
    public var columnLines  : Boolean;
    /**
     * @cfg {Object} cm Shorthand for <code><b class='link' title='#colModel'>colModel</b></code>.
     */
    /**
     * @cfg {Object} colModel The <b class='link'>Ext.grid.ColumnModel</b> to use when rendering the grid (required).
     */
    /**
     * @cfg {Array} columns An array of <b class='link' title='Ext.grid.Column'>columns</b> to auto create a
     * <b class='link'>Ext.grid.ColumnModel</b>.  The ColumnModel may be explicitly created via the
     * <code><b class='link' title='#colModel'>colModel</b></code> configuration property.
     */
    /**
     * @cfg {String} ddGroup The DD group this GridPanel belongs to. Defaults to <code>'GridDD'</code> if not specified.
     */
    /**
     * @cfg {String} ddText
     * Configures the text in the drag proxy.  Defaults to:
     * <pre><code>
     * ddText : '{0} selected row{1}'
     * </code></pre>
     * <code>{0}</code> is replaced with the number of selected rows.
     */
    public var ddText  : String;
    /**
     * @cfg {Boolean} deferRowRender <P>Defaults to <code>true</code> to enable deferred row rendering.</p>
     * <p>This allows the GridPanel to be initially rendered empty, with the expensive update of the row
     * structure deferred so that layouts with GridPanels appear more quickly.</p>
     */
    public var deferRowRender  : Boolean;
    /**
     * @cfg {Boolean} disableSelection <p><code>true</code> to disable selections in the grid. Defaults to <code>false</code>.</p>
     * <p>Ignored if a <b class='link' title='#selModel'>SelectionModel</b> is specified.</p>
     */
    /**
     * @cfg {Boolean} enableColumnResize <code>false</code> to turn off column resizing for the whole grid. Defaults to <code>true</code>.
     */
    /**
     * @cfg {Boolean} enableColumnHide Defaults to <code>true</code> to enable hiding of columns with the header context menu.
     */
    public var enableColumnHide  : Boolean;
    /**
     * @cfg {Boolean} enableColumnMove Defaults to <code>true</code> to enable drag and drop reorder of columns. <code>false</code>
     * to turn off column reordering via drag drop.
     */
    public var enableColumnMove  : Boolean;
    /**
     * @cfg {Boolean} enableDragDrop <p>Enables dragging of the selected rows of the GridPanel. Defaults to <code>false</code>.</p>
     * <p>Setting this to <b><code>true</code></b> causes this GridPanel's <b class='link' title='#getView'>GridView</b> to
     * create an instance of <b class='link'>Ext.grid.GridDragZone</b>. <b>Note</b>: this is available only <b>after</b>
     * the Grid has been rendered as the GridView's <code><b class='link' title='Ext.grid.GridView#dragZone'>dragZone</b></code>
     * property.</p>
     * <p>A cooperating <b class='link' title='Ext.dd.DropZone'>DropZone</b> must be created who's implementations of
     * <b class='link' title='Ext.dd.DropZone#onNodeEnter'>onNodeEnter</b>, <b class='link' title='Ext.dd.DropZone#onNodeOver'>onNodeOver</b>,
     * <b class='link' title='Ext.dd.DropZone#onNodeOut'>onNodeOut</b> and <b class='link' title='Ext.dd.DropZone#onNodeDrop'>onNodeDrop</b> are able
     * to process the <b class='link' title='Ext.grid.GridDragZone#getDragData'>data</b> which is provided.</p>
     */
    public var enableDragDrop  : Boolean;
    /**
     * @cfg {Boolean} enableHdMenu Defaults to <code>true</code> to enable the drop down button for menu in the headers.
     */
    public var enableHdMenu  : Boolean;
    /**
     * @cfg {Boolean} hideHeaders True to hide the grid's header. Defaults to <code>false</code>.
     */
    /**
     * @cfg {Object} loadMask An <b class='link'>ext.LoadMask</b> config or true to mask the grid while
     * loading. Defaults to <code>false</code>.
     */
    public var loadMask  : Object;
    /**
     * @cfg {Number} maxHeight Sets the maximum height of the grid - ignored if <code>autoHeight</code> is not on.
     */
    /**
     * @cfg {Number} minColumnWidth The minimum width a column can be resized to. Defaults to <code>25</code>.
     */
    public var minColumnWidth  : Number;
    /**
     * @cfg {Object} sm Shorthand for <code><b class='link' title='#selModel'>selModel</b></code>.
     */
    /**
     * @cfg {Object} selModel Any subclass of <b class='link'>Ext.grid.AbstractSelectionModel</b> that will provide
     * the selection model for the grid (defaults to <b class='link'>Ext.grid.RowSelectionModel</b> if not specified).
     */
    /**
     * @cfg {ext.data.Store} store The <b class='link'>ext.data.Store</b> the grid should use as its data source (required).
     */
    public var store  : Store;
    /**
     * @cfg {Boolean} stripeRows <code>true</code> to stripe the rows. Default is <code>false</code>.
     * <p>This causes the CSS class <code><b>x-grid3-row-alt</b></code> to be added to alternate rows of
     * the grid. A default CSS rule is provided which sets a background colour, but you can override this
     * with a rule which either overrides the <b>background-color</b> style using the '!important'
     * modifier, or which uses a CSS selector of higher specificity.</p>
     */
    public var stripeRows  : Boolean;
    /**
     * @cfg {Boolean} trackMouseOver True to highlight rows when the mouse is over. Default is <code>true</code>
     * for GridPanel, but <code>false</code> for EditorGridPanel.
     */
    public var trackMouseOver  : Boolean;
    /**
     * @cfg {Array} stateEvents
     * An array of events that, when fired, should trigger this component to save its state.
     * Defaults to:<pre><code>
     * stateEvents: ['columnmove', 'columnresize', 'sortchange']
     * </code></pre>
     * <p>These can be any types of events supported by this component, including browser or
     * custom events (e.g., <code>['click', 'customerchange']</code>).</p>
     * <p>See <b class='link'>ext.Component#stateful</b> for an explanation of saving and restoring
     * Component state.</p>
     */
    public var stateEvents  : Array;
    /**
     * @cfg {Object} view The <b class='link'>Ext.grid.GridView</b> used by the grid. This can be set
     * before a call to <b class='link' title='ext.Component#render'>render()</b>.
     */
    public var view  : Object;
    /**
     * @cfg {Object} viewConfig A config object that will be applied to the grid's UI view.  Any of
     * the config options available for <b class='link'>Ext.grid.GridView</b> can be specified here. This option
     * is ignored if <code><b class='link' title='#view'>view</b></code> is specified.
     */
    //protected var rendered  : Object;
    protected var viewReady ;
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function initEvents() : void;
    //override public native function initStateEvents() : void;
    //override public native function applyState(state) : void;
    //override public native function getState() : void;
    override protected native function afterRender() : void;
    /**
     * <p>Reconfigures the grid to use a different Store and Column Model
     * and fires the 'reconfigure' event. The View will be bound to the new
     * objects and refreshed.</p>
     * <p>Be aware that upon reconfiguring a GridPanel, certain existing settings <i>may</i> become
     * invalidated. For example the configured <b class='link' title='#autoExpandColumn'>autoExpandColumn</b> may no longer exist in the
     * new ColumnModel. Also, an existing <b class='link' title='ext.PagingToolbar'>PagingToolbar</b> will still be bound
     * to the old Store, and will need rebinding. Any <b class='link' title='#plugins'>plugins</b> might also need reconfiguring
     * with the new data.</p>
     * @param store The new <b class='link'>ext.data.Store</b> object
     * @param colModel The new <b class='link'>Ext.grid.ColumnModel</b> object
     */
    public native function reconfigure(store : Store, colModel : ColumnModel) : void;
    protected native function onKeyDown(e) : void;
    override protected native function onDestroy() : void;
    protected native function processEvent(name, e) : void;
    protected native function onClick(e) : void;
    protected native function onMouseDown(e) : void;
    protected native function onContextMenu(e, t) : void;
    protected native function onDblClick(e) : void;
    protected native function walkCells(row, col, step, fn, scope) : void;
    //override protected native function onResize() : void;
    /**
     * Returns the grid's underlying element.
     * @return The element
     */
    public native function getGridEl() : Element;
    public native function stopEditing(cancel : Boolean = undefined) : void;
    /**
     * Returns the grid's selection model configured by the <code><b class='link' title='#selModel'>selModel</b></code>
     * configuration option. If no selection model was configured, this will create
     * and return a <b class='link' title='Ext.grid.RowSelectionModel'>RowSelectionModel</b>.
     * @return 
     */
    public native function getSelectionModel() : AbstractSelectionModel;
    /**
     * Returns the grid's data store.
     * @return The store
     */
    public native function getStore() : Store;
    /**
     * Returns the grid's ColumnModel.
     * @return The column model
     */
    public native function getColumnModel() : ColumnModel;
    /**
     * Returns the grid's GridView object.
     * @return The grid view
     */
    public native function getView() : GridView;
    /**
     * Called to get grid's drag proxy text, by default returns this.ddText.
     * @return The text
     */
    public native function getDragDropText() : String;
    /** 
     * @cfg {String/Number} activeItem 
     * @hide 
     */
    /** 
     * @cfg {Boolean} autoDestroy 
     * @hide 
     */
    /** 
     * @cfg {Object/String/Function} autoLoad 
     * @hide 
     */
    /** 
     * @cfg {Boolean} autoWidth 
     * @hide 
     */
    /** 
     * @cfg {Boolean/Number} bufferResize 
     * @hide 
     */
    /** 
     * @cfg {String} defaultType 
     * @hide 
     */
    /** 
     * @cfg {Object} defaults 
     * @hide 
     */
    /** 
     * @cfg {Boolean} hideBorders 
     * @hide 
     */
    /** 
     * @cfg {Mixed} items 
     * @hide 
     */
    /** 
     * @cfg {String} layout 
     * @hide 
     */
    /** 
     * @cfg {Object} layoutConfig 
     * @hide 
     */
    /** 
     * @cfg {Boolean} monitorResize 
     * @hide 
     */
    /** 
     * @property items 
     * @hide 
     */
    /** 
     * @method add 
     * @hide 
     */
    /** 
     * @method cascade 
     * @hide 
     */
    /** 
     * @method doLayout 
     * @hide 
     */
    /** 
     * @method find 
     * @hide 
     */
    /** 
     * @method findBy 
     * @hide 
     */
    /** 
     * @method findById 
     * @hide 
     */
    /** 
     * @method findByType 
     * @hide 
     */
    /** 
     * @method getComponent 
     * @hide 
     */
    /** 
     * @method getLayout 
     * @hide 
     */
    /** 
     * @method getUpdater 
     * @hide 
     */
    /** 
     * @method insert 
     * @hide 
     */
    /** 
     * @method load 
     * @hide 
     */
    /** 
     * @method remove 
     * @hide 
     */
    /** 
     * @event add 
     * @hide 
     */
    /** 
     * @event afterLayout 
     * @hide 
     */
    /** 
     * @event beforeadd 
     * @hide 
     */
    /** 
     * @event beforeremove 
     * @hide 
     */
    /** 
     * @event remove 
     * @hide 
     */
    /**
     * @cfg {String} allowDomMove  @hide
     */
    /**
     * @cfg {String} autoEl @hide
     */
    /**
     * @cfg {String} applyTo  @hide
     */
    /**
     * @cfg {String} autoScroll  @hide
     */
    /**
     * @cfg {String} bodyBorder  @hide
     */
    /**
     * @cfg {String} bodyStyle  @hide
     */
    /**
     * @cfg {String} contentEl  @hide
     */
    /**
     * @cfg {String} disabledClass  @hide
     */
    /**
     * @cfg {String} elements  @hide
     */
    /**
     * @cfg {String} html  @hide
     */
    /**
     * @cfg {Boolean} preventBodyReset
     * @hide
     */
    /**
     * @property disabled
     * @hide
     */
    /**
     * @method applyToMarkup
     * @hide
     */
    /**
     * @method enable
     * @hide
     */
    /**
     * @method disable
     * @hide
     */
    /**
     * @method setDisabled
     * @hide
     */
}}
