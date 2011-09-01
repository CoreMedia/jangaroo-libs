package ext {


/**
 * Provides a registry of available Plugin <i>classes</i> indexed by a mnemonic code known as the Plugin's ptype. The <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code> provides a way to avoid instantiating child Components when creating a full, nested config object for a complete Ext page.
 <p>A child Component may be specified simply as a <i>config object</i> as long as the correct <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code> is specified so that if and when the Component needs rendering, the correct type can be looked up for lazy instantiation.</p><p>For a list of all available <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtypes</a></code>, see <a href="Ext.Component.html">Ext.Component</a>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class defines the type of the singleton PluginMgr.</p>
 * @see ext.#PluginMgr ext.PluginMgr
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PluginMgr.html#cls-Ext.PluginMgr Ext JS source
 */
public class PluginMgrClass extends AbstractManager {

  /**
   * @private
   *
   */
  public function PluginMgrClass() {
    super();
  }

  /**
   * Creates a new Plugin from the specified config object using the config object's <a href="output/Ext.component.html#Ext.component-ptype">ptype</a> to determine the class to instantiate.
   *
   * @param config The config object
   * @param defaultType If no type is discovered in the config object, we fall back to this type
   * @return The newly instantiated Plugin.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PluginMgr.html#method-Ext.PluginMgr-create Ext JS source
   */
  override public native function create(config:Object, defaultType:String):*;

  /**
   * Returns all plugins registered with the given type. Here, 'type' refers to the type of plugin, not its ptype.
   *
   * @param type The type to search for
   * @param defaultsOnly True to only return plugins of this type where the plugin's isDefault property is truthy
   * @return All matching plugins
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PluginMgr.html#method-Ext.PluginMgr-findByType Ext JS source
   */
  public native function findByType(type:String, defaultsOnly:Boolean):Array;

}
}
    