package ext.state {


/**
 * This is the global state manager. By default all components that are "state aware" check this class for state information if you don't pass them a custom state provider. In order for this class to be useful, it must be initialized with a provider when your application initializes. Example usage: <pre><code>// in your initialization function
 init : function(){
 Ext.state.Manager.setProvider(new Ext.state.CookieProvider());
 var win = new Window(...);
 win.restoreState();
 }
 </code></pre>
 * @see ext.state.IManager
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StateManager.html#cls-Ext.state.Manager Ext JS source
 */
public const Manager:IManager;

}
