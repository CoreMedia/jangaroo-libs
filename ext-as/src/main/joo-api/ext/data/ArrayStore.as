package ext.data {
import ext.config.arraystore;

/**
 * Formerly known as "SimpleStore".
 <p>Small helper class to make creating <a href="Ext.data.Store.html">Ext.data.Store</a>s from Array data easier. An ArrayStore will be automatically configured with a <a href="Ext.data.ArrayReader.html">Ext.data.ArrayReader</a>.</p><p>A store configuration would be something like:</p><pre><code>var store = new Ext.data.ArrayStore({
 // store configs
 autoDestroy: true,
 storeId: 'myStore',
 // reader configs
 idIndex: 0,
 fields: [
 'company',
 {name: 'price', type: 'float'},
 {name: 'change', type: 'float'},
 {name: 'pctChange', type: 'float'},
 {name: 'lastChange', type: 'date', dateFormat: 'n/j h:ia'}
 ]
 });
 </code></pre><br/><br/> <p>This store is configured to consume a returned object of the form:</p><pre><code>var myData = [
 ['3m Co',71.72,0.02,0.03,'9/1 12:00am'],
 ['Alcoa Inc',29.01,0.42,1.47,'9/1 12:00am'],
 ['Boeing Co.',75.43,0.53,0.71,'9/1 12:00am'],
 ['Hewlett-Packard Co.',36.53,-0.03,-0.08,'9/1 12:00am'],
 ['Wal-Mart Stores, Inc.',45.45,0.73,1.63,'9/1 12:00am']
 ];
 </code></pre>An object literal of this form could also be used as the <a href="output/Ext.data.ArrayStore.html#Ext.data.ArrayStore-data">data</a> config option.<br/><br/> <p><b>&#42;Note:</b> Although not listed here, this class accepts all of the configuration options of <b><a href="Ext.data.ArrayReader.html">ArrayReader</a></b>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class can be instantiated by the EXML element &lt;arraystore>.</p>
 * @see ext.config.arraystore
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ArrayStore.html#cls-Ext.data.ArrayStore Ext JS source
 */
public class ArrayStore extends Store {

  /**
   *
   *
   * @param config
   * @see ext.config.arraystore
   */
  public function ArrayStore(config:arraystore = null) {
    super(config);
  }

}
}
    