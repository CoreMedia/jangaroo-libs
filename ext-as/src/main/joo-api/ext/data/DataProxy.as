package ext.data {

import ext.util.Observable;

/**
 * <p>Abstract base class for implementations which provide retrieval of unformatted data objects.
 * This class is intended to be extended and should not be created directly. For existing implementations,
 * see <b class='link'>ext.data.DirectProxy</b>, <b class='link'>ext.data.HttpProxy</b>, <b class='link'>ext.data.ScriptTagProxy</b> and
 * <b class='link'>ext.data.MemoryProxy</b>.</p>
 * <p>DataProxy implementations are usually used in conjunction with an implementation of <b class='link'>ext.data.DataReader</b>
 * (of the appropriate type which knows how to parse the data object) to provide a block of
 * <b class='link'>ext.data.Records</b> to an <b class='link'>ext.data.Store</b>.</p>
 * <p>The parameter to a DataProxy constructor may be an <b class='link'>ext.data.Connection</b> or can also be the
 * config object to an <b class='link'>ext.data.Connection</b>.</p>
 * <p>Custom implementations must implement either the <code><b>doRequest</b></code> method (preferred) or the
 * <code>load</code> method (deprecated). See
 * <b class='link'>ext.data.HttpProxy</b>.<b class='link' title='ext.data.HttpProxy#doRequest'>doRequest</b> or
 * <b class='link'>ext.data.HttpProxy</b>.<b class='link' title='ext.data.HttpProxy#load'>load</b> for additional details.</p>
 * <p><b><u>Example 1</u></b></p>
 * <pre><code>
proxy: new ext.data.ScriptTagProxy({
    <b class='link' title='ext.data.Connection#url'>url</b>: 'http://extjs.com/forum/topics-remote.php'
}),
 * </code></pre>
 * <p><b><u>Example 2</u></b></p>
 * <pre><code>
proxy : new ext.data.HttpProxy({
    <b class='link' title='ext.data.Connection#method'>method</b>: 'GET',
    <b class='link' title='ext.data.HttpProxy#prettyUrls'>prettyUrls</b>: false,
    <b class='link' title='ext.data.Connection#url'>url</b>: 'local/default.php', // see options parameter for <b class='link'>ext.Ajax#request</b>
    <b class='link'>#api</b>: {
        // all actions except the following will use above url
        create  : 'local/new.php',
        update  : 'local/update.php'
    }
}),
 * </code></pre>
 */
    /**
*/
public class DataProxy extends Observable {
/**
     * @cfg {Object} api
     * Specific urls to call on CRUD action methods "read", "create", "update" and "destroy".
     * Defaults to:<pre><code>
api: {
    read    : undefined,
    create  : undefined,
    update  : undefined,
    destroy : undefined
}
</code></pre>
     * <p>If the specific URL for a given CRUD action is undefined, the CRUD action request
     * will be directed to the configured <tt><b class='link' title='ext.data.Connection#url'>url</b></tt>.</p>
     * <br><p><b>Note</b>: To modify the URL for an action dynamically the appropriate API
     * property should be modified before the action is requested using the corresponding before
     * action event.  For example to modify the URL associated with the load action:
     * <pre><code>
// modify the url for the action
myStore.on({
    beforeload: {
        fn: function (store, options) {
            // use <tt><b class='link' title='ext.data.HttpProxy#setUrl'>setUrl</b></tt> to change the URL for *just* this request.
            store.proxy.setUrl('changed1.php');

            // set optional second parameter to true to make this URL change
            // permanent, applying this URL for all subsequent requests.
            store.proxy.setUrl('changed1.php', true);

            // manually set the <b>private</b> connection URL.
            // <b>Warning:</b>  Accessing the private URL property should be avoided.
            // Use the public method <tt><b class='link' title='ext.data.HttpProxy#setUrl'>setUrl</b></tt> instead, shown above.
            // It should be noted that changing the URL like this will affect
            // the URL for just this request.  Subsequent requests will use the
            // API or URL defined in your initial proxy configuration.
            store.proxy.conn.url = 'changed1.php';

            // proxy URL will be superseded by API (only if proxy created to use ajax):
            // It should be noted that proxy API changes are permanent and will
            // be used for all subsequent requests.
            store.proxy.api.load = 'changed2.php';

            // However, altering the proxy API should be done using the public
            // method <tt><b class='link' title='ext.data.DataProxy#setApi'>setApi</b></tt> instead.
            store.proxy.setApi('load', 'changed2.php');

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
     * </code></pre>
     * </p>
     */
    /**
     * @cfg {Boolean} restful
     * <p>Defaults to <tt>false</tt>.  Set to <tt>true</tt> to operate in a RESTful manner.</p>
     * <br><p> Note: this parameter will automatically be set to <tt>true</tt> if the
     * <b class='link'>ext.data.Store</b> it is plugged into is set to <code>restful: true</code>. If the
     * Store is RESTful, there is no need to set this option on the proxy.</p>
     * <br><p>RESTful implementations enable the serverside framework to automatically route
     * actions sent to one url based upon the HTTP method, for example:
     * <pre><code>
store: new ext.data.Store({
    restful: true,
    proxy: new ext.data.HttpProxy({url:'/users'}); // all requests sent to /users
    ...
)}
     * </code></pre>
     * There is no <code><b class='link'>#api</b></code> specified in the configuration of the proxy,
     * all requests will be marshalled to a single RESTful url (/users) so the serverside
     * framework can inspect the HTTP Method and act accordingly:
     * <pre>
<u>Method</u>   <u>url</u>        <u>action</u>
POST     /users     create
GET      /users     read
PUT      /users/23  update
DESTROY  /users/23  delete
     * </pre></p>
     */
    public var restful : Boolean;
    /**
     * <p>Redefines the Proxy's API or a single action of an API. Can be called with two method signatures.</p>
     * <p>If called with an object as the only parameter, the object should redefine the <b>entire</b> API, e.g.:</p><pre><code>
proxy.setApi({
    read    : '/users/read',
    create  : '/users/create',
    update  : '/users/update',
    destroy : '/users/destroy'
});
</code></pre>
     * <p>If called with two parameters, the first parameter should be a string specifying the API action to
     * redefine and the second parameter should be the URL (or function if using DirectProxy) to call for that action, e.g.:</p><pre><code>
proxy.setApi(ext.data.Api.actions.read, '/users/new_load_url');
</code></pre>
     * @param api An API specification object, or the name of an action.
     * @param url The URL (or function if using DirectProxy) to call for the action.
     */
    public native function setApi(api : *, url : *) : void;
    /**
     * Returns true if the specified action is defined as a unique action in the api-config.
     * request.  If all API-actions are routed to unique urls, the xaction parameter is unecessary.  However, if no api is defined
     * and all Proxy actions are routed to DataProxy#url, the server-side will require the xaction parameter to perform a switch to
     * the corresponding code for CRUD action.
     * @param action
     * @return 
     */
    public native function isApiAction(action : *) : Boolean;
    /**
     * All proxy actions are executed through this method.  Automatically fires the "before" + action event
     * @param action Name of the action
     * @param rs Will be null when action is 'load'
     * @param params
     * @param reader
     * @param callback
     * @param scope Scope with which to call the callback (defaults to the Proxy object)
     * @param options Any options specified for the action (e.g. see <b class='link'>ext.data.Store#load</b>.
     */
    public native function request(action : String, rs : *, params : Object, reader : DataReader, callback : Function, scope : Object, options : Object) : void;
    /**
     * @cfg {Function} doRequest Abstract method that should be implemented in all subclasses
     * (e.g.: <b class='link' title='ext.data.HttpProxy#doRequest'>HttpProxy.doRequest</b>,
     * <b class='link' title='ext.data.DirectProxy#doRequest'>DirectProxy.doRequest</b>).
     */
     public native function doRequest(action : String, rs : *, params : Object, reader : DataReader, callback : Function, scope : Object, arg : Object) : void;
    /**
     * buildUrl
     * Sets the appropriate url based upon the action being executed.  If restful is true, and only a single record is being acted upon,
     * url will be built Rails-style, as in "/controller/action/32".  restful will aply iff the supplied record is an
     * instance of ext.data.Record rather than an Array of them.
     * @param action The api action being executed [read|create|update|destroy]
     * @param record The record or Array of Records being acted upon.
     * @return url
     */
    protected native function buildUrl(action : String, record : *) : String;
    /**
     * Destroys the proxy by purging any event listeners and cancelling any active requests.
     */
    public native function destroy() : void;
/**
*/
}}
