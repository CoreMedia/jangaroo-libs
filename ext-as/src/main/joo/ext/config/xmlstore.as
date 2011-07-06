package ext.config {


/**
 * Small helper class to make creating <a href="Ext.data.Store.html">Ext.data.Store</a>s from XML data easier. A XmlStore will be automatically configured with a <a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a>.
 <p>A store configuration would be something like:</p><pre><code>var store = new Ext.data.XmlStore({
 // store configs
 autoDestroy: true,
 storeId: 'myStore',
 url: 'sheldon.xml', // automatically configures a HttpProxy
 // reader configs
 record: 'Item', // records will have an "Item" tag
 idPath: 'ASIN',
 totalRecords: '&#64;TotalResults'
 fields: [
 // set up the fields mapping into the xml doc
 // The first needs mapping, the others are very basic
 {name: 'Author', mapping: 'ItemAttributes &gt; Author'},
 'Title', 'Manufacturer', 'ProductGroup'
 ]
 });
 </code></pre><br/><br/> <p>This store is configured to consume a returned object of the form:</p><pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
 &lt;ItemSearchResponse xmlns="http://webservices.amazon.com/AWSECommerceService/2009-05-15"&gt;
 &lt;Items&gt;
 &lt;Request&gt;
 &lt;IsValid&gt;True&lt;/IsValid&gt;
 &lt;ItemSearchRequest&gt;
 &lt;Author&gt;Sidney Sheldon&lt;/Author&gt;
 &lt;SearchIndex&gt;Books&lt;/SearchIndex&gt;
 &lt;/ItemSearchRequest&gt;
 &lt;/Request&gt;
 &lt;TotalResults&gt;203&lt;/TotalResults&gt;
 &lt;TotalPages&gt;21&lt;/TotalPages&gt;
 &lt;Item&gt;
 &lt;ASIN&gt;0446355453&lt;/ASIN&gt;
 &lt;DetailPageURL&gt;
 http://www.amazon.com/
 &lt;/DetailPageURL&gt;
 &lt;ItemAttributes&gt;
 &lt;Author&gt;Sidney Sheldon&lt;/Author&gt;
 &lt;Manufacturer&gt;Warner Books&lt;/Manufacturer&gt;
 &lt;ProductGroup&gt;Book&lt;/ProductGroup&gt;
 &lt;Title&gt;Master of the Game&lt;/Title&gt;
 &lt;/ItemAttributes&gt;
 &lt;/Item&gt;
 &lt;/Items&gt;
 &lt;/ItemSearchResponse&gt;
 </code></pre>An object literal of this form could also be used as the <a href="output/Ext.data.XmlStore.html#Ext.data.XmlStore-data">data</a> config option.<br/><br/> <p><b>Note:</b> Although not listed here, this class accepts all of the configuration options of <b><a href="Ext.data.XmlReader.html">XmlReader</a></b>.</p>
 * <p>This class serves as a typed config object for constructor of class XmlStore.</p>
 *
 * @see ext.data.XmlStore
 */
[ExtConfig(target="ext.data.XmlStore")]
public class xmlstore extends store {

  public function xmlstore(config:Object = null) {

    super(config);
  }


}
}
    