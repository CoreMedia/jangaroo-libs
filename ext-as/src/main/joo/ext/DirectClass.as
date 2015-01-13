package ext {
import ext.util.Observable;

/**
 * Fires after an event.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:js.Event</code>
 The <a href="output/Ext.Direct.html#Ext.Direct-eventTypes">Ext.Direct.Event type</a> that occurred.
 *       </li>

 *       <li>
 *           <code>provider:ext.direct.Provider</code>
 The <a href="Ext.direct.Provider.html">Provider</a>.
 *       </li>

 * </ul>
 */
[Event(name="event")]

/**
 * Fires after an event exception.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:js.Event</code>
 The <a href="output/Ext.Direct.html#Ext.Direct-eventTypes">Ext.Direct.Event type</a> that occurred.
 *       </li>

 * </ul>
 */
[Event(name="exception")]


/**
 * <u>Overview</u>
 <p>Ext.Direct aims to streamline communication between the client and server by providing a single interface that reduces the amount of common code typically required to validate data and handle returned data packets (reading data, error conditions, etc).</p><p>The Ext.direct namespace includes several classes for a closer integration with the server-side. The Ext.data namespace also includes classes for working with Ext.data.Stores which are backed by data from an Ext.Direct method.</p><p style="font-weight: bold"><u>Specification</u></p><p>For additional information consult the <a href="http://extjs.com/products/extjs/direct.php">Ext.Direct Specification</a>.</p><p style="font-weight: bold"><u>Providers</u></p><p>Ext.Direct uses a provider architecture, where one or more providers are used to transport data to and from the server. There are several providers that exist in the core at the moment:</p><div class="mdetail-params"><ul><li><a href="Ext.direct.JsonProvider.html">JsonProvider</a> for simple JSON operations</li><li><a href="Ext.direct.PollingProvider.html">PollingProvider</a> for repeated requests</li><li><a href="Ext.direct.RemotingProvider.html">RemotingProvider</a> exposes server side on the client.</li></ul></div><p>A provider does not need to be invoked directly, providers are added via <a href="Ext.Direct.html">Ext.Direct</a>.<a href="output/Ext.Direct.html#Ext.Direct-add">add</a>.</p><p style="font-weight: bold"><u>Router</u></p><p>Ext.Direct utilizes a "router" on the server to direct requests from the client to the appropriate server-side method. Because the Ext.Direct API is completely platform-agnostic, you could completely swap out a Java based server solution and replace it with one that uses C# without changing the client side JavaScript at all.</p><p style="font-weight: bold"><u>Server side events</u></p><p>Custom events from the server may be handled by the client by adding listeners, for example:</p><pre><code>{"type":"event","name":"message","data":"Successfully polled at: 11:19:30 am"}

 // add a handler for a 'message' event sent by the server
 Ext.Direct.on('message', function(e){
 out.append(String.format('&lt;p&gt;&lt;i&gt;{0}&lt;/i&gt;&lt;/p&gt;', e.data));
 out.el.scrollTo('t', 100000, true);
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class defines the type of the singleton Direct.</p>
 * @see ext.#Direct ext.Direct
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Direct Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "DirectClass")]
public class DirectClass extends Observable {

  /**
   * @private
   */
  public function DirectClass() {
    super();
  }

  /**
   Each event type implements a getData() method. The default event types are: <div class="mdetail-params"><ul><li><b><tt>event</tt></b> : Ext.Direct.Event</li><li><b><tt>exception</tt></b> : Ext.Direct.ExceptionEvent</li><li><b><tt>rpc</tt></b> : Ext.Direct.RemotingEvent</li></ul></div>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Direct-property-eventTypes Sencha Docs Ext JS 3.4
   */
  public native function get eventTypes():Object;

  /**
   * @private
   */
  public native function set eventTypes(value:Object):void;

  /**
   Four types of possible exceptions which can occur: <div class="mdetail-params"><ul><li><b><tt>Ext.Direct.exceptions.TRANSPORT</tt></b> : 'xhr'</li><li><b><tt>Ext.Direct.exceptions.PARSE</tt></b> : 'parse'</li><li><b><tt>Ext.Direct.exceptions.LOGIN</tt></b> : 'login'</li><li><b><tt>Ext.Direct.exceptions.SERVER</tt></b> : 'exception'</li></ul></div>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Direct-property-exceptions Sencha Docs Ext JS 3.4
   */
  public native function get exceptions():Object;

  /**
   * @private
   */
  public native function set exceptions(value:Object):void;

  /**
   * Adds an Ext.Direct Provider and creates the proxy or stub methods to execute server-side methods. If the provider is not already connected, it will auto-connect. <pre><code>var pollProv = new Ext.direct.PollingProvider({
   url: 'php/poll2.php'
   });

   Ext.Direct.addProvider(
   {
   "type":"remoting",       // create a <a href="Ext.direct.RemotingProvider.html">Ext.direct.RemotingProvider</a>
   "url":"php\/router.php", // url to connect to the Ext.Direct server-side router.
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
   "formHandler":true, // handle form on server with Ext.Direct.Transaction
   "len":1
   }]
   },
   "namespace":"myApplication",// namespace to create the Remoting Provider in
   },{
   type: 'polling', // create a <a href="Ext.direct.PollingProvider.html">Ext.direct.PollingProvider</a>
   url:  'php/poll.php'
   },
   pollProv // reference to previously created instance
   );
   </code></pre>
   *
   * @param provider Accepts either an Array of Provider descriptions (an instance or config object for a Provider) or any number of Provider descriptions as arguments. Each Provider description instructs Ext.Direct how to create client-side stub methods.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Direct-method-addProvider Sencha Docs Ext JS 3.4
   */
  public native function addProvider(provider:*):void;

  /**
   * Retrieve a <a href="Ext.direct.Provider.html">provider</a> by the <b><tt><a href="output/Ext.direct.Provider.html#Ext.direct.Provider-id">id</a></tt></b> specified when the provider is <a href="output/Ext.Direct.html#Ext.Direct-addProvider">added</a>.
   *
   * @param id Unique identifier assigned to the provider when calling <a href="output/Ext.Direct.html#Ext.Direct-addProvider">addProvider</a>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Direct-method-getProvider Sencha Docs Ext JS 3.4
   */
  public native function getProvider(id:String):void;

}
}
    