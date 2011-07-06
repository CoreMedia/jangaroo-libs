package ext.config {


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
 * <p>This class serves as a typed config object for constructor of class Provider.</p>
 *
 * @see ext.direct.Provider
 */
[ExtConfig(target="ext.direct.Provider")]
public class provider extends observable {

  public function provider(config:Object = null) {

    super(config);
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
   */
  public native function get id():String;

  /**
   * @private
   */
  public native function set id(value:String):void;

  /**
   Priority of the request. Lower is higher priority, <tt>0</tt> means "duplex" (always on). All Providers default to <tt>1</tt> except for PollingProvider which defaults to <tt>3</tt>.
   */
  public native function get priority():Number;

  /**
   * @private
   */
  public native function set priority(value:Number):void;

  /**
   <b>Required</b>, <tt>undefined</tt> by default. The <tt>type</tt> of provider specified to <a href="Ext.Direct.html">Ext.Direct</a>.<a href="output/Ext.Direct.html#Ext.Direct-addProvider">addProvider</a> to create a new Provider. Acceptable values by default are:<div class="mdetail-params"><ul><li><b><tt>polling</tt></b> : <a href="Ext.direct.PollingProvider.html">PollingProvider</a></li><li><b><tt>remoting</tt></b> : <a href="Ext.direct.RemotingProvider.html">RemotingProvider</a></li></ul></div>
   */
  public native function get type():String;

  /**
   * @private
   */
  public native function set type(value:String):void;


}
}
    