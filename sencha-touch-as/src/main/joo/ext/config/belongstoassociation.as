package ext.config {


/**
 * Represents a many to one association with another model. The owner model is expected to have a foreign key which references the primary key of the associated model:
 <pre><code>var Category = Ext.regModel('Category', {
 fields: [
 {name: 'id',   type: 'int'},
 {name: 'name', type: 'string'}
 ]
 });

 var Product = Ext.regModel('Product', {
 fields: [
 {name: 'id',          type: 'int'},
 {name: 'category_id', type: 'int'},
 {name: 'name',        type: 'string'}
 ],

 associations: [
 {type: 'belongsTo', model: 'Category'}
 ]
 });
 </code></pre><p>In the example above we have created models for Products and Categories, and linked them together by saying that each Product belongs to a Category. This automatically links each Product to a Category based on the Product's category_id, and provides new functions on the Product model:</p><p><u>Generated getter function</u></p><p>The first function that is added to the owner model is a getter function:</p><pre><code>var product = new Product({
 id: 100,
 category_id: 20,
 name: 'Sneakers'
 });

 product.getCategory(function(category, operation) {
 //do something with the category object
 alert(category.get('id')); //alerts 20
 }, this);
 </code></pre><p>The getCategory function was created on the Product model when we defined the association. This uses the Category's configured <a href="Ext.data.Proxy.html">proxy</a> to load the Category asynchronously, calling the provided callback when it has loaded.</p><p>The new getCategory function will also accept an object containing success, failure and callback properties - callback will always be called, success will only be called if the associated model was loaded successfully and failure will only be called if the associatied model could not be loaded:</p><pre><code>product.getCategory({
 callback: function(category, operation) {}, //a function that will always be called
 success : function(category, operation) {}, //a function that will only be called if the load succeeded
 failure : function(category, operation) {}, //a function that will only be called if the load did not succeed
 scope   : this //optionally pass in a scope object to execute the callbacks in
 });
 </code></pre><p>In each case above the callbacks are called with two arguments - the associated model instance and the <a href="Ext.data.Operation.html">operation</a> object that was executed to load that instance. The Operation object is useful when the instance could not be loaded.</p><p><u>Generated setter function</u></p><p>The second generated function sets the associated model instance - if only a single argument is passed to the setter then the following two calls are identical:</p><pre><code>//this call
 product.setCategory(10);

 //is equivalent to this call:
 product.set('category_id', 10);
 </code></pre><p>If we pass in a second argument, the model will be automatically saved and the second argument passed to the owner model's <a href="output/Ext.data.Model.html#Ext.data.Model-save">save</a> method:</p><pre><code>product.setCategory(10, function(product, operation) {
 //the product has been saved
 alert(product.get('category_id')); //now alerts 10
 });

 //alternative syntax:
 product.setCategory(10, {
 callback: function(product, operation), //a function that will always be called
 success : function(product, operation), //a function that will only be called if the load succeeded
 failure : function(product, operation), //a function that will only be called if the load did not succeed
 scope   : this //optionally pass in a scope object to execute the callbacks in
 })
 </code></pre><p><u>Customisation</u></p><p>Associations reflect on the models they are linking to automatically set up properties such as the <a href="output/Ext.data.BelongsToAssociation.html#Ext.data.BelongsToAssociation-primaryKey">primaryKey</a> and <a href="output/Ext.data.BelongsToAssociation.html#Ext.data.BelongsToAssociation-foreignKey">foreignKey</a>. These can alternatively be specified:</p><pre><code>var Product = Ext.regModel('Product', {
 fields: [...],

 associations: [
 {type: 'belongsTo', model: 'Category', primaryKey: 'unique_id', foreignKey: 'cat_id'}
 ]
 });
 </code></pre><p>Here we replaced the default primary key (defaults to 'id') and foreign key (calculated as 'category_id') with our own settings. Usually this will not be needed.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class BelongsToAssociation.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.BelongsToAssociation
 */
[ExtConfig(target="ext.data.BelongsToAssociation")]
public class belongstoassociation extends association {

  public function belongstoassociation(config:Object = null) {

    super(config);
  }


  /**
   The name of the foreign key on the owner model that links it to the associated model. Defaults to the lowercased name of the associated model plus "_id", e.g. an association with a model called Product would set up a product_id foreign key.
   */
  public native function get foreignKey():String;

  /**
   * @private
   */
  public native function set foreignKey(value:String):void;

  /**
   The name of the getter function that will be added to the local model's prototype. Defaults to 'get' + the name of the foreign model, e.g. getCategory
   */
  public native function get getterName():String;

  /**
   * @private
   */
  public native function set getterName(value:String):void;

  /**
   The name of the setter function that will be added to the local model's prototype. Defaults to 'set' + the name of the foreign model, e.g. setCategory
   */
  public native function get setterName():String;

  /**
   * @private
   */
  public native function set setterName(value:String):void;


}
}
    