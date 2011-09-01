package ext.config {


/**
 * Base class for any client-side storage. Used as a superclass for <a href="Ext.data.MemoryProxy.html">Memory</a> and <a href="Ext.data.WebStorageProxy.html">Web Storage</a> proxies. Do not use directly, use one of the subclasses instead.

 *
 * <p>This class serves as a
 * typed config object for constructor of class ClientProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.ClientProxy
 */
[ExtConfig(target="ext.data.ClientProxy")]
public class clientproxy extends proxy {

  public function clientproxy(config:Object = null) {

    super(config);
  }


}
}
    