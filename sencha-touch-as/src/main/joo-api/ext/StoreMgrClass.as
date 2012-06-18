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
 * @see ext.config.storemgr
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StoreMgr.html#cls-Ext.StoreMgr Ext JS source
 */
[Native]
public class StoreMgrClass extends MixedCollection {

  /**
   * @private
   *
   * @see ext.config.storemgr
   */
  public function StoreMgrClass() {
    super(false, null);
  }

  /**
   * Gets a registered Store by id
   *
   * @param id The id of the Store, or a Store instance
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StoreMgr.html#method-Ext.StoreMgr-lookup Ext JS source
   */
  public native function lookup(id:*):Store;

  /**
   * Registers one or more Stores with the StoreMgr. You do not normally need to register stores manually. Any store initialized with a <a href="output/Ext.data.Store.html#Ext.data.Store-storeId">Ext.data.Store.storeId</a> will be auto-registered.
   *
   * @param store1 A Store instance
   * @param store2
   * @param etc
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StoreMgr.html#method-Ext.StoreMgr-register Ext JS source
   */
  public native function register(store1:Store, store2:Store = null, ...etc:Array):void;

  /**
   * Unregisters one or more Stores with the StoreMgr
   *
   * @param id1 The id of the Store, or a Store instance
   * @param id2
   * @param etc
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StoreMgr.html#method-Ext.StoreMgr-unregister Ext JS source
   */
  public native function unregister(id1:*, id2:* = null, ...etc:Array):void;

}
}
    