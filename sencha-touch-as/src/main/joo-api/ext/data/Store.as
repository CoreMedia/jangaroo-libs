package ext.data {

import ext.config.store;
import ext.form.Number;
import ext.util.MixedCollection;

/**
 * The Store class encapsulates a client side cache of <a href="Ext.data.Model.html">Model</a> objects. Stores load data via a <a href="Ext.data.Proxy.html">Proxy</a>, and also provide functions for <a href="output/Ext.data.Store.html#Ext.data.Store-sort">sorting</a>, <a href="output/Ext.data.Store.html#Ext.data.Store-filter">filtering</a> and querying the <a href="Ext.data.Model.html">model</a> instances contained within it.
 <p>Creating a Store is easy - we just tell it the Model and the Proxy to use to load and save its data:</p><pre><code>// Set up a <a href="Ext.data.Model.html">model</a> to use in our Store
 Ext.regModel('User', {
 fields: [
 {name: 'firstName', type: 'string'},
 {name: 'lastName',  type: 'string'},
 {name: 'age',       type: 'int'},
 {name: 'eyeColor',  type: 'string'}
 ]
 });

 var myStore = new Ext.data.Store({
 model: 'User',
 proxy: {
 type: 'ajax',
 url : '/users.json',
 reader: {
 type: 'json',
 root: 'users'
 }
 },
 autoLoad: true
 });
 </code></pre><p>In the example above we configured an AJAX proxy to load data from the url '/users.json'. We told our Proxy to use a <a href="Ext.data.JsonReader.html">JsonReader</a> to parse the response from the server into Model object - <a href="Ext.data.JsonReader.html">see the docs on JsonReader</a> for details.</p><p><u>Inline data</u></p><p>Stores can also load data inline. Internally, Store converts each of the objects we pass in as <a href="output/Ext.data.Store.html#Ext.data.Store-data">data</a> into Model instances:</p><pre><code>new Ext.data.Store({
 model: 'User',
 data : [
 {firstName: 'Ed',    lastName: 'Spencer'},
 {firstName: 'Tommy', lastName: 'Maintz'},
 {firstName: 'Aaron', lastName: 'Conran'},
 {firstName: 'Jamie', lastName: 'Avins'}
 ]
 });
 </code></pre><p>Loading inline data using the method above is great if the data is in the correct format already (e.g. it doesn't need to be processed by a <a href="Ext.data.Reader.html">reader</a>). If your inline data requires processing to decode the data structure, use a <a href="Ext.data.MemoryProxy.html">MemoryProxy</a> instead (see the <a href="Ext.data.MemoryProxy.html">MemoryProxy</a> docs for an example).</p><p>Additional data can also be loaded locally using <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a>.</p><p><u>Loading Nested Data</u></p><p>Applications often need to load sets of associated data - for example a CRM system might load a User and her Orders. Instead of issuing an AJAX request for the User and a series of additional AJAX requests for each Order, we can load a nested dataset and allow the Reader to automatically populate the associated models. Below is a brief example, see the <a href="Ext.data.Reader.html">Ext.data.Reader</a> intro docs for a full explanation:</p><pre><code>var store = new Ext.data.Store({
 autoLoad: true,
 model: "User",
 proxy: {
 type: 'ajax',
 url : 'users.json',
 reader: {
 type: 'json',
 root: 'users'
 }
 }
 });
 </code></pre><p>Which would consume a response like this:</p><pre><code>{
 "users": [
 {
 "id": 1,
 "name": "Ed",
 "orders": [
 {
 "id": 10,
 "total": 10.76,
 "status": "invoiced"
 },
 {
 "id": 11,
 "total": 13.45,
 "status": "shipped"
 }
 ]
 }
 ]
 }
 </code></pre><p>See the <a href="Ext.data.Reader.html">Ext.data.Reader</a> intro docs for a full explanation.</p><p><u>Filtering and Sorting</u></p><p>Stores can be sorted and filtered - in both cases either remotely or locally. The <a href="output/Ext.data.Store.html#Ext.data.Store-sorters">sorters</a> and <a href="output/Ext.data.Store.html#Ext.data.Store-filters">filters</a> are held inside <a href="Ext.util.MixedCollection.html">MixedCollection</a> instances to make them easy to manage. Usually it is sufficient to either just specify sorters and filters in the Store configuration or call <a href="output/Ext.data.Store.html#Ext.data.Store-sort">sort</a> or <a href="output/Ext.data.Store.html#Ext.data.Store-filter">filter</a>:</p><pre><code>var store = new Ext.data.Store({
 model: 'User',
 sorters: [
 {
 property : 'age',
 direction: 'DESC'
 },
 {
 property : 'firstName',
 direction: 'ASC'
 }
 ],

 filters: [
 {
 property: 'firstName',
 value   : /Ed/
 }
 ]
 });
 </code></pre><p>The new Store will keep the configured sorters and filters in the MixedCollection instances mentioned above. By default, sorting and filtering are both performed locally by the Store - see <a href="output/Ext.data.Store.html#Ext.data.Store-remoteSort">remoteSort</a> and <a href="output/Ext.data.Store.html#Ext.data.Store-remoteFilter">remoteFilter</a> to allow the server to perform these operations instead.</p><p>Filtering and sorting after the Store has been instantiated is also easy. Calling <a href="output/Ext.data.Store.html#Ext.data.Store-filter">filter</a> adds another filter to the Store and automatically filters the dataset (calling <a href="output/Ext.data.Store.html#Ext.data.Store-filter">filter</a> with no arguments simply re-applies all existing filters). Note that by default <a href="output/Ext.data.Store.html#Ext.data.Store-sortOnFilter">sortOnFilter</a> is set to true, which means that your sorters are automatically reapplied if using local sorting.</p><pre><code>store.filter('eyeColor', 'Brown');
 </code></pre><p>Change the sorting at any time by calling <a href="output/Ext.data.Store.html#Ext.data.Store-sort">sort</a>:</p><pre><code>store.sort('height', 'ASC');
 </code></pre><p>Note that all existing sorters will be removed in favor of the new sorter data (if <a href="output/Ext.data.Store.html#Ext.data.Store-sort">sort</a> is called with no arguments, the existing sorters are just reapplied instead of being removed). To keep existing sorters and add new ones, just add them to the MixedCollection:</p><pre><code>store.sorters.add(new Ext.util.Sorter({
 property : 'shoeSize',
 direction: 'ASC'
 }));

 store.sort();
 </code></pre><p><u>Registering with StoreMgr</u></p><p>Any Store that is instantiated with a <a href="output/Ext.data.Store.html#Ext.data.Store-storeId">storeId</a> will automatically be registed with the <a href="Ext.StoreMgr.html">StoreMgr</a>. This makes it easy to reuse the same store in multiple views:</p><pre><code>//this store can be used several times
 new Ext.data.Store({
 model: 'User',
 storeId: 'usersStore'
 });

 new Ext.List({
 store: 'usersStore',

 //other config goes here
 });

 new Ext.DataView({
 store: 'usersStore',

 //other config goes here
 });
 </code></pre><p><u>Further Reading</u></p><p>Stores are backed up by an ecosystem of classes that enables their operation. To gain a full understanding of these pieces and how they fit together, see:</p><ul style="list-style-type: disc; padding-left: 25px"><li><a href="Ext.data.Proxy.html">Proxy</a> - overview of what Proxies are and how they are used</li><li><a href="Ext.data.Model.html">Model</a> - the core class in the data package</li><li><a href="Ext.data.Reader.html">Reader</a> - used by any subclass of <a href="Ext.data.ServerProxy.html">ServerProxy</a> to read a response</li></ul>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.store
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#cls-Ext.data.Store Ext JS source
 */
public class Store extends AbstractStore {

  /**
   *
   *
   * @param config Optional config object
   * @see ext.config.store
   */
  public function Store(config:store) {
    super();
  }

  /**
   The page that the Store has most recently loaded (see <a href="output/Ext.data.Store.html#Ext.data.Store-loadPage">loadPage</a>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#prop-Ext.data.Store-currentPage Ext JS source
   */
  public native function get currentPage():ext.form.Number;

  /**
   * @private
   */
  public native function set currentPage(value:ext.form.Number):void;

  /**
   The MixedCollection that holds this store's local cache of records
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#prop-Ext.data.Store-data Ext JS source
   */
  public native function get data():MixedCollection;

  /**
   * @private
   */
  public native function set data(value:MixedCollection):void;

  /**
   The direction in which sorting should be applied when grouping. Defaults to "ASC" - the other supported value is "DESC"
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#prop-Ext.data.Store-groupDir Ext JS source
   */
  public native function get groupDir():String;

  /**
   * @private
   */
  public native function set groupDir(value:String):void;

  /**
   The (optional) field by which to group data in the store. Internally, grouping is very similar to sorting - the groupField and <a href="output/Ext.data.Store.html#Ext.data.Store-groupDir">groupDir</a> are injected as the first sorter (see <a href="output/Ext.data.Store.html#Ext.data.Store-sort">sort</a>). Stores support a single level of grouping, and groups can be fetched via the <a href="output/Ext.data.Store.html#Ext.data.Store-getGroups">getGroups</a> method.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#prop-Ext.data.Store-groupField Ext JS source
   */
  public native function get groupField():String;

  /**
   * @private
   */
  public native function set groupField(value:String):void;

  /**
   True if a model was created implicitly for this Store. This happens if a fields array is passed to the Store's constructor instead of a model constructor or name.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#prop-Ext.data.Store-implicitModel Ext JS source
   */
  override public native function get implicitModel():Boolean;

  /**
   * @private
   */
  override public native function set implicitModel(value:Boolean):void;

  /**
   True if the Store is currently loading via its Proxy
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#prop-Ext.data.Store-loading Ext JS source
   */
  public native function get loading():Boolean;

  /**
   * @private
   */
  public native function set loading(value:Boolean):void;

  /**
   The number of records considered to form a 'page'. This is used to power the built-in paging using the nextPage and previousPage functions. Defaults to 25.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#prop-Ext.data.Store-pageSize Ext JS source
   */
  public native function get pageSize():ext.form.Number;

  /**
   * @private
   */
  public native function set pageSize(value:ext.form.Number):void;

  /**
   A pristine (unfiltered) collection of the records in this store. This is used to reinstate records when a filter is removed or changed
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#prop-Ext.data.Store-snapshot Ext JS source
   */
  public native function get snapshot():MixedCollection;

  /**
   * @private
   */
  public native function set snapshot(value:MixedCollection):void;

  /**
   True to empty the store when loading another page via <a href="output/Ext.data.Store.html#Ext.data.Store-loadPage">loadPage</a>, <a href="output/Ext.data.Store.html#Ext.data.Store-nextPage">nextPage</a> or <a href="output/Ext.data.Store.html#Ext.data.Store-previousPage">previousPage</a> (defaults to true). Setting to false keeps existing records, allowing large data sets to be loaded one page at a time but rendered all together.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get clearOnPageLoad():Boolean;

  /**
   True to defer any filtering operation to the server. If false, filtering is done locally on the client. Defaults to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get remoteFilter():Boolean;

  /**
   True to defer any sorting operation to the server. If false, sorting is done locally on the client. Defaults to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get remoteSort():Boolean;

  /**
   For local filtering only, causes <a href="output/Ext.data.Store.html#Ext.data.Store-sort">sort</a> to be called whenever <a href="output/Ext.data.Store.html#Ext.data.Store-filter">filter</a> is called, causing the sorters to be reapplied after filtering. Defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sortOnFilter():Boolean;

  /**
   * Adds Model instances to the Store by instantiating them based on a JavaScript object. When adding already- instantiated Models, use <a href="output/Ext.data.Store.html#Ext.data.Store-insert">insert</a> instead. The instances will be added at the end of the existing collection. This method accepts either a single argument array of Model instances or any number of model instance arguments. Sample usage: <pre><code>myStore.add({some: 'data'}, {some: 'other data'});
   </code></pre>
   *
   * @param data The data for each model
   * @return The array of newly created model instances
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-add Ext JS source
   */
  public native function add(data:Object):Array;

  /**
   * Revert to a view of the Record cache with no filtering applied.
   *
   * @param suppressEvent If <tt>true</tt> the filter is cleared silently without firing the <a href="output/Ext.data.Store.html#Ext.data.Store-datachanged">datachanged</a> event.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-clearFilter Ext JS source
   */
  public native function clearFilter(suppressEvent:Boolean):void;

  /**
   * Collects unique values for a particular dataIndex from this store.
   *
   * @param dataIndex The property to collect
   * @param allowNull Pass true to allow null, undefined or empty string values
   * @param bypassFilter Pass true to collect from all records, even ones which are filtered
   * @return An array of the unique values
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-collect Ext JS source
   */
  public native function collect(dataIndex:String, allowNull:Boolean = false, bypassFilter:Boolean = false):Array;

  /**
   *
   *
   * @param property The property to create the filter function for
   * @param value The string/regex to compare the property value to
   * @param anyMatch True if we don't care if the filter value is not the full value (defaults to false)
   * @param caseSensitive True to create a case-sensitive regex (defaults to false)
   * @param exactMatch True to force exact match (^ and $ characters added to the regex). Defaults to false. Ignored if anyMatch is true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-createFilterFn Ext JS source
   */
  public native function createFilterFn(property:String, value:*, anyMatch:Boolean, caseSensitive:Boolean, exactMatch:Boolean):void;

  /**
   * Converts a literal to a model, if it's not a model already
   *
   * @param record The record to create
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-createModel Ext JS source
   */
  public native function createModel(record:*):Model;

  /**
   * Calls the specified function for each of the <a href="Ext.data.Record.html">Records</a> in the cache.
   *
   * @param fn The function to call. The <a href="Ext.data.Record.html">Record</a> is passed as the first parameter. Returning <tt>false</tt> aborts and exits the iteration.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the current <a href="Ext.data.Record.html">Record</a> in the iteration.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-each Ext JS source
   */
  public native function each(fn:Function, scope:Object = null):void;

  /**
   * Filters the loaded set of records by a given set of filters.
   *
   * @param filters The set of filters to apply to the data. These are stored internally on the store, but the filtering itself is done on the Store's <a href="Ext.util.MixedCollection.html">MixedCollection</a>. See MixedCollection's <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-filter">filter</a> method for filter syntax. Alternatively, pass in a property string
   * @param value Optional value to filter by (only if using a property string as the first argument)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-filter Ext JS source
   */
  public native function filter(filters:*, value:String):void;

  /**
   * Filter by a function. The specified function will be called for each Record in this Store. If the function returns <tt>true</tt> the Record is included, otherwise it is filtered out.
   *
   * @param fn The function to be called. It will be passed the following parameters:<ul><li><b>record</b> : Ext.data.Record<p class="sub-desc">The <a href="Ext.data.Record.html">record</a> to test for filtering. Access field values using <a href="output/Ext.data.Record.html#Ext.data.Record-get">Ext.data.Record.get</a>.</p></li><li><b>id</b> : Object<p class="sub-desc">The ID of the Record passed.</p></li></ul>
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this Store.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-filterBy Ext JS source
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
   * @param exactMatch True to force exact match (^ and $ characters added to the regex). Defaults to false.
   * @return The matched index or -1
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-find Ext JS source
   */
  public native function find(fieldName:String, value:*, startIndex:ext.form.Number = null, anyMatch:Boolean = false, caseSensitive:Boolean = false, exactMatch:Boolean = false):ext.form.Number;

  /**
   * Find the index of the first matching Record in this Store by a function. If the function returns <tt>true</tt> it is considered a match.
   *
   * @param fn The function to be called. It will be passed the following parameters:<ul><li><b>record</b> : Ext.data.Record<p class="sub-desc">The <a href="Ext.data.Record.html">record</a> to test for filtering. Access field values using <a href="output/Ext.data.Record.html#Ext.data.Record-get">Ext.data.Record.get</a>.</p></li><li><b>id</b> : Object<p class="sub-desc">The ID of the Record passed.</p></li></ul>
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this Store.
   * @param startIndex The index to start searching at
   * @return The matched index or -1
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-findBy Ext JS source
   */
  public native function findBy(fn:Function, scope:Object = null, startIndex:ext.form.Number = null):ext.form.Number;

  /**
   * Finds the index of the first matching Record in this store by a specific field value.
   *
   * @param fieldName The name of the Record field to test.
   * @param value The value to match the field against.
   * @param startIndex The index to start searching at
   * @return The matched index or -1
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-findExact Ext JS source
   */
  public native function findExact(fieldName:String, value:*, startIndex:ext.form.Number = null):ext.form.Number;

  /**
   * Finds the first matching Record in this store by a specific field value.
   *
   * @param fieldName The name of the Record field to test.
   * @param value Either a string that the field value should begin with, or a RegExp to test against the field.
   * @param startIndex The index to start searching at
   * @param anyMatch True to match any part of the string, not just the beginning
   * @param caseSensitive True for case sensitive comparison
   * @param exactMatch True to force exact match (^ and $ characters added to the regex). Defaults to false.
   * @return The matched record or null
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-findRecord Ext JS source
   */
  public native function findRecord(fieldName:String, value:*, startIndex:ext.form.Number = null, anyMatch:Boolean = false, caseSensitive:Boolean = false, exactMatch:Boolean = false):ext.data.Record;

  /**
   * Convenience function for getting the first model instance in the store
   *
   * @return The first model instance in the store, or undefined
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-first Ext JS source
   */
  public native function first():*;

  /**
   * Get the Record at the specified index.
   *
   * @param index The index of the Record to find.
   * @return The Record at the passed index. Returns undefined if not found.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-getAt Ext JS source
   */
  public native function getAt(index:ext.form.Number):Model;

  /**
   * Get the Record with the specified id.
   *
   * @param id The id of the Record to find.
   * @return The Record with the passed id. Returns undefined if not found.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-getById Ext JS source
   */
  public native function getById(id:String):ext.data.Record;

  /**
   * Gets the number of cached records. <p>If using paging, this may not be the total size of the dataset. If the data object used by the Reader contains the dataset size, then the <a href="output/Ext.data.Store.html#Ext.data.Store-getTotalCount">getTotalCount</a> function returns the dataset size. <b>Note</b>: see the Important note in <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a>.</p>
   *
   * @return The number of Records in the Store's cache.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-getCount Ext JS source
   */
  public native function getCount():ext.form.Number;

  /**
   * Returns the string to group on for a given model instance. The default implementation of this method returns the model's <a href="output/Ext.data.Store.html#Ext.data.Store-groupField">groupField</a>, but this can be overridden to group by an arbitrary string. For example, to group by the first letter of a model's 'name' field, use the following code: <pre><code>new Ext.data.Store({
   groupDir: 'ASC',
   getGroupString: function(instance) {
   return instance.get('name')[0];
   }
   });
   </code></pre>
   *
   * @param instance The model instance
   * @return The string to compare when forming groups
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-getGroupString Ext JS source
   */
  public native function getGroupString(instance:Model):String;

  /**
   * Returns an object containing the result of applying grouping to the records in this store. See <a href="output/Ext.data.Store.html#Ext.data.Store-groupField">groupField</a>, <a href="output/Ext.data.Store.html#Ext.data.Store-groupDir">groupDir</a> and <a href="output/Ext.data.Store.html#Ext.data.Store-getGroupString">getGroupString</a>. Example for a store containing records with a color field: <pre><code>var myStore = new Ext.data.Store({
   groupField: 'color',
   groupDir  : 'DESC'
   });

   myStore.getGroups(); //returns:
   [
   {
   name: 'yellow',
   children: [
   //all records where the color field is 'yellow'
   ]
   },
   {
   name: 'red',
   children: [
   //all records where the color field is 'red'
   ]
   }
   ]
   </code></pre>
   *
   * @return The grouped data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-getGroups Ext JS source
   */
  public native function getGroups():Array;

  /**
   * Returns a range of Records between specified indices.
   *
   * @param startIndex The starting index (defaults to 0)
   * @param endIndex The ending index (defaults to the last Record in the Store)
   * @return An array of Records
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-getRange Ext JS source
   */
  public native function getRange(startIndex:ext.form.Number = null, endIndex:ext.form.Number = null):Array;

  /**
   * Get the index within the cache of the passed Record.
   *
   * @param record The Ext.data.Model object to find.
   * @return The index of the passed Record. Returns -1 if not found.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-indexOf Ext JS source
   */
  public native function indexOf(record:Model):ext.form.Number;

  /**
   * Get the index within the cache of the Record with the passed id.
   *
   * @param id The id of the Record to find.
   * @return The index of the Record. Returns -1 if not found.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-indexOfId Ext JS source
   */
  public native function indexOfId(id:String):ext.form.Number;

  /**
   * Inserts Model instances into the Store at the given index and fires the <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a> event. See also <code><a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a></code>.
   *
   * @param index The start index at which to insert the passed Records.
   * @param records An Array of Ext.data.Model objects to add to the cache.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-insert Ext JS source
   */
  public native function insert(index:ext.form.Number, records:Array):void;

  /**
   * Returns true if this store is currently filtered
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-isFiltered Ext JS source
   */
  public native function isFiltered():Boolean;

  /**
   * Returns true if the Store is currently performing a load operation
   *
   * @return True if the Store is currently loading
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-isLoading Ext JS source
   */
  public native function isLoading():Boolean;

  /**
   * Convenience function for getting the last model instance in the store
   *
   * @return The last model instance in the store, or undefined
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-last Ext JS source
   */
  public native function last():*;

  /**
   * Loads data into the Store via the configured <a href="output/Ext.data.Store.html#Ext.data.Store-proxy">proxy</a>. This uses the Proxy to make an asynchronous call to whatever storage backend the Proxy uses, automatically adding the retrieved instances into the Store and calling an optional callback if required. Example usage:
   <pre><code>store.load({
   scope   : this,
   callback: function(records, operation, success) {
   //the <a href="Ext.data.Operation.html">operation</a> object contains all of the details of the load operation
   console.log(records);
   }
   });
   </code></pre><p>If the callback scope does not need to be set, a function can simply be passed:</p><pre><code>store.load(function(records, operation, success) {
   console.log('loaded records');
   });
   </code></pre>
   *
   * @param options Optional config object. This is passed into the <a href="Ext.data.Operation.html">Operation</a> object that is created and then sent to the proxy's <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-read">Ext.data.Proxy.read</a> function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-load Ext JS source
   */
  override public native function load(options:Object):void;

  /**
   * Loads an array of data straight into the Store
   *
   * @param data Array of data to load. Any non-model instances will be cast into model instances first
   * @param append True to add the records to the existing records in the store, false to remove the old ones first
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-loadData Ext JS source
   */
  public native function loadData(data:Array, append:Boolean):void;

  /**
   * Loads a given 'page' of data by setting the start and limit values appropriately. Internally this just causes a normal load operation, passing in calculated 'start' and 'limit' params
   *
   * @param page The number of the page to load
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-loadPage Ext JS source
   */
  public native function loadPage(page:ext.form.Number):void;

  /**
   * Loads an array of {&#64;Ext.data.Model model} instances into the store, fires the datachanged event. This should only usually be called internally when loading from the <a href="Ext.data.Proxy.html">Proxy</a>, when adding records manually use <a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a> instead
   *
   * @param records The array of records to load
   * @param add True to add these records to the existing records, false to remove the Store's existing records first
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-loadRecords Ext JS source
   */
  public native function loadRecords(records:Array, add:Boolean):void;

  /**
   * Loads the next 'page' in the current data set
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-nextPage Ext JS source
   */
  public native function nextPage():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-onProxyLoad Ext JS source
   */
  public native function onProxyLoad():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-onProxyWrite Ext JS source
   */
  public native function onProxyWrite():void;

  /**
   * Loads the previous 'page' in the current data set
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-previousPage Ext JS source
   */
  public native function previousPage():void;

  /**
   * Query the cached records in this Store using a filtering function. The specified function will be called with each record in this Store. If the function returns <tt>true</tt> the record is included in the results.
   *
   * @param fn The function to be called. It will be passed the following parameters:<ul><li><b>record</b> : Ext.data.Record<p class="sub-desc">The <a href="Ext.data.Record.html">record</a> to test for filtering. Access field values using <a href="output/Ext.data.Record.html#Ext.data.Record-get">Ext.data.Record.get</a>.</p></li><li><b>id</b> : Object<p class="sub-desc">The ID of the Record passed.</p></li></ul>
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this Store.
   * @return Returns an Ext.util.MixedCollection of the matched records
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-queryBy Ext JS source
   */
  public native function queryBy(fn:Function, scope:Object = null):MixedCollection;

  /**
   * Removes the given record from the Store, firing the 'remove' event for each instance that is removed, plus a single 'datachanged' event after removal.
   *
   * @param records The Ext.data.Model instance or array of instances to remove
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-remove Ext JS source
   */
  public native function remove(records:*):void;

  /**
   * Removes the model instance at the given index
   *
   * @param index The record index
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-removeAt Ext JS source
   */
  public native function removeAt(index:ext.form.Number):void;

  /**
   * Sorts the data in the Store by one or more of its properties. Example usage:
   <pre><code>//sort by a single field
   myStore.sort('myField', 'DESC');

   //sorting by multiple fields
   myStore.sort([
   {
   property : 'age',
   direction: 'ASC'
   },
   {
   property : 'name',
   direction: 'DESC'
   }
   ]);
   </code></pre><p>Internally, Store converts the passed arguments into an array of <a href="Ext.util.Sorter.html">Ext.util.Sorter</a> instances, and delegates the actual sorting to its internal <a href="Ext.util.MixedCollection.html">Ext.util.MixedCollection</a>.</p><p>When passing a single string argument to sort, Store maintains a ASC/DESC toggler per field, so this code:</p><pre><code>store.sort('myField');
   store.sort('myField');
   </code></pre><p>Is equivalent to this code, because Store handles the toggling automatically:</p><pre><code>store.sort('myField', 'ASC');
   store.sort('myField', 'DESC');
   </code></pre>
   *
   * @param sorters Either a string name of one of the fields in this Store's configured <a href="Ext.data.Model.html">Model</a>, or an Array of sorter configurations.
   * @param direction The overall direction to sort the data by. Defaults to "ASC".
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-sort Ext JS source
   */
  public native function sort(sorters:*, direction:String):void;

  /**
   * Sums the value of <tt>property</tt> for each <a href="Ext.data.Record.html">record</a> between <tt>start</tt> and <tt>end</tt> and returns the result.
   *
   * @param property A field in each record
   * @param start The record index to start at (defaults to <tt>0</tt>)
   * @param end The last record index to include (defaults to length - 1)
   * @return The sum
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Store.html#method-Ext.data.Store-sum Ext JS source
   */
  public native function sum(property:String, start:ext.form.Number = null, end:ext.form.Number = null):ext.form.Number;

}
}
    