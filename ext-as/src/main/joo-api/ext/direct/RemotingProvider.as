package ext.direct {
/**
 * 
 * <p>The <b class='link' title='Ext.direct.RemotingProvider'>RemotingProvider</b> exposes access to
 * server side methods on the client (a remote procedure call (RPC) type of
 * connection where the client can initiate a procedure on the server).</p>
 * 
 * <p>This allows for code to be organized in a fashion that is maintainable,
 * while providing a clear path between client and server, something that is
 * not always apparent when using URLs.</p>
 * 
 * <p>To accomplish this the server-side needs to describe what classes and methods
 * are available on the client-side. This configuration will typically be
 * outputted by the server-side ext.Direct stack when the API description is built.</p>
 */
    public class RemotingProvider extends JsonProvider {
/**
     * @cfg {Object} actions
     * Object literal defining the server side actions and methods. For example, if
     * the Provider is configured with:
     * <pre><code>
"actions":{ // each property within the 'actions' object represents a server side Class 
    "TestAction":[ // array of methods within each server side Class to be   
    {              // stubbed out on client
        "name":"doEcho", 
        "len":1            
    },{
        "name":"multiply",// name of method
        "len":2           // The number of parameters that will be used to create an
                          &#47;/ array of data to send to the server side function.
                          &#47;/ Ensure the server sends back a Number, not a String. 
    },{
        "name":"doForm",
        "formHandler":true, // direct the client to use specialized form handling method 
        "len":1
    }]
}
     * </code></pre>
     * <p>Note that a Store is not required, a server method can be called at any time.
     * In the following example a <b>client side</b> handler is used to call the
     * server side method "multiply" in the server-side "TestAction" Class:</p>
     * <pre><code>
TestAction.multiply(
    2, 4, // pass two arguments to server, so specify len=2
    &#47;/ callback function after the server is called
    &#47;/ result: the result returned by the server
    &#47;/      e: ext.Direct.RemotingEvent object
    function(result, e){
        var t = e.getTransaction();
        var action = t.action; // server side Class called
        var method = t.method; // server side method called
        if(e.status){
            var answer = Ext.encode(result); // 8
    
        }else{
            var msg = e.message; // failure message
        }
    }
);
     * </code></pre>
     * In the example above, the server side "multiply" function will be passed two
     * arguments (2 and 4).  The "multiply" method should return the value 8 which will be
     * available as the <code>result</code> in the example above. 
     */
    /**
     * @cfg {String/Object} namespace
     * Namespace for the Remoting Provider (defaults to the browser global scope of <i>window</i>).
     * Explicitly specify the namespace Object, or specify a String to have a
     * <b class='link' title='Ext#namespace namespace'>created</b> implicitly.
     */
    /**
     * @cfg {String} url
     * <b>Required<b>. The url to connect to the <b class='link'>ext.Direct</b> server-side router. 
     */
    /**
     * @cfg {String} enableUrlEncode
     * Specify which param will hold the arguments for the method.
     * Defaults to <code>'data'</code>.
     */
    /**
     * @cfg {Number/Boolean} enableBuffer
     * <p><code>true</code> or <code>false</code> to enable or disable combining of method
     * calls. If a number is specified this is the amount of time in milliseconds
     * to wait before sending a batched request (defaults to <code>10</code>).</p>
     * <br><p>Calls which are received within the specified timeframe will be
     * concatenated together and sent in a single request, optimizing the
     * application by reducing the amount of round trips that have to be made
     * to the server.</p>
     */
    public var enableBuffer : *;
    /**
     * @cfg {Number} maxRetries
     * Number of times to re-attempt delivery on failure of a call.
     */
    public var maxRetries : Number;

    public native function RemotingProvider(config) : void;
    protected native function initAPI(provider : RemotingProvider, transaction : Transaction) : void;
    override public native function isConnected() : void;
    override public native function connect() : void;
    override public native function disconnect() : void;
    public native function onData(opt, success, xhr) : void;
    public native function getCallData(t) : void;
    public native function doSend(data) : void;
    public native function combineAndSend() : void;
    public native function queueTransaction(t) : void;
    public native function doCall(c, m, args) : void;
    public native function doForm(c, m, form, callback, scope) : void;
    public native function processForm(t) : void;
    public native function createMethod(c, m) : void;
    public native function getTransaction(opt) : void;
    public native function doCallback(t, e) : void;
}}
