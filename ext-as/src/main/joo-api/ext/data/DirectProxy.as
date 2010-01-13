package ext.data {
    public class DirectProxy extends DataProxy {
/**
     * @cfg {Array/String} paramOrder Defaults to <code>undefined</code>. A list of params to be executed
     * server side.  Specify the params in the order in which they must be executed on the server-side
     * as either (1) an Array of String values, or (2) a String of params delimited by either whitespace,
     * comma, or pipe. For example,
     * any of the following would be acceptable:<pre><code>
paramOrder&#58; ['param1','param2','param3']
paramOrder&#58; 'param1 param2 param3'
paramOrder&#58; 'param1,param2,param3'
paramOrder&#58; 'param1|param2|param'
     </code></pre>
     */
    public var paramOrder;
    /**
     * @cfg {Boolean} paramsAsHash
     * Send parameters as a collection of named arguments (defaults to <code>true</code>). Providing a
     * <code><b class='link' title='#paramOrder'>paramOrder</b></code> nullifies this configuration.
     */
    public var paramsAsHash : Boolean;
    /**
     * @cfg {Function} directFn
     * Function to call when executing a request.  directFn is a simple alternative to defining the api configuration-parameter
     * for Store's which will not implement a full CRUD api.
     */
    public var directFn  : Function;
    override public native function doRequest(action : String, rs : *, params : Object, reader : DataReader, callback : Function, scope : Object, arg : Object) : void;
    protected native function createCallback(action, rs, trans) : void;
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
}}
