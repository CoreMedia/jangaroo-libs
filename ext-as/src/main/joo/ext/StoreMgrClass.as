package ext {
import ext.data.Store;
import ext.util.MixedCollection;

/**
 * The default global group of stores.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class defines the type of the singleton StoreMgr.</p>
 * @see ext.#StoreMgr ext.StoreMgr
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.StoreMgr Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "StoreMgrClass")]
public class StoreMgrClass extends MixedCollection {

  /**
   * @private
   */
  public function StoreMgrClass() {
    super(false, null);
  }

  /**
   * Gets a registered Store by id
   *
   * @param id The id of the Store, or a Store instance
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.StoreMgr-method-lookup Sencha Docs Ext JS 3.4
   */
  public native function lookup(id:*):Store;

  /**
   * Registers one or more Stores with the StoreMgr. You do not normally need to register stores manually. Any store initialized with a <a href="output/Ext.data.Store.html#Ext.data.Store-storeId">Ext.data.Store.storeId</a> will be auto-registered.
   *
   * @param store1 A Store instance
   * @param store2
   * @param etc
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.StoreMgr-method-register Sencha Docs Ext JS 3.4
   */
  public native function register(store1:Store, store2:Store = null, ...etc:Array):void;

  /**
   * Unregisters one or more Stores with the StoreMgr
   *
   * @param id1 The id of the Store, or a Store instance
   * @param id2
   * @param etc
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.StoreMgr-method-unregister Sencha Docs Ext JS 3.4
   */
  public native function unregister(id1:*, id2:* = null, ...etc:Array):void;

}
}
    