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
 * @see ext.state.IManager
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Manager Sencha Docs Ext JS 3.4
 */
[Native]
public const Manager:IManager;

}
