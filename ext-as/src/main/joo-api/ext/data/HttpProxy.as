package ext.data {

/**
 * <p>An implementation of <b class='link'>ext.data.DataProxy</b> that processes data requests within the same
 * domain of the originating page.</p>
 * <p><b>Note</b>: this class cannot be used to retrieve data from a domain other
 * than the domain from which the running page was served. For cross-domain requests, use a
 * <b class='link' title='ext.data.ScriptTagProxy'>ScriptTagProxy</b>.</p>
 * <p>Be aware that to enable the browser to parse an XML document, the server must set
 * the Content-Type header in the HTTP response to "<code>text/xml</code>".</p>
*/
public class HttpProxy extends DataProxy {
/**
 * @constructor
 * @param conn
 * An <b class='link'>ext.data.Connection</b> object, or options parameter to <b class='link'>ext.Ajax#request</b>.
 * <p>Note that if this HttpProxy is being used by a <b class='link' title='ext.data.Store'>Store</b>, then the
 * Store's call to <b class='link' title='#load'>load</b> will override any specified <code>callback</code> and <code>params</code>
 * options. In this case, use the Store's <b class='link' title='ext.data.Store#events'>events</b> to modify parameters,
 * or react to loading events. The Store's <b class='link' title='ext.data.Store#baseParams'>baseParams</b> may also be
 * used to pass parameters known at instantiation time.</p>
 * <p>If an options parameter is passed, the singleton <b class='link'>ext.Ajax</b> object will be used to make
 * the request.</p>
 */
public function HttpProxy(conn : Object) {
  super();
  conn++;
}
    /**
     * The Connection object (Or options parameter to <b class='link'>ext.Ajax#request</b>) which this HttpProxy
     * uses to make requests to the server. Properties of this object may be changed dynamically to
     * change the way data is requested.
     * @property
     */
    /**
     * @cfg {Boolean} restful
     * <p>If set to <code>true</code>, a <b class='link' title='ext.data.Record#phantom'>non-phantom</b> record's
     * <b class='link' title='ext.data.Record#id'>id</b> will be appended to the url (defaults to <code>false</code>).</p><br>
     * <p>The url is built based upon the action being executed <code>[load|create|save|destroy]</code>
     * using the commensurate <code><b class='link' title='#api'>api</b></code> property, or if undefined default to the
     * configured <b class='link'>ext.data.Store</b>.<b class='link' title='ext.data.Store#url'>url</b>.</p><br>
     * <p>Some MVC (e.g., Ruby on Rails, Merb and Django) support this style of segment based urls
     * where the segments in the URL follow the Model-View-Controller approach.</p><pre><code>
     * someSite.com/controller/action/id
     * </code></pre>
     * Where the segments in the url are typically:<div class="mdetail-params"><ul>
     * <li>The first segment : represents the controller class that should be invoked.</li>
     * <li>The second segment : represents the class function, or method, that should be called.</li>
     * <li>The third segment : represents the ID (a variable typically passed to the method).</li>
     * </ul></div></p>
     * <p>For example:</p>
     * <pre><code>
api&#58; {
    load :    '/controller/load',
    create :  '/controller/new',  // Server MUST return idProperty of new record
    save :    '/controller/update',
    destroy : '/controller/destroy_action'
}

&#47;/ Alternatively, one can use the object-form to specify each API-action
api&#58; {
    load&#58; {url: 'read.php', method: 'GET'},
    create&#58; 'create.php',
    destroy&#58; 'destroy.php',
    save&#58; 'update.php'
}
     */
    /**
     * Return the <b class='link'>ext.data.Connection</b> object being used by this Proxy.
     * @return The Connection object. This object may be used to subscribe to events on
     * a finer-grained basis than the DataProxy events.
     */
    public native function getConnection() : Connection;
    /**
     * Used for overriding the url used for a single request.  Designed to be called during a beforeaction event.  Calling setUrl
     * will override any urls set via the api configuration parameter.  Set the optional parameter makePermanent to set the url for
     * all subsequent requests.  If not set to makePermanent, the next request will use the same url or api configuration defined
     * in the initial proxy configuration.
     * @param url
     * @param makePermanent [false]
     *
     * (e.g.: beforeload, beforesave, etc).
     */
    public native function setUrl(url : String, makePermanent : Boolean = undefined) : void;
    /**
     * HttpProxy implementation of DataProxy#doRequest
     * @param action The crud action type (create, read, update, destroy)
     * @param rs If action is load, rs will be null
     * @param params An object containing properties which are to be used as HTTP parameters
     * for the request to the remote server.
     * @param reader The Reader object which converts the data
     * object into a block of ext.data.Records.
     * @param callback
     * <div class="sub-desc"><p>A function to be called after the request.
     * The <code>callback</code> is passed the following arguments:<ul>
     * <li><code>r</code> : ext.data.Record[] The block of ext.data.Records.</li>
     * <li><code>options</code>: Options object from the action request</li>
     * <li><code>success</code>: Boolean success indicator</li></ul></p></div>
     * @param scope The scope in which to call the callback
     * @param arg An optional argument which is passed to the callback as its second parameter.
     */
    override public native function doRequest(action : String, rs : *, params : Object, reader : DataReader, callback : Function, scope : Object, arg : Object) : void;
    /**
     * Returns a callback function for a request.  Note a special case is made for the
     * read action vs all the others.
     * @param action [create|update|delete|load]
     * @param rs The Store-recordset being acted upon
     * @private
     */
    public native function createCallback(action : String, rs : Array/*ext.data.Record*/) : void;
    /**
     * Callback for read action
     * @param action Action name as per <b class='link'>ext.data.Api.actions#read</b>.
     * @param o The request transaction object
     * @param res The server response
     * @private
     */
    public native function onRead(action : String, o : Object, res : Object) : void;
    /**
     * Callback for write actions
     * @param action [ext.data.Api.actions.create|read|update|destroy]
     * @param trans The request transaction object
     * @param res The server response
     * @private
     */
    public native function onWrite(action : String, trans : Object, res : Object, rs) : void;
    override public native function destroy() : void;
}}
