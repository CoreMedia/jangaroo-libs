package ext {
import ext.data.Store;
import ext.util.MixedCollection;

/**
 * The default global group of stores.
*/
public class StoreMgr extends MixedCollection {
/**
 * @singleton
 */
    /**
     * @cfg {Object} listeners @hide
     */
    /**
     * Registers one or more Stores with the StoreMgr. You do not normally need to register stores
     * manually.  Any store initialized with a <b class='link'>ext.data.Store#storeId</b> will be auto-registered. 
     * @param store1 A Store instance
     * @param store2
     * @param etc
     */
    public static native function register(store1 : Store, store2 : Store = undefined, ...etc) : void;
    /**
     * Unregisters one or more Stores with the StoreMgr
     * @param id1 The id of the Store, or a Store instance
     * @param id2
     * @param etc
     */
    public static native function unregister(id1 : *, id2 : * = undefined, ...etc) : void;
    /**
     * Gets a registered Store by id
     * @param id The id of the Store, or a Store instance
     * @return 
     */
    public static native function lookup(id : *) : Store;
    public static native function getKey(o) : void;

}}
