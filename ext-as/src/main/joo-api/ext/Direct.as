package ext {
import ext.util.Observable;

/**
 * <p><b><u>Overview</u></b></p>
 * 
 * <p>ext.Direct aims to streamline communication between the client and server
 * by providing a single interface that reduces the amount of common code
 * typically required to validate data and handle returned data packets
 * (reading data, error conditions, etc).</p>
 *  
 * <p>The Ext.direct namespace includes several classes for a closer integration
 * with the server-side. The Ext.data namespace also includes classes for working
 * with ext.data.Stores which are backed by data from an ext.Direct method.</p>
 * 
 * <p><b><u>Specification</u></b></p>
 * 
 * <p>For additional information consult the 
 * <a href="http://extjs.com/products/extjs/direct.php">ext.Direct Specification</a>.</p>
 *   
 * <p><b><u>Providers</u></b></p>
 * 
 * <p>ext.Direct uses a provider architecture, where one or more providers are
 * used to transport data to and from the server. There are several providers
 * that exist in the core at the moment:</p><div class="mdetail-params"><ul>
 * 
 * <li><b class='link' title='Ext.direct.JsonProvider'>JsonProvider</b> for simple JSON operations</li>
 * <li><b class='link' title='Ext.direct.PollingProvider'>PollingProvider</b> for repeated requests</li>
 * <li><b class='link' title='Ext.direct.RemotingProvider'>RemotingProvider</b> exposes server side
 * on the client.</li>
 * </ul></div>
 * 
 * <p>A provider does not need to be invoked directly, providers are added via
 * <b class='link'>ext.Direct</b>.<b class='link' title='ext.Direct#add'>add</b>.</p>
 * 
 * <p><b><u>Router</u></b></p>
 * 
 * <p>ext.Direct utilizes a "router" on the server to direct requests from the client
 * to the appropriate server-side method. Because the ext.Direct API is completely
 * platform-agnostic, you could completely swap out a Java based server solution
 * and replace it with one that uses C# without changing the client side JavaScript
 * at all.</p>
 * 
 * <p><b><u>Server side events</u></b></p>
 * 
 * <p>Custom events from the server may be handled by the client by adding
 * listeners, for example:</p>
 * <pre><code>
{"type":"event","name":"message","data":"Successfully polled at: 11:19:30 am"}

&#47;/ add a handler for a 'message' event sent by the server 
ext.Direct.on('message', function(e){
    out.append(String.format('&lt;p>&lt;i>{0}&lt;/i>&lt;/p>', e.data));
            out.el.scrollTo('t', 100000, true);
});
 * </code></pre>
*/
public class Direct extends Observable {
/**
 * @singleton
 */
    /**
     * Each event type implements a getData() method. The default event types are:
     * <div class="mdetail-params"><ul>
     * <li><b><code>event</code></b> : ext.Direct.Event</li>
     * <li><b><code>exception</code></b> : ext.Direct.ExceptionEvent</li>
     * <li><b><code>rpc</code></b> : ext.Direct.RemotingEvent</li>
     * </ul></div>
     * @property eventTypes
     */
    /**
     * Four types of possible exceptions which can occur:
     * <div class="mdetail-params"><ul>
     * <li><b><code>ext.Direct.exceptions.TRANSPORT</code></b> : 'xhr'</li>
     * <li><b><code>ext.Direct.exceptions.PARSE</code></b> : 'parse'</li>
     * <li><b><code>ext.Direct.exceptions.LOGIN</code></b> : 'login'</li>
     * <li><b><code>ext.Direct.exceptions.SERVER</code></b> : 'exception'</li>
     * </ul></div>
     * @property exceptions
     */
    public static var exceptions : Object;
    protected static native function constructor() : void;
    /**
     * Adds an ext.Direct Provider and creates the proxy or stub methods to execute server-side methods.
     * If the provider is not already connected, it will auto-connect.
     * <pre><code>
var pollProv = new Ext.direct.PollingProvider({
    url&#58; 'php/poll2.php'
}); 

ext.Direct.addProvider(
    {
        "type":"remoting",       // create a <b class='link'>Ext.direct.RemotingProvider</b> 
        "url":"php\/router.php", // url to connect to the ext.Direct server-side router.
        "actions":{              // each property within the actions object represents a Class 
            "TestAction":[       // array of methods within each server side Class   
            {
                "name":"doEcho", // name of method
                "len":1
            },{
                "name":"multiply",
                "len":1
            },{
                "name":"doForm",
                "formHandler":true, // handle form on server with ext.Direct.Transaction 
                "len":1
            }]
        },
        "namespace":"myApplication",// namespace to create the Remoting Provider in
    },{
        type&#58; 'polling', // create a <b class='link'>Ext.direct.PollingProvider</b> 
        url&#58;  'php/poll.php'
    },
    pollProv // reference to previously created instance
);
     * </code></pre>
     * @param provider Accepts either an Array of Provider descriptions (an instance
     * or config object for a Provider) or any number of Provider descriptions as arguments.  Each
     * Provider description instructs ext.Direct how to create client-side stub methods.
     */
    public static native function addProvider(provider : *) : void;
    /**
     * Retrieve a <b class='link' title='Ext.direct.Provider'>provider</b> by the
     * <b><code><b class='link' title='Ext.direct.Provider#id'>id</b></code></b> specified when the provider is
     * <b class='link' title='#addProvider'>added</b>.
     * @param id Unique identifier assigned to the provider when calling <b class='link' title='#addProvider'>addProvider</b> 
     */
    public static native function getProvider(id : String) : void;
    public static native function removeProvider(id) : void;
    public static native function addTransaction(t) : void;
    public static native function removeTransaction(t) : void;
    public static native function getTransaction(tid) : void;
    public static native function onProviderData(provider, e) : void;
    public static native function createEvent(response, extraProps) : void;
public static var TID = 1;
public static var PROVIDERS = {};
}}
