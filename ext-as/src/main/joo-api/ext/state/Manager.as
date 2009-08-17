package ext.state {
/**
 * This is the global state manager. By default all components that are "state aware" check this class
 * for state information if you don't pass them a custom state provider. In order for this class
 * to be useful, it must be initialized with a provider when your application initializes. Example usage:
 <pre><code>
// in your initialization function
init : function(){
   Ext.state.Manager.setProvider(new Ext.state.CookieProvider());
   var win = new Window(...);
   win.restoreState();
}
 </code></pre>
*/
public class Manager {
/**
 * @singleton
 */
        /**
         * Configures the default state provider for your application
         * @param stateProvider The state provider to set
         */
        public static native function setProvider(stateProvider : Provider) : void;
        /**
         * Returns the current value for a key
         * @param name The key name
         * @param defaultValue The default value to return if the key lookup does not match
         * @return The state data
         */
        public static native function get(name : String, defaultValue : *) : *;
        /**
         * Sets the value for a key
         * @param name The key name
         * @param value The state data
         */
         public static native function set(name : String, value : *) : void;
        /**
         * Clears a value from the state
         * @param name The key name
         */
        public static native function clear(name : String) : void;
        /**
         * Gets the currently configured state provider
         * @return The state provider
         */
        public static native function getProvider() : Provider;
}}
