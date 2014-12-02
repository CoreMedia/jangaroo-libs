package ext.config {

import ext.Component;

import joo.JavaScriptObject;

/**
 * A Plugin provides custom functionality for a component declaring it in its <code>plugins</code> property.
 * <p>When a component is created, for all plugins given as config objects, the component will add a reference
 * to itself to their config object under the config option <code>component</code>.
 * Each plugin can then call methods or respond to events on the
 * component as needed to provide its functionality.</p>
 * <p>Note that this is an Ext AS extension to Ext JS to support declarative EXML plugins.
 * Usually, Ext JS only hands the component reference to the plugin's <code>init()</code> method,
 * which is too late for the constructor code generated from EXML.
 * </p>
 *
 * @see ext.config.component#plugins
 * @see #component
 * @see ext.Plugin#init()
 */
[ExtConfig(target="ext.Plugin", ptype="plugin")]
public dynamic class plugin extends JavaScriptObject {

  public static native function get ptype():String;

  /**
   * <p>Only intended to be used by subclasses implementing declarative plugins.</p>
   *
   * @see ext.Plugin
   */
  public function plugin(config:Object = null) {
    super(config || {});
  }

  /**
   * The component this plugin is plugged in to, i.e. the component
   * usually handed over in the Plugin#init() method.
   * This allow a plugin written in EXML to access the component as
   * if it would implement the init() method.
   * It is recommended to define a local EXML variable that allows
   * typed access to the component and/or its initial config.
   */
  public native function get component():Component;
  /**
   * @private
   */
  public native function set component(value:Component):void;
}
}
