package ext.util {


/**
 * See <a href="Ext.Router.html">Ext.Router</a>.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.router
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Router.html#cls-Ext.util.Router Ext JS source
 */
public class Router extends Observable {

  /**
   *
   *
   * @see ext.config.router
   */
  public function Router() {
    super();
  }

  /**
   * Connects a url-based route to a controller/action pair plus additional params
   *
   * @param url The url to recognize
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Router.html#method-Ext.util.Router-connect Ext JS source
   */
  public native function connect(url:String):void;

  /**
   * Convenience method which just calls the supplied function with the Router instance. Example usage: <pre><code>Ext.Router.draw(function(map) {
   map.connect('activate/:token', {controller: 'users', action: 'activate'});
   map.connect('home',            {controller: 'index', action: 'home'});
   });
   </code></pre>
   *
   * @param fn The fn to call
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Router.html#method-Ext.util.Router-draw Ext JS source
   */
  public native function draw(fn:Function):void;

  /**
   * Recognizes a url string connected to the Router, return the controller/action pair plus any additional config associated with it
   *
   * @param url The url to recognize
   * @return If the url was recognized, the controller and action to call, else undefined
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Router.html#method-Ext.util.Router-recognize Ext JS source
   */
  public native function recognize(url:String):*;

}
}
    