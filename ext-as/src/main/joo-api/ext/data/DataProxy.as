package ext.data {
import ext.config.dataproxy;
import ext.util.Observable;

/**
 * Fires before a request to retrieve a data object.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.DataProxy</code>
 The proxy for the request
 *       </li>

 *       <li>
 *           <code>params:Object</code>
 The params object passed to the <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-request">request</a> function
 *       </li>

 * </ul>
 */
[Event(name="beforeload")]

/**
 * Fires before a request is generated for one of the actions Ext.data.Api.actions.create|update|destroy
 <p>In addition to being fired through the DataProxy instance that raised the event, this event is also fired through the Ext.data.DataProxy <i>class</i> to allow for centralized processing of beforewrite events from <b>all</b> DataProxies by attaching a listener to the Ext.data.DataProxy class itself.</p>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.DataProxy</code>
 The proxy for the request
 *       </li>

 *       <li>
 *           <code>action:String</code>
 [Ext.data.Api.actions.create|update|destroy]
 *       </li>

 *       <li>
 *           <code>rs:&#42;</code>
 The Record(s) to create|update|destroy.
 *       </li>

 *       <li>
 *           <code>params:Object</code>
 The request <code>params</code> object. Edit <code>params</code> to add parameters to the request.
 *       </li>

 * </ul>
 */
[Event(name="beforewrite")]

/**
 * Fires if an exception occurs in the Proxy during a remote request. This event is relayed through a corresponding <a href="Ext.data.Store.html">Ext.data.Store</a>.<a href="output/Ext.data.Store.html#Ext.data.Store-exception">exception</a>, so any Store instance may observe this event.
 <p>In addition to being fired through the DataProxy instance that raised the event, this event is also fired through the Ext.data.DataProxy <i>class</i> to allow for centralized processing of exception events from <b>all</b> DataProxies by attaching a listener to the Ext.data.DataProxy class itself.</p><p>This event can be fired for one of two reasons:</p><div class="mdetail-params"><ul><li>remote-request <b>failed</b> : <div class="sub-desc">The server did not return status === 200.</div></li><li>remote-request <b>succeeded</b> : <div class="sub-desc">The remote-request succeeded but the reader could not read the response. This means the server returned data, but the configured Reader threw an error while reading the response. In this case, this event will be raised and the caught error will be passed along into this event.</div></li></ul></div><br/><p>This event fires with two different contexts based upon the 2nd parameter <tt>type [remote|response]</tt>. The first four parameters are identical between the two contexts -- only the final two parameters differ.</p>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.DataProxy</code>
 The proxy that sent the request
 *       </li>

 *       <li>
 *           <code>type:String</code>
 The value of this parameter will be either <tt>'response'</tt> or <tt>'remote'</tt>.
 <div class="mdetail-params"><ul><li><b><tt>'response'</tt></b> : <div class="sub-desc"><p>An <b>invalid</b> response from the server was returned: either 404, 500 or the response meta-data does not match that defined in the DataReader (e.g.: root, idProperty, successProperty).</p></div></li><li><b><tt>'remote'</tt></b> : <div class="sub-desc"><p>A <b>valid</b> response was returned from the server having successProperty === false. This response might contain an error-message sent from the server. For example, the user may have failed authentication/authorization or a database validation error occurred.</p></div></li></ul></div>
 *       </li>

 *       <li>
 *           <code>action:String</code>
 Name of the action (see <a href="output/Ext.data.Api.html#Ext.data.Api-actions">Ext.data.Api.actions</a>.
 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The options for the action that were specified in the <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-request">request</a>.
 *       </li>

 *       <li>
 *           <code>response:Object</code>
 The value of this parameter depends on the value of the <code>type</code> parameter:
 <div class="mdetail-params"><ul><li><b><tt>'response'</tt></b> : <div class="sub-desc"><p>The raw browser response object (e.g.: XMLHttpRequest)</p></div></li><li><b><tt>'remote'</tt></b> : <div class="sub-desc"><p>The decoded response object sent from the server.</p></div></li></ul></div>
 *       </li>

 *       <li>
 *           <code>arg:&#42;</code>
 The type and value of this parameter depends on the value of the <code>type</code> parameter:
 <div class="mdetail-params"><ul><li><b><tt>'response'</tt></b> : Error<div class="sub-desc"><p>The JavaScript Error object caught if the configured Reader could not read the data. If the remote request returns success===false, this parameter will be null.</p></div></li><li><b><tt>'remote'</tt></b> : Record/Record[]<div class="sub-desc"><p>This parameter will only exist if the <tt>action</tt> was a <b>write</b> action (Ext.data.Api.actions.create|update|destroy).</p></div></li></ul></div>
 *       </li>

 * </ul>
 */
[Event(name="exception")]

/**
 * Fires before the load method's callback is called.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.DataProxy</code>
 The proxy for the request
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The request transaction object
 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The callback's <tt>options</tt> property as passed to the <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-request">request</a> function
 *       </li>

 * </ul>
 */
[Event(name="load")]

/**
 * This event is <b>deprecated</b>. The signature of the loadexception event varies depending on the proxy, use the catch-all <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-exception">exception</a> event instead. This event will fire in addition to the <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-exception">exception</a> event.

 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>misc:misc</code>
 See <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-exception">exception</a>.
 *       </li>

 * </ul>
 */
[Event(name="loadexception")]

/**
 * Fires before the request-callback is called
 <p>In addition to being fired through the DataProxy instance that raised the event, this event is also fired through the Ext.data.DataProxy <i>class</i> to allow for centralized processing of write events from <b>all</b> DataProxies by attaching a listener to the Ext.data.DataProxy class itself.</p>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.DataProxy</code>
 The proxy that sent the request
 *       </li>

 *       <li>
 *           <code>action:String</code>
 [Ext.data.Api.actions.create|upate|destroy]
 *       </li>

 *       <li>
 *           <code>data:Object</code>
 The data object extracted from the server-response
 *       </li>

 *       <li>
 *           <code>response:Object</code>
 The decoded response from server
 *       </li>

 *       <li>
 *           <code>rs:&#42;</code>
 The Record(s) from Store
 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The callback's <tt>options</tt> property as passed to the <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-request">request</a> function
 *       </li>

 * </ul>
 */
[Event(name="write")]


/**
 * Abstract base class for implementations which provide retrieval of unformatted data objects. This class is intended to be extended and should not be created directly. For existing implementations, see <a href="Ext.data.DirectProxy.html">Ext.data.DirectProxy</a>, <a href="Ext.data.HttpProxy.html">Ext.data.HttpProxy</a>, <a href="Ext.data.ScriptTagProxy.html">Ext.data.ScriptTagProxy</a> and <a href="Ext.data.MemoryProxy.html">Ext.data.MemoryProxy</a>.
 <p>DataProxy implementations are usually used in conjunction with an implementation of <a href="Ext.data.DataReader.html">Ext.data.DataReader</a> (of the appropriate type which knows how to parse the data object) to provide a block of <a href="Ext.data.Records.html">Ext.data.Records</a> to an <a href="Ext.data.Store.html">Ext.data.Store</a>.</p><p>The parameter to a DataProxy constructor may be an <a href="Ext.data.Connection.html">Ext.data.Connection</a> or can also be the config object to an <a href="Ext.data.Connection.html">Ext.data.Connection</a>.</p><p>Custom implementations must implement either the <code><b>doRequest</b></code> method (preferred) or the <code>load</code> method (deprecated). See <a href="Ext.data.HttpProxy.html">Ext.data.HttpProxy</a>.<a href="output/Ext.data.HttpProxy.html#Ext.data.HttpProxy-doRequest">doRequest</a> or <a href="Ext.data.HttpProxy.html">Ext.data.HttpProxy</a>.<a href="output/Ext.data.HttpProxy.html#Ext.data.HttpProxy-load">load</a> for additional details.</p><p style="font-weight: bold"><u>Example 1</u></p><pre><code>proxy: new Ext.data.ScriptTagProxy({
 <a href="output/Ext.data.Connection.html#Ext.data.Connection-url">url</a>: 'http://extjs.com/forum/topics-remote.php'
 }),
 </code></pre><p style="font-weight: bold"><u>Example 2</u></p><pre><code>proxy : new Ext.data.HttpProxy({
 <a href="output/Ext.data.Connection.html#Ext.data.Connection-method">method</a>: 'GET',
 <a href="output/Ext.data.HttpProxy.html#Ext.data.HttpProxy-prettyUrls">prettyUrls</a>: false,
 <a href="output/Ext.data.Connection.html#Ext.data.Connection-url">url</a>: 'local/default.php', // see options parameter for <a href="output/Ext.Ajax.html#Ext.Ajax-request">Ext.Ajax.request</a>
 <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-api">api</a>: {
 // all actions except the following will use above url
 create  : 'local/new.php',
 update  : 'local/update.php'
 }
 }),
 </code></pre><p>And <b>new in Ext version 3</b>, attach centralized event-listeners upon the DataProxy class itself! This is a great place to implement a <i>messaging system</i> to centralize your application's user-feedback and error-handling.</p><pre><code>// Listen to all "beforewrite" event fired by all proxies.
 Ext.data.DataProxy.on('beforewrite', function(proxy, action) {
 console.log('beforewrite: ', action);
 });

 // Listen to "write" event fired by all proxies
 Ext.data.DataProxy.on('write', function(proxy, action, data, res, rs) {
 console.info('write: ', action);
 });

 // Listen to "exception" event fired by all proxies
 Ext.data.DataProxy.on('exception', function(proxy, type, action, exception) {
 console.error(type + action + ' exception);
 });
 </code></pre><b>Note:</b> These three events are all fired with the signature of the corresponding <i>DataProxy instance</i> event <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-beforewrite">beforewrite</a>, <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-write">write</a> and <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-exception">exception</a>.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.dataproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataProxy.html#cls-Ext.data.DataProxy Ext JS source
 */
public class DataProxy extends Observable {

  /**
   *
   *
   * @see ext.config.dataproxy
   */
  public function DataProxy(config:dataproxy = null) {
    super();
  }

  /**
   Specific urls to call on CRUD action methods "read", "create", "update" and "destroy". Defaults to:<pre><code>api: {
   read    : undefined,
   create  : undefined,
   update  : undefined,
   destroy : undefined
   }
   </code></pre><p>The url is built based upon the action being executed <tt>[load|create|save|destroy]</tt> using the commensurate <tt><a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-api">api</a></tt> property, or if undefined default to the configured <a href="Ext.data.Store.html">Ext.data.Store</a>.<a href="output/Ext.data.Store.html#Ext.data.Store-url">url</a>.</p><br/><p>For example:</p><pre><code>api: {
   load :    '/controller/load',
   create :  '/controller/new',  // Server MUST return idProperty of new record
   save :    '/controller/update',
   destroy : '/controller/destroy_action'
   }

   // Alternatively, one can use the object-form to specify each API-action
   api: {
   load: {url: 'read.php', method: 'GET'},
   create: 'create.php',
   destroy: 'destroy.php',
   save: 'update.php'
   }
   </code></pre><p>If the specific URL for a given CRUD action is undefined, the CRUD action request will be directed to the configured <tt><a href="output/Ext.data.Connection.html#Ext.data.Connection-url">url</a></tt>.</p><br/><p><b>Note</b>: To modify the URL for an action dynamically the appropriate API property should be modified before the action is requested using the corresponding before action event. For example to modify the URL associated with the load action:</p><pre><code>// modify the url for the action
   myStore.on({
   beforeload: {
   fn: function (store, options) {
   // use <tt><a href="output/Ext.data.HttpProxy.html#Ext.data.HttpProxy-setUrl">setUrl</a></tt> to change the URL for &#42;just&#42; this request.
   store.proxy.setUrl('changed1.php');

   // set optional second parameter to true to make this URL change
   // permanent, applying this URL for all subsequent requests.
   store.proxy.setUrl('changed1.php', true);

   // Altering the proxy API should be done using the public
   // method <tt><a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-setApi">setApi</a></tt>.
   store.proxy.setApi('read', 'changed2.php');

   // Or set the entire API with a config-object.
   // When using the config-object option, you must redefine the <b>entire</b>
   // API -- not just a specific action of it.
   store.proxy.setApi({
   read    : 'changed_read.php',
   create  : 'changed_create.php',
   update  : 'changed_update.php',
   destroy : 'changed_destroy.php'
   });
   }
   }
   });
   </code></pre><br/><br/>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get api():Object;

  /**
   Defaults to <tt>false</tt>. Set to <tt>true</tt> to operate in a RESTful manner.
   <br/><p>Note: this parameter will automatically be set to <tt>true</tt> if the <a href="Ext.data.Store.html">Ext.data.Store</a> it is plugged into is set to <code>restful: true</code>. If the Store is RESTful, there is no need to set this option on the proxy.</p><br/><p>RESTful implementations enable the serverside framework to automatically route actions sent to one url based upon the HTTP method, for example:</p><pre><code>store: new Ext.data.Store({
   restful: true,
   proxy: new Ext.data.HttpProxy({url:'/users'}); // all requests sent to /users
   ...
   )}
   </code></pre>If there is no <code><a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-api">api</a></code> specified in the configuration of the proxy, all requests will be marshalled to a single RESTful url (/users) so the serverside framework can inspect the HTTP Method and act accordingly: <pre><u>Method</u>   <u>url</u>        <u>action</u>
   POST     /users     create
   GET      /users     read
   PUT      /users/23  update
   DESTROY  /users/23  delete
   </pre><br/><br/> <p>If set to <tt>true</tt>, a <a href="output/Ext.data.Record.html#Ext.data.Record-phantom">non-phantom</a> record's <a href="output/Ext.data.Record.html#Ext.data.Record-id">id</a> will be appended to the url. Some MVC (e.g., Ruby on Rails, Merb and Django) support segment based urls where the segments in the URL follow the Model-View-Controller approach:</p><pre><code>someSite.com/controller/action/id
   </code></pre>Where the segments in the url are typically:<div class="mdetail-params"><ul><li>The first segment : represents the controller class that should be invoked.</li><li>The second segment : represents the class function, or method, that should be called.</li><li>The third segment : represents the ID (a variable typically passed to the method).</li></ul></div><br/><br/> <br/><p>Refer to <code><a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-api">Ext.data.DataProxy.api</a></code> for additional information.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get restful():Boolean;

  /**
   * buildUrl Sets the appropriate url based upon the action being executed. If restful is true, and only a single record is being acted upon, url will be built Rails-style, as in "/controller/action/32". restful will aply iff the supplied record is an instance of Ext.data.Record rather than an Array of them.
   *
   * @param action The api action being executed [read|create|update|destroy]
   * @param record The record or Array of Records being acted upon.
   * @return url
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataProxy.html#method-Ext.data.DataProxy-buildUrl Ext JS source
   */
  public native function buildUrl(action:String, record:*):String;

  /**
   * Destroys the proxy by purging any event listeners and cancelling any active requests.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataProxy.html#method-Ext.data.DataProxy-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   * Returns true if the specified action is defined as a unique action in the api-config. request. If all API-actions are routed to unique urls, the xaction parameter is unecessary. However, if no api is defined and all Proxy actions are routed to DataProxy#url, the server-side will require the xaction parameter to perform a switch to the corresponding code for CRUD action.
   *
   * @param action [Ext.data.Api.CREATE|READ|UPDATE|DESTROY]
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataProxy.html#method-Ext.data.DataProxy-isApiAction Ext JS source
   */
  public native function isApiAction(action:String):Boolean;

  /**
   * <b>Deprecated</b> load method using old method signature. See {&#64;doRequest} for preferred method.
   *
   * @param params
   * @param reader
   * @param callback
   * @param scope
   * @param arg
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataProxy.html#method-Ext.data.DataProxy-load Ext JS source
   */
  public native function load(params:Object, reader:Object, callback:Object, scope:Object, arg:Object):void;

  /**
   * All proxy actions are executed through this method. Automatically fires the "before" + action event
   *
   * @param action Name of the action
   * @param rs Will be null when action is 'load'
   * @param params
   * @param reader
   * @param callback
   * @param scope The scope (<code>this</code> reference) in which the callback function is executed. Defaults to the Proxy object.
   * @param options Any options specified for the action (e.g. see <a href="output/Ext.data.Store.html#Ext.data.Store-load">Ext.data.Store.load</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataProxy.html#method-Ext.data.DataProxy-request Ext JS source
   */
  public native function request(action:String, rs:*, params:Object, reader:DataReader, callback:Function, scope:Object, options:Object):void;

  /**
   * Redefines the Proxy's API or a single action of an API. Can be called with two method signatures.
   <p>If called with an object as the only parameter, the object should redefine the <b>entire</b> API, e.g.:</p><pre><code>proxy.setApi({
   read    : '/users/read',
   create  : '/users/create',
   update  : '/users/update',
   destroy : '/users/destroy'
   });
   </code></pre><p>If called with two parameters, the first parameter should be a string specifying the API action to redefine and the second parameter should be the URL (or function if using DirectProxy) to call for that action, e.g.:</p><pre><code>proxy.setApi(Ext.data.Api.actions.read, '/users/new_load_url');
   </code></pre>
   *
   * @param api An API specification object, or the name of an action.
   * @param url The URL (or function if using DirectProxy) to call for the action.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataProxy.html#method-Ext.data.DataProxy-setApi Ext JS source
   */
  public native function setApi(api:*, url:*):void;

}
}
    