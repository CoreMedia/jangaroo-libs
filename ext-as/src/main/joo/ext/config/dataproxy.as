package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class DataProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.DataProxy
 */
[ExtConfig(target="ext.data.DataProxy")]
public class dataproxy extends observable {

  public function dataproxy(config:Object = null) {

    super(config);
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
   */
  public native function get api():Object;

  /**
   * @private
   */
  public native function set api(value:Object):void;

  /**
   Abstract method that should be implemented in all subclasses. <b>Note:</b> Should only be used by custom-proxy developers. (e.g.: <a href="output/Ext.data.HttpProxy.html#Ext.data.HttpProxy-doRequest">HttpProxy.doRequest</a>, <a href="output/Ext.data.DirectProxy.html#Ext.data.DirectProxy-doRequest">DirectProxy.doRequest</a>).
   */
  public native function get doRequest():Function;

  /**
   * @private
   */
  public native function set doRequest(value:Function):void;

  /**
   Abstract method that should be implemented in all subclasses. <b>Note:</b> Should only be used by custom-proxy developers. Callback for read <a href="output/Ext.data.Api.html#Ext.data.Api-actions">action</a>.
   */
  public native function get onRead():Function;

  /**
   * @private
   */
  public native function set onRead(value:Function):void;

  /**
   Abstract method that should be implemented in all subclasses. <b>Note:</b> Should only be used by custom-proxy developers. Callback for <i>create, update and destroy</i> <a href="output/Ext.data.Api.html#Ext.data.Api-actions">actions</a>.
   */
  public native function get onWrite():Function;

  /**
   * @private
   */
  public native function set onWrite(value:Function):void;

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
   */
  public native function get restful():Boolean;

  /**
   * @private
   */
  public native function set restful(value:Boolean):void;


}
}
    