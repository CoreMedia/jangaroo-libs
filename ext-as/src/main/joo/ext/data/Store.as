package ext.data {

import ext.config.datawriter;
import ext.config.store;
import ext.util.MixedCollection;
import ext.util.Observable;

/**
 * Fires when Records have been <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a>ed to the Store
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>records:Array</code>
 The array of Records added
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index at which the record(s) were added
 *       </li>

 * </ul>
 */
[Event(name="add")]

/**
 * Fires before a request is made for a new data object. If the beforeload handler returns <tt>false</tt> the <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> action will be canceled.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The loading options that were specified (see <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> for details)
 *       </li>

 * </ul>
 */
[Event(name="beforeload")]

/**
 * Fires before a save action is called. A save encompasses destroying records, updating records and creating records.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>store:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>data:Object</code>
 An object containing the data that is to be saved. The object will contain a key for each appropriate action, with an array of records for each action.
 *       </li>

 * </ul>
 */
[Event(name="beforesave")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>store:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>action:String</code>
 [Ext.data.Api.actions.create|update|destroy]
 *       </li>

 *       <li>
 *           <code>rs:&#42;</code>
 The Record(s) being written.
 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The loading options that were specified. Edit <code>options.params</code> to add Http parameters to the request. (see <a href="output/Ext.data.Store.html#Ext.data.Store-save">save</a> for details)
 *       </li>

 *       <li>
 *           <code>arg:Object</code>
 The callback's arg object passed to the <a href="output/Ext.data.Store.html#Ext.data.Store-request">request</a> function
 *       </li>

 * </ul>
 */
[Event(name="beforewrite")]

/**
 * Fires when the data cache has been cleared.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>records:Array</code>
 The records that were cleared.
 *       </li>

 * </ul>
 */
[Event(name="clear")]

/**
 * Fires when the data cache has changed in a bulk manner (e.g., it has been sorted, filtered, etc.) and a widget that is using this Store as a Record cache should refresh its view.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>

 *       </li>

 * </ul>
 */
[Event(name="datachanged")]

/**
 * Fires if an exception occurs in the Proxy during a remote request. This event is relayed through the corresponding <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a>. See <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a>.<a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-exception">exception</a> for additional details.

 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>misc:misc</code>
 See <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a>.<a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-exception">exception</a> for description.
 *       </li>

 * </ul>
 */
[Event(name="exception")]

/**
 * Fires after a new set of Records has been loaded.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>records:Array</code>
 The Records that were loaded
 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The loading options that were specified (see <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> for details)
 *       </li>

 * </ul>
 */
[Event(name="load")]

/**
 * This event is <b>deprecated</b> in favor of the catch-all <b><code><a href="output/Ext.data.Store.html#Ext.data.Store-exception">exception</a></code></b> event instead.
 <p>This event is relayed through the corresponding <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a>. See <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a>.<a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-loadexception">loadexception</a> for additional details.</p>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>misc:misc</code>
 See <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a>.<a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-loadexception">loadexception</a> for description.
 *       </li>

 * </ul>
 */
[Event(name="loadexception")]

/**
 * Fires when this store's reader provides new metadata (fields). This is currently only supported for JsonReaders.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>meta:Object</code>
 The JSON metadata
 *       </li>

 * </ul>
 */
[Event(name="metachange")]

/**
 * Fires when a Record has been <a href="output/Ext.data.Store.html#Ext.data.Store-remove">remove</a>d from the Store
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>record:ext.data.Record</code>
 The Record that was removed
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index at which the record was removed
 *       </li>

 * </ul>
 */
[Event(name="remove")]

/**
 * Fires after a save is completed. A save encompasses destroying records, updating records and creating records.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>store:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>batch:Number</code>
 The identifier for the batch that was saved.
 *       </li>

 *       <li>
 *           <code>data:Object</code>
 An object containing the data that is to be saved. The object will contain a key for each appropriate action, with an array of records for each action.
 *       </li>

 * </ul>
 */
[Event(name="save")]

/**
 * Fires when a Record has been updated
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>record:ext.data.Record</code>
 The Record that was updated
 *       </li>

 *       <li>
 *           <code>operation:String</code>
 The update operation being performed. Value may be one of: <pre><code>    Ext.data.Record.EDIT
 Ext.data.Record.REJECT
 Ext.data.Record.COMMIT
 </code></pre>
 *       </li>

 * </ul>
 */
[Event(name="update")]

/**
 * Fires if the server returns 200 after an Ext.data.Api.actions CRUD action. Success of the action is determined in the <code>result['successProperty']</code>property (<b>NOTE</b> for RESTful stores, a simple 20x response is sufficient for the actions "destroy" and "update". The "create" action should should return 200 along with a database pk).
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>store:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>action:String</code>
 [Ext.data.Api.actions.create|update|destroy]
 *       </li>

 *       <li>
 *           <code>result:Object</code>
 The 'data' picked-out out of the response for convenience.
 *       </li>

 *       <li>
 *           <code>res:ext.direct.Transaction</code>

 *       </li>

 *       <li>
 *           <code>rs:&#42;</code>
 Store's records, the subject(s) of the write-action
 *       </li>

 * </ul>
 */
[Event(name="write")]


/**
 * The Store class encapsulates a client side cache of <a href="Ext.data.Record.html">Record</a> objects which provide input data for Components such as the <a href="Ext.grid.GridPanel.html">GridPanel</a>, the <a href="Ext.form.ComboBox.html">ComboBox</a>, or the <a href="Ext.DataView.html">DataView</a>.
 <p><u>Retrieving Data</u></p><p>A Store object may access a data object using:</p><div class="mdetail-params"><ul><li><a href="output/Ext.data.Store.html#Ext.data.Store-proxy">configured implementation</a> of <a href="Ext.data.DataProxy.html">DataProxy</a></li><li><a href="output/Ext.data.Store.html#Ext.data.Store-data">data</a> to automatically pass in data</li><li><a href="output/Ext.data.Store.html#Ext.data.Store-loadData">loadData</a> to manually pass in data</li></ul></div><br/><br/> <p><u>Reading Data</u></p><p>A Store object has no inherent knowledge of the format of the data object (it could be an Array, XML, or JSON). A Store object uses an appropriate <a href="output/Ext.data.Store.html#Ext.data.Store-reader">configured implementation</a> of a <a href="Ext.data.DataReader.html">DataReader</a> to create <a href="Ext.data.Record.html">Record</a> instances from the data object.</p><p><u>Store Types</u></p><p>There are several implementations of Store available which are customized for use with a specific DataReader implementation. Here is an example using an ArrayStore which implicitly creates a reader commensurate to an Array data object.</p><pre><code>var myStore = new Ext.data.ArrayStore({
 fields: ['fullname', 'first'],
 idIndex: 0 // id for each record will be the first element
 });
 </code></pre><p>For custom implementations create a basic <a href="Ext.data.Store.html">Ext.data.Store</a> configured as needed:</p><pre><code>// create a <a href="Ext.data.Record.html">Record</a> constructor:
 var rt = Ext.data.Record.create([
 {name: 'fullname'},
 {name: 'first'}
 ]);
 var myStore = new Ext.data.Store({
 // explicitly create reader
 reader: new Ext.data.ArrayReader(
 {
 idIndex: 0  // id for each record will be the first element
 },
 rt // recordType
 )
 });
 </code></pre><p>Load some data into store (note the data object is an array which corresponds to the reader):</p><pre><code>var myData = [
 [1, 'Fred Flintstone', 'Fred'],  // note that id for the record is the first element
 [2, 'Barney Rubble', 'Barney']
 ];
 myStore.loadData(myData);
 </code></pre><p>Records are cached and made available through accessor functions. An example of adding a record to the store:</p><pre><code>var defaultData = {
 fullname: 'Full Name',
 first: 'First Name'
 };
 var recId = 100; // provide unique id for the record
 var r = new myStore.recordType(defaultData, ++recId); // create new record
 myStore.<a href="output/Ext.data.Store.html#Ext.data.Store-insert">insert</a>(0, r); // insert a new record into the store (also see <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a>)
 </code></pre><p><u>Writing Data</u></p><p>And <b>new in Ext version 3</b>, use the new <a href="Ext.data.DataWriter.html">DataWriter</a> to create an automated, <a href="http://extjs.com/deploy/dev/examples/writer/writer.html">Writable Store</a> along with <a href="http://extjs.com/deploy/dev/examples/restful/restful.html">RESTful features.</a></p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class can be instantiated by the EXML element &lt;store>.</p>
 * @see ext.config.store
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store Sencha Docs Ext JS 3.4
 */
[Native]
public class Store extends Observable {

  /**
   * Creates a new Store.
   *
   * @param config A config object containing the objects needed for the Store to access data, and read the data into Records.
   * @see ext.config.store
   */
  public function Store(config:store = null) {
    super();
  }

  /**
   See the <code><a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">corresponding configuration option</a></code> for a description of this property. To modify this property see <code><a href="output/Ext.data.Store.html#Ext.data.Store-setBaseParam">setBaseParam</a></code>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-property-baseParams Sencha Docs Ext JS 3.4
   */
  public native function get baseParams():Object;

  /**
   * @private
   */
  public native function set baseParams(value:Object):void;

  /**
   A <a href="Ext.util.MixedCollection.html">MixedCollection</a> containing the defined <a href="Ext.data.Field.html">Field</a>s for the <a href="Ext.data.Record.html">Records</a> stored in this Store.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-property-fields Sencha Docs Ext JS 3.4
   */
  public native function get fields():MixedCollection;

  /**
   True if this store is currently sorted by more than one field/direction combination.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-property-hasMultiSort Sencha Docs Ext JS 3.4
   */
  public native function get hasMultiSort():Boolean;

  /**
   * @private
   */
  public native function set hasMultiSort(value:Boolean):void;

  /**
   True if the store has been destroyed already. Read only
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-property-isDestroyed Sencha Docs Ext JS 3.4
   */
  public native function get isDestroyed():Boolean;

  /**
   * @private
   */
  public native function set isDestroyed(value:Boolean):void;

  /**
   Contains the last options object used as the parameter to the <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> method. See <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> for the details of what this may contain. This may be useful for accessing any params which were used to load the current Record cache.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-property-lastOptions Sencha Docs Ext JS 3.4
   */
  public native function get lastOptions():Object;

  /**
   * @private
   */
  public native function set lastOptions(value:Object):void;

  /**
   Object containing overall sort direction and an ordered array of sorter configs used when sorting on multiple fields
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-property-multiSortInfo Sencha Docs Ext JS 3.4
   */
  public native function get multiSortInfo():Object;

  /**
   * @private
   */
  public native function set multiSortInfo(value:Object):void;

  /**
   The <a href="Ext.data.Record.html">Record</a> constructor as supplied to (or created by) the <a href="Ext.data.DataReader.html">Reader</a>. <p>If the Reader was constructed by passing in an Array of <a href="Ext.data.Field.html">Ext.data.Field</a> definition objects, instead of a Record constructor, it will implicitly create a Record constructor from that Array (see <a href="Ext.data.Record.html">Ext.data.Record</a>.<a href="output/Ext.data.Record.html#Ext.data.Record-create">create</a> for additional details).</p><p>This property may be used to create new Records of the type held in this Store, for example:</p><pre><code>   // create the data store
   var store = new Ext.data.ArrayStore({
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
   store.<a href="output/Ext.data.Store.html#Ext.data.Store-insert">insert</a>(0, p); // insert a new record into the store (also see <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a>)
   grid.startEditing(0, 0);
   }
   }]
   });
   </code></pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-property-recordType Sencha Docs Ext JS 3.4
   */
  public native function get recordType():Function;

  /**
   <tt>true</tt> to destroy the store when the component the store is bound to is destroyed (defaults to <tt>false</tt>). <p><b>Note</b>: this should be set to true when using stores that are bound to only 1 component.</p>
   */
  public native function get autoDestroy():Boolean;

  /**
   If <tt><a href="output/Ext.data.Store.html#Ext.data.Store-data">data</a></tt> is not specified, and if <tt>autoLoad</tt> is <tt>true</tt> or an <tt>Object</tt>, this store's <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> method is automatically called after creation. If the value of <tt>autoLoad</tt> is an <tt>Object</tt>, this <tt>Object</tt> will be passed to the store's <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> method.
   */
  public native function get autoLoad():*;

  /**
   Defaults to <tt>true</tt> causing the store to automatically <a href="output/Ext.data.Store.html#Ext.data.Store-save">save</a> records to the server when a record is modified (ie: becomes 'dirty'). Specify <tt>false</tt> to manually call <a href="output/Ext.data.Store.html#Ext.data.Store-save">save</a> to send all modifiedRecords to the server.
   <br/><p><b>Note</b>: each CRUD action will be sent as a separate request.</p>
   */
  public native function get autoSave():Boolean;

  /**
   Defaults to <tt>true</tt> (unless <code><a href="output/Ext.data.Store.html#Ext.data.Store-restful">restful</a>:true</code>). Multiple requests for each CRUD action (CREATE, READ, UPDATE and DESTROY) will be combined and sent as one transaction. Only applies when <code><a href="output/Ext.data.Store.html#Ext.data.Store-autoSave">autoSave</a></code> is set to <tt>false</tt>.
   <br/><p>If Store is RESTful, the DataProxy is also RESTful, and a unique transaction is generated for each record.</p>
   */
  public native function get batch():Boolean;

  /**
   An inline data object readable by the <code><a href="output/Ext.data.Store.html#Ext.data.Store-reader">reader</a></code>. Typically this option, or the <code><a href="output/Ext.data.Store.html#Ext.data.Store-url">url</a></code> option will be specified.
   */
  public native function get data():Array;

  /**
   Provides the default values for the <a href="output/Ext.data.Store.html#Ext.data.Store-paramNames">paramNames</a> property. To globally modify the parameters for all stores, this object should be changed on the store prototype.
   */
  public native function get defaultParamNames():Object;

  /**
   An object containing properties which specify the names of the paging and sorting parameters passed to remote servers when loading blocks of data. By default, this object takes the following form:
   <pre><code>{
   start : 'start',  // The parameter name which specifies the start row
   limit : 'limit',  // The parameter name which specifies number of rows to return
   sort : 'sort',    // The parameter name which specifies the column to sort on
   dir : 'dir'       // The parameter name which specifies the sort direction
   }
   </code></pre><p>The server must produce the requested data block upon receipt of these parameter names. If different parameter names are required, this property can be overridden using a configuration property.</p><p>A <a href="Ext.PagingToolbar.html">PagingToolbar</a> bound to this Store uses this property to determine the parameter names to use in its <a href="output/Ext.data.Store.html#Ext.data.Store-load">requests</a>.</p>
   */
  public native function get paramNames():Object;

  /**
   The <a href="Ext.data.DataProxy.html">DataProxy</a> object which provides access to a data object. See <code><a href="output/Ext.data.Store.html#Ext.data.Store-url">url</a></code>.
   */
  public native function get proxy():DataProxy;

  /**
   <tt>true</tt> to clear all modified record information each time the store is loaded or when a record is removed (defaults to <tt>false</tt>). See <a href="output/Ext.data.Store.html#Ext.data.Store-getModifiedRecords">getModifiedRecords</a> for the accessor method to retrieve the modified records.
   */
  public native function get pruneModifiedRecords():Boolean;

  /**
   The <a href="Ext.data.DataReader.html">Reader</a> object which processes the data object and returns an Array of <a href="Ext.data.Record.html">Ext.data.Record</a> objects which are cached keyed by their <b><tt><a href="output/Ext.data.Record.html#Ext.data.Record-id">id</a></tt></b> property.
   */
  public native function get reader():DataReader;

  /**
   <tt>true</tt> if sorting is to be handled by requesting the <tt><a href="output/Ext.data.Store.html#Ext.data.Store-proxy">Proxy</a></tt> to provide a refreshed version of the data object in sorted order, as opposed to sorting the Record cache in place (defaults to <tt>false</tt>). <p>If <tt>remoteSort</tt> is <tt>true</tt>, then clicking on a <a href="Ext.grid.Column.html">Grid Column</a>'s <a href="output/Ext.grid.Column.html#Ext.grid.Column-header">header</a> causes the current page to be requested from the server appending the following two parameters to the <b><tt><a href="output/Ext.data.Store.html#Ext.data.Store-load">params</a></tt></b>:</p><div class="mdetail-params"><ul><li><b><tt>sort</tt></b> : String<p class="sub-desc">The <tt>name</tt> (as specified in the Record's <a href="Ext.data.Field.html">Field definition</a>) of the field to sort on.</p></li><li><b><tt>dir</tt></b> : String<p class="sub-desc">The direction of the sort, 'ASC' or 'DESC' (case-sensitive).</p></li></ul></div><br/><br/>
   */
  public native function get remoteSort():Boolean;

  /**
   Defaults to <tt>false</tt>. Set to <tt>true</tt> to have the Store and the set Proxy operate in a RESTful manner. The store will automatically generate GET, POST, PUT and DELETE requests to the server. The HTTP method used for any given CRUD action is described in <a href="output/Ext.data.Api.html#Ext.data.Api-restActions">Ext.data.Api.restActions</a>. For additional information see <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-restful">Ext.data.DataProxy.restful</a>. <p><b>Note</b>: if <code><a href="output/Ext.data.Store.html#Ext.data.Store-restful">restful</a>:true</code> <code>batch</code> will internally be set to <tt>false</tt>.</p>
   */
  public native function get restful():Boolean;

  /**
   A config object to specify the sort order in the request of a Store's <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> operation. Note that for local sorting, the <tt>direction</tt> property is case-sensitive. See also <a href="output/Ext.data.Store.html#Ext.data.Store-remoteSort">remoteSort</a> and <a href="output/Ext.data.Store.html#Ext.data.Store-paramNames">paramNames</a>. For example:<pre><code>sortInfo: {
   field: 'fieldName',
   direction: 'ASC' // or 'DESC' (case sensitive for local sorting)
   }
   </code></pre>
   */
  public native function get sortInfo():Object;

  /**
   If passed, the id to use to register with the <b><a href="Ext.StoreMgr.html">StoreMgr</a></b>. <p><b>Note</b>: if a (deprecated) <tt><a href="output/Ext.data.Store.html#Ext.data.Store-id">id</a></tt> is specified it will supersede the <tt>storeId</tt> assignment.</p>
   */
  public native function get storeId():String;

  /**
   If a <tt><a href="output/Ext.data.Store.html#Ext.data.Store-proxy">proxy</a></tt> is not specified the <tt>url</tt> will be used to implicitly configure a <a href="Ext.data.HttpProxy.html">HttpProxy</a> if an <tt>url</tt> is specified. Typically this option, or the <code><a href="output/Ext.data.Store.html#Ext.data.Store-data">data</a></code> option will be specified.
   */
  public native function get url():String;

  /**
   The <a href="Ext.data.DataWriter.html">Writer</a> object which processes a record object for being written to the server-side database.
   <br/><p>When a writer is installed into a Store the <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a>, <a href="output/Ext.data.Store.html#Ext.data.Store-remove">remove</a>, and <a href="output/Ext.data.Store.html#Ext.data.Store-update">update</a> events on the store are monitored in order to remotely <a href="output/Ext.data.Store.html#Ext.data.Store-createRecords">create records</a>, <a href="output/Ext.data.Store.html#Ext.data.Store-destroyRecord">destroy records</a>, or <a href="output/Ext.data.Store.html#Ext.data.Store-updateRecord">update records</a>.</p><br/><p>The proxy for this store will relay any <a href="output/Ext.data.Store.html#Ext.data.Store-writexception">writexception</a> events to this store.</p><br/><p>Sample implementation:</p><pre><code>var writer = new <a href="Ext.data.JsonWriter.html">Ext.data.JsonWriter</a>({
   encode: true,
   writeAllFields: true // write all fields, not just those that changed
   });

   // Typical Store collecting the Proxy, Reader and Writer together.
   var store = new Ext.data.Store({
   storeId: 'user',
   root: 'records',
   proxy: proxy,
   reader: reader,
   writer: writer,     // &lt;-- plug a DataWriter into the store just as you would a Reader
   paramsAsHash: true,
   autoSave: false    // &lt;-- false to delay executing create, update, destroy requests
   //     until specifically told to do so.
   });
   </code></pre><br/><br/>
   */
  public native function get writer():DataWriter;

  /**
   * Add Records to the Store and fires the <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a> event. To add Records to the store from a remote source use <code><a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a>({add:true})</code>. See also <code><a href="output/Ext.data.Store.html#Ext.data.Store-recordType">recordType</a></code> and <code><a href="output/Ext.data.Store.html#Ext.data.Store-insert">insert</a></code>.
   *
   * @param records An Array of Ext.data.Record objects to add to the cache. See <a href="output/Ext.data.Store.html#Ext.data.Store-recordType">recordType</a>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-add Sencha Docs Ext JS 3.4
   */
  public native function add(records:Array):void;

  /**
   * (Local sort only) Inserts the passed Record into the Store at the index where it should go based on the current sort information.
   *
   * @param record
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-addSorted Sencha Docs Ext JS 3.4
   */
  public native function addSorted(record:Record):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-applySort Sencha Docs Ext JS 3.4
   */
  public native function applySort():void;

  /**
   * builds a DataWriter instance when Store constructor is provided with a writer config-object instead of an instance.
   *
   * @param config Writer configuration
   * @return
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-buildWriter Sencha Docs Ext JS 3.4
   */
  public native function buildWriter(config:datawriter):DataWriter;

  /**
   * Revert to a view of the Record cache with no filtering applied.
   *
   * @param suppressEvent If <tt>true</tt> the filter is cleared silently without firing the <a href="output/Ext.data.Store.html#Ext.data.Store-datachanged">datachanged</a> event.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-clearFilter Sencha Docs Ext JS 3.4
   */
  public native function clearFilter(suppressEvent:Boolean):void;

  /**
   * Collects unique values for a particular dataIndex from this store.
   *
   * @param dataIndex The property to collect
   * @param allowNull Pass true to allow null, undefined or empty string values
   * @param bypassFilter Pass true to collect from all records, even ones which are filtered
   * @return An array of the unique values
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-collect Sencha Docs Ext JS 3.4
   */
  public native function collect(dataIndex:String, allowNull:Boolean = false, bypassFilter:Boolean = false):Array;

  /**
   * Commit all Records with <a href="output/Ext.data.Store.html#Ext.data.Store-getModifiedRecords">outstanding changes</a>. To handle updates for changes, subscribe to the Store's <a href="output/Ext.data.Store.html#Ext.data.Store-update">update event</a>, and perform updating when the third parameter is Ext.data.Record.COMMIT.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-commitChanges Sencha Docs Ext JS 3.4
   */
  public native function commitChanges():void;

  /**
   *
   *
   * @param property The property to create the filter function for
   * @param value The string/regex to compare the property value to
   * @param anyMatch True if we don't care if the filter value is not the full value (defaults to false)
   * @param caseSensitive True to create a case-sensitive regex (defaults to false)
   * @param exactMatch True to force exact match (^ and $ characters added to the regex). Defaults to false. Ignored if anyMatch is true.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-createFilterFn Sencha Docs Ext JS 3.4
   */
  public native function createFilterFn(property:String, value:*, anyMatch:Boolean, caseSensitive:Boolean, exactMatch:Boolean):void;

  /**
   *
   *
   * @param filters The array of filter objects (each object should contain an 'fn' and optional scope)
   * @return The multiple filter function
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-createMultipleFilterFn Sencha Docs Ext JS 3.4
   */
  public native function createMultipleFilterFn(filters:Array):Function;

  /**
   *
   *
   * @param store
   * @param records
   * @param index
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-createRecords Sencha Docs Ext JS 3.4
   */
  public native function createRecords(store:Object, records:Object, index:Object):void;

  /**
   *
   *
   * @param field The field to create the sorter for
   * @param direction The direction to sort by (defaults to "ASC")
   * @return A function which sorts by the field/direction combination provided
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-createSortFunction Sencha Docs Ext JS 3.4
   */
  public native function createSortFunction(field:String, direction:String):Function;

  /**
   * Destroys the store.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy():void;

  /**
   * Destroys a Record. Should not be used directly. It's called by Store#remove if a Writer is set.
   *
   * @param store this
   * @param record
   * @param index
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-destroyRecord Sencha Docs Ext JS 3.4
   */
  public native function destroyRecord(store:Store, record:Record, index:Number):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-doUpdate Sencha Docs Ext JS 3.4
   */
  public native function doUpdate():void;

  /**
   * Calls the specified function for each of the <a href="Ext.data.Record.html">Records</a> in the cache.
   *
   * @param fn The function to call. The <a href="Ext.data.Record.html">Record</a> is passed as the first parameter. Returning <tt>false</tt> aborts and exits the iteration.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the current <a href="Ext.data.Record.html">Record</a> in the iteration.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-each Sencha Docs Ext JS 3.4
   */
  public native function each(fn:Function, scope:Object = null):void;

  /**
   * This method should generally not be used directly. This method is called internally by <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a>, or if a Writer is set will be called automatically when <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a>, <a href="output/Ext.data.Store.html#Ext.data.Store-remove">remove</a>, or <a href="output/Ext.data.Store.html#Ext.data.Store-update">update</a> events fire.
   *
   * @param action Action name ('read', 'create', 'update', or 'destroy')
   * @param rs
   * @param options
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-execute Sencha Docs Ext JS 3.4
   */
  public native function execute(action:String, rs:*, options:Object):void;

  /**
   * Filter the <a href="Ext.data.Record.html">records</a> by a specified property. Alternatively, pass an array of filter options to filter by more than one property. Single filter example: store.filter('name', 'Ed', true, true); //finds all records containing the substring 'Ed' Multiple filter example: <pre><code>store.filter([
   {
   property     : 'name',
   value        : 'Ed',
   anyMatch     : true, //optional, defaults to true
   caseSensitive: true  //optional, defaults to true
   },
   //filter functions can also be passed
   {
   fn   : function(record) {
   return record.get('age') == 24
   },
   scope: this
   }
   ]);
   </code></pre>
   *
   * @param field A field on your records, or an array containing multiple filter options
   * @param value Either a string that the field should begin with, or a RegExp to test against the field.
   * @param anyMatch <tt>true</tt> to match any part not just the beginning
   * @param caseSensitive <tt>true</tt> for case sensitive comparison
   * @param exactMatch True to force exact match (^ and $ characters added to the regex). Defaults to false. Ignored if anyMatch is true.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-filter Sencha Docs Ext JS 3.4
   */
  public native function filter(field:*, value:*, anyMatch:Boolean = false, caseSensitive:Boolean = false, exactMatch:Boolean = false):void;

  /**
   * Filter by a function. The specified function will be called for each Record in this Store. If the function returns <tt>true</tt> the Record is included, otherwise it is filtered out.
   *
   * @param fn The function to be called. It will be passed the following parameters:<ul><li><b>record</b> : Ext.data.Record<p class="sub-desc">The <a href="Ext.data.Record.html">record</a> to test for filtering. Access field values using <a href="output/Ext.data.Record.html#Ext.data.Record-get">Ext.data.Record.get</a>.</p></li><li><b>id</b> : Object<p class="sub-desc">The ID of the Record passed.</p></li></ul>
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this Store.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-filterBy Sencha Docs Ext JS 3.4
   */
  public native function filterBy(fn:Function, scope:Object = null):void;

  /**
   * Finds the index of the first matching Record in this store by a specific field value.
   *
   * @param fieldName The name of the Record field to test.
   * @param value Either a string that the field value should begin with, or a RegExp to test against the field.
   * @param startIndex The index to start searching at
   * @param anyMatch True to match any part of the string, not just the beginning
   * @param caseSensitive True for case sensitive comparison
   * @return The matched index or -1
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-find Sencha Docs Ext JS 3.4
   */
  public native function find(fieldName:String, value:*, startIndex:Number = undefined, anyMatch:Boolean = false, caseSensitive:Boolean = false):Number;

  /**
   * Find the index of the first matching Record in this Store by a function. If the function returns <tt>true</tt> it is considered a match.
   *
   * @param fn The function to be called. It will be passed the following parameters:<ul><li><b>record</b> : Ext.data.Record<p class="sub-desc">The <a href="Ext.data.Record.html">record</a> to test for filtering. Access field values using <a href="output/Ext.data.Record.html#Ext.data.Record-get">Ext.data.Record.get</a>.</p></li><li><b>id</b> : Object<p class="sub-desc">The ID of the Record passed.</p></li></ul>
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this Store.
   * @param startIndex The index to start searching at
   * @return The matched index or -1
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-findBy Sencha Docs Ext JS 3.4
   */
  public native function findBy(fn:Function, scope:Object = null, startIndex:Number = undefined):Number;

  /**
   * Finds the index of the first matching Record in this store by a specific field value.
   *
   * @param fieldName The name of the Record field to test.
   * @param value The value to match the field against.
   * @param startIndex The index to start searching at
   * @return The matched index or -1
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-findExact Sencha Docs Ext JS 3.4
   */
  public native function findExact(fieldName:String, value:*, startIndex:Number = undefined):Number;

  /**
   * Get the Record at the specified index.
   *
   * @param index The index of the Record to find.
   * @return The Record at the passed index. Returns undefined if not found.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-getAt Sencha Docs Ext JS 3.4
   */
  public native function getAt(index:Number):Record;

  /**
   * Get the Record with the specified id.
   *
   * @param id The id of the Record to find.
   * @return The Record with the passed id. Returns undefined if not found.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-getById Sencha Docs Ext JS 3.4
   */
  public native function getById(id:String):Record;

  /**
   * Gets the number of cached records. <p>If using paging, this may not be the total size of the dataset. If the data object used by the Reader contains the dataset size, then the <a href="output/Ext.data.Store.html#Ext.data.Store-getTotalCount">getTotalCount</a> function returns the dataset size. <b>Note</b>: see the Important note in <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a>.</p>
   *
   * @return The number of Records in the Store's cache.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-getCount Sencha Docs Ext JS 3.4
   */
  public native function getCount():Number;

  /**
   * Gets all <a href="Ext.data.Record.html">records</a> modified since the last commit. Modified records are persisted across load operations (e.g., during paging). <b>Note</b>: deleted records are not included. See also <tt><a href="output/Ext.data.Store.html#Ext.data.Store-pruneModifiedRecords">pruneModifiedRecords</a></tt> and <a href="Ext.data.Record.html">Ext.data.Record</a><tt><a href="output/Ext.data.Record.html#Ext.data.Record-markDirty">markDirty</a>.</tt>.
   *
   * @return An array of <a href="Ext.data.Record.html">Records</a> containing outstanding modifications. To obtain modified fields within a modified record see <a href="Ext.data.Record.html">Ext.data.Record</a><tt><a href="output/Ext.data.Record.html#Ext.data.Record-modified">modified</a>.</tt>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-getModifiedRecords Sencha Docs Ext JS 3.4
   */
  public native function getModifiedRecords():Array;

  /**
   * Returns a range of Records between specified indices.
   *
   * @param startIndex The starting index (defaults to 0)
   * @param endIndex The ending index (defaults to the last Record in the Store)
   * @return An array of Records
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-getRange Sencha Docs Ext JS 3.4
   */
  public native function getRange(startIndex:Number = undefined, endIndex:Number = undefined):Array;

  /**
   * Returns an object describing the current sort state of this Store.
   *
   * @return The sort state of the Store. An object with two properties:<ul><li><b>field : String</b><p style="font-weight: bold" class="sub-desc">The name of the field by which the Records are sorted.</p></li><li><b>direction : String</b><p style="font-weight: bold" class="sub-desc">The sort order, 'ASC' or 'DESC' (case-sensitive).</p></li></ul><b>See <tt><a href="output/Ext.data.Store.html#Ext.data.Store-sortInfo">sortInfo</a></tt> for additional details.</b>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-getSortState Sencha Docs Ext JS 3.4
   */
  public native function getSortState():Object;

  /**
   * Gets the total number of records in the dataset as returned by the server. <p>If using paging, for this to be accurate, the data object used by the <a href="output/Ext.data.Store.html#Ext.data.Store-reader">Reader</a> must contain the dataset size. For remote data sources, the value for this property (<tt>totalProperty</tt> for <a href="Ext.data.JsonReader.html">JsonReader</a>, <tt>totalRecords</tt> for <a href="Ext.data.XmlReader.html">XmlReader</a>) shall be returned by a query on the server. <b>Note</b>: see the Important note in <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a>.</p>
   *
   * @return The number of Records as specified in the data object passed to the Reader by the Proxy. <p><b>Note</b>: this value is not updated when changing the contents of the Store locally.</p>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-getTotalCount Sencha Docs Ext JS 3.4
   */
  public native function getTotalCount():Number;

  /**
   * Get the index within the cache of the passed Record.
   *
   * @param record The Ext.data.Record object to find.
   * @return The index of the passed Record. Returns -1 if not found.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-indexOf Sencha Docs Ext JS 3.4
   */
  public native function indexOf(record:Record):Number;

  /**
   * Get the index within the cache of the Record with the passed id.
   *
   * @param id The id of the Record to find.
   * @return The index of the Record. Returns -1 if not found.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-indexOfId Sencha Docs Ext JS 3.4
   */
  public native function indexOfId(id:String):Number;

  /**
   * Inserts Records into the Store at the given index and fires the <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a> event. See also <code><a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a></code> and <code><a href="output/Ext.data.Store.html#Ext.data.Store-addSorted">addSorted</a></code>.
   *
   * @param index The start index at which to insert the passed Records.
   * @param records An Array of Ext.data.Record objects to add to the cache.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-insert Sencha Docs Ext JS 3.4
   */
  public native function insert(index:Number, records:Array):void;

  /**
   * Returns true if this store is currently filtered
   *
   * @return
    * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-isFiltered Sencha Docs Ext JS 3.4
   */
  public native function isFiltered():Boolean;

  /**
   * Loads the Record cache from the configured <tt><a href="output/Ext.data.Store.html#Ext.data.Store-proxy">proxy</a></tt> using the configured <tt><a href="output/Ext.data.Store.html#Ext.data.Store-reader">reader</a></tt>.
   <br/><p>Notes:</p><div class="mdetail-params"><ul><li><b><u>Important</u></b>: loading is asynchronous! This call will return before the new data has been loaded. To perform any post-processing where information from the load call is required, specify the <tt>callback</tt> function to be called, or use a <a href="output/Ext.util.Observable.html#Ext.util.Observable-listeners">a 'load' event handler</a>.</li><li>If using <a href="Ext.PagingToolbar.html">remote paging</a>, the first load call must specify the <tt>start</tt> and <tt>limit</tt> properties in the <code>options.params</code> property to establish the initial position within the dataset, and the number of Records to cache on each read from the Proxy.</li><li>If using <a href="output/Ext.data.Store.html#Ext.data.Store-remoteSort">remote sorting</a>, the configured <code><a href="output/Ext.data.Store.html#Ext.data.Store-sortInfo">sortInfo</a></code> will be automatically included with the posted parameters according to the specified <code><a href="output/Ext.data.Store.html#Ext.data.Store-paramNames">paramNames</a></code>.</li></ul></div>
   *
   * @param options An object containing properties which control loading options:<ul><li><b><tt>params</tt></b> :Object<div class="sub-desc"><p>An object containing properties to pass as HTTP parameters to a remote data source. <b>Note</b>: <code>params</code> will override any <code><a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">baseParams</a></code> of the same name.</p><p>Parameters are encoded as standard HTTP parameters using <a href="output/Ext.html#Ext-urlEncode">Ext.urlEncode</a>.</p></div></li><li><b>callback</b> : Function<div class="sub-desc"><p>A function to be called after the Records have been loaded. The callback is called after the load event is fired, and is passed the following arguments:</p><ul><li>r : Ext.data.Record[] An Array of Records loaded.</li><li>options : Options object from the load call.</li><li>success : Boolean success indicator.</li></ul><br/><br/></div></li><li><b>scope</b> : Object<div class="sub-desc"><p>Scope with which to call the callback (defaults to the Store object)</p></div></li><li><b>add</b> : Boolean<div class="sub-desc"><p>Indicator to append loaded records rather than replace the current cache. <b>Note</b>: see note for <tt><a href="output/Ext.data.Store.html#Ext.data.Store-loadData">loadData</a></tt></p></div></li></ul>
   * @return If the <i>developer</i> provided <tt><a href="output/Ext.data.Store.html#Ext.data.Store-beforeload">beforeload</a></tt> event handler returns <tt>false</tt>, the load call will abort and will return <tt>false</tt>; otherwise will return <tt>true</tt>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-load Sencha Docs Ext JS 3.4
   */
  public native function load(options:Object):Boolean;

  /**
   * Loads data from a passed data block and fires the <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> event. A <a href="Ext.data.Reader.html">Reader</a> which understands the format of the data must have been configured in the constructor.
   *
   * @param data The data block from which to read the Records. The format of the data expected is dependent on the type of <a href="Ext.data.Reader.html">Reader</a> that is configured and should correspond to that <a href="Ext.data.Reader.html">Reader</a>'s <tt><a href="output/Ext.data.Reader.html#Ext.data.Reader-readRecords">Ext.data.Reader.readRecords</a></tt> parameter.
   * @param append <tt>true</tt> to append the new Records rather the default to replace the existing cache. <b>Note</b>: that Records in a Store are keyed by their <a href="output/Ext.data.Record.html#Ext.data.Record-id">id</a>, so added Records with ids which are already present in the Store will <i>replace</i> existing Records. Only Records with new, unique ids will be added.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-loadData Sencha Docs Ext JS 3.4
   */
  public native function loadData(data:Object, append:Boolean = false):void;

  /**
   * Sorts the contents of this store by multiple field/direction sorters. This is called internally by <a href="sort.html">sort</a> and would not usually be called manually. Multi sorting only currently applies to local datasets - multiple sort data is not currently sent to a proxy if remoteSort is used.
   *
   * @param sorters Array of sorter objects (field and direction)
   * @param direction Overall direction to sort the ordered results by (defaults to "ASC")
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-multiSort Sencha Docs Ext JS 3.4
   */
  public native function multiSort(sorters:Array, direction:String):void;

  /**
   * Query the records by a specified property.
   *
   * @param field A field on your records
   * @param value Either a string that the field should begin with, or a RegExp to test against the field.
   * @param anyMatch True to match any part not just the beginning
   * @param caseSensitive True for case sensitive comparison
   * @return Returns an Ext.util.MixedCollection of the matched records
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-query Sencha Docs Ext JS 3.4
   */
  public native function query(field:String, value:*, anyMatch:Boolean = false, caseSensitive:Boolean = false):MixedCollection;

  /**
   * Query the cached records in this Store using a filtering function. The specified function will be called with each record in this Store. If the function returns <tt>true</tt> the record is included in the results.
   *
   * @param fn The function to be called. It will be passed the following parameters:<ul><li><b>record</b> : Ext.data.Record<p class="sub-desc">The <a href="Ext.data.Record.html">record</a> to test for filtering. Access field values using <a href="output/Ext.data.Record.html#Ext.data.Record-get">Ext.data.Record.get</a>.</p></li><li><b>id</b> : Object<p class="sub-desc">The ID of the Record passed.</p></li></ul>
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this Store.
   * @return Returns an Ext.util.MixedCollection of the matched records
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-queryBy Sencha Docs Ext JS 3.4
   */
  public native function queryBy(fn:Function, scope:Object = null):MixedCollection;

  /**
   * <a href="output/Ext.data.Record.html#Ext.data.Record-reject">Reject</a> outstanding changes on all <a href="output/Ext.data.Store.html#Ext.data.Store-getModifiedRecords">modified records</a>.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-rejectChanges Sencha Docs Ext JS 3.4
   */
  public native function rejectChanges():void;

  /**
   * Reloads the Record cache from the configured Proxy using the configured <a href="Ext.data.Reader.html">Reader</a> and the options from the last load operation performed.
   <p><b>Note</b>: see the Important note in <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a>.</p>
   *
   * @param options (optional) An <tt>Object</tt> containing <a href="output/Ext.data.Store.html#Ext.data.Store-load">loading options</a> which may override the <a href="output/Ext.data.Store.html#Ext.data.Store-lastOptions">options</a> used in the last <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> operation. See <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> for details (defaults to <tt>null</tt>, in which case the <a href="output/Ext.data.Store.html#Ext.data.Store-lastOptions">lastOptions</a> are used).
   <br/><p>To add new params to the existing params:</p><pre><code>lastOptions = myStore.lastOptions;
   Ext.apply(lastOptions.params, {
   myNewParam: true
   });
   myStore.reload(lastOptions);
   </code></pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-reload Sencha Docs Ext JS 3.4
   */
  public native function reload(options:Object):void;

  /**
   * Remove Records from the Store and fires the <a href="output/Ext.data.Store.html#Ext.data.Store-remove">remove</a> event.
   *
   * @param record The record object or array of records to remove from the cache.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-remove Sencha Docs Ext JS 3.4
   */
  public native function remove(record:*):void;

  /**
   * Remove all Records from the Store and fires the <a href="output/Ext.data.Store.html#Ext.data.Store-clear">clear</a> event.
   *
   * @param silent Defaults to <tt>false</tt>. Set <tt>true</tt> to not fire clear event.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-removeAll Sencha Docs Ext JS 3.4
   */
  public native function removeAll(silent:Boolean = false):void;

  /**
   * Remove a Record from the Store at the specified index. Fires the <a href="output/Ext.data.Store.html#Ext.data.Store-remove">remove</a> event.
   *
   * @param index The index of the record to remove.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-removeAt Sencha Docs Ext JS 3.4
   */
  public native function removeAt(index:Number):void;

  /**
   * Saves all pending changes to the store. If the commensurate Ext.data.Api.actions action is not configured, then the configured <code><a href="output/Ext.data.Store.html#Ext.data.Store-url">url</a></code> will be used. <pre>change            url
   ---------------   --------------------
   removed records   Ext.data.Api.actions.destroy
   phantom records   Ext.data.Api.actions.create
   <a href="output/Ext.data.Store.html#Ext.data.Store-getModifiedRecords">modified records</a>  Ext.data.Api.actions.update
   </pre>
   *
   * @return batch Returns a number to uniquely identify the "batch" of saves occurring. -1 will be returned if there are no items to save or the save was cancelled.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-save Sencha Docs Ext JS 3.4
   */
  public native function save():Number;

  /**
   * Set the value for a property name in this store's <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">baseParams</a>. Usage:<br/><br/><pre><code>myStore.setBaseParam('foo', {bar:3});
   </code></pre>
   *
   * @param name Name of the property to assign
   * @param value Value to assign the <tt>name</tt>d property
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-setBaseParam Sencha Docs Ext JS 3.4
   */
  public native function setBaseParam(name:String, value:*):void;

  /**
   * Sets the default sort column and order to be used by the next <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> operation.
   *
   * @param fieldName The name of the field to sort by.
   * @param dir The sort order, 'ASC' or 'DESC' (case-sensitive, defaults to <tt>'ASC'</tt>)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-setDefaultSort Sencha Docs Ext JS 3.4
   */
  public native function setDefaultSort(fieldName:String, dir:String = null):void;

  /**
   * Sorts the store contents by a single field and direction. This is called internally by <a href="sort.html">sort</a> and would not usually be called manually
   *
   * @param fieldName The name of the field to sort by.
   * @param dir The sort order, 'ASC' or 'DESC' (case-sensitive, defaults to <tt>'ASC'</tt>)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-singleSort Sencha Docs Ext JS 3.4
   */
  public native function singleSort(fieldName:String, dir:String = null):void;

  /**
   * Sort the Records. If remote sorting is used, the sort is performed on the server, and the cache is reloaded. If local sorting is used, the cache is sorted internally. See also <a href="output/Ext.data.Store.html#Ext.data.Store-remoteSort">remoteSort</a> and <a href="output/Ext.data.Store.html#Ext.data.Store-paramNames">paramNames</a>. This function accepts two call signatures - pass in a field name as the first argument to sort on a single field, or pass in an array of sort configuration objects to sort by multiple fields. Single sort example: store.sort('name', 'ASC'); Multi sort example: store.sort([ { field : 'name', direction: 'ASC' }, { field : 'salary', direction: 'DESC' } ], 'ASC'); In this second form, the sort configs are applied in order, with later sorters sorting within earlier sorters' results. For example, if two records with the same name are present they will also be sorted by salary if given the sort configs above. Any number of sort configs can be added.
   *
   * @param fieldName The name of the field to sort by, or an array of ordered sort configs
   * @param dir The sort order, 'ASC' or 'DESC' (case-sensitive, defaults to <tt>'ASC'</tt>)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-sort Sencha Docs Ext JS 3.4
   */
  public native function sort(fieldName:*, dir:String = null):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-sortData Sencha Docs Ext JS 3.4
   */
  public native function sortData():void;

  /**
   * Sums the value of <tt>property</tt> for each <a href="Ext.data.Record.html">record</a> between <tt>start</tt> and <tt>end</tt> and returns the result.
   *
   * @param property A field in each record
   * @param start The record index to start at (defaults to <tt>0</tt>)
   * @param end The last record index to include (defaults to length - 1)
   * @return The sum
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-sum Sencha Docs Ext JS 3.4
   */
  public native function sum(property:String, start:Number = undefined, end:Number = undefined):Number;

  /**
   * updateRecord Should not be used directly. This method will be called automatically if a Writer is set. Listens to 'update' event.
   *
   * @param store
   * @param record
   * @param action
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Store-method-updateRecord Sencha Docs Ext JS 3.4
   */
  public native function updateRecord(store:Object, record:Object, action:Object):void;

}
}
    