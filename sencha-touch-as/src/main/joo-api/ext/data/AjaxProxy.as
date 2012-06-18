package ext.data {


/**
 * Fires when the server returns an exception
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Proxy</code>

 *       </li>

 *       <li>
 *           <code>response:Object</code>
 The response from the AJAX request
 *       </li>

 *       <li>
 *           <code>operation:ext.data.Operation</code>
 The operation that triggered request
 *       </li>

 * </ul>
 */
[Event(name="exception")]


/**
 * AjaxProxy is one of the most widely-used ways of getting data into your application. It uses AJAX requests to load data from the server, usually to be placed into a <a href="Ext.data.Store.html">Store</a>. Let's take a look at a typical setup. Here we're going to set up a Store that has an AjaxProxy. To prepare, we'll also set up a <a href="Ext.data.Model.html">Model</a>:
 <pre><code>Ext.regModel('User', {
 fields: ['id', 'name', 'email']
 });

 //The Store contains the AjaxProxy as an inline configuration
 var store = new Ext.data.Store({
 model: 'User',
 proxy: {
 type: 'ajax',
 url : 'users.json'
 }
 });

 store.load();
 </code></pre><p>Our example is going to load user data into a Store, so we start off by defining a <a href="Ext.data.Model.html">Model</a> with the fields that we expect the server to return. Next we set up the Store itself, along with a <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-proxy">proxy</a> configuration. This configuration was automatically turned into an Ext.data.AjaxProxy instance, with the url we specified being passed into AjaxProxy's constructor. It's as if we'd done this:</p><pre><code>new Ext.data.AjaxProxy({
 url: 'users.json',
 model: 'User',
 reader: 'json'
 });
 </code></pre><p>A couple of extra configurations appeared here - <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-model">model</a> and <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-reader">reader</a>. These are set by default when we create the proxy via the Store - the Store already knows about the Model, and Proxy's default <a href="Ext.data.Reader.html">Reader</a> is <a href="Ext.data.JsonReader.html">JsonReader</a>.</p><p>Now when we call store.load(), the AjaxProxy springs into action, making a request to the url we configured ('users.json' in this case). As we're performing a read, it sends a GET request to that url (see <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-actionMethods">actionMethods</a> to customize this - by default any kind of read will be sent as a GET request and any kind of write will be sent as a POST request).</p><p><u>Limitations</u></p><p>AjaxProxy cannot be used to retrieve data from other domains. If your application is running on http://domainA.com it cannot load data from http://domainB.com because browsers have a built-in security policy that prohibits domains talking to each other via AJAX.</p><p>If you need to read data from another domain and can't set up a proxy server (some software that runs on your own domain's web server and transparently forwards requests to http://domainB.com, making it look like they actually came from http://domainA.com), you can use <a href="Ext.data.ScriptTagProxy.html">Ext.data.ScriptTagProxy</a> and a technique known as JSON-P (JSON with Padding), which can help you get around the problem so long as the server on http://domainB.com is set up to support JSON-P responses. See <a href="Ext.data.ScriptTagProxy.html">ScriptTagProxy</a>'s introduction docs for more details.</p><p><u>Readers and Writers</u></p><p>AjaxProxy can be configured to use any type of <a href="Ext.data.Reader.html">Reader</a> to decode the server's response. If no Reader is supplied, AjaxProxy will default to using a <a href="Ext.data.JsonReader.html">JsonReader</a>. Reader configuration can be passed in as a simple object, which the Proxy automatically turns into a <a href="Ext.data.Reader.html">Reader</a> instance:</p><pre><code>var proxy = new Ext.data.AjaxProxy({
 model: 'User',
 reader: {
 type: 'xml',
 root: 'users'
 }
 });

 proxy.getReader(); //returns an <a href="Ext.data.XmlReader.html">XmlReader</a> instance based on the config we supplied
 </code></pre><p><u>Url generation</u></p><p>AjaxProxy automatically inserts any sorting, filtering, paging and grouping options into the url it generates for each request. These are controlled with the following configuration options:</p><ul style="list-style-type: disc; padding-left: 20px;"><li><a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-pageParam">pageParam</a> - controls how the page number is sent to the server (see also <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-startParam">startParam</a> and <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-limitParam">limitParam</a>)</li><li><a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-sortParam">sortParam</a> - controls how sort information is sent to the server</li><li><a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-groupParam">groupParam</a> - controls how grouping information is sent to the server</li><li><a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-filterParam">filterParam</a> - controls how filter information is sent to the server</li></ul><p>Each request sent by AjaxProxy is described by an <a href="Ext.data.Operation.html">Operation</a>. To see how we can customize the generated urls, let's say we're loading the Proxy with the following Operation:</p><pre><code>var operation = new Ext.data.Operation({
 action: 'read',
 page  : 2
 });
 </code></pre><p>Now we'll issue the request for this Operation by calling <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-read">read</a>:</p><pre><code>var proxy = new Ext.data.AjaxProxy({
 url: '/users'
 });

 proxy.read(operation); //GET /users?page=2
 </code></pre><p>Easy enough - the Proxy just copied the page property from the Operation. We can customize how this page data is sent to the server:</p><pre><code>var proxy = new Ext.data.AjaxProxy({
 url: '/users',
 pagePage: 'pageNumber'
 });

 proxy.read(operation); //GET /users?pageNumber=2
 </code></pre><p>Alternatively, our Operation could have been configured to send start and limit parameters instead of page:</p><pre><code>var operation = new Ext.data.Operation({
 action: 'read',
 start : 50,
 limit : 25
 });

 var proxy = new Ext.data.AjaxProxy({
 url: '/users'
 });

 proxy.read(operation); //GET /users?start=50&amp;limit=25
 </code></pre><p>Again we can customize this url:</p><pre><code>var proxy = new Ext.data.AjaxProxy({
 url: '/users',
 startParam: 'startIndex',
 limitParam: 'limitIndex'
 });

 proxy.read(operation); //GET /users?startIndex=50&amp;limitIndex=25
 </code></pre><p>AjaxProxy will also send sort and filter information to the server. Let's take a look at how this looks with a more expressive Operation object:</p><pre><code>var operation = new Ext.data.Operation({
 action: 'read',
 sorters: [
 new Ext.util.Sorter({
 property : 'name',
 direction: 'ASC'
 }),
 new Ext.util.Sorter({
 property : 'age',
 direction: 'DESC'
 })
 ],
 filters: [
 new Ext.util.Filter({
 property: 'eyeColor',
 value   : 'brown'
 })
 ]
 });
 </code></pre><p>This is the type of object that is generated internally when loading a <a href="Ext.data.Store.html">Store</a> with sorters and filters defined. By default the AjaxProxy will JSON encode the sorters and filters, resulting in something like this (note that the url is escaped before sending the request, but is left unescaped here for clarity):</p><pre><code>var proxy = new Ext.data.AjaxProxy({
 url: '/users'
 });

 proxy.read(operation); //GET /users?sort=[{"property":"name","direction":"ASC"},{"property":"age","direction":"DESC"}]&amp;filter=[{"property":"eyeColor","value":"brown"}]
 </code></pre><p>We can again customize how this is created by supplying a few configuration options. Let's say our server is set up to receive sorting information is a format like "sortBy=name#ASC,age#DESC". We can configure AjaxProxy to provide that format like this:</p><pre><code>var proxy = new Ext.data.AjaxProxy({
 url: '/users',
 sortParam: 'sortBy',
 filterParam: 'filterBy',

 //our custom implementation of sorter encoding - turns our sorters into "name#ASC,age#DESC"
 encodeSorters: function(sorters) {
 var length   = sorters.length,
 sortStrs = [],
 sorter, i;

 for (i = 0; i &lt; length; i++) {
 sorter = sorters[i];

 sortStrs[i] = sorter.property + '#' + sorter.direction
 }

 return sortStrs.join(",");
 }
 });

 proxy.read(operation); //GET /users?sortBy=name#ASC,age#DESC&amp;filterBy=[{"property":"eyeColor","value":"brown"}]
 </code></pre><p>We can also provide a custom <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-encodeFilters">encodeFilters</a> function to encode our filters.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.ajaxproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AjaxProxy.html#cls-Ext.data.AjaxProxy Ext JS source
 */
[Native]
public class AjaxProxy extends ServerProxy {

  /**
   * Note that if this HttpProxy is being used by a <a href="Ext.data.Store.html">Store</a>, then the Store's call to <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-load">load</a> will override any specified <tt>callback</tt> and <tt>params</tt> options. In this case, use the Store's <a href="output/Ext.data.Store.html#Ext.data.Store-events">events</a> to modify parameters, or react to loading events. The Store's <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">baseParams</a> may also be used to pass parameters known at instantiation time.
   <p>If an options parameter is passed, the singleton <a href="Ext.Ajax.html">Ext.Ajax</a> object will be used to make the request.</p>
   *
   * @see ext.config.ajaxproxy
   */
  public function AjaxProxy() {
    super();
  }

  /**
   Mapping of action name to HTTP request method. In the basic AjaxProxy these are set to 'GET' for 'read' actions and 'POST' for 'create', 'update' and 'destroy' actions. The <a href="Ext.data.RestProxy.html">Ext.data.RestProxy</a> maps these to the correct RESTful methods.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AjaxProxy.html#prop-Ext.data.AjaxProxy-actionMethods Ext JS source
   */
  public native function get actionMethods():Object;

  /**
   * @private
   */
  public native function set actionMethods(value:Object):void;

  /**
   Any headers to add to the Ajax request. Defaults to <tt>undefined</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get headers():Object;

  /**
   *
   *
   * @param request The Request object
   * @param operation The Operation being executed
   * @param callback The callback function to be called when the request completes. This is usually the callback passed to doRequest
   * @param scope The scope in which to execute the callback function
   * @return The callback function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AjaxProxy.html#method-Ext.data.AjaxProxy-createRequestCallback Ext JS source
   */
  public native function createRequestCallback(request:Request, operation:Operation, callback:Function, scope:Object):Function;

  /**
   * Returns the HTTP method name for a given request. By default this returns based on a lookup on <a href="output/Ext.data.AjaxProxy.html#Ext.data.AjaxProxy-actionMethods">actionMethods</a>.
   *
   * @param request The request object
   * @return The HTTP method to use (should be one of 'GET', 'POST', 'PUT' or 'DELETE')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AjaxProxy.html#method-Ext.data.AjaxProxy-getMethod Ext JS source
   */
  public native function getMethod(request:Request):String;

}
}
    