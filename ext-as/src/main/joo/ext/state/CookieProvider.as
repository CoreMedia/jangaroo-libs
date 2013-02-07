package ext.state {
import ext.config.cookieprovider;

/**
 * The default Provider implementation which saves state via cookies. <br/>Usage: <pre><code>  var cp = new Ext.state.CookieProvider({
 path: "/cgi-bin/",
 expires: new Date(new Date().getTime()+(1000&#42;60&#42;60&#42;24&#42;30)), //30 days
 domain: "extjs.com"
 });
 Ext.state.Manager.setProvider(cp);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.cookieprovider
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.CookieProvider Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.state.CookieProvider")]
public class CookieProvider extends Provider {

  /**
   * Create a new CookieProvider
   *
   * @param config The configuration object
   * @see ext.config.cookieprovider
   */
  public function CookieProvider(config:cookieprovider) {
    super();
  }

  /**
   The domain to save the cookie for. Note that you cannot specify a different domain than your page is on, but you can specify a sub-domain, or simply the domain itself like 'extjs.com' to include all sub-domains if you need to access cookies across different sub-domains (defaults to null which uses the same domain the page is running on including the 'www' like 'www.extjs.com')
   */
  public native function get domain():String;

  /**
   The cookie expiration date (defaults to 7 days from now)
   */
  public native function get expires():Date;

  /**
   The path for which the cookie is active (defaults to root '/' which makes it active for all pages in the site)
   */
  public native function get path():String;

  /**
   True if the site is using SSL (defaults to false)
   */
  public native function get secure():Boolean;

}
}
    