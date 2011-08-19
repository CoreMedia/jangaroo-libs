package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class Direct.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.DirectClass
 */
[ExtConfig(target="ext.DirectClass")]
public class direct extends observable {

  public function direct(config:Object = null) {

    super(config);
  }


}
}
    