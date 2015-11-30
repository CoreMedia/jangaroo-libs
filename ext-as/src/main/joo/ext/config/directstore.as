package ext.config {

/**
 * Small helper class to create an <a href="Ext.data.Store.html">Ext.data.Store</a> configured with an <a href="Ext.data.DirectProxy.html">Ext.data.DirectProxy</a> and <a href="Ext.data.JsonReader.html">Ext.data.JsonReader</a> to make interacting with an <a href="Ext.Direct.html">Ext.Direct</a> Server-side <a href="Ext.direct.Provider.html">Provider</a> easier. To create a different proxy/reader combination create a basic <a href="Ext.data.Store.html">Ext.data.Store</a> configured as needed.
 <p><b>&#42;Note:</b> Although they are not listed, this class inherits all of the config options of:</p><div><ul class="mdetail-params"><li><b><a href="Ext.data.Store.html">Store</a></b></li><li><b><a href="Ext.data.JsonReader.html">JsonReader</a></b></li><li style="list-style: none"><div class="sub-desc"><ul class="mdetail-params"><li><tt><b><a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-root">root</a></b></tt></li><li><tt><b><a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-idProperty">idProperty</a></b></tt></li><li><tt><b><a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-totalProperty">totalProperty</a></b></tt></li></ul></div></li><li><b><a href="Ext.data.DirectProxy.html">DirectProxy</a></b></li><li style="list-style: none"><div class="sub-desc"><ul class="mdetail-params"><li><tt><b><a href="output/Ext.data.DirectProxy.html#Ext.data.DirectProxy-directFn">directFn</a></b></tt></li><li><tt><b><a href="output/Ext.data.DirectProxy.html#Ext.data.DirectProxy-paramOrder">paramOrder</a></b></tt></li><li><tt><b><a href="output/Ext.data.DirectProxy.html#Ext.data.DirectProxy-paramsAsHash">paramsAsHash</a></b></tt></li></ul></div></li></ul></div>
 *
 * <p>This class serves as a typed config object for constructor of class DirectStore.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.DirectStore
 */
[ExtConfig(target="ext.data.DirectStore", xtype="directstore")]
public class directstore extends store {

  public function directstore(config:Object = null) {

    super(config);
  }


}
}
    