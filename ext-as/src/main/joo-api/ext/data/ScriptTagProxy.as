package ext.data {
/**
 * An implementation of ext.data.DataProxy that reads a data object from a URL which may be in a domain
 * other than the originating domain of the running page.<br>
 * <p>
 * <b>Note that if you are retrieving data from a page that is in a domain that is NOT the same as the originating domain
 * of the running page, you must use this class, rather than HttpProxy.</b><br>
 * <p>
 * The content passed back from a server resource requested by a ScriptTagProxy <b>must</b> be executable JavaScript
 * source code because it is used as the source inside a &lt;script> tag.<br>
 * <p>
 * In order for the browser to process the returned data, the server must wrap the data object
 * with a call to a callback function, the name of which is passed as a parameter by the ScriptTagProxy.
 * Below is a Java example for a servlet which returns data for either a ScriptTagProxy, or an HttpProxy
 * depending on whether the callback name was passed:
 * <p>
 * <pre><code>
boolean scriptTag = false;
String cb = request.getParameter("callback");
if (cb != null) {
    scriptTag = true;
    response.setContentType("text/javascript");
} else {
    response.setContentType("application/x-json");
}
Writer out = response.getWriter();
if (scriptTag) {
    out.write(cb + "(");
}
out.print(dataBlock.toJsonString());
if (scriptTag) {
    out.write(");");
}
</code></pre>
 *
*/
public class ScriptTagProxy extends DataProxy {
/**
 * @constructor
 * @param config A configuration object.
 */
public native function ScriptTagProxy(config : Object);
public static var TRANS_ID = 1000;
    /**
     * @cfg {String} url The URL from which to request the data object.
     */
    /**
     * @cfg {Number} timeout (optional) The number of milliseconds to wait for a response. Defaults to 30 seconds.
     */
    public var timeout  : Number;
    /**
     * @cfg {String} callbackParam (Optional) The name of the parameter to pass to the server which tells
     * the server the name of the callback function set up by the load call to process the returned data object.
     * Defaults to "callback".<p>The server-side processing must read this parameter value, and generate
     * javascript output which calls this named function passing the data object as its only parameter.
     */
    public var callbackParam  : String;
    /**
     *  @cfg {Boolean} nocache (optional) Defaults to true. Disable caching by adding a unique parameter
     * name to the request.
     */
    public var nocache  : Boolean;
    /**
     * HttpProxy implementation of DataProxy#doRequest
     * @param action
     * @param rs If action is <code>read</code>, rs will be null
     * @param params An object containing properties which are to be used as HTTP parameters
     * for the request to the remote server.
     * @param reader The Reader object which converts the data
     * object into a block of ext.data.Records.
     * @param callback The function into which to pass the block of ext.data.Records.
     * The function must be passed <ul>
     * <li>The Record block object</li>
     * <li>The "arg" argument from the load function</li>
     * <li>A boolean success indicator</li>
     * </ul>
     * @param scope The scope in which to call the callback
     * @param arg An optional argument which is passed to the callback as its second parameter.
     */
    override public native function doRequest(action : String, rs : *, params : Object, reader : DataReader, callback : Function, scope : Object, arg : Object) : void;
    public native function createCallback(action, rs, trans) : void;
    /**
     * Callback for read actions
     * @param action [ext.data.Api.actions.create|read|update|destroy]
     * @param trans The request transaction object
     * @param res The server response
     * @private
     */
    public native function onRead(action : String, trans : Object, res : Object) : void;
    /**
     * Callback for write actions
     * @param action [ext.data.Api.actions.create|read|update|destroy]
     * @param trans The request transaction object
     * @param res The server response
     * @private
     */
    public native function onWrite(action : String, trans : Object, res : Object, rs) : void;
    protected native function isLoading() : void;
    /**
     * Abort the current server request.
     */
    public native function abort() : void;
    protected native function destroyTrans(trans, isLoaded) : void;
    protected native function handleFailure(trans) : void;
    override public native function destroy() : void;
}}
