package ext.state {

/**
 * The default Provider implementation which saves state via cookies.
 * <br />Usage:
 <pre><code>
   var cp = new Ext.state.CookieProvider({
       path: "/cgi-bin/",
       expires: new Date(new Date().getTime()+(1000*60*60*24*30)), //30 days
       domain: "extjs.com"
   });
   Ext.state.Manager.setProvider(cp);
 </code></pre>
*/
public class CookieProvider extends Provider {
/**
 * @cfg {String} path The path for which the cookie is active (defaults to root '/' which makes it active for all pages in the site)
 * @cfg {Date} expires The cookie expiration date (defaults to 7 days from now)
 * @cfg {String} domain The domain to save the cookie for.  Note that you cannot specify a different domain than
 * your page is on, but you can specify a sub-domain, or simply the domain itself like 'extjs.com' to include
 * all sub-domains if you need to access cookies across different sub-domains (defaults to null which uses the same
 * domain the page is running on including the 'www' like 'www.extjs.com')
 * @cfg {Boolean} secure True if the site is using SSL (defaults to false)
 * @constructor
 * Create a new CookieProvider
 * @param config The configuration object
 */
  public function CookieProvider(config : Object = null) {
    config = config+1;
  }

  override public native function set(config : String, value : *) : void;
    override public native function clear(name : String) : void;
    protected native function readCookies() : void;
    protected native function setCookie(name, value) : void;
    protected native function clearCookie(name) : void;
}}
