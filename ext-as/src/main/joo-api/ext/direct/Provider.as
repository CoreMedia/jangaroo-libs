package ext.direct {
import ext.util.Observable;

/**
 * <p>Ext.direct.Provider is an abstract class meant to be extended.</p>
 * 
 * <p>For example ExtJs implements the following subclasses:</p>
 * <pre><code>
Provider
|
+---<b class='link' title='Ext.direct.JsonProvider'>JsonProvider</b> 
    |
    +---<b class='link' title='Ext.direct.PollingProvider'>PollingProvider</b>   
    |
    +---<b class='link' title='Ext.direct.RemotingProvider'>RemotingProvider</b>   
 * </code></pre>
 * @abstract
 */
    public class Provider extends Observable {
/**
     * @cfg {String} id
     * The unique id of the provider (defaults to an <b class='link' title='Ext#id auto-assigned'>id</b>).
     * You should assign an id if you need to be able to access the provider later and you do
     * not have an object reference available, for example:
     * <pre><code>
ext.Direct.addProvider(
    {
        type&#58; 'polling',
        url&#58;  'php/poll.php',
        id&#58;   'poll-provider'
    }
);
     
var p = <b class='link' title='ext.Direct'>ext.Direct</b>.<b class='link' title='ext.Direct#getProvider'>getProvider</b>('poll-provider');
p.disconnect();
     * </code></pre>
     */
    /**
     * @cfg {Number} priority
     * Priority of the request. Lower is higher priority, <code>0</code> means "duplex" (always on).
     * All Providers default to <code>1</code> except for PollingProvider which defaults to <code>3</code>.
     */    
    public var priority : Number;
    /**
     * @cfg {String} type
     * <b>Required</b>, <code>undefined</code> by default.  The <code>type</code> of provider specified
     * to <b class='link' title='ext.Direct'>ext.Direct</b>.<b class='link' title='ext.Direct#addProvider'>addProvider</b> to create a
     * new Provider. Acceptable values by default are:<div class="mdetail-params"><ul>
     * <li><b><code>polling</code></b> : <b class='link' title='Ext.direct.PollingProvider'>PollingProvider</b></li>
     * <li><b><code>remoting</code></b> : <b class='link' title='Ext.direct.RemotingProvider'>RemotingProvider</b></li>
     * </ul></div>
     */    
    protected native function constructor(config) : void;
    /**
     * Returns whether or not the server-side is currently connected.
     * Abstract method for subclasses to implement.
     */
    public native function isConnected() : void;
    /**
     * Abstract methods for subclasses to implement.
     */
    public native function connect() : void;
    /**
     * Abstract methods for subclasses to implement.
     */
    public native function disconnect() : void;
}}
