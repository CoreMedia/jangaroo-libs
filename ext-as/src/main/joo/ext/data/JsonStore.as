package ext.data {
import ext.config.jsonstore;

/**
 * Small helper class to make creating <a href="Ext.data.Store.html">Ext.data.Store</a>s from JSON data easier. A JsonStore will be automatically configured with a <a href="Ext.data.JsonReader.html">Ext.data.JsonReader</a>.
 <p>A store configuration would be something like:</p><pre><code>var store = new Ext.data.JsonStore({
 // store configs
 autoDestroy: true,
 url: 'get-images.php',
 storeId: 'myStore',
 // reader configs
 root: 'images',
 idProperty: 'name',
 fields: ['name', 'url', {name:'size', type: 'float'}, {name:'lastmod', type:'date'}]
 });
 </code></pre><br/><br/> <p>This store is configured to consume a returned object of the form:</p><pre><code>{
 images: [
 {name: 'Image one', url:'/GetImage.php?id=1', size:46.5, lastmod: new Date(2007, 10, 29)},
 {name: 'Image Two', url:'/GetImage.php?id=2', size:43.2, lastmod: new Date(2007, 10, 30)}
 ]
 }
 </code></pre>An object literal of this form could also be used as the <a href="output/Ext.data.JsonStore.html#Ext.data.JsonStore-data">data</a> config option.<br/><br/> <p><b>&#42;Note:</b> Although not listed here, this class accepts all of the configuration options of <b><a href="Ext.data.JsonReader.html">JsonReader</a></b>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class can be instantiated by the EXML element &lt;jsonstore>.</p>
 * @see ext.config.jsonstore
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.JsonStore Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.data.JsonStore")]
public class JsonStore extends Store {

  /**
   *
   *
   * @param config
   * @see ext.config.jsonstore
   */
  public function JsonStore(config:jsonstore = null) {
    super(null);
  }

}
}
    