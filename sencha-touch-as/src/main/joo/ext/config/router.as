package ext.config {


/**
 * The Router is used to map urls to <a href="Ext.Controller.html">controller</a>/action pairs. It can be used whenever an application wishes to provide history and deep linking support. Every <a href="Ext.Application.html">Ext.Application</a> can set up Routes using the default <a href="Ext.Router.html">Ext.Router</a> instance, supplying application-specific routes like this:
 <pre><code>//Note the # in the url examples below
 Ext.Router.draw(function(map) {
 //maps the url http://mydomain.com/#dashboard to the home controller's index action
 map.connect('dashboard', {controller: 'home', action: 'index'});

 //fallback route - would match routes like http://mydomain.com/#users/list to the 'users' controller's
 //'list' action
 map.connect(':controller/:action');
 });
 </code></pre><p>The Router is concerned only with the segment of the url after the hash (#) character. This segment is parsed by the <a href="Ext.Dispatcher.html">Dispatcher</a> and passed to the Router's <a href="output/Ext.Router.html#Ext.Router-recognize">recognize</a> method. Most of the time you will not need to modify any of the behavior of the Router - it is all handled internally by the application architecture.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Router.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.RouterClass
 */
[ExtConfig(target="ext.RouterClass")]
public class router extends observable {

  public function router(config:Object = null) {

    super(config);
  }


}
}
    