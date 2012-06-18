package ext {

import ext.form.Number;
import ext.util.MixedCollection;

/**
 * Base Manager class - extended by ComponentMgr and PluginMgr
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#cls-Ext.AbstractManager Ext JS source
 */
[Native]
public class AbstractManager {

  /**
   *
   *
   */
  public function AbstractManager() {
    super();
  }

  /**
   Contains all of the items currently managed
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#prop-Ext.AbstractManager-all Ext JS source
   */
  public native function get all():MixedCollection;

  /**
   * @private
   */
  public native function set all(value:MixedCollection):void;

  /**
   * Creates and returns an instance of whatever this manager manages, based on the supplied type and config object
   *
   * @param config The config object
   * @param defaultType If no type is discovered in the config object, we fall back to this type
   * @return The instance of whatever this manager is managing
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#method-Ext.AbstractManager-create Ext JS source
   */
  public native function create(config:Object, defaultType:String = null):*;

  /**
   * Executes the specified function once for each item in the collection. Returning false from the function will cease iteration. The paramaters passed to the function are: <div class="mdetail-params"><ul><li><b>key</b> : String<p class="sub-desc">The key of the item</p></li><li><b>value</b> : Number<p class="sub-desc">The value of the item</p></li><li><b>length</b> : Number<p class="sub-desc">The total number of items in the collection</p></li></ul></div>
   *
   * @param fn The function to execute.
   * @param scope The scope to execute in. Defaults to <tt>this</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#method-Ext.AbstractManager-each Ext JS source
   */
  public native function each(fn:Object, scope:Object):void;

  /**
   * Returns a component by <a href="output/Ext.Component.html#Ext.Component-id">id</a>. For additional details see <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-get">Ext.util.MixedCollection.get</a>.
   *
   * @param id The component <a href="output/Ext.Component.html#Ext.Component-id">id</a>
   * @return The Component, <code>undefined</code> if not found, or <code>null</code> if a Class was found.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#method-Ext.AbstractManager-get Ext JS source
   */
  public native function get(id:String):Component;

  /**
   * Gets the number of items in the collection.
   *
   * @return The number of items in the collection.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#method-Ext.AbstractManager-getCount Ext JS source
   */
  public native function getCount():ext.form.Number;

  /**
   * Checks if a Component type is registered.
   *
   * @param xtype The mnemonic string by which the Component class may be looked up
   * @return Whether the type is registered.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#method-Ext.AbstractManager-isRegistered Ext JS source
   */
  public native function isRegistered(xtype:Component):Boolean;

  /**
   * Registers a function that will be called when a Component with the specified id is added to the manager. This will happen on instantiation.
   *
   * @param id The component <a href="output/Ext.Component.html#Ext.Component-id">id</a>
   * @param fn The callback function
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to the Component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#method-Ext.AbstractManager-onAvailable Ext JS source
   */
  public native function onAvailable(id:String, fn:Function, scope:Object):void;

  /**
   * Registers an item to be managed
   *
   * @param item The item to register
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#method-Ext.AbstractManager-register Ext JS source
   */
  public native function register(item:*):void;

  /**
   * Registers a new Component constructor, keyed by a new <a href="output/Ext.Component.html#Ext.Component-xtype">Ext.Component.xtype</a>.
   <p>Use this method (or its alias <a href="output/Ext.html#Ext-reg">Ext.reg</a>) to register new subclasses of <a href="Ext.Component.html">Ext.Component</a> so that lazy instantiation may be used when specifying child Components. see <a href="output/Ext.Container.html#Ext.Container-items">Ext.Container.items</a></p>
   *
   * @param xtype The mnemonic string by which the Component class may be looked up.
   * @param cls The new Component class.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#method-Ext.AbstractManager-registerType Ext JS source
   */
  public native function registerType(xtype:String, cls:Class):void;

  /**
   * Unregisters a component by removing it from this manager
   *
   * @param item The item to unregister
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractManager.html#method-Ext.AbstractManager-unregister Ext JS source
   */
  public native function unregister(item:*):void;

}
}
    