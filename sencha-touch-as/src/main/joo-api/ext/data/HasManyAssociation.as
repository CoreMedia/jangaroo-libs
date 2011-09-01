package ext.data {


/**
 * Represents a one-to-many relationship between two models. Usually created indirectly via a model definition:
 <pre><code>Ext.regModel('Product', {
 fields: [
 {name: 'id',      type: 'int'},
 {name: 'user_id', type: 'int'},
 {name: 'name',    type: 'string'}
 ]
 });

 Ext.regModel('User', {
 fields: [
 {name: 'id',   type: 'int'},
 {name: 'name', type: 'string'}
 ],

 hasMany: {model: 'Product', name: 'products'}
 });
 </code></pre><p>Above we created Product and User models, and linked them by saying that a User hasMany Products. This gives us a new function on every User instance, in this case the function is called 'products' because that is the name we specified in the association configuration above.</p><p>This new function returns a specialized <a href="Ext.data.Store.html">Store</a> which is automatically filtered to load only Products for the given model instance:</p><pre><code>//first, we load up a User with id of 1
 var user = Ext.ModelMgr.create({id: 1, name: 'Ed'}, 'User');

 //the user.products function was created automatically by the association and returns a <a href="Ext.data.Store.html">Store</a>
 //the created store is automatically scoped to the set of Products for the User with id of 1
 var products = user.products();

 //we still have all of the usual Store functions, for example it's easy to add a Product for this User
 products.add({
 name: 'Another Product'
 });

 //saves the changes to the store - this automatically sets the new Product's user_id to 1 before saving
 products.sync();
 </code></pre><p>The new Store is only instantiated the first time you call products() to conserve memory and processing time, though calling products() a second time returns the same store instance.</p><p><u>Custom filtering</u></p><p>The Store is automatically furnished with a filter - by default this filter tells the store to only return records where the associated model's foreign key matches the owner model's primary key. For example, if a User with ID = 100 hasMany Products, the filter loads only Products with user_id == 100.</p><p>Sometimes we want to filter by another field - for example in the case of a Twitter search application we may have models for Search and Tweet:</p><pre><code>var Search = Ext.regModel('Search', {
 fields: [
 'id', 'query'
 ],

 hasMany: {
 model: 'Tweet',
 name : 'tweets',
 filterProperty: 'query'
 }
 });

 Ext.regModel('Tweet', {
 fields: [
 'id', 'text', 'from_user'
 ]
 });

 //returns a Store filtered by the filterProperty
 var store = new Search({query: 'Sencha Touch'}).tweets();
 </code></pre><p>The tweets association above is filtered by the query property by setting the <a href="output/Ext.data.HasManyAssociation.html#Ext.data.HasManyAssociation-filterProperty">filterProperty</a>, and is equivalent to this:</p><pre><code>var store = new Ext.data.Store({
 model: 'Tweet',
 filters: [
 {
 property: 'query',
 value   : 'Sencha Touch'
 }
 ]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.hasmanyassociation
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HasManyAssociation.html#cls-Ext.data.HasManyAssociation Ext JS source
 */
public class HasManyAssociation extends Association {

  /**
   *
   *
   * @see ext.config.hasmanyassociation
   */
  public function HasManyAssociation() {
    super(null);
  }

  /**
   Optionally overrides the default filter that is set up on the associated Store. If this is not set, a filter is automatically created which filters the association based on the configured <a href="output/Ext.data.HasManyAssociation.html#Ext.data.HasManyAssociation-foreignKey">foreignKey</a>. See intro docs for more details. Defaults to undefined
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get filterProperty():String;

  /**
   The name of the foreign key on the associated model that links it to the owner model. Defaults to the lowercased name of the owner model plus "_id", e.g. an association with a where a model called Group hasMany Users would create 'group_id' as the foreign key.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get foreignKey():String;

  /**
   The name of the function to create on the owner model. Required
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get name():String;

  /**
   Optional configuration object that will be passed to the generated Store. Defaults to undefined.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get storeConfig():Object;

  /**
   *
   *
   * @return The store-generating function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HasManyAssociation.html#method-Ext.data.HasManyAssociation-createStore Ext JS source
   */
  public native function createStore():Function;

}
}
    