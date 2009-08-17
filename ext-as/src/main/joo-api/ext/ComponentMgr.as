package ext {

import ext.util.MixedCollection;

/**
 * <p>Provides a registry of all Components (instances of <b class='link'>ext.Component</b> or any subclass
 * thereof) on a page so that they can be easily accessed by <b class='link' title='ext.Component'>component</b>
 * <b class='link' title='ext.Component#id'>id</b> (see <b class='link'>#get</b>, or the convenience method <b class='link' title='Ext#getCmp'>Ext.getCmp</b>).</p>
 * <p>This object also provides a registry of available Component <i>classes</i>
 * indexed by a mnemonic code known as the Component's <b class='link' title='ext.Component#xtype'>xtype</b>.
 * The <tt><b class='link' title='ext.Component#xtype'>xtype</b></tt> provides a way to avoid instantiating child Components
 * when creating a full, nested config object for a complete Ext page.</p>
 * <p>A child Component may be specified simply as a <i>config object</i>
 * as long as the correct <tt><b class='link' title='ext.Component#xtype'>xtype</b></tt> is specified so that if and when the Component
 * needs rendering, the correct type can be looked up for lazy instantiation.</p>
 * <p>For a list of all available <tt><b class='link' title='ext.Component#xtype'>xtypes</b></tt>, see <b class='link'>ext.Component</b>.</p>
*/
public class ComponentMgr {
/**
 * @singleton
 */
        /**
         * Registers a component.
         * @param c The component
         */
        public static native function register(c : Component) : void;
        /**
         * Unregisters a component.
         * @param c The component
         */
        public static native function unregister(c : Component) : void;
        /**
         * Returns a component by <b class='link' title='ext.Component#id'>id</b>.
         * For additional details see <b class='link'>Ext.util.MixedCollection#get</b>.
         * @param id The component <b class='link' title='ext.Component#id'>id</b>
         * @return The Component, <tt>undefined</tt> if not found, or <tt>null</tt> if a
         * Class was found.
         */
        public static native function get(id : String) : Component;
        /**
         * Registers a function that will be called when a specified component is added to ComponentMgr
         * @param id The component <b class='link' title='ext.Component#id'>id</b>
         * @param fn The callback function
         * @param scope The scope of the callback
         */
        public static native function onAvailable(id : String, fn : Function, scope : Object) : void;
        /**
         * The MixedCollection used internally for the component cache. An example usage may be subscribing to
         * events on the MixedCollection to monitor addition or removal.  Read-only.
         */
        public static var all  : MixedCollection;
        /**
         * Checks if a Component type is registered.
         * @param xtype The mnemonic string by which the Component class may be looked up
         * @return Whether the type is registered.
         */
        public static native function isRegistered(xtype : String) : Boolean;
        /**
         * <p>Registers a new Component constructor, keyed by a new
         * <b class='link'>ext.Component#xtype</b>.</p>
         * <p>Use this method (or its alias <b class='link' title='Ext#reg'>Ext.reg</b>) to register new
         * subclasses of <b class='link'>ext.Component</b> so that lazy instantiation may be used when specifying
         * child Components.
         * see <b class='link'>ext.Container#items</b></p>
         * @param xtype The mnemonic string by which the Component class may be looked up.
         * @param cls The new Component class.
         */
        public static native function registerType(xtype : String, cls : Class) : void;
        /**
         * Creates a new Component from the specified config object using the
         * config object's <b class='link' title='Ext.component#xtype'>xtype</b> to determine the class to instantiate.
         * @param config A configuration object for the Component you wish to create.
         * @param defaultType The constructor to provide the default Component type if
         * the config object does not contain a <tt>xtype</tt>. (Optional if the config contains a <tt>xtype</tt>).
         * @return The newly instantiated Component.
         */
        public static native function create(config : Object, defaultType : Class) : Component;
        /**
         * <p>Registers a new Plugin constructor, keyed by a new
         * <b class='link'>ext.Component#ptype</b>.</p>
         * <p>Use this method (or its alias <b class='link' title='Ext#preg'>Ext.preg</b>) to register new
         * plugins for <b class='link'>ext.Component</b>s so that lazy instantiation may be used when specifying
         * Plugins.</p>
         * @param ptype The mnemonic string by which the Plugin class may be looked up.
         * @param cls The new Plugin class.
         */
        public static native function registerPlugin(ptype : String, cls : Class) : void;
        /**
         * Creates a new Plugin from the specified config object using the
         * config object's <b class='link' title='Ext.component#ptype'>ptype</b> to determine the class to instantiate.
         * @param config A configuration object for the Plugin you wish to create.
         * @param defaultType The constructor to provide the default Plugin type if
         * the config object does not contain a <tt>ptype</tt>. (Optional if the config contains a <tt>ptype</tt>).
         * @return The newly instantiated Plugin.
         */
        public static native function createPlugin(config : Object, defaultType : Class) : Component;
}}
