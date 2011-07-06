package ext.config {


/**
 * An implementation of <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a> that processes data requests within the same domain of the originating page.
 <p><b>Note</b>: this class cannot be used to retrieve data from a domain other than the domain from which the running page was served. For cross-domain requests, use a <a href="Ext.data.ScriptTagProxy.html">ScriptTagProxy</a>.</p><p>Be aware that to enable the browser to parse an XML document, the server must set the Content-Type header in the HTTP response to "<tt>text/xml</tt>".</p>
 * <p>This class serves as a typed config object for constructor of class HttpProxy.</p>
 *
 * @see ext.data.HttpProxy
 */
[ExtConfig(target="ext.data.HttpProxy")]
public class httpproxy extends dataproxy {

  public function httpproxy(config:Object = null) {

    super(config);
  }


}
}
    