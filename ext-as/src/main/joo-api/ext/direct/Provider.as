package ext.direct {
import ext.util.Observable;

/**
 * Fires when the Provider connects to the server-side
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>provider:ext.direct.Provider</code>
 The <a href="Ext.direct.Provider.html">Provider</a>.
 *       </li>

 * </ul>
 */
[Event(name="connect")]

/**
 * Fires when the Provider receives data from the server-side
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>provider:ext.direct.Provider</code>
 The <a href="Ext.direct.Provider.html">Provider</a>.
 *       </li>

 *       <li>
 *           <code>e:js.Event</code>
 The <a href="output/Ext.Direct.html#Ext.Direct-eventTypes">Ext.Direct.Event type</a> that occurred.
 *       </li>

 * </ul>
 */
[Event(name="data")]

/**
 * Fires when the Provider disconnects from the server-side
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>provider:ext.direct.Provider</code>
 The <a href="Ext.direct.Provider.html">Provider</a>.
 *       </li>

 * </ul>
 */
[Event(name="disconnect")]

/**
 * Fires when the Provider receives an exception from the server-side
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>None.</li>
 *
 * </ul>
 */
[Event(name="exception")]


/**
 * Ext.direct.Provider is an abstract class meant to be extended.
 <p>For example ExtJs implements the following subclasses:</p><pre><code>Provider
 |
 +---<a href="Ext.direct.JsonProvider.html">JsonProvider</a>
 |
 +---<a href="Ext.direct.PollingProvider.html">PollingProvider</a>
 |
 +---<a href="Ext.direct.RemotingProvider.html">RemotingProvider</a>
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.provider
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Provider.html#cls-Ext.direct.Provider Ext JS source
 */
public class Provider extends Observable {

  /**
   *
   *
   * @see ext.config.provider
   */
  public function Provider() {
    super();
  }

  /**
   The unique id of the provider (defaults to an <a href="output/Ext.html#Ext-id">auto-assigned id</a>). You should assign an id if you need to be able to access the provider later and you do not have an object reference available, for example: <pre><code>Ext.Direct.addProvider(
   {
   type: 'polling',
   url:  'php/poll.php',
   id:   'poll-provider'
   }
   );

   var p = <a href="Ext.Direct.html">Ext.Direct</a>.<a href="output/Ext.Direct.html#Ext.Direct-getProvider">getProvider</a>('poll-provider');
   p.disconnect();
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get id():String;

  /**
   Priority of the request. Lower is higher priority, <tt>0</tt> means "duplex" (always on). All Providers default to <tt>1</tt> except for PollingProvider which defaults to <tt>3</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get priority():Number;

  /**
   <b>Required</b>, <tt>undefined</tt> by default. The <tt>type</tt> of provider specified to <a href="Ext.Direct.html">Ext.Direct</a>.<a href="output/Ext.Direct.html#Ext.Direct-addProvider">addProvider</a> to create a new Provider. Acceptable values by default are:<div class="mdetail-params"><ul><li><b><tt>polling</tt></b> : <a href="Ext.direct.PollingProvider.html">PollingProvider</a></li><li><b><tt>remoting</tt></b> : <a href="Ext.direct.RemotingProvider.html">RemotingProvider</a></li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get type():String;

  /**
   * Abstract methods for subclasses to implement.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Provider.html#method-Ext.direct.Provider-connect Ext JS source
   */
  public native function connect():void;

  /**
   * Abstract methods for subclasses to implement.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Provider.html#method-Ext.direct.Provider-disconnect Ext JS source
   */
  public native function disconnect():void;

  /**
   * Returns whether or not the server-side is currently connected. Abstract method for subclasses to implement.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Provider.html#method-Ext.direct.Provider-isConnected Ext JS source
   */
  public native function isConnected():void;

}
}
    