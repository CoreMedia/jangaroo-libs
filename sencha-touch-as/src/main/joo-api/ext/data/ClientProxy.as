package ext.data {


/**
 * Base class for any client-side storage. Used as a superclass for <a href="Ext.data.MemoryProxy.html">Memory</a> and <a href="Ext.data.WebStorageProxy.html">Web Storage</a> proxies. Do not use directly, use one of the subclasses instead.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.clientproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ClientProxy.html#cls-Ext.data.ClientProxy Ext JS source
 */
[Native]
public class ClientProxy extends Proxy {

  /**
   *
   *
   * @see ext.config.clientproxy
   */
  public function ClientProxy() {
    super(null);
  }

  /**
   * Abstract function that must be implemented by each ClientProxy subclass. This should purge all record data from the client side storage, as well as removing any supporting data (such as lists of record IDs)
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ClientProxy.html#method-Ext.data.ClientProxy-clear Ext JS source
   */
  public native function clear():void;

}
}
    