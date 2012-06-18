package ext.data {

import ext.config.reader;

/**
 * Readers are used to interpret data to be loaded into a <a href="Ext.data.Model.html">Model</a> instance or a <a href="Ext.data.Store.html">Store</a> - usually in response to an AJAX request. This is normally handled transparently by passing some configuration to either the <a href="Ext.data.Model.html">Model</a> or the <a href="Ext.data.Store.html">Store</a> in question - see their documentation for further details.
 <p><u>Loading Nested Data</u></p><p>Readers have the ability to automatically load deeply-nested data objects based on the <a href="Ext.data.Association.html">associations</a> configured on each Model. Below is an example demonstrating the flexibility of these associations in a fictional CRM system which manages a User, their Orders, OrderItems and Products. First we'll define the models:</p><pre><code>Ext.regModel("User", {
 fields: [
 'id', 'name'
 ],

 hasMany: {model: 'Order', name: 'orders'},

 proxy: {
 type: 'rest',
 url : 'users.json',
 reader: {
 type: 'json',
 root: 'users'
 }
 }
 });

 Ext.regModel("Order", {
 fields: [
 'id', 'total'
 ],

 hasMany  : {model: 'OrderItem', name: 'orderItems', associationKey: 'order_items'},
 belongsTo: 'User'
 });

 Ext.regModel("OrderItem", {
 fields: [
 'id', 'price', 'quantity', 'order_id', 'product_id'
 ],

 belongsTo: ['Order', {model: 'Product', associationKey: 'product'}]
 });

 Ext.regModel("Product", {
 fields: [
 'id', 'name'
 ],

 hasMany: 'OrderItem'
 });
 </code></pre><p>This may be a lot to take in - basically a User has many Orders, each of which is composed of several OrderItems. Finally, each OrderItem has a single Product. This allows us to consume data like this:</p><pre><code>{
 "users": [
 {
 "id": 123,
 "name": "Ed",
 "orders": [
 {
 "id": 50,
 "total": 100,
 "order_items": [
 {
 "id"      : 20,
 "price"   : 40,
 "quantity": 2,
 "product" : {
 "id": 1000,
 "name": "MacBook Pro"
 }
 },
 {
 "id"      : 21,
 "price"   : 20,
 "quantity": 3,
 "product" : {
 "id": 1001,
 "name": "iPhone"
 }
 }
 ]
 }
 ]
 }
 ]
 }
 </code></pre><p>The JSON response is deeply nested - it returns all Users (in this case just 1 for simplicity's sake), all of the Orders for each User (again just 1 in this case), all of the OrderItems for each Order (2 order items in this case), and finally the Product associated with each OrderItem. Now we can read the data and use it as follows:</p><pre><code>var store = new Ext.data.Store({
 model: "User"
 });

 store.load({
 callback: function() {
 //the user that was loaded
 var user = store.first();

 console.log("Orders for " + user.get('name') + ":")

 //iterate over the Orders for each User
 user.orders().each(function(order) {
 console.log("Order ID: " + order.getId() + ", which contains items:");

 //iterate over the OrderItems for each Order
 order.orderItems().each(function(orderItem) {
 //we know that the Product data is already loaded, so we can use the synchronous getProduct
 //usually, we would use the asynchronous version (see <a href="Ext.data.BelongsToAssociation.html">Ext.data.BelongsToAssociation</a>)
 var product = orderItem.getProduct();

 console.log(orderItem.get('quantity') + ' orders of ' + product.get('name'));
 });
 });
 }
 });
 </code></pre><p>Running the code above results in the following:</p><pre><code>Orders for Ed:
 Order ID: 50, which contains items:
 2 orders of MacBook Pro
 3 orders of iPhone
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.reader
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#cls-Ext.data.Reader Ext JS source
 */
[Native]
public class Reader {

  /**
   *
   *
   * @param config Optional config object
   * @see ext.config.reader
   */
  public function Reader(config:reader) {
    super();
  }

  /**
   The raw data object that was last passed to readRecords. Stored for further processing if needed
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#prop-Ext.data.Reader-rawData Ext JS source
   */
  public native function get rawData():*;

  /**
   * @private
   */
  public native function set rawData(value:*):void;

  /**
   Name of the property within a row object that contains a record identifier value. Defaults to <tt>id</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get idProperty():String;

  /**
   True to automatically parse models nested within other models in a response object. See the Ext.data.Reader intro docs for full explanation. Defaults to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get implicitIncludes():Boolean;

  /**
   <b>Required</b>. The name of the property which contains the Array of row objects. Defaults to <tt>undefined</tt>. An exception will be thrown if the root property is undefined. The data packet value for this property should be an empty array to clear the data or show no data.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get root():String;

  /**
   Name of the property from which to retrieve the success attribute. Defaults to <tt>success</tt>. See <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a>.<a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-exception">exception</a> for additional information.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get successProperty():String;

  /**
   Name of the property from which to retrieve the total number of records in the dataset. This is only needed if the whole dataset is not passed in one go, but is being paged from the remote server. Defaults to <tt>total</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get totalProperty():String;

  /**
   *
   *
   * @param force True to automatically remove existing extractor functions first (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-buildExtractors Ext JS source
   */
  public native function buildExtractors(force:Boolean):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-buildFieldExtractors Ext JS source
   */
  public native function buildFieldExtractors():void;

  /**
   * Returns extracted, type-cast rows of data. Iterates to call #extractValues for each row
   *
   * @param dataRoot data-root from server response
   * @param returnRecords [false] Set true to return instances of Ext.data.Record
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-extractData Ext JS source
   */
  public native function extractData(dataRoot:*, returnRecords:Boolean):void;

  /**
   *
   *
   * @param data The data object to convert
   * @return Data object suitable for use with a model constructor
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-extractValues Ext JS source
   */
  public native function extractValues(data:Object):Object;

  /**
   *
   *
   * @param data The raw data object
   * @param associationName The name of the association to get data for (uses associationKey if present)
   * @return The root
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-getAssociatedDataRoot Ext JS source
   */
  public native function getAssociatedDataRoot(data:*, associationName:String):*;

  /**
   *
   *
   * @param data The data object
   * @return The normalized data object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-getData Ext JS source
   */
  public native function getData(data:Object):Object;

  /**
   * Takes a raw response object (as passed to this.read) and returns the useful data segment of it. This must be implemented by each subclass
   *
   * @param response The responce object
   * @return The useful data from the response
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-getResponseData Ext JS source
   */
  public native function getResponseData(response:Object):Object;

  /**
   *
   *
   * @param data The data object
   * @return The same data object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-getRoot Ext JS source
   */
  public native function getRoot(data:*):*;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-onMetaChange Ext JS source
   */
  public native function onMetaChange():void;

  /**
   * Reads the given response object. This method normalizes the different types of response object that may be passed to it, before handing off the reading of records to the <a href="readRecords.html">readRecords</a> function.
   *
   * @param response The response object. This may be either an XMLHttpRequest object or a plain JS object
   * @return The parsed ResultSet object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-read Ext JS source
   */
  public native function read(response:Object):ResultSet;

  /**
   *
   *
   * @param record The record to load associations for
   * @param data The data object
   * @return Return value description
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-readAssociated Ext JS source
   */
  public native function readAssociated(record:Model, data:*):String;

  /**
   * Abstracts common functionality used by all Reader subclasses. Each subclass is expected to call this function before running its own logic and returning the Ext.data.ResultSet instance. For most Readers additional processing should not be needed.
   *
   * @param data The raw data object
   * @return A ResultSet object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-readRecords Ext JS source
   */
  public native function readRecords(data:*):ResultSet;

  /**
   * Sets a new model for the reader.
   *
   * @param model The model to set.
   * @param setOnProxy True to also set on the Proxy, if one is configured
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Reader.html#method-Ext.data.Reader-setModel Ext JS source
   */
  public native function setModel(model:Object, setOnProxy:Boolean):void;

}
}
    