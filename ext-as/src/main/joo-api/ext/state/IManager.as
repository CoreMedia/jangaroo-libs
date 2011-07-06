package ext.state {


/**
 * This is the global state manager. By default all components that are "state aware" check this class for state information if you don't pass them a custom state provider. In order for this class to be useful, it must be initialized with a provider when your application initializes. Example usage: <pre><code>// in your initialization function
 init : function(){
 Ext.state.Manager.setProvider(new Ext.state.CookieProvider());
 var win = new Window(...);
 win.restoreState();
 }
 </code></pre>
 * <p>This interface defines the type of the singleton Manager.</p>
 * @see ext.state.#Manager ext.state.Manager
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StateManager.html#cls-Ext.state.Manager Ext JS source
 */
public interface IManager {

  /**
   * Clears a value from the state
   *
   * @param name The key name
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StateManager.html#method-Ext.state.Manager-clear Ext JS source
   */
  function clear(name:String):void;

  /**
   * Returns the current value for a key
   *
   * @param name The key name
   * @param defaultValue The default value to return if the key lookup does not match
   * @return The state data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StateManager.html#method-Ext.state.Manager-get Ext JS source
   */
  function get(name:String, defaultValue:*):*;

  /**
   * Gets the currently configured state provider
   *
   * @return The state provider
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StateManager.html#method-Ext.state.Manager-getProvider Ext JS source
   */
  function getProvider():Provider;

  /**
   * Sets the value for a key
   *
   * @param name The key name
   * @param value The state data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StateManager.html#method-Ext.state.Manager-set Ext JS source
   */
  function set(name:String, value:*):void;

  /**
   * Configures the default state provider for your application
   *
   * @param stateProvider The state provider to set
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StateManager.html#method-Ext.state.Manager-setProvider Ext JS source
   */
  function setProvider(stateProvider:Provider):void;

}
}
    