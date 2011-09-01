package ext.data {

import ext.util.MixedCollection;
import ext.util.Observable;

/**
 * Fired when a Model instance has been added to this Store
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>store:ext.data.Store</code>
 The store
 *       </li>

 *       <li>
 *           <code>records:Array</code>
 The Model instances that were added
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index at which the instances were inserted
 *       </li>

 * </ul>
 */
[Event(name="add")]

/**
 * Event description
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>store:ext.data.Store</code>
 This Store
 *       </li>

 *       <li>
 *           <code>operation:ext.data.Operation</code>
 The Ext.data.Operation object that will be passed to the Proxy to load the Store
 *       </li>

 * </ul>
 */
[Event(name="beforeload")]

/**
 * Called before a call to <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-sync">sync</a> is executed. Return false from any listener to cancel the synv
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>options:Object</code>
 Hash of all records to be synchronized, broken down into create, update and destroy
 *       </li>

 * </ul>
 */
[Event(name="beforesync")]

/**
 * Fires whenever the records in the Store have changed in some way - this could include adding or removing records, or updating the data in existing records
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>
 The data store
 *       </li>

 * </ul>
 */
[Event(name="datachanged")]

/**
 * Fires whenever the store reads data from a remote data source.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.store</code>

 *       </li>

 *       <li>
 *           <code>records:Array</code>
 An array of records
 *       </li>

 *       <li>
 *           <code>successful:Boolean</code>
 True if the operation was successful.
 *       </li>

 * </ul>
 */
[Event(name="load")]

/**
 * Fired when a Model instance has been removed from this Store
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>store:ext.data.Store</code>
 The Store object
 *       </li>

 *       <li>
 *           <code>record:ext.data.Model</code>
 The record that was removed
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index of the record that was removed
 *       </li>

 * </ul>
 */
[Event(name="remove")]

/**
 * Fires when a Record has been updated
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Store</code>

 *       </li>

 *       <li>
 *           <code>record:ext.data.Model</code>
 The Model instance that was updated
 *       </li>

 *       <li>
 *           <code>operation:String</code>
 The update operation being performed. Value may be one of: <pre><code>              Ext.data.Model.EDIT
 Ext.data.Model.REJECT
 Ext.data.Model.COMMIT
 </code></pre>
 *       </li>

 * </ul>
 */
[Event(name="update")]


/**
 * AbstractStore is a superclass of <a href="Ext.data.Store.html">Ext.data.Store</a> and <a href="Ext.data.TreeStore.html">Ext.data.TreeStore</a>. It's never used directly, but offers a set of methods used by both of those subclasses.
 <p>We've left it here in the docs for reference purposes, but unless you need to make a whole new type of Store, what you're probably looking for is <a href="Ext.data.Store.html">Ext.data.Store</a>. If you're still interested, here's a brief description of what AbstractStore is and is not.</p><p>AbstractStore provides the basic configuration for anything that can be considered a Store. It expects to be given a <a href="Ext.data.Model.html">Model</a> that represents the type of data in the Store. It also expects to be given a <a href="Ext.data.Proxy.html">Proxy</a> that handles the loading of data into the Store.</p><p>AbstractStore provides a few helpful methods such as <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-load">load</a> and <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-sync">sync</a>, which load and save data respectively, passing the requests through the configured <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-proxy">proxy</a>. Both built-in Store subclasses add extra behavior to each of these functions. Note also that each AbstractStore subclass has its own way of storing data - in <a href="Ext.data.Store.html">Ext.data.Store</a> the data is saved as a flat <a href="Ext.data.MixedCollection.html">MixedCollection</a>, whereas in <a href="Ext.data.TreeStore.html">TreeStore</a> we use a <a href="Ext.data.Tree.html">Ext.data.Tree</a> to maintain the data's hierarchy.</p><p>Finally, AbstractStore provides an API for sorting and filtering data via its <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-sorters">sorters</a> and <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-filters">filters</a> <a href="Ext.data.MixedCollection.html">MixedCollections</a>. Although this functionality is provided by AbstractStore, there's a good description of how to use it in the introduction of <a href="Ext.data.Store.html">Ext.data.Store</a>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.abstractstore
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#cls-Ext.data.AbstractStore Ext JS source
 */
public class AbstractStore extends Observable {

  /**
   *
   *
   * @see ext.config.abstractstore
   */
  public function AbstractStore() {
    super();
  }

  /**
   Sets the updating behavior based on batch synchronization. 'operation' (the default) will update the Store's internal representation of the data after each operation of the batch has completed, 'complete' will wait until the entire batch has been completed before updating the Store's data. 'complete' is a good choice for local storage proxies, 'operation' is better for remote proxies, where there is a comparatively high latency.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-batchUpdateMode Ext JS source
   */
  public native function get batchUpdateMode():String;

  /**
   * @private
   */
  public native function set batchUpdateMode(value:String):void;

  /**
   The string type of the Proxy to create if none is specified. This defaults to creating a <a href="Ext.data.MemoryProxy.html">memory proxy</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-defaultProxyType Ext JS source
   */
  public native function get defaultProxyType():String;

  /**
   * @private
   */
  public native function set defaultProxyType(value:String):void;

  /**
   The default sort direction to use if one is not specified (defaults to "ASC")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-defaultSortDirection Ext JS source
   */
  public native function get defaultSortDirection():String;

  /**
   * @private
   */
  public native function set defaultSortDirection(value:String):void;

  /**
   If true, any filters attached to this Store will be run after loading data, before the datachanged event is fired. Defaults to true, ignored if <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-remoteFilter">remoteFilter</a> is true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-filterOnLoad Ext JS source
   */
  public native function get filterOnLoad():Boolean;

  /**
   * @private
   */
  public native function set filterOnLoad(value:Boolean):void;

  /**
   The collection of <a href="Ext.util.Filter.html">Filters</a> currently applied to this Store
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-filters Ext JS source
   */
  public native function get filters():MixedCollection;

  /**
   * @private
   */
  public native function set filters(value:MixedCollection):void;

  /**
   True if a model was created implicitly for this Store. This happens if a fields array is passed to the Store's constructor instead of a model constructor or name.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-implicitModel Ext JS source
   */
  public native function get implicitModel():Boolean;

  /**
   * @private
   */
  public native function set implicitModel(value:Boolean):void;

  /**
   True if the Store has already been destroyed via <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-destroyStore">destroyStore</a>. If this is true, the reference to Store should be deleted as it will not function correctly any more.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-isDestroyed Ext JS source
   */
  public native function get isDestroyed():Boolean;

  /**
   * @private
   */
  public native function set isDestroyed(value:Boolean):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-modelDefaults Ext JS source
   */
  public native function get modelDefaults():Object;

  /**
   * @private
   */
  public native function set modelDefaults(value:Object):void;

  /**
   Temporary cache in which removed model instances are kept until successfully synchronised with a Proxy, at which point this is cleared.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-removed Ext JS source
   */
  public native function get removed():Array;

  /**
   * @private
   */
  public native function set removed(value:Array):void;

  /**
   If true, any sorters attached to this Store will be run after loading data, before the datachanged event is fired. Defaults to true, igored if <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-remoteSort">remoteSort</a> is true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-sortOnLoad Ext JS source
   */
  public native function get sortOnLoad():Boolean;

  /**
   * @private
   */
  public native function set sortOnLoad(value:Boolean):void;

  /**
   Stores the current sort direction ('ASC' or 'DESC') for each field. Used internally to manage the toggling of sort direction per field. Read only
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-sortToggle Ext JS source
   */
  public native function get sortToggle():Object;

  /**
   * @private
   */
  public native function set sortToggle(value:Object):void;

  /**
   The collection of <a href="Ext.util.Sorter.html">Sorters</a> currently applied to this Store.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#prop-Ext.data.AbstractStore-sorters Ext JS source
   */
  public native function get sorters():MixedCollection;

  /**
   * @private
   */
  public native function set sorters(value:MixedCollection):void;

  /**
   If data is not specified, and if autoLoad is true or an Object, this store's load method is automatically called after creation. If the value of autoLoad is an Object, this Object will be passed to the store's load method. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoLoad():*;

  /**
   True to automatically sync the Store with its Proxy after every edit to one of its Records. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoSave():Boolean;

  /**
   Optional unique identifier for this store. If present, this Store will be registered with the <a href="Ext.StoreMgr.html">Ext.StoreMgr</a>, making it easy to reuse elsewhere. Defaults to undefined.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get storeId():String;

  /**
   *
   *
   * @param record The model instance that was edited
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-afterCommit Ext JS source
   */
  public native function afterCommit(record:Model):void;

  /**
   *
   *
   * @param record The model instance that was edited
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-afterEdit Ext JS source
   */
  public native function afterEdit(record:Model):void;

  /**
   *
   *
   * @param record The model instance that was edited
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-afterReject Ext JS source
   */
  public native function afterReject(record:Model):void;

  /**
   *
   *
   * @param field The field to create the sorter for
   * @param direction The direction to sort by (defaults to "ASC")
   * @return A function which sorts by the field/direction combination provided
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-createSortFunction Ext JS source
   */
  public native function createSortFunction(field:String, direction:String):Function;

  /**
   *
   *
   * @param filters The filters array
   * @return Array of Ext.util.Filter objects
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-decodeFilters Ext JS source
   */
  public native function decodeFilters(filters:Array):Array;

  /**
   *
   *
   * @param sorters The sorters array
   * @return Array of Ext.util.Sorter objects
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-decodeSorters Ext JS source
   */
  public native function decodeSorters(sorters:Array):Array;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-filterDirty Ext JS source
   */
  public native function filterDirty():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-filterNew Ext JS source
   */
  public native function filterNew():void;

  /**
   *
   *
   * @return The listeners object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-getBatchListeners Ext JS source
   */
  public native function getBatchListeners():Object;

  /**
   * Returns all Model instances that are either currently a phantom (e.g. have no id), or have an ID but have not yet been saved on this Store (this happens when adding a non-phantom record from another Store into this one)
   *
   * @return The Model instances
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-getNewRecords Ext JS source
   */
  public native function getNewRecords():Array;

  /**
   * Returns the proxy currently attached to this proxy instance
   *
   * @return The Proxy instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-getProxy Ext JS source
   */
  public native function getProxy():Proxy;

  /**
   * Returns an object describing the current sort state of this Store.
   *
   * @return The sort state of the Store. An object with two properties:<ul><li><b>field : String</b><p style="font-weight: bold" class="sub-desc">The name of the field by which the Records are sorted.</p></li><li><b>direction : String</b><p style="font-weight: bold" class="sub-desc">The sort order, 'ASC' or 'DESC' (case-sensitive).</p></li></ul><b>See <tt><a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-sortInfo">sortInfo</a></tt> for additional details.</b>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-getSortState Ext JS source
   */
  public native function getSortState():Object;

  /**
   * Returns all Model instances that have been updated in the Store but not yet synchronized with the Proxy
   *
   * @return The updated Model instances
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-getUpdatedRecords Ext JS source
   */
  public native function getUpdatedRecords():Array;

  /**
   * Loads the Store using its configured <a href="output/Ext.data.AbstractStore.html#Ext.data.AbstractStore-proxy">proxy</a>.
   *
   * @param options Optional config object. This is passed into the <a href="Ext.data.Operation.html">Operation</a> object that is created and then sent to the proxy's <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-read">Ext.data.Proxy.read</a> function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-load Ext JS source
   */
  public native function load(options:Object):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-onBatchComplete Ext JS source
   */
  public native function onBatchComplete():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-onBatchOperationComplete Ext JS source
   */
  public native function onBatchOperationComplete():void;

  /**
   * Sets the Store's Proxy by string, config object or Proxy instance
   *
   * @param proxy The new Proxy, which can be either a type string, a configuration object or an Ext.data.Proxy instance
   * @return The attached Proxy object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-setProxy Ext JS source
   */
  public native function setProxy(proxy:*):Proxy;

  /**
   * Synchronizes the Store with its Proxy. This asks the Proxy to batch together any new, updated and deleted records in the store, updating the Store's internal representation of the records as each operation completes.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStore.html#method-Ext.data.AbstractStore-sync Ext JS source
   */
  public native function sync():void;

}
}
    