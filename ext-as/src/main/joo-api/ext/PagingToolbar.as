package ext {
import ext.data.Store;

/**
 * As the amount of records increases, the time required for the browser to render
 * them increases. Paging is used to reduce the amount of data exchanged with the client.
 * Note: if there are more records/rows than can be viewed in the available screen area, vertical
 * scrollbars will be added.
 * <p>Paging is typically handled on the server side (see exception below). The client sends
 * parameters to the server side, which the server needs to interpret and then respond with the
 * approprate data.</p>
 * <p><b>ext.PagingToolbar</b> is a specialized toolbar that is bound to a <b class='link'>ext.data.Store</b>
 * and provides automatic paging control. This Component <b class='link' title='ext.data.Store#load'>load</b>s blocks
 * of data into the <code><b class='link' title='#store'>store</b></code> by passing <b class='link' title='ext.data.Store#paramNames'>paramNames</b> used for
 * paging criteria.</p>
 * <p>PagingToolbar is typically used as one of the Grid's toolbars:</p>
 * <pre><code>
ext.QuickTips.init(); // to display button quicktips

var myStore = new ext.data.Store({
    ...
});

var myPageSize = 25;  // server script should only send back 25 items

var grid = new Ext.grid.GridPanel({
    ...
    store: myStore,
    bbar: new ext.PagingToolbar({
        <b class='link' title='#store'>store</b>: myStore,       // grid and PagingToolbar using same store
        <b class='link' title='#displayInfo'>displayInfo</b>: true,
        <b class='link' title='#pageSize'>pageSize</b>: myPageSize,
        <b class='link' title='#prependButtons'>prependButtons</b>: true,
        items: [
            'text 1'
        ]
    })
});
 * </code></pre>
 *
 * <p>To use paging, pass the paging requirements to the server when the store is first loaded.</p>
 * <pre><code>
store.load({
    params: {
        start: 0,          // specify params for the first page load if using paging
        limit: myPageSize,
        foo:   'bar'
    }
});
 * </code></pre>
 * <p><u>Paging with Local Data</u></p>
 * <p>Paging can also be accomplished with local data using extensions:</p>
 * <div class="mdetail-params"><ul>
 * <li><a href="http://extjs.com/forum/showthread.php?t=57386">Ext.ux.data.PagingStore</a></li>
 * <li>Paging Memory Proxy (examples/ux/PagingMemoryProxy.js)</li>
 * </ul></div>
*/
public class PagingToolbar extends Toolbar {
/**
 * @constructor
 * Create a new PagingToolbar
 * @param config The config object
 * @xtype paging
 */
public function PagingToolbar(config : Object) {
  super(config);
}
    /**
     * @cfg {ext.data.Store} store
     * The <b class='link'>ext.data.Store</b> the paging toolbar should use as its data source (required).
     */
    /**
     * @cfg {Boolean} displayInfo
     * <code>true</code> to display the displayMsg (defaults to <code>false</code>)
     */
    /**
     * @cfg {Number} pageSize
     * The number of records to display per page (defaults to <code>20</code>)
     */
    public var pageSize  : Number;
    /**
     * @cfg {Boolean} prependButtons
     * <code>true</code> to insert any configured <code>items</code> <i>before</i> the paging buttons.
     * Defaults to <code>false</code>.
     */
    /**
     * @cfg {String} displayMsg
     * The paging status message to display (defaults to <code>'Displaying {0} - {1} of {2}'</code>).
     * Note that this string is formatted using the braced numbers <code>{0}-{2}</code> as tokens
     * that are replaced by the values for start, end and total respectively. These tokens should
     * be preserved when overriding this string if showing those values is desired.
     */
    public var displayMsg  : String;
    /**
     * @cfg {String} emptyMsg
     * The message to display when no records are found (defaults to 'No data to display')
     */
    public var emptyMsg  : String;
    /**
     * @cfg {String} beforePageText
     * The text displayed before the input item (defaults to <code>'Page'</code>).
     */
    public var beforePageText  : String;
    /**
     * @cfg {String} afterPageText
     * Customizable piece of the default paging text (defaults to <code>'of {0}'</code>). Note that
     * this string is formatted using <code>{0}</code> as a token that is replaced by the number of
     * total pages. This token should be preserved when overriding this string if showing the
     * total page count is desired.
     */
    public var afterPageText  : String;
    /**
     * @cfg {String} firstText
     * The quicktip text displayed for the first page button (defaults to <code>'First Page'</code>).
     * <b>Note</b>: quick tips must be initialized for the quicktip to show.
     */
    public var firstText  : String;
    /**
     * @cfg {String} prevText
     * The quicktip text displayed for the previous page button (defaults to <code>'Previous Page'</code>).
     * <b>Note</b>: quick tips must be initialized for the quicktip to show.
     */
    public var prevText  : String;
    /**
     * @cfg {String} nextText
     * The quicktip text displayed for the next page button (defaults to <code>'Next Page'</code>).
     * <b>Note</b>: quick tips must be initialized for the quicktip to show.
     */
    public var nextText  : String;
    /**
     * @cfg {String} lastText
     * The quicktip text displayed for the last page button (defaults to <code>'Last Page'</code>).
     * <b>Note</b>: quick tips must be initialized for the quicktip to show.
     */
    public var lastText  : String;
    /**
     * @cfg {String} refreshText
     * The quicktip text displayed for the Refresh button (defaults to <code>'Refresh'</code>).
     * <b>Note</b>: quick tips must be initialized for the quicktip to show.
     */
    public var refreshText  : String;
    /**
     * @deprecated
     * <b>The defaults for these should be set in the data store.</b>
     * Object mapping of parameter names used for load calls, initially set to:
     * <pre>{start: 'start', limit: 'limit'}</pre>
     */
    /**
     * The number of records to display per page.  See also <code><b class='link' title='#cursor'>cursor</b></code>.
     * @property pageSize
     */
    /**
     * Indicator for the record position.  This property might be used to get the active page
     * number for example:<pre><code>
     * // t is reference to the paging toolbar instance
     * var activePage = Math.ceil((t.cursor + t.pageSize) / t.pageSize);
     * </code></pre>
     * @property cursor
     */
    override protected native function initComponent() : void;
    protected native function onFirstLayout(thisToolbar : PagingToolbar, params : Object) : void;
    protected native function updateInfo() : void;
    protected native function onLoad(store, r, o) : void;
    protected native function getPageData() : void;
    /**
     * Change the active page
     * @param page The page to display
     */
    public native function changePage(page : int) : void;
    protected native function onLoadError() : void;
    protected native function readPage(d) : void;
    public native function onPagingFocus() : void;
    protected native function onPagingBlur(e) : void;
    protected native function onPagingKeyDown(field, e) : void;
    protected native function getParams() : void;
    protected native function beforeLoad() : void;
    protected native function doLoad(start) : void;
    /**
     * Move to the first page, has the same effect as clicking the 'first' button.
     */
    public native function moveFirst() : void;
    /**
     * Move to the previous page, has the same effect as clicking the 'previous' button.
     */
    public native function movePrevious() : void;
    /**
     * Move to the next page, has the same effect as clicking the 'next' button.
     */
    public native function moveNext() : void;
    /**
     * Move to the last page, has the same effect as clicking the 'last' button.
     */
    public native function moveLast() : void;
    /**
     * Refresh the current page, has the same effect as clicking the 'refresh' button.
     */
    public native function refresh() : void;
    /**
     * Binds the paging toolbar to the specified <b class='link'>ext.data.Store</b>
     * @param store The store to bind to this toolbar
     * @param initial true to not remove listeners
     */
    public native function bindStore(store : Store, initial : Boolean = undefined) : void;
    /**
     * Unbinds the paging toolbar from the specified <b class='link'>ext.data.Store</b> <b>(deprecated)</b>
     * @param store The data store to unbind
     */
    public native function unbind(store : Store) : void;
    /**
     * Binds the paging toolbar to the specified <b class='link'>ext.data.Store</b> <b>(deprecated)</b>
     * @param store The data store to bind
     */
    public native function bind(store : Store) : void;
    override protected native function onDestroy() : void;
}}
