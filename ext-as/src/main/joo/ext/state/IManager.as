package ext.state {


/**
 * This is the global state manager. By default all components that are "state aware" check this class for state information if you don't pass them a custom state provider. In order for this class to be useful, it must be initialized with a provider when your application initializes. Example usage: <pre><code>// in your initialization function
 init : function(){
 Ext.state.Manager.setProvider(new Ext.state.CookieProvider());
 var win = new Window(...);
 win.restoreState();
 }
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Manager.</p>
 * @see ext.state.#Manager ext.state.Manager
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Manager Sencha Docs Ext JS 3.4
 */
public interface IManager {

  /**
   * Clears a value from the state
   *
   * @param name The key name
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Manager-method-clear Sencha Docs Ext JS 3.4
   */
  function clear(name:String):void;

  /**
   * Returns the current value for a key
   *
   * @param name The key name
   * @param defaultValue The default value to return if the key lookup does not match
   * @return The state data
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Manager-method-get Sencha Docs Ext JS 3.4
   */
  function get(name:String, defaultValue:*):*;

  /**
   * Gets the currently configured state provider
   *
   * @return The state provider
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Manager-method-getProvider Sencha Docs Ext JS 3.4
   */
  function getProvider():Provider;

  /**
   * Sets the value for a key
   *
   * @param name The key name
   * @param value The state data
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Manager-method-set Sencha Docs Ext JS 3.4
   */
  function set(name:String, value:*):void;

  /**
   * Configures the default state provider for your application
   *
   * @param stateProvider The state provider to set
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Manager-method-setProvider Sencha Docs Ext JS 3.4
   */
  function setProvider(stateProvider:Provider):void;

}
}
    