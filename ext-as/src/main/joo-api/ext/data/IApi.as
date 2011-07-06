package ext.data {


/**
 * Ext.data.Api is a singleton designed to manage the data API including methods for validating a developer's DataProxy API. Defines variables for CRUD actions create, read, update and destroy in addition to a mapping of RESTful HTTP methods GET, POST, PUT and DELETE to CRUD actions.
 * <p>This interface defines the type of the singleton Api.</p>
 * @see ext.data.#Api ext.data.Api
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#cls-Ext.data.Api Ext JS source
 */
public interface IApi {

  /**
   Defined actions corresponding to remote actions: <pre><code>actions: {
   create  : 'create',  // Text representing the remote-action to create records on server.
   read    : 'read',    // Text representing the remote-action to read/load data from server.
   update  : 'update',  // Text representing the remote-action to update records on server.
   destroy : 'destroy'  // Text representing the remote-action to destroy records on server.
   }
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#prop-Ext.data.Api-actions Ext JS source
   */
  function get actions():Object;

  /**
   * @private
   */
  function set actions(value:Object):void;

  /**
   Defined {CRUD action}:{HTTP method} pairs to associate HTTP methods with the corresponding actions for <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-restful">RESTful proxies</a>. Defaults to: <pre><code>restActions : {
   create  : 'POST',
   read    : 'GET',
   update  : 'PUT',
   destroy : 'DELETE'
   },
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#prop-Ext.data.Api-restActions Ext JS source
   */
  function get restActions():Object;

  /**
   * @private
   */
  function set restActions(value:Object):void;

  /**
   * Ext.data.Response Experimental. Do not use directly.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#method-Ext.data.Api-Response Ext JS source
   */
  function Response():void;

  /**
   * Returns the actual CRUD action KEY "create", "read", "update" or "destroy" from the supplied action-name. This method is used internally and shouldn't generally need to be used directly. The key/value pair of Ext.data.Api.actions will often be identical but this is not necessarily true. A developer can override this naming convention if desired. However, the framework internally calls methods based upon the KEY so a way of retrieving the the words "create", "read", "update" and "destroy" is required. This method will cache discovered KEYS into the private validActions hash.
   *
   * @param name The runtime name of the action.
   * @return returns the action-key, or verb of the user-action or null if invalid.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#method-Ext.data.Api-getVerb Ext JS source
   */
  function getVerb(name:String):*;

  /**
   * Returns true if the supplied verb upon the supplied proxy points to a unique url in that none of the other api-actions point to the same url. The question is important for deciding whether to insert the "xaction" HTTP parameter within an Ajax request. This method is used internally and shouldn't generally need to be called directly.
   *
   * @param proxy
   * @param verb
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#method-Ext.data.Api-hasUniqueUrl Ext JS source
   */
  function hasUniqueUrl(proxy:DataProxy, verb:String):Boolean;

  /**
   * Returns true if supplied action-name is a valid API action defined in <code><a href="output/Ext.data.Api.html#Ext.data.Api-actions">actions</a></code> constants
   *
   * @param action Action to test for availability.
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#method-Ext.data.Api-isAction Ext JS source
   */
  function isAction(action:String):Boolean;

  /**
   * Returns true if the supplied API is valid; that is, check that all keys match defined actions otherwise returns an array of mistakes.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#method-Ext.data.Api-isValid Ext JS source
   */
  function isValid():*;

  /**
   * This method is used internally by <tt><a href="Ext.data.DataProxy.html">DataProxy</a></tt> and should not generally need to be used directly. Each action of a DataProxy api can be initially defined as either a String or an Object. When specified as an object, one can explicitly define the HTTP method (GET|POST) to use for each CRUD action. This method will prepare the supplied API, setting each action to the Object form. If your API-actions do not explicitly define the HTTP method, the "method" configuration-parameter will be used. If the method configuration parameter is not specified, POST will be used. <pre><code>new Ext.data.HttpProxy({
   method: "POST",     // &lt;-- default HTTP method when not specified.
   api: {
   create: 'create.php',
   load: 'read.php',
   save: 'save.php',
   destroy: 'destroy.php'
   }
   });

   // Alternatively, one can use the object-form to specify the API
   new Ext.data.HttpProxy({
   api: {
   load: {url: 'read.php', method: 'GET'},
   create: 'create.php',
   destroy: 'destroy.php',
   save: 'update.php'
   }
   });
   </code></pre>
   *
   * @param proxy
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#method-Ext.data.Api-prepare Ext JS source
   */
  function prepare(proxy:DataProxy):void;

  /**
   * Prepares a supplied Proxy to be RESTful. Sets the HTTP method for each api-action to be one of GET, POST, PUT, DELETE according to the defined <a href="output/Ext.data.Api.html#Ext.data.Api-restActions">restActions</a>.
   *
   * @param proxy
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Api.html#method-Ext.data.Api-restify Ext JS source
   */
  function restify(proxy:DataProxy):void;

}
}
    