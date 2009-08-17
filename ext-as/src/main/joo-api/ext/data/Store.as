package ext.data {

import ext.util.MixedCollection;
import ext.util.Observable;

/**
 * <p>The Store class encapsulates a client side cache of <b class='link' title='ext.data.Record'>Record</b>
 * objects which provide input data for Components such as the <b class='link' title='Ext.grid.GridPanel'>GridPanel</b>,
 * the <b class='link' title='ext.form.ComboBox'>ComboBox</b>, or the <b class='link' title='ext.DataView'>DataView</b>.</p>
 * <p><u>Retrieving Data</u></p>
 * <p>A Store object may access a data object using:<div class="mdetail-params"><ul>
 * <li><b class='link' title='#proxy configured'>implementation</b> of <b class='link' title='ext.data.DataProxy'>DataProxy</b></li>
 * <li><b class='link'>#data</b> to automatically pass in data</li>
 * <li><b class='link'>#loadData</b> to manually pass in data</li>
 * </ul></div></p>
 * <p><u>Reading Data</u></p>
 * <p>A Store object has no inherent knowledge of the format of the data object (it could be
 * an Array, XML, or JSON). A Store object uses an appropriate <b class='link' title='#reader configured'>implementation</b>
 * of a <b class='link' title='ext.data.DataReader'>DataReader</b> to create <b class='link' title='ext.data.Record'>Record</b> instances from the data
 * object.</p>
 * <p><u>Store Types</u></p>
 * <p>There are several implementations of Store available which are customized for use with
 * a specific DataReader implementation.  Here is an example using an ArrayStore which implicitly
 * creates a reader commensurate to an Array data object.</p>
 * <pre><code>
var myStore = new ext.data.ArrayStore({
    fields: ['fullname', 'first'],
    idIndex: 0 // id for each record will be the first element
});
 * </code></pre>
 * <p>For custom implementations create a basic <b class='link'>ext.data.Store</b> configured as needed:</p>
 * <pre><code>
// create a <b class='link' title='ext.data.Record'>Record</b> constructor:
var rt = ext.data.Record.create([
    {name: 'fullname'},
    {name: 'first'}
]);
var myStore = new ext.data.Store({
    // explicitly create reader
    reader: new ext.data.ArrayReader(
        {
            idIndex: 0  // id for each record will be the first element
        },
        rt // recordType
    )
});
 * </code></pre>
 * <p>Load some data into store (note the data object is an array which corresponds to the reader):</p>
 * <pre><code>
var myData = [
    [1, 'Fred Flintstone', 'Fred'],  // note that id for the record is the first element
    [2, 'Barney Rubble', 'Barney']
];
myStore.loadData(myData);
 * </code></pre>
 * <p>Records are cached and made available through accessor functions.  An example of adding
 * a record to the store:</p>
 * <pre><code>
var defaultData = {
    fullname: 'Full Name',
    first: 'First Name'
};
var recId = 100; // provide unique id for the record
var r = new myStore.recordType(defaultData, ++recId); // create new record
myStore.<b class='link'>#insert</b>(0, r); // insert a new record into the store (also see <b class='link'>#add</b>)
 * </code></pre>
*/
public class Store extends Observable {
/**
 * @constructor
 * Creates a new Store.
 * @param config A config object containing the objects needed for the Store to access data,
 * and read the data into Records.
 * @xtype store
 */
public function Store(config : Object) {
  super();
  config++;
}
    /**
     * See the <code><b class='link' title='#baseParams corresponding configuration'>option</b></code>
     * for a description of this property.
     * To modify this property see <code><b class='link'>#setBaseParam</b></code>.
     * @property
     */
  public var baseParams : Object;
    /**
     * The <b class='link' title='ext.data.Record'>Record</b> constructor as supplied to (or created by) the
     * <b class='link' title='ext.data.DataReader'>Reader</b>. Read-only.
     * <p>If the Reader was constructed by passing in an Array of <b class='link'>ext.data.Field</b> definition objects,
     * instead of a Record constructor, it will implicitly create a Record constructor from that Array (see
     * <b class='link'>ext.data.Record</b>.<b class='link' title='ext.data.Record#create'>create</b> for additional details).</p>
     * <p>This property may be used to create new Records of the type held in this Store, for example:</p><pre><code>
// create the data store
var store = new ext.data.ArrayStore({
    autoDestroy: true,
    fields: [
       {name: 'company'},
       {name: 'price', type: 'float'},
       {name: 'change', type: 'float'},
       {name: 'pctChange', type: 'float'},
       {name: 'lastChange', type: 'date', dateFormat: 'n/j h:ia'}
    ]
});
store.loadData(myData);

// create the Grid
var grid = new Ext.grid.EditorGridPanel({
    store: store,
    colModel: new Ext.grid.ColumnModel({
        columns: [
            {id:'company', header: 'Company', width: 160, dataIndex: 'company'},
            {header: 'Price', renderer: 'usMoney', dataIndex: 'price'},
            {header: 'Change', renderer: change, dataIndex: 'change'},
            {header: '% Change', renderer: pctChange, dataIndex: 'pctChange'},
            {header: 'Last Updated', width: 85,
                renderer: Ext.util.Format.dateRenderer('m/d/Y'),
                dataIndex: 'lastChange'}
        ],
        defaults: {
            sortable: true,
            width: 75
        }
    }),
    autoExpandColumn: 'company', // match the id specified in the column model
    height:350,
    width:600,
    title:'Array Grid',
    tbar: [{
        text: 'Add Record',
        handler : function(){
            var defaultData = {
                change: 0,
                company: 'New Company',
                lastChange: (new Date()).clearTime(),
                pctChange: 0,
                price: 10
            };
            var recId = 3; // provide unique id
            var p = new store.recordType(defaultData, recId); // create new record
            grid.stopEditing();
            store.<b class='link'>#insert</b>(0, p); // insert a new record into the store (also see <b class='link'>#add</b>)
            grid.startEditing(0, 0);
        }
    }]
});
     * </code></pre>
     * @property recordType
     */
  public var recordType : Function;
        /**
         * A <b class='link' title='Ext.util.MixedCollection'>MixedCollection</b> containing the defined <b class='link' title='ext.data.Field'>Field</b>s
         * for the <b class='link' title='ext.data.Record'>Records</b> stored in this Store. Read-only.
         * @property fields
         */
            public var fields : MixedCollection;
    /**
     * @cfg {String} storeId If passed, the id to use to register with the <b class='link' title='ext.StoreMgr'>StoreMgr</b>.
     * <p><b>Note</b>: if a (deprecated) <tt><b class='link'>#id</b></tt> is specified it will supersede the <tt>storeId</tt>
     * assignment.</p>
     */
    /**
     * @cfg {String} url If a <tt><b class='link'>#proxy</b></tt> is not specified the <tt>url</tt> will be used to
     * implicitly configure a <b class='link' title='ext.data.HttpProxy'>HttpProxy</b> if an <tt>url</tt> is specified.
     * Typically this option, or the <code><b class='link'>#data</b></code> option will be specified.
     */
    /**
     * @cfg {Boolean/Object} autoLoad If <tt><b class='link'>#data</b></tt> is not specified, and if <tt>autoLoad</tt>
     * is <tt>true</tt> or an <tt>Object</tt>, this store's <b class='link'>#load</b> method is automatically called
     * after creation. If the value of <tt>autoLoad</tt> is an <tt>Object</tt>, this <tt>Object</tt> will
     * be passed to the store's <b class='link'>#load</b> method.
     */
    /**
     * @cfg {ext.data.DataProxy} proxy The <b class='link' title='ext.data.DataProxy'>DataProxy</b> object which provides
     * access to a data object.  See <code><b class='link'>#url</b></code>.
     */
    /**
     * @cfg {Array} data An inline data object readable by the <code><b class='link'>#reader</b></code>.
     * Typically this option, or the <code><b class='link'>#url</b></code> option will be specified.
     */
    /**
     * @cfg {ext.data.DataReader} reader The <b class='link' title='ext.data.DataReader'>Reader</b> object which processes the
     * data object and returns an Array of <b class='link'>ext.data.Record</b> objects which are cached keyed by their
     * <b><tt><b class='link' title='ext.data.Record#id'>id</b></tt></b> property.
     */
    /**
     * @cfg {ext.data.DataWriter} writer
     * <p>The <b class='link' title='ext.data.DataWriter'>Writer</b> object which processes a record object for being written
     * to the server-side database.</p>
     * <br><p>When a writer is installed into a Store the <b class='link'>#add</b>, <b class='link'>#remove</b>, and <b class='link'>#update</b>
     * events on the store are monitored in order to remotely <b class='link' title='#createRecords create'>records</b>,
     * <b class='link' title='#destroyRecord destroy'>records</b>, or <b class='link' title='#updateRecord update'>records</b>.</p>
     * <br><p>The proxy for this store will relay any <b class='link'>#writexception</b> events to this store.</p>
     * <br><p>Sample implementation:
     * <pre><code>
var writer = new <b class='link'>ext.data.JsonWriter</b>({
    encode: true,
    writeAllFields: true // write all fields, not just those that changed
});

// Typical Store collecting the Proxy, Reader and Writer together.
var store = new ext.data.Store({
    storeId: 'user',
    root: 'records',
    proxy: proxy,
    reader: reader,
    writer: writer,     // <-- plug a DataWriter into the store just as you would a Reader
    paramsAsHash: true,
    autoSave: false    // <-- false to delay executing create, update, destroy requests
                        //     until specifically told to do so.
});
     * </code></pre></p>
     */
    public var writer  : DataWriter;
    /**
     * @cfg {Object} baseParams
     * <p>An object containing properties which are to be sent as parameters
     * for <i>every</i> HTTP request.</p>
     * <p>Parameters are encoded as standard HTTP parameters using <b class='link'>Ext#urlEncode</b>.</p>
     * <p><b>Note</b>: <code>baseParams</code> may be superseded by any <code>params</code>
     * specified in a <code><b class='link'>#load</b></code> request, see <code><b class='link'>#load</b></code>
     * for more details.</p>
     * This property may be modified after creation using the <code><b class='link'>#setBaseParam</b></code>
     * method.
     * @property
     */
    /**
     * @cfg {Object} sortInfo A config object to specify the sort order in the request of a Store's
     * <b class='link'>#load</b> operation.  Note that for local sorting, the <tt>direction</tt> property is
     * case-sensitive. See also <b class='link'>#remoteSort</b> and <b class='link'>#paramNames</b>.
     * For example:<pre><code>
sortInfo: {
    field: 'fieldName',
    direction: 'ASC' // or 'DESC' (case sensitive for local sorting)
}
</code></pre>
     */
    /**
     * @cfg {boolean} remoteSort <tt>true</tt> if sorting is to be handled by requesting the <tt><b class='link' title='#proxy'>Proxy</b></tt>
     * to provide a refreshed version of the data object in sorted order, as opposed to sorting the Record cache
     * in place (defaults to <tt>false</tt>).
     * <p>If <tt>remoteSort</tt> is <tt>true</tt>, then clicking on a <b class='link' title='Ext.grid.Column Grid'>Column</b>'s
     * <b class='link' title='Ext.grid.Column#header'>header</b> causes the current page to be requested from the server appending
     * the following two parameters to the <b><tt><b class='link' title='#load'>params</b></tt></b>:<div class="mdetail-params"><ul>
     * <li><b><tt>sort</tt></b> : String<p class="sub-desc">The <tt>name</tt> (as specified in the Record's
     * <b class='link' title='ext.data.Field Field'>definition</b>) of the field to sort on.</p></li>
     * <li><b><tt>dir</tt></b> : String<p class="sub-desc">The direction of the sort, 'ASC' or 'DESC' (case-sensitive).</p></li>
     * </ul></div></p>
     */
    public var remoteSort  : Boolean;
    /**
     * @cfg {Boolean} autoDestroy <tt>true</tt> to destroy the store when the component the store is bound
     * to is destroyed (defaults to <tt>false</tt>).
     * <p><b>Note</b>: this should be set to true when using stores that are bound to only 1 component.</p>
     */
    public var autoDestroy  : Boolean;
    /**
     * @cfg {Boolean} pruneModifiedRecords <tt>true</tt> to clear all modified record information each time
     * the store is loaded or when a record is removed (defaults to <tt>false</tt>). See <b class='link'>#getModifiedRecords</b>
     * for the accessor method to retrieve the modified records.
     */
    public var pruneModifiedRecords  : Boolean;
    /**
     * Contains the last options object used as the parameter to the <b class='link'>#load</b> method. See <b class='link'>#load</b>
     * for the details of what this may contain. This may be useful for accessing any params which were used
     * to load the current Record cache.
     * @property
     */
    public var lastOptions ;
    /**
     * @cfg {Boolean} autoSave
     * <p>Defaults to <tt>true</tt> causing the store to automatically <b class='link'>#save</b> records to
     * the server when a record is modified (ie: becomes 'dirty'). Specify <tt>false</tt> to manually call <b class='link'>#save</b>
     * to send all modifiedRecords to the server.</p>
     * <br><p><b>Note</b>: each CRUD action will be sent as a separate request.</p>
     */
    public var autoSave  : Boolean;
    /**
     * @cfg {Boolean} batch
     * <p>Defaults to <tt>true</tt> (unless <code><b class='link'>#restful</b>:true</code>). Multiple
     * requests for each CRUD action (CREATE, READ, UPDATE and DESTROY) will be combined
     * and sent as one transaction. Only applies when <code><b class='link'>#autoSave</b></code> is set
     * to <tt>false</tt>.</p>
     * <br><p>If Store is RESTful, the DataProxy is also RESTful, and a unique transaction is
     * generated for each record.</p>
     */
    public var batch  : Boolean;
    /**
     * @cfg {Boolean} restful
     * Defaults to <tt>false</tt>.  Set to <tt>true</tt> to have the Store and the set
     * Proxy operate in a RESTful manner. The store will automatically generate GET, POST,
     * PUT and DELETE requests to the server. The HTTP method used for any given CRUD
     * action is described in <b class='link'>ext.data.Api#restActions</b>.  For additional information
     * see <b class='link'>ext.data.DataProxy#restful</b>.
     * <p><b>Note</b>: if <code><b class='link'>#restful</b>:true</code> <code>batch</code> will
     * internally be set to <tt>false</tt>.</p>
     */
    public var restful : Boolean;
    /**
     * @cfg {Object} paramNames
     * <p>An object containing properties which specify the names of the paging and
     * sorting parameters passed to remote servers when loading blocks of data. By default, this
     * object takes the following form:</p><pre><code>
{
    start : 'start',  // The parameter name which specifies the start row
    limit : 'limit',  // The parameter name which specifies number of rows to return
    sort : 'sort',    // The parameter name which specifies the column to sort on
    dir : 'dir'       // The parameter name which specifies the sort direction
}
</code></pre>
     * <p>The server must produce the requested data block upon receipt of these parameter names.
     * If different parameter names are required, this property can be overriden using a configuration
     * property.</p>
     * <p>A <b class='link' title='ext.PagingToolbar'>PagingToolbar</b> bound to this Store uses this property to determine
     * the parameter names to use in its <b class='link' title='#load'>requests</b>.
     */
    public var paramNames  : Object;
    /**
     * @cfg {Object} defaultParamNames
     * Provides the default values for the <b class='link'>#paramNames</b> property. To globally modify the parameters
     * for all stores, this object should be changed on the store prototype.
     */
    public var defaultParamNames  : Object;
    /**
     * Destroys the store.
     */
    public native function destroy() : void;
    /**
     * Add Records to the Store and fires the <b class='link'>#add</b> event.  To add Records
     * to the store from a remote source use <code><b class='link'>#load}({add:true</b>)</code>.
     * See also <code><b class='link'>#recordType</b></code> and <code><b class='link'>#insert</b></code>.
     * @param records An Array of ext.data.Record objects
     * to add to the cache. See <b class='link'>#recordType</b>.
     */
    public native function add(records : Array/*ext.data.Record*/) : void;
    /**
     * (Local sort only) Inserts the passed Record into the Store at the index where it
     * should go based on the current sort information.
     * @param record
     */
    public native function addSorted(record : Record) : void;
    /**
     * Remove a Record from the Store and fires the <b class='link'>#remove</b> event.
     * @param record The ext.data.Record object to remove from the cache.
     */
    public native function remove(record : Record) : void;
    /**
     * Remove a Record from the Store at the specified index. Fires the <b class='link'>#remove</b> event.
     * @param index The index of the record to remove.
     */
    public native function removeAt(index : Number) : void;
    /**
     * Remove all Records from the Store and fires the <b class='link'>#clear</b> event.
     */
    public native function removeAll() : void;
    /**
     * Inserts Records into the Store at the given index and fires the <b class='link'>#add</b> event.
     * See also <code><b class='link'>#add</b></code> and <code><b class='link'>#addSorted</b></code>.
     * @param index The start index at which to insert the passed Records.
     * @param records An Array of ext.data.Record objects to add to the cache.
     */
    public native function insert(index : Number, records : Array/*ext.data.Record*/) : void;
    /**
     * Get the index within the cache of the passed Record.
     * @param record The ext.data.Record object to find.
     * @return The index of the passed Record. Returns -1 if not found.
     */
    public native function indexOf(record : Record) : Number;
    /**
     * Get the index within the cache of the Record with the passed id.
     * @param id The id of the Record to find.
     * @return The index of the Record. Returns -1 if not found.
     */
    public native function indexOfId(id : String) : Number;
    /**
     * Get the Record with the specified id.
     * @param id The id of the Record to find.
     * @return The Record with the passed id. Returns undefined if not found.
     */
    public native function getById(id : String) : Record;
    /**
     * Get the Record at the specified index.
     * @param index The index of the Record to find.
     * @return The Record at the passed index. Returns undefined if not found.
     */
    public native function getAt(index : Number) : Record;
    /**
     * Returns a range of Records between specified indices.
     * @param startIndex The starting index (defaults to 0)
     * @param endIndex The ending index (defaults to the last Record in the Store)
     * @return ]} An array of Records
     */
    public native function getRange(startIndex : Number = undefined, endIndex : Number = undefined) : Record;
    protected native function storeOptions(o) : void;
    /**
     * <p>Loads the Record cache from the configured <tt><b class='link'>#proxy</b></tt> using the configured <tt><b class='link'>#reader</b></tt>.</p>
     * <br><p>Notes:</p><div class="mdetail-params"><ul>
     * <li><b><u>Important</u></b>: loading is asynchronous! This call will return before the new data has been
     * loaded. To perform any post-processing where information from the load call is required, specify
     * the <tt>callback</tt> function to be called, or use a <b class='link' title='Ext.util.Observable#listeners a 'load' event'>handler</b>.</li>
     * <li>If using <b class='link' title='ext.PagingToolbar remote'>paging</b>, the first load call must specify the <tt>start</tt> and <tt>limit</tt>
     * properties in the <code>options.params</code> property to establish the initial position within the
     * dataset, and the number of Records to cache on each read from the Proxy.</li>
     * <li>If using <b class='link' title='#remoteSort remote'>sorting</b>, the configured <code><b class='link'>#sortInfo</b></code>
     * will be automatically included with the posted parameters according to the specified
     * <code><b class='link'>#paramNames</b></code>.</li>
     * </ul></div>
     * @param options An object containing properties which control loading options:<ul>
     * <li><b><tt>params</tt></b> :Object<div class="sub-desc"><p>An object containing properties to pass as HTTP
     * parameters to a remote data source. <b>Note</b>: <code>params</code> will override any
     * <code><b class='link'>#baseParams</b></code> of the same name.</p>
     * <p>Parameters are encoded as standard HTTP parameters using <b class='link'>Ext#urlEncode</b>.</p></div></li>
     * <li><b><tt>callback</tt></b> : Function<div class="sub-desc"><p>A function to be called after the Records
     * have been loaded. The <tt>callback</tt> is called after the load event and is passed the following arguments:<ul>
     * <li><tt>r</tt> : ext.data.Record[]</li>
     * <li><tt>options</tt>: Options object from the load call</li>
     * <li><tt>success</tt>: Boolean success indicator</li></ul></p></div></li>
     * <li><b><tt>scope</tt></b> : Object<div class="sub-desc"><p>Scope with which to call the callback (defaults
     * to the Store object)</p></div></li>
     * <li><b><tt>add</tt></b> : Boolean<div class="sub-desc"><p>Indicator to append loaded records rather than
     * replace the current cache.  <b>Note</b>: see note for <tt><b class='link'>#loadData</b></tt></p></div></li>
     * </ul>
     * @return If the <i>developer</i> provided <tt><b class='link'>#beforeload</b></tt> event handler returns
     * <tt>false</tt>, the load call will abort and will return <tt>false</tt>; otherwise will return <tt>true</tt>.
     */
    public native function load(options : Object) : Boolean;
    /**
     * updateRecord  Should not be used directly.  This method will be called automatically if a Writer is set.
     * Listens to 'update' event.
     * @param store
     * @param record
     * @param action
     * @private
     */
    public native function updateRecord(store : Object, record : Object, action : Object) : void;
    /**
     * Should not be used directly.  Store#add will call this automatically if a Writer is set
     * @param store
     * @param rs
     * @param index
     * @private
     */
    public native function createRecords(store : Object, rs : Object, index : Object) : void;
    /**
     * Destroys a record or records.  Should not be used directly.  It's called by Store#remove if a Writer is set.
     * @param store
     * @param {ext.data.Record/ext.data.Record[]}
     * @param index
     * @private
     */
    public native function destroyRecord(store : Store, records : *, index : Number) : void;
    /**
     * This method should generally not be used directly.  This method is called internally
     * by <b class='link'>#load</b>, or if a Writer is set will be called automatically when <b class='link'>#add</b>,
     * <b class='link'>#remove</b>, or <b class='link'>#update</b> events fire.
     * @param action Action name ('read', 'create', 'update', or 'destroy')
     * @param rs
     * @param options
     * @throws Error
     * @private
     */
    public native function execute(action : String, rs : *, options : Object) : void;
    /**
     * Saves all pending changes to the store.  If the commensurate ext.data.Api.actions action is not configured, then
     * the configured <code><b class='link'>#url</b></code> will be used.
     * <pre>
     * change            url
     * ---------------   --------------------
     * removed records   ext.data.Api.actions.destroy
     * phantom records   ext.data.Api.actions.create
     * <b class='link' title='#getModifiedRecords modified'>records</b>  ext.data.Api.actions.update
     * </pre>
     * TODO:  Create extensions of Error class and send associated Record with thrown exceptions.
     * e.g.:  ext.data.DataReader.Error or ext.data.Error or ext.data.DataProxy.Error, etc.
     */
    public native function save() : void;
    public native function doTransaction(action, rs) : void;
    public native function createCallback(action, rs) : void;
    public native function clearModified(rs) : void;
    public native function reMap(record) : void;
    public native function onCreateRecords(success, rs, data) : void;
    public native function onUpdateRecords(success, rs, data) : void;
    public native function onDestroyRecords(success, rs, data) : void;
    public native function handleException(e) : void;
    /**
     * <p>Reloads the Record cache from the configured Proxy using the configured <b class='link' title='ext.data.Reader'>Reader</b> and
     * the options from the last load operation performed.</p>
     * <p><b>Note</b>: see the Important note in <b class='link'>#load</b>.</p>
     * @param options An <tt>Object</tt> containing <b class='link' title='#load loading'>options</b> which may
     * override the options used in the last <b class='link'>#load</b> operation. See <b class='link'>#load</b> for details (defaults to
     * <tt>null</tt>, in which case the <b class='link'>#lastOptions</b> are used).
     */
    public native function reload(options : Object = undefined) : void;
    protected native function loadRecords(o, options, success) : void;
    /**
     * Loads data from a passed data block and fires the <b class='link'>#load</b> event. A <b class='link' title='ext.data.Reader'>Reader</b>
     * which understands the format of the data must have been configured in the constructor.
     * @param data The data block from which to read the Records.  The format of the data expected
     * is dependent on the type of <b class='link' title='ext.data.Reader'>Reader</b> that is configured and should correspond to
     * that <b class='link' title='ext.data.Reader'>Reader</b>'s <tt><b class='link'>ext.data.Reader#readRecords</b></tt> parameter.
     * @param append <tt>true</tt> to append the new Records rather the default to replace
     * the existing cache.
     * <b>Note</b>: that Records in a Store are keyed by their <b class='link' title='ext.data.Record#id'>id</b>, so added Records
     * with ids which are already present in the Store will <i>replace</i> existing Records. Only Records with
     * new, unique ids will be added.
     */
    public native function loadData(data : Object, append : Boolean = undefined) : void;
    /**
     * Gets the number of cached records.
     * <p>If using paging, this may not be the total size of the dataset. If the data object
     * used by the Reader contains the dataset size, then the <b class='link'>#getTotalCount</b> function returns
     * the dataset size.  <b>Note</b>: see the Important note in <b class='link'>#load</b>.</p>
     * @return The number of Records in the Store's cache.
     */
    public native function getCount() : Number;
    /**
     * Gets the total number of records in the dataset as returned by the server.
     * <p>If using paging, for this to be accurate, the data object used by the <b class='link' title='#reader'>Reader</b>
     * must contain the dataset size. For remote data sources, the value for this property
     * (<tt>totalProperty</tt> for <b class='link' title='ext.data.JsonReader'>JsonReader</b>,
     * <tt>totalRecords</tt> for <b class='link' title='ext.data.XmlReader'>XmlReader</b>) shall be returned by a query on the server.
     * <b>Note</b>: see the Important note in <b class='link'>#load</b>.</p>
     * @return The number of Records as specified in the data object passed to the Reader
     * by the Proxy.
     * <p><b>Note</b>: this value is not updated when changing the contents of the Store locally.</p>
     */
    public native function getTotalCount() : Number;
    /**
     * Returns an object describing the current sort state of this Store.
     * @return The sort state of the Store. An object with two properties:<ul>
     * <li><b>field : String<p class="sub-desc">The name of the field by which the Records are sorted.</p></li>
     * <li><b>direction : String<p class="sub-desc">The sort order, 'ASC' or 'DESC' (case-sensitive).</p></li>
     * </ul>
     * See <tt><b class='link'>#sortInfo</b></tt> for additional details.
     */
    public native function getSortState() : Object;
    protected native function applySort() : void;
    protected native function sortData(f, direction) : void;
    /**
     * Sets the default sort column and order to be used by the next <b class='link'>#load</b> operation.
     * @param fieldName The name of the field to sort by.
     * @param dir The sort order, 'ASC' or 'DESC' (case-sensitive, defaults to <tt>'ASC'</tt>)
     */
    public native function setDefaultSort(fieldName : String, dir : String = undefined) : void;
    /**
     * Sort the Records.
     * If remote sorting is used, the sort is performed on the server, and the cache is reloaded. If local
     * sorting is used, the cache is sorted internally. See also <b class='link'>#remoteSort</b> and <b class='link'>#paramNames</b>.
     * @param fieldName The name of the field to sort by.
     * @param dir The sort order, 'ASC' or 'DESC' (case-sensitive, defaults to <tt>'ASC'</tt>)
     */
    public native function sort(fieldName : String, dir : String = undefined) : void;
    /**
     * Calls the specified function for each of the <b class='link' title='ext.data.Record'>Records</b> in the cache.
     * @param fn The function to call. The <b class='link' title='ext.data.Record'>Record</b> is passed as the first parameter.
     * Returning <tt>false</tt> aborts and exits the iteration.
     * @param scope The scope in which to call the function (defaults to the <b class='link' title='ext.data.Record'>Record</b>).
     */
    public native function each(fn : Function, scope : Object = undefined) : void;
    /**
     * Gets all <b class='link' title='ext.data.Record'>records</b> modified since the last commit.  Modified records are
     * persisted across load operations (e.g., during paging). <b>Note</b>: deleted records are not
     * included.  See also <tt><b class='link'>#pruneModifiedRecords</b></tt> and
     * <b class='link'>ext.data.Record</b><tt><b class='link' title='ext.data.Record#markDirty'>markDirty</b>.</tt>.
     * @return ]} An array of <b class='link' title='ext.data.Record'>Records</b> containing outstanding
     * modifications.  To obtain modified fields within a modified record see
     *<b class='link'>ext.data.Record</b><tt><b class='link' title='ext.data.Record#modified'>modified</b>.</tt>.
     */
    public native function getModifiedRecords() : Record;
    protected native function createFilterFn(property, value, anyMatch, caseSensitive) : void;
    /**
     * Sums the value of <tt>property</tt> for each <b class='link' title='ext.data.Record'>record</b> between <tt>start</tt>
     * and <tt>end</tt> and returns the result.
     * @param property A field in each record
     * @param start The record index to start at (defaults to <tt>0</tt>)
     * @param end The last record index to include (defaults to length - 1)
     * @return The sum
     */
    public native function sum(property : String, start : Number = undefined, end : Number = undefined) : Number;
    /**
     * Filter the <b class='link' title='ext.data.Record'>records</b> by a specified property.
     * @param field A field on your records
     * @param value Either a string that the field should begin with, or a RegExp to test
     * against the field.
     * @param anyMatch <tt>true</tt> to match any part not just the beginning
     * @param caseSensitive <tt>true</tt> for case sensitive comparison
     */
    public native function filter(field : String, value : *, anyMatch : Boolean = undefined, caseSensitive : Boolean = undefined) : void;
    /**
     * Filter by a function. The specified function will be called for each
     * Record in this Store. If the function returns <tt>true</tt> the Record is included,
     * otherwise it is filtered out.
     * @param fn The function to be called. It will be passed the following parameters:<ul>
     * <li><b>record</b> : ext.data.Record<p class="sub-desc">The <b class='link' title='ext.data.Record'>record</b>
     * to test for filtering. Access field values using <b class='link'>ext.data.Record#get</b>.</p></li>
     * <li><b>id</b> : Object<p class="sub-desc">The ID of the Record passed.</p></li>
     * </ul>
     * @param scope The scope of the function (defaults to this)
     */
    public native function filterBy(fn : Function, scope : Object = undefined) : void;
    /**
     * Query the records by a specified property.
     * @param field A field on your records
     * @param value Either a string that the field
     * should begin with, or a RegExp to test against the field.
     * @param anyMatch True to match any part not just the beginning
     * @param caseSensitive True for case sensitive comparison
     * @return Returns an Ext.util.MixedCollection of the matched records
     */
    public native function query(field : String, value : *, anyMatch : Boolean = undefined, caseSensitive : Boolean = undefined) : MixedCollection;
    /**
     * Query the cached records in this Store using a filtering function. The specified function
     * will be called with each record in this Store. If the function returns <tt>true</tt> the record is
     * included in the results.
     * @param fn The function to be called. It will be passed the following parameters:<ul>
     * <li><b>record</b> : ext.data.Record<p class="sub-desc">The <b class='link' title='ext.data.Record'>record</b>
     * to test for filtering. Access field values using <b class='link'>ext.data.Record#get</b>.</p></li>
     * <li><b>id</b> : Object<p class="sub-desc">The ID of the Record passed.</p></li>
     * </ul>
     * @param scope The scope of the function (defaults to this)
     * @return Returns an Ext.util.MixedCollection of the matched records
     **/
    public native function queryBy(fn : Function, scope : Object = undefined) : MixedCollection;
    /**
     * Finds the index of the first matching record in this store by a specific property/value.
     * @param property A property on your objects
     * @param value Either a string that the property value
     * should begin with, or a RegExp to test against the property.
     * @param startIndex The index to start searching at
     * @param anyMatch True to match any part of the string, not just the beginning
     * @param caseSensitive True for case sensitive comparison
     * @return The matched index or -1
     */
    public native function find(property : String, value : *, startIndex : Number = undefined, anyMatch : Boolean = undefined, caseSensitive : Boolean = undefined) : Number;
    /**
     * Finds the index of the first matching record in this store by a specific property/value.
     * @param property A property on your objects
     * @param value The value to match against
     * @param startIndex The index to start searching at
     * @return The matched index or -1
     */
    public native function findExact(property : String, value : *, startIndex : Number = undefined) : Number;
    /**
     * Find the index of the first matching Record in this Store by a function.
     * If the function returns <tt>true</tt> it is considered a match.
     * @param fn The function to be called. It will be passed the following parameters:<ul>
     * <li><b>record</b> : ext.data.Record<p class="sub-desc">The <b class='link' title='ext.data.Record'>record</b>
     * to test for filtering. Access field values using <b class='link'>ext.data.Record#get</b>.</p></li>
     * <li><b>id</b> : Object<p class="sub-desc">The ID of the Record passed.</p></li>
     * </ul>
     * @param scope The scope of the function (defaults to this)
     * @param startIndex The index to start searching at
     * @return The matched index or -1
     */
    public native function findBy(fn : Function, scope : Object = undefined, startIndex : Number = undefined) : Number;
    /**
     * Collects unique values for a particular dataIndex from this store.
     * @param dataIndex The property to collect
     * @param allowNull Pass true to allow null, undefined or empty string values
     * @param bypassFilter Pass true to collect from all records, even ones which are filtered
     * @return An array of the unique values
     **/
    public native function collect(dataIndex : String, allowNull : Boolean = undefined, bypassFilter : Boolean = undefined) : Array;
    /**
     * Revert to a view of the Record cache with no filtering applied.
     * @param suppressEvent If <tt>true</tt> the filter is cleared silently without firing the
     * <b class='link'>#datachanged</b> event.
     */
    public native function clearFilter(suppressEvent : Boolean) : void;
    /**
     * Returns true if this store is currently filtered
     * @return 
     */
    public native function isFiltered() : Boolean;
    protected native function afterEdit(record) : void;
    protected native function afterReject(record) : void;
    protected native function afterCommit(record) : void;
    /**
     * Commit all Records with <b class='link' title='#getModifiedRecords outstanding'>changes</b>. To handle updates for changes,
     * subscribe to the Store's <b class='link' title='#update update'>event</b>, and perform updating when the third parameter is
     * ext.data.Record.COMMIT.
     */
    public native function commitChanges() : void;
    /**
     * <b class='link' title='ext.data.Record#reject'>Reject</b> outstanding changes on all <b class='link' title='#getModifiedRecords modified'>records</b>.
     */
    public native function rejectChanges() : void;
    protected native function onMetaChange(meta, rtype, o) : void;
    protected native function findInsertIndex(record) : void;
    /**
     * Set the value for a property name in this store's <b class='link'>#baseParams</b>.  Usage:</p><pre><code>
myStore.setBaseParam('foo', {bar:3});
</code></pre>
     * @param name Name of the property to assign
     * @param value Value to assign the <tt>name</tt>d property
     **/
    public native function setBaseParam(name : String, value : *) : void;
/**
*/
}}
