package ext.config {


/**
 * AbstractStore is a superclass of <a href="Ext.data.Store.html">Ext.data.Store</a> and <a href="Ext.data.TreeStore.html">Ext.data.TreeStore</a>. It's never used directly, but offers a set of methods used by both of those subclasses.
 <p>We've left it here in the docs for reference purposes, but unless you need to make a whole new type of Store, what you're probably looking for is <a href="Ext.data.Store.html">Ext.data.Store</a>. If you're still interested, here's a brief description of what AbstractStore is and is not.</p><p>AbstractStore provides the basic configuration for anything that can be considered a Store. It expects to be given a <a href="Ext.data.Model.html">Model</a> that represents the type of data in the Store. It also expects to be given a <a href="Ext.data.Proxy.html">Proxy</a> that handles the loading of data into the Store.</p><p>AbstractStore provides a few helpful methods such as <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-load">load</a> and <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-sync">sync</a>, which load and save data respectively, passing the requests through the configured <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-proxy">proxy</a>. Both built-in Store subclasses add extra behavior to each of these functions. Note also that each AbstractStore subclass has its own way of storing data - in <a href="Ext.data.Store.html">Ext.data.Store</a> the data is saved as a flat <a href="Ext.data.MixedCollection.html">MixedCollection</a>, whereas in <a href="Ext.data.TreeStore.html">TreeStore</a> we use a <a href="Ext.data.Tree.html">Ext.data.Tree</a> to maintain the data's hierarchy.</p><p>Finally, AbstractStore provides an API for sorting and filtering data via its <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-sorters">sorters</a> and <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-filters">filters</a> <a href="Ext.data.MixedCollection.html">MixedCollections</a>. Although this functionality is provided by AbstractStore, there's a good description of how to use it in the introduction of <a href="Ext.data.Store.html">Ext.data.Store</a>.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class AbstractStore.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.AbstractStore
 */
[ExtConfig(target="ext.data.AbstractStore")]
public class abstractstore extends observable {

  public function abstractstore(config:Object = null) {

    super(config);
  }


  /**
   If data is not specified, and if autoLoad is true or an Object, this store's load method is automatically called after creation. If the value of autoLoad is an Object, this Object will be passed to the store's load method. Defaults to false.
   */
  public native function get autoLoad():*;

  /**
   * @private
   */
  public native function set autoLoad(value:*):void;

  /**
   True to automatically sync the Store with its Proxy after every edit to one of its Records. Defaults to false.
   */
  public native function get autoSave():Boolean;

  /**
   * @private
   */
  public native function set autoSave(value:Boolean):void;

  /**
   The Proxy to use for this Store. This can be either a string, a config object or a Proxy instance - see <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-setProxy">setProxy</a> for details.
   */
  public native function get proxy():*;

  /**
   * @private
   */
  public native function set proxy(value:*):void;

  /**
   Optional unique identifier for this store. If present, this Store will be registered with the <a href="Ext.StoreMgr.html">Ext.StoreMgr</a>, making it easy to reuse elsewhere. Defaults to undefined.
   */
  public native function get storeId():String;

  /**
   * @private
   */
  public native function set storeId(value:String):void;


}
}
    