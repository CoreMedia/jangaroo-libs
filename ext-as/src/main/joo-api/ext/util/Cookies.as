package ext.util {
/**
 * Utility class for managing and interacting with cookies.
*/
public class Cookies {
/**
 * @singleton
 */
    /**
     * Create a cookie with the specified name and value. Additional settings
     * for the cookie may be optionally specified (for example: expiration,
     * access restriction, SSL).
     * @param name
     * @param value
     * @param expires Specify an expiration date the
     * cookie is to persist until.  Note that the specified Date object will
     * be converted to Greenwich Mean Time (GMT). 
     * @param path Setting a path on the cookie restricts
     * access to pages that match that path. Defaults to all pages (<code>'/'</code>). 
     * @param domain Setting a domain restricts access to
     * pages on a given domain (typically used to allow cookie access across
     * subdomains). For example, "extjs.com" will create a cookie that can be
     * accessed from any subdomain of extjs.com, including www.extjs.com,
     * support.extjs.com, etc.
     * @param secure Specify true to indicate that the cookie
     * should only be accessible via SSL on a page using the HTTPS protocol.
     * Defaults to <code>false</code>. Note that this will only work if the page
     * calling this code uses the HTTPS protocol, otherwise the cookie will be
     * created with default options.
     */
    public static native function set(name : Object, value : Object, expires : Object = undefined, path : String = undefined, domain : String = undefined, secure : Boolean = undefined) : void;
    /**
     * Retrieves cookies that are accessible by the current page. If a cookie
     * does not exist, <code>get()</code> returns <code>null</code>.  The following
     * example retrieves the cookie called "valid" and stores the String value
     * in the variable <code>validStatus</code>.
     * <pre><code>
     * var validStatus = Ext.util.Cookies.get("valid");
     * </code></pre>
     * @param name The name of the cookie to get
     * @return Returns the cookie value for the specified name;
     * null if the cookie name does not exist.
     */
    public static native function get(name : Object) : *;
    /**
     * Removes a cookie with the provided name from the browser
     * if found.
     * @param name The name of the cookie to remove
     */
    public static native function clear(name : Object) : void;
    /**
     * @private
     */
    public static native function getCookieVal(offset) : void;
}}
