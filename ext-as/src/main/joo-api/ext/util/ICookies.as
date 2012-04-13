package ext.util {


/**
 * Utility class for managing and interacting with cookies.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Cookies.</p>
 * @see ext.util.#Cookies ext.util.Cookies
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Cookies Sencha Docs Ext JS 3.4
 */
public interface ICookies {

  /**
   * Removes a cookie with the provided name from the browser if found by setting its expiration date to sometime in the past.
   *
   * @param name The name of the cookie to remove
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Cookies-method-clear Sencha Docs Ext JS 3.4
   */
  function clear(name:String):void;

  /**
   * Retrieves cookies that are accessible by the current page. If a cookie does not exist, <code>get()</code> returns <tt>null</tt>. The following example retrieves the cookie called "valid" and stores the String value in the variable <tt>validStatus</tt>. <pre><code>var validStatus = Ext.util.Cookies.get("valid");
   </code></pre>
   *
   * @param name The name of the cookie to get
   * @return Returns the cookie value for the specified name; null if the cookie name does not exist.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Cookies-method-get Sencha Docs Ext JS 3.4
   */
  function get(name:String):*;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Cookies-method-getCookieVal Sencha Docs Ext JS 3.4
   */
  function getCookieVal():void;

  /**
   * Create a cookie with the specified name and value. Additional settings for the cookie may be optionally specified (for example: expiration, access restriction, SSL).
   *
   * @param name The name of the cookie to set.
   * @param value The value to set for the cookie.
   * @param expires Specify an expiration date the cookie is to persist until. Note that the specified Date object will be converted to Greenwich Mean Time (GMT).
   * @param path Setting a path on the cookie restricts access to pages that match that path. Defaults to all pages (<tt>'/'</tt>).
   * @param domain Setting a domain restricts access to pages on a given domain (typically used to allow cookie access across subdomains). For example, "extjs.com" will create a cookie that can be accessed from any subdomain of extjs.com, including www.extjs.com, support.extjs.com, etc.
   * @param secure Specify true to indicate that the cookie should only be accessible via SSL on a page using the HTTPS protocol. Defaults to <tt>false</tt>. Note that this will only work if the page calling this code uses the HTTPS protocol, otherwise the cookie will be created with default options.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Cookies-method-set Sencha Docs Ext JS 3.4
   */
  function set(name:String, value:*, expires:Object = null, path:String = null, domain:String = null, secure:Boolean = false):void;

}
}
    