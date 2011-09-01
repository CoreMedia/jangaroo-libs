package ext.data {

import ext.form.Number;
import ext.util.Stateful;

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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.model
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#cls-Ext.data.Model Ext JS source
 */
public class Model extends Stateful {

  /**
   *
   *
   * @param data An object containing keys corresponding to this model's fields, and their associated values
   * @param id Optional unique ID to assign to this model instance
   * @see ext.config.model
   */
  public function Model(data:Object, id:ext.form.Number) {
    super();
  }

  /**
   An internal unique ID for each Model instance, used to identify Models that don't have an ID yet
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#prop-Ext.data.Model-internalId Ext JS source
   */
  public native function get internalId():String;

  /**
   * @private
   */
  public native function set internalId(value:String):void;

  /**
   <tt>true</tt> when the record does not yet exist in a server-side database (see <a href="output/Ext.data.Model.html#Ext.data.Model-setDirty">setDirty</a>). Any record which has a real database pk set as its id property is NOT a phantom -- it's real.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#prop-Ext.data.Model-phantom Ext JS source
   */
  public native function get phantom():Boolean;

  /**
   * @private
   */
  public native function set phantom(value:Boolean):void;

  /**
   The <a href="Ext.data.Store.html">Ext.data.Store</a> to which this Record belongs.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#prop-Ext.data.Model-store Ext JS source
   */
  public native function get store():Store;

  /**
   * @private
   */
  public native function set store(value:Store):void;

  /**
   The name of the field treated as this Model's unique id (defaults to 'id').
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get idProperty():String;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-afterCommit Ext JS source
   */
  public native function afterCommit():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-afterEdit Ext JS source
   */
  public native function afterEdit():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-afterReject Ext JS source
   */
  public native function afterReject():void;

  /**
   *
   *
   * @param fn The function to call on the store
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-callStore Ext JS source
   */
  public native function callStore(fn:String):void;

  /**
   * Returns the unique ID allocated to this model instance as defined by <a href="output/Ext.data.Model.html#Ext.data.Model-idProperty">idProperty</a>
   *
   * @return The id
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-getId Ext JS source
   */
  public native function getId():ext.form.Number;

  /**
   * Returns the configured Proxy for this Model
   *
   * @return The proxy
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-getProxy Ext JS source
   */
  public native function getProxy():Proxy;

  /**
   * Generates a sequential id. This method is typically called when a record is <a href="output/Ext.data.Model.html#Ext.data.Model-create">create</a>d and <a href="output/Ext.data.Model.html#Ext.data.Model-Record">no id has been specified</a>. The returned id takes the form: <tt>{PREFIX}-{AUTO_ID}</tt>.<div class="mdetail-params"><ul><li><b><tt>PREFIX</tt></b> : String<p class="sub-desc"><tt>Ext.data.Model.PREFIX</tt> (defaults to <tt>'ext-record'</tt>)</p></li><li><b><tt>AUTO_ID</tt></b> : String<p class="sub-desc"><tt>Ext.data.Model.AUTO_ID</tt> (defaults to <tt>1</tt> initially)</p></li></ul></div>
   *
   * @param rec The record being created. The record does not exist, it's a <a href="output/Ext.data.Model.html#Ext.data.Model-phantom">phantom</a>.
   * @return auto-generated string id, <tt>"ext-record-i++'</tt>;
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-id Ext JS source
   */
  public native function id(rec:Record):String;

  /**
   * Tells this model instance that it has been added to a store
   *
   * @param store The store that the model has been added to
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-join Ext JS source
   */
  public native function join(store:Store):void;

  /**
   * <b>Static</b>. Asynchronously loads a model instance by id. Sample usage: <pre><code>MyApp.User = Ext.regModel('User', {
   fields: [
   {name: 'id', type: 'int'},
   {name: 'name', type: 'string'}
   ]
   });

   MyApp.User.load(10, {
   scope: this,
   failure: function(record, operation) {
   //do something if the load failed
   },
   success: function(record, operation) {
   //do something if the load succeeded
   },
   callback: function(record, operation) {
   //do something whether the load succeeded or failed
   }
   });
   </code></pre>
   *
   * @param id The id of the model to load
   * @param config Optional config object containing success, failure and callback functions, plus optional scope
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-load Ext JS source
   */
  public static native function load(id:ext.form.Number, config:Object):void;

  /**
   * Saves the model instance using the configured proxy
   *
   * @param options Options to pass to the proxy
   * @return The Model instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-save Ext JS source
   */
  public native function save(options:Object):Model;

  /**
   * Sets the model instance's id field to the given id
   *
   * @param id The new id
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-setId Ext JS source
   */
  public native function setId(id:ext.form.Number):void;

  /**
   * Sets the Proxy to use for this model. Accepts any options that can be accepted by <a href="output/Ext.data.ProxyMgr.html#Ext.data.ProxyMgr-create">Ext.data.ProxyMgr.create</a>
   *
   * @param proxy The proxy
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-setProxy Ext JS source
   */
  public native function setProxy(proxy:*):void;

  /**
   * Tells this model instance that it has been removed from the store
   *
   * @param store The store to unjoin
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-unjoin Ext JS source
   */
  public native function unjoin(store:Store):void;

  /**
   * Validates the current data against all of its configured <a href="output/Ext.data.Model.html#Ext.data.Model-validations">validations</a> and returns an <a href="Ext.data.Errors.html">Errors</a> object
   *
   * @return The errors object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Model.html#method-Ext.data.Model-validate Ext JS source
   */
  public native function validate():Errors;

}
}
    