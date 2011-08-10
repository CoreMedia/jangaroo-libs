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
 * @see ext.config.cookieprovider
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CookieProvider.html#cls-Ext.state.CookieProvider Ext JS source
 */
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get domain():String;

  /**
   The cookie expiration date (defaults to 7 days from now)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get expires():Date;

  /**
   The path for which the cookie is active (defaults to root '/' which makes it active for all pages in the site)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get path():String;

  /**
   True if the site is using SSL (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get secure():Boolean;

}
}
    