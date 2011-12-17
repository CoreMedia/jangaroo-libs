package ext.config {

import ext.data.DataProxy;
import ext.data.DataReader;
import ext.data.DataWriter;

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
 * <p>This class serves as a typed config object for constructor of class Store.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Store
 */
[ExtConfig(target="ext.data.Store")]
public class store extends observable {

  public function store(config:Object = null) {

    super(config);
  }


  /**
   <tt>true</tt> to destroy the store when the component the store is bound to is destroyed (defaults to <tt>false</tt>). <p><b>Note</b>: this should be set to true when using stores that are bound to only 1 component.</p>
   */
  public native function get autoDestroy():Boolean;

  /**
   * @private
   */
  public native function set autoDestroy(value:Boolean):void;

  /**
   If <tt><a href="output/Ext.data.Store.html#Ext.data.Store-data">data</a></tt> is not specified, and if <tt>autoLoad</tt> is <tt>true</tt> or an <tt>Object</tt>, this store's <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> method is automatically called after creation. If the value of <tt>autoLoad</tt> is an <tt>Object</tt>, this <tt>Object</tt> will be passed to the store's <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> method.
   */
  public native function get autoLoad():*;

  /**
   * @private
   */
  public native function set autoLoad(value:*):void;

  /**
   Defaults to <tt>true</tt> causing the store to automatically <a href="output/Ext.data.Store.html#Ext.data.Store-save">save</a> records to the server when a record is modified (ie: becomes 'dirty'). Specify <tt>false</tt> to manually call <a href="output/Ext.data.Store.html#Ext.data.Store-save">save</a> to send all modifiedRecords to the server.
   <br/><p><b>Note</b>: each CRUD action will be sent as a separate request.</p>
   */
  public native function get autoSave():Boolean;

  /**
   * @private
   */
  public native function set autoSave(value:Boolean):void;

  /**
   An object containing properties which are to be sent as parameters for <i>every</i> HTTP request.
   <p>Parameters are encoded as standard HTTP parameters using <a href="output/Ext.html#Ext-urlEncode">Ext.urlEncode</a>.</p><p><b>Note</b>: <code>baseParams</code> may be superseded by any <code>params</code> specified in a <code><a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a></code> request, see <code><a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a></code> for more details.</p>This property may be modified after creation using the <code><a href="output/Ext.data.Store.html#Ext.data.Store-setBaseParam">setBaseParam</a></code> method.
   */
  public native function get baseParams():Object;

  /**
   * @private
   */
  public native function set baseParams(value:Object):void;

  /**
   Defaults to <tt>true</tt> (unless <code><a href="output/Ext.data.Store.html#Ext.data.Store-restful">restful</a>:true</code>). Multiple requests for each CRUD action (CREATE, READ, UPDATE and DESTROY) will be combined and sent as one transaction. Only applies when <code><a href="output/Ext.data.Store.html#Ext.data.Store-autoSave">autoSave</a></code> is set to <tt>false</tt>.
   <br/><p>If Store is RESTful, the DataProxy is also RESTful, and a unique transaction is generated for each record.</p>
   */
  public native function get batch():Boolean;

  /**
   * @private
   */
  public native function set batch(value:Boolean):void;

  /**
   An inline data object readable by the <code><a href="output/Ext.data.Store.html#Ext.data.Store-reader">reader</a></code>. Typically this option, or the <code><a href="output/Ext.data.Store.html#Ext.data.Store-url">url</a></code> option will be specified.
   */
  public native function get data():Array;

  /**
   * @private
   */
  public native function set data(value:Array):void;

  /**
   Provides the default values for the <a href="output/Ext.data.Store.html#Ext.data.Store-paramNames">paramNames</a> property. To globally modify the parameters for all stores, this object should be changed on the store prototype.
   */
  public native function get defaultParamNames():Object;

  /**
   * @private
   */
  public native function set defaultParamNames(value:Object):void;

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
   * @private
   */
  public native function set paramNames(value:Object):void;

  /**
   The <a href="Ext.data.DataProxy.html">DataProxy</a> object which provides access to a data object. See <code><a href="output/Ext.data.Store.html#Ext.data.Store-url">url</a></code>.
   */
  public native function get proxy():DataProxy;

  /**
   * @private
   */
  public native function set proxy(value:DataProxy):void;

  /**
   <tt>true</tt> to clear all modified record information each time the store is loaded or when a record is removed (defaults to <tt>false</tt>). See <a href="output/Ext.data.Store.html#Ext.data.Store-getModifiedRecords">getModifiedRecords</a> for the accessor method to retrieve the modified records.
   */
  public native function get pruneModifiedRecords():Boolean;

  /**
   * @private
   */
  public native function set pruneModifiedRecords(value:Boolean):void;

  /**
   The <a href="Ext.data.DataReader.html">Reader</a> object which processes the data object and returns an Array of <a href="Ext.data.Record.html">Ext.data.Record</a> objects which are cached keyed by their <b><tt><a href="output/Ext.data.Record.html#Ext.data.Record-id">id</a></tt></b> property.
   */
  public native function get reader():DataReader;

  /**
   * @private
   */
  public native function set reader(value:DataReader):void;

  /**
   <tt>true</tt> if sorting is to be handled by requesting the <tt><a href="output/Ext.data.Store.html#Ext.data.Store-proxy">Proxy</a></tt> to provide a refreshed version of the data object in sorted order, as opposed to sorting the Record cache in place (defaults to <tt>false</tt>). <p>If <tt>remoteSort</tt> is <tt>true</tt>, then clicking on a <a href="Ext.grid.Column.html">Grid Column</a>'s <a href="output/Ext.grid.Column.html#Ext.grid.Column-header">header</a> causes the current page to be requested from the server appending the following two parameters to the <b><tt><a href="output/Ext.data.Store.html#Ext.data.Store-load">params</a></tt></b>:</p><div class="mdetail-params"><ul><li><b><tt>sort</tt></b> : String<p class="sub-desc">The <tt>name</tt> (as specified in the Record's <a href="Ext.data.Field.html">Field definition</a>) of the field to sort on.</p></li><li><b><tt>dir</tt></b> : String<p class="sub-desc">The direction of the sort, 'ASC' or 'DESC' (case-sensitive).</p></li></ul></div><br/><br/>
   */
  public native function get remoteSort():Boolean;

  /**
   * @private
   */
  public native function set remoteSort(value:Boolean):void;

  /**
   Defaults to <tt>false</tt>. Set to <tt>true</tt> to have the Store and the set Proxy operate in a RESTful manner. The store will automatically generate GET, POST, PUT and DELETE requests to the server. The HTTP method used for any given CRUD action is described in <a href="output/Ext.data.Api.html#Ext.data.Api-restActions">Ext.data.Api.restActions</a>. For additional information see <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-restful">Ext.data.DataProxy.restful</a>. <p><b>Note</b>: if <code><a href="output/Ext.data.Store.html#Ext.data.Store-restful">restful</a>:true</code> <code>batch</code> will internally be set to <tt>false</tt>.</p>
   */
  public native function get restful():Boolean;

  /**
   * @private
   */
  public native function set restful(value:Boolean):void;

  /**
   A config object to specify the sort order in the request of a Store's <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a> operation. Note that for local sorting, the <tt>direction</tt> property is case-sensitive. See also <a href="output/Ext.data.Store.html#Ext.data.Store-remoteSort">remoteSort</a> and <a href="output/Ext.data.Store.html#Ext.data.Store-paramNames">paramNames</a>. For example:<pre><code>sortInfo: {
   field: 'fieldName',
   direction: 'ASC' // or 'DESC' (case sensitive for local sorting)
   }
   </code></pre>
   */
  public native function get sortInfo():Object;

  /**
   * @private
   */
  public native function set sortInfo(value:Object):void;

  /**
   If passed, the id to use to register with the <b><a href="Ext.StoreMgr.html">StoreMgr</a></b>. <p><b>Note</b>: if a (deprecated) <tt><a href="output/Ext.data.Store.html#Ext.data.Store-id">id</a></tt> is specified it will supersede the <tt>storeId</tt> assignment.</p>
   */
  public native function get storeId():String;

  /**
   * @private
   */
  public native function set storeId(value:String):void;

  /**
   If a <tt><a href="output/Ext.data.Store.html#Ext.data.Store-proxy">proxy</a></tt> is not specified the <tt>url</tt> will be used to implicitly configure a <a href="Ext.data.HttpProxy.html">HttpProxy</a> if an <tt>url</tt> is specified. Typically this option, or the <code><a href="output/Ext.data.Store.html#Ext.data.Store-data">data</a></code> option will be specified.
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;

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
   * @private
   */
  public native function set writer(value:DataWriter):void;

  /**
   * An Array defining the datafields for the Records stored in this Store.
   * @see ext.config.datafield
   * @see ext.data.Record
   */
  public native function get fields():Array;

  /**
   * @private
   */
  public native function set fields(value:Array):void;
}
}
    