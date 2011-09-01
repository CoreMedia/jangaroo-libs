package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class Store.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Store
 */
[ExtConfig(target="ext.data.Store")]
public class store extends abstractstore {

  public function store(config:Object = null) {

    super(config);
  }


  /**
   True to empty the store when loading another page via <a href="output/Ext.data.Store.html#Ext.data.Store-loadPage">loadPage</a>, <a href="output/Ext.data.Store.html#Ext.data.Store-nextPage">nextPage</a> or <a href="output/Ext.data.Store.html#Ext.data.Store-previousPage">previousPage</a> (defaults to true). Setting to false keeps existing records, allowing large data sets to be loaded one page at a time but rendered all together.
   */
  public native function get clearOnPageLoad():Boolean;

  /**
   * @private
   */
  public native function set clearOnPageLoad(value:Boolean):void;

  /**
   Optional array of Model instances or data objects to load locally. See "Inline data" above for details.
   */
  public native function get data():Array;

  /**
   * @private
   */
  public native function set data(value:Array):void;

  /**
   The Proxy to use for this Store. This can be either a string, a config object or a Proxy instance - see <a href="output/Ext.data.Store.html#Ext.data.Store-setProxy">setProxy</a> for details.
   */
  override public native function get proxy():*;

  /**
   * @private
   */
  override public native function set proxy(value:*):void;

  /**
   True to defer any filtering operation to the server. If false, filtering is done locally on the client. Defaults to <tt>false</tt>.
   */
  public native function get remoteFilter():Boolean;

  /**
   * @private
   */
  public native function set remoteFilter(value:Boolean):void;

  /**
   True to defer any sorting operation to the server. If false, sorting is done locally on the client. Defaults to <tt>false</tt>.
   */
  public native function get remoteSort():Boolean;

  /**
   * @private
   */
  public native function set remoteSort(value:Boolean):void;

  /**
   For local filtering only, causes <a href="output/Ext.data.Store.html#Ext.data.Store-sort">sort</a> to be called whenever <a href="output/Ext.data.Store.html#Ext.data.Store-filter">filter</a> is called, causing the sorters to be reapplied after filtering. Defaults to true
   */
  public native function get sortOnFilter():Boolean;

  /**
   * @private
   */
  public native function set sortOnFilter(value:Boolean):void;


}
}
    