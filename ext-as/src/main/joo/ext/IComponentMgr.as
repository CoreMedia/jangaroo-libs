package ext {

import ext.util.MixedCollection;

/**
 * Provides a registry of all Components (instances of <a href="Ext.Component.html">Ext.Component</a> or any subclass thereof) on a page so that they can be easily accessed by <a href="Ext.Component.html">component</a> <a href="output/Ext.Component.html#Ext.Component-id">id</a> (see <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-get">get</a>, or the convenience method <a href="output/Ext.html#Ext-getCmp">Ext.getCmp</a>).
 <p>This object also provides a registry of available Component <i>classes</i> indexed by a mnemonic code known as the Component's <a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a>. The <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code> provides a way to avoid instantiating child Components when creating a full, nested config object for a complete Ext page.</p><p>A child Component may be specified simply as a <i>config object</i> as long as the correct <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code> is specified so that if and when the Component needs rendering, the correct type can be looked up for lazy instantiation.</p><p>For a list of all available <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtypes</a></code>, see <a href="Ext.Component.html">Ext.Component</a>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton ComponentMgr.</p>
 * @see ext.#ComponentMgr ext.ComponentMgr
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr Sencha Docs Ext JS 3.4
 */
public interface IComponentMgr {

  /**
   The MixedCollection used internally for the component cache. An example usage may be subscribing to events on the MixedCollection to monitor addition or removal.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-property-all Sencha Docs Ext JS 3.4
   */
  function get all():MixedCollection;

  /**
   The ptypes that have been registered with the component manager.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-property-ptypes Sencha Docs Ext JS 3.4
   */
  function get ptypes():Object;

  /**
   * @private
   */
  function set ptypes(value:Object):void;

  /**
   The xtypes that have been registered with the component manager.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-property-types Sencha Docs Ext JS 3.4
   */
  function get types():Object;

  /**
   * @private
   */
  function set types(value:Object):void;

  /**
   * Creates a new Component from the specified config object using the config object's <a href="output/Ext.component.html#Ext.component-xtype">xtype</a> to determine the class to instantiate.
   *
   * @param config A configuration object for the Component you wish to create.
   * @param defaultType The xtype to provide the default Component type if the config object does not contain a <code>xtype</code>. (Optional if the config contains a <code>xtype</code>).
   * @return The newly instantiated Component.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-create Sencha Docs Ext JS 3.4
   */
  function create(config:Object, defaultType:String = null):Component;

  /**
   * Creates a new Plugin from the specified config object using the config object's <a href="output/Ext.component.html#Ext.component-ptype">ptype</a> to determine the class to instantiate.
   *
   * @param config A configuration object for the Plugin you wish to create.
   * @param defaultType The <code>ptype</code> to use if the config object does not contain a <code>ptype</code>. (Optional if the config contains a <code>ptype</code>).
   * @return The newly instantiated Plugin.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-createPlugin Sencha Docs Ext JS 3.4
   */
  function createPlugin(config:Object, defaultType:String = null):Component;

  /**
   * Returns a component by <a href="output/Ext.Component.html#Ext.Component-id">id</a>. For additional details see <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-get">Ext.util.MixedCollection.get</a>.
   *
   * @param id The component <a href="output/Ext.Component.html#Ext.Component-id">id</a>
   * @return The Component, <code>undefined</code> if not found, or <code>null</code> if a Class was found.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-get Sencha Docs Ext JS 3.4
   */
  function get(id:String):Component;

  /**
   * Checks if a Plugin type is registered.
   *
   * @param ptype The mnemonic string by which the Plugin class may be looked up
   * @return Whether the type is registered.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-isPluginRegistered Sencha Docs Ext JS 3.4
   */
  function isPluginRegistered(ptype:String):Boolean;

  /**
   * Checks if a Component type is registered.
   *
   * @param xtype The mnemonic string by which the Component class may be looked up
   * @return Whether the type is registered.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-isRegistered Sencha Docs Ext JS 3.4
   */
  function isRegistered(xtype:String):Boolean;

  /**
   * Registers a function that will be called when a Component with the specified id is added to ComponentMgr. This will happen on instantiation.
   *
   * @param id The component <a href="output/Ext.Component.html#Ext.Component-id">id</a>
   * @param fn The callback function
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to the Component.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-onAvailable Sencha Docs Ext JS 3.4
   */
  function onAvailable(id:String, fn:Function, scope:Object):void;

  /**
   * Registers a component.
   *
   * @param c The component
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-register Sencha Docs Ext JS 3.4
   */
  function register(c:Component):void;

  /**
   * Registers a new Plugin constructor, keyed by a new <a href="output/Ext.Component.html#Ext.Component-ptype">Ext.Component.ptype</a>.
   <p>Use this method (or its alias <a href="output/Ext.html#Ext-preg">Ext.preg</a>) to register new plugins for <a href="Ext.Component.html">Ext.Component</a>s so that lazy instantiation may be used when specifying Plugins.</p>
   *
   * @param ptype The mnemonic string by which the Plugin class may be looked up.
   * @param cls The new Plugin class.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-registerPlugin Sencha Docs Ext JS 3.4
   */
  function registerPlugin(ptype:String, cls:Class):void;

  /**
   * Registers a new Component constructor, keyed by a new <a href="output/Ext.Component.html#Ext.Component-xtype">Ext.Component.xtype</a>.
   <p>Use this method (or its alias <a href="output/Ext.html#Ext-reg">Ext.reg</a>) to register new subclasses of <a href="Ext.Component.html">Ext.Component</a> so that lazy instantiation may be used when specifying child Components. see <a href="output/Ext.Container.html#Ext.Container-items">Ext.Container.items</a></p>
   *
   * @param xtype The mnemonic string by which the Component class may be looked up.
   * @param cls The new Component class.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-registerType Sencha Docs Ext JS 3.4
   */
  function registerType(xtype:String, cls:Class):void;

  /**
   * Unregisters a component.
   *
   * @param c The component
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr-method-unregister Sencha Docs Ext JS 3.4
   */
  function unregister(c:Component):void;

}
}
    