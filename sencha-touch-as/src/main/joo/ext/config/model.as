package ext.config {


/**
 * A Model represents some object that your application manages. For example, one might define a Model for Users, Products, Cars, or any other real-world object that we want to model in the system. Models are registered via the <a href="Ext.ModelMgr.html">model manager</a>, and are used by <a href="Ext.data.Store.html">stores</a>, which are in turn used by many of the data-bound components in Ext.
 <p>Models are defined as a set of fields and any arbitrary methods and properties relevant to the model. For example:</p><pre><code>Ext.regModel('User', {
 fields: [
 {name: 'name',  type: 'string'},
 {name: 'age',   type: 'int'},
 {name: 'phone', type: 'string'},
 {name: 'alive', type: 'boolean', defaultValue: true}
 ],

 changeName: function() {
 var oldName = this.get('name'),
 newName = oldName + " The Barbarian";

 this.set('name', newName);
 }
 });
 </code></pre><p>The fields array is turned into a <a href="Ext.util.MixedCollection.html">MixedCollection</a> automatically by the <a href="Ext.ModelMgr.html">ModelMgr</a>, and all other functions and properties are copied to the new Model's prototype.</p><p>Now we can create instances of our User model and call any model logic we defined:</p><pre><code>var user = Ext.ModelMgr.create({
 name : 'Conan',
 age  : 24,
 phone: '555-555-5555'
 }, 'User');

 user.changeName();
 user.get('name'); //returns "Conan The Barbarian"
 </code></pre><p><u>Validations</u></p><p>Models have built-in support for validations, which are executed against the validator functions in <a href="Ext.data.validations.html">Ext.data.validations</a> (<a href="Ext.data.validations.html">see all validation functions</a>). Validations are easy to add to models:</p><pre><code>Ext.regModel('User', {
 fields: [
 {name: 'name',     type: 'string'},
 {name: 'age',      type: 'int'},
 {name: 'phone',    type: 'string'},
 {name: 'gender',   type: 'string'},
 {name: 'username', type: 'string'},
 {name: 'alive',    type: 'boolean', defaultValue: true}
 ],

 validations: [
 {type: 'presence',  field: 'age'},
 {type: 'length',    field: 'name',     min: 2},
 {type: 'inclusion', field: 'gender',   list: ['Male', 'Female']},
 {type: 'exclusion', field: 'username', list: ['Admin', 'Operator']},
 {type: 'format',    field: 'username', matcher: /([a-z]+)[0-9]{2,3}/}
 ]
 });
 </code></pre><p>The validations can be run by simply calling the <a href="output/Ext.data.Model.html#Ext.data.Model-validate">validate</a> function, which returns a <a href="Ext.data.Errors.html">Ext.data.Errors</a> object:</p><pre><code>var instance = Ext.ModelMgr.create({
 name: 'Ed',
 gender: 'Male',
 username: 'edspencer'
 }, 'User');

 var errors = instance.validate();
 </code></pre><p><u>Associations</u></p><p>Models can have associations with other Models via <a href="Ext.data.BelongsToAssociation.html">belongsTo</a> and <a href="Ext.data.HasManyAssociation.html">hasMany</a> associations. For example, let's say we're writing a blog administration application which deals with Users, Posts and Comments. We can express the relationships between these models like this:</p><pre><code>Ext.regModel('Post', {
 fields: ['id', 'user_id'],

 belongsTo: 'User',
 hasMany  : {model: 'Comment', name: 'comments'}
 });

 Ext.regModel('Comment', {
 fields: ['id', 'user_id', 'post_id'],

 belongsTo: 'Post'
 });

 Ext.regModel('User', {
 fields: ['id'],

 hasMany: [
 'Post',
 {model: 'Comment', name: 'comments'}
 ]
 });
 </code></pre><p>See the docs for <a href="Ext.data.BelongsToAssociation.html">Ext.data.BelongsToAssociation</a> and <a href="Ext.data.HasManyAssociation.html">Ext.data.HasManyAssociation</a> for details on the usage and configuration of associations. Note that associations can also be specified like this:</p><pre><code>Ext.regModel('User', {
 fields: ['id'],

 associations: [
 {type: 'hasMany', model: 'Post',    name: 'posts'},
 {type: 'hasMany', model: 'Comment', name: 'comments'}
 ]
 });
 </code></pre><p><u>Using a Proxy</u></p><p>Models are great for representing types of data and relationships, but sooner or later we're going to want to load or save that data somewhere. All loading and saving of data is handled via a <a href="Ext.data.Proxy.html">Proxy</a>, which can be set directly on the Model:</p><pre><code>Ext.regModel('User', {
 fields: ['id', 'name', 'email'],

 proxy: {
 type: 'rest',
 url : '/users'
 }
 });
 </code></pre><p>Here we've set up a <a href="Ext.data.RestProxy.html">Rest Proxy</a>, which knows how to load and save data to and from a RESTful backend. Let's see how this works:</p><pre><code>var user = Ext.ModelMgr.create({name: 'Ed Spencer', email: 'ed&#64;sencha.com'}, 'User');

 user.save(); //POST /users
 </code></pre><p>Calling <a href="output/Ext.data.Model.html#Ext.data.Model-save">save</a> on the new Model instance tells the configured RestProxy that we wish to persist this Model's data onto our server. RestProxy figures out that this Model hasn't been saved before because it doesn't have an id, and performs the appropriate action - in this case issuing a POST request to the url we configured (/users). We configure any Proxy on any Model and always follow this API - see <a href="Ext.data.Proxy.html">Ext.data.Proxy</a> for a full list.</p><p>Loading data via the Proxy is equally easy:</p><pre><code>//get a reference to the User model class
 var User = Ext.ModelMgr.getModel('User');

 //Uses the configured RestProxy to make a GET request to /users/123
 User.load(123, {
 success: function(user) {
 console.log(user.getId()); //logs 123
 }
 });
 </code></pre><p>Models can also be updated and destroyed easily:</p><pre><code>//the user Model we loaded in the last snippet:
 user.set('name', 'Edward Spencer');

 //tells the Proxy to save the Model. In this case it will perform a PUT request to /users/123 as this Model already has an id
 user.save({
 success: function() {
 console.log('The User was updated');
 }
 });

 //tells the Proxy to destroy the Model. Performs a DELETE request to /users/123
 user.destroy({
 success: function() {
 console.log('The User was destroyed!');
 }
 });
 </code></pre><p><u>Usage in Stores</u></p><p>It is very common to want to load a set of Model instances to be displayed and manipulated in the UI. We do this by creating a <a href="Ext.data.Store.html">Store</a>:</p><pre><code>var store = new Ext.data.Store({
 model: 'User'
 });

 //uses the Proxy we set up on Model to load the Store data
 store.load();
 </code></pre><p>A Store is just a collection of Model instances - usually loaded from a server somewhere. Store can also maintain a set of added, updated and removed Model instances to be synchronized with the server via the Proxy. See the <a href="Ext.data.Store.html">Store docs</a> for more information on Stores.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Model.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Model
 */
[ExtConfig(target="ext.data.Model")]
public class model extends stateful {

  public function model(config:Object = null) {

    super(config);
  }


  /**
   The name of the field treated as this Model's unique id (defaults to 'id').
   */
  public native function get idProperty():String;

  /**
   * @private
   */
  public native function set idProperty(value:String):void;


}
}
    