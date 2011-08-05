package ext.config {

import joo.JavaScriptObject;

/**
 * The default Provider implementation which saves state via cookies. <br/>Usage: <pre><code>  var cp = new Ext.state.CookieProvider({
 path: "/cgi-bin/",
 expires: new Date(new Date().getTime()+(1000&#42;60&#42;60&#42;24&#42;30)), //30 days
 domain: "extjs.com"
 });
 Ext.state.Manager.setProvider(cp);
 </code></pre>
 * <p>This class serves as a typed config object for constructor of class CookieProvider.</p>
 *
 * @see ext.state.CookieProvider
 */
[ExtConfig(target="ext.state.CookieProvider")]
public class cookieprovider extends JavaScriptObject {

  public function cookieprovider(config:Object = null) {
    super(config);
  }


  /**
   The domain to save the cookie for. Note that you cannot specify a different domain than your page is on, but you can specify a sub-domain, or simply the domain itself like 'extjs.com' to include all sub-domains if you need to access cookies across different sub-domains (defaults to null which uses the same domain the page is running on including the 'www' like 'www.extjs.com')
   */
  public native function get domain():String;

  /**
   * @private
   */
  public native function set domain(value:String):void;

  /**
   The cookie expiration date (defaults to 7 days from now)
   */
  public native function get expires():Date;

  /**
   * @private
   */
  public native function set expires(value:Date):void;

  /**
   The path for which the cookie is active (defaults to root '/' which makes it active for all pages in the site)
   */
  public native function get path():String;

  /**
   * @private
   */
  public native function set path(value:String):void;

  /**
   True if the site is using SSL (defaults to false)
   */
  public native function get secure():Boolean;

  /**
   * @private
   */
  public native function set secure(value:Boolean):void;


}
}
    