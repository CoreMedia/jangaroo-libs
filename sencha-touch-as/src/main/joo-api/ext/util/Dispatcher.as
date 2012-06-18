package ext.util {


/**
 * Fires before an interaction is dispatched. Return false from any listen to cancel the dispatch
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>interaction:ext.Interaction</code>
 The Interaction about to be dispatched
 *       </li>

 * </ul>
 */
[Event(name="before-dispatch")]

/**
 * Fired once an Interaction has been dispatched
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>interaction:ext.Interaction</code>
 The Interaction that was just dispatched
 *       </li>

 * </ul>
 */
[Event(name="dispatch")]


/**
 * The Dispatcher class is used to send requests through to a controller action. Usually, only a single Dispatcher is required on the page, and by default a single instance is already created - <a href="Ext.Dispatcher.html">Ext.Dispatcher</a>. See the <a href="Ext.Dispatcher.html">Dispatcher docs</a> for details on how this works.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.dispatcher
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Dispatcher.html#cls-Ext.util.Dispatcher Ext JS source
 */
[Native]
public class Dispatcher extends Observable {

  /**
   *
   *
   * @see ext.config.dispatcher
   */
  public function Dispatcher() {
    super();
  }

  /**
   * Convenience method which returns a function that calls Ext.Dispatcher.redirect. Useful when setting up several listeners that should redirect, e.g.: <pre><code>myComponent.on({
   homeTap : Ext.Dispatcher.createRedirect('home'),
   inboxTap: Ext.Dispatcher.createRedirect('inbox'),
   });
   </code></pre>
   *
   * @param url The url to create the redirect function for
   * @return The redirect function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Dispatcher.html#method-Ext.util.Dispatcher-createRedirect Ext JS source
   */
  public native function createRedirect(url:*):Function;

  /**
   * Dispatches a single interaction to a controller/action pair
   *
   * @param options Options representing at least the controller and action to dispatch to
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Dispatcher.html#method-Ext.util.Dispatcher-dispatch Ext JS source
   */
  public native function dispatch(options:Object):void;

  /**
   * Dispatches to a controller/action pair, adding a new url to the History stack
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Dispatcher.html#method-Ext.util.Dispatcher-redirect Ext JS source
   */
  public native function redirect():void;

}
}
    