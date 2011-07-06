package ext {

/**
 * A Plugin provides custom functionality for a component declaring it in its <code>plugins</code> property.
 * The only requirement for a valid plugin is that it contain an <code>init</code> method that accepts a reference of
 * type ext.Component.
 * <p>When a component is created, if any plugins are given, the component will call the <code>init</code> method on
 * each plugin, passing a reference to itself.  Each plugin can then call methods or respond to events on the
 * component as needed to provide its functionality.</p>
 * <p>A plugin can be instantiated explicitly or be given a "ptype" and registered with the component manager
 * using <code>ext.ComponentMgr.registerPlugin(pytpe, class)</code>. Once registered, plugins of the given type can be
 * instantiated using <code>ext.ComponentMgr.createPlugin(pluginConfig, defaultType)</code>.</p>
 *
 * @see ext.Component
 * @see ext.ComponentMgr#registerPlugin()
 * @see ext.ComponentMgr#createPlugin()
 */
public interface Plugin {

  /**
   * Called by Component constructor for each Plugin stored in its <code>plugins</code> property.
   * @param component the Component to be configured by this Plugin.
   */
  function init(component:Component):void;

}
}