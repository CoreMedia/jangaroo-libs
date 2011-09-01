package ext.config {

import joo.JavaScriptObject;

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
 * <p>This class serves as a
 * typed config object for constructor of class Reader.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Reader
 */
[ExtConfig(target="ext.data.Reader")]
public class reader extends JavaScriptObject {

  public function reader(config:Object = null) {

    super(config);
  }


  /**
   Name of the property within a row object that contains a record identifier value. Defaults to <tt>id</tt>
   */
  public native function get idProperty():String;

  /**
   * @private
   */
  public native function set idProperty(value:String):void;

  /**
   True to automatically parse models nested within other models in a response object. See the Ext.data.Reader intro docs for full explanation. Defaults to true.
   */
  public native function get implicitIncludes():Boolean;

  /**
   * @private
   */
  public native function set implicitIncludes(value:Boolean):void;

  /**
   <b>Required</b>. The name of the property which contains the Array of row objects. Defaults to <tt>undefined</tt>. An exception will be thrown if the root property is undefined. The data packet value for this property should be an empty array to clear the data or show no data.
   */
  public native function get root():String;

  /**
   * @private
   */
  public native function set root(value:String):void;

  /**
   Name of the property from which to retrieve the success attribute. Defaults to <tt>success</tt>. See <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a>.<a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-exception">exception</a> for additional information.
   */
  public native function get successProperty():String;

  /**
   * @private
   */
  public native function set successProperty(value:String):void;

  /**
   Name of the property from which to retrieve the total number of records in the dataset. This is only needed if the whole dataset is not passed in one go, but is being paged from the remote server. Defaults to <tt>total</tt>.
   */
  public native function get totalProperty():String;

  /**
   * @private
   */
  public native function set totalProperty(value:String):void;


}
}
    