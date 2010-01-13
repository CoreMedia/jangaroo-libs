package ext {
import ext.data.Connection;

/**
 * <p>The global Ajax request class that provides a simple way to make Ajax requests
 * with maximum flexibility.</p>
 * <p>Since ext.Ajax is a singleton, you can set common properties/events for it once
 * and override them at the request function level only if necessary.</p>
 * <p>Common <b>Properties</b> you may want to set are:<div class="mdetail-params"><ul>
 * <li><b><code><b class='link' title='#method'>method</b></code></b><p class="sub-desc"></p></li>
 * <li><b><code><b class='link' title='#extraParams'>extraParams</b></code></b><p class="sub-desc"></p></li>
 * <li><b><code><b class='link' title='#url'>url</b></code></b><p class="sub-desc"></p></li>
 * </ul></div>
 * <pre><code>
&#47;/ Default headers to pass in every request
ext.Ajax.defaultHeaders = {
    'Powered-By': 'Ext'
};
 * </code></pre> 
 * </p>
 * <p>Common <b>Events</b> you may want to set are:<div class="mdetail-params"><ul>
 * <li><b><code><b class='link' title='ext.data.Connection#beforerequest'>beforerequest</b></code></b><p class="sub-desc"></p></li>
 * <li><b><code><b class='link' title='ext.data.Connection#requestcomplete'>requestcomplete</b></code></b><p class="sub-desc"></p></li>
 * <li><b><code><b class='link' title='ext.data.Connection#requestexception'>requestexception</b></code></b><p class="sub-desc"></p></li>
 * </ul></div>
 * <pre><code>
&#47;/ Example: show a spinner during all Ajax requests
ext.Ajax.on('beforerequest', this.showSpinner, this);
ext.Ajax.on('requestcomplete', this.hideSpinner, this);
ext.Ajax.on('requestexception', this.hideSpinner, this);
 * </code></pre> 
 * </p>
 * <p>An example request:</p>
 * <pre><code>
&#47;/ Basic request
ext.Ajax.<b class='link' title='ext.data.Connection#request'>request</b>({
   url&#58; 'foo.php',
   success&#58; someFn,
   failure&#58; otherFn,
   headers&#58; {
       'my-header': 'foo'
   },
   params&#58; { foo: 'bar' }
});

&#47;/ Simple ajax form submission
ext.Ajax.<b class='link' title='ext.data.Connection#request'>request</b>({
    form&#58; 'some-form',
    params&#58; 'foo=bar'
});
 * </code></pre> 
 * </p>
*/
public class Ajax extends Connection {
/**
 * @singleton
 */
  public function Ajax(config : Object) {
    super(config);
  }
    /**
     * @cfg {String} url @hide
     */
    /**
     * @cfg {Object} extraParams @hide
     */
    /**
     * @cfg {Object} defaultHeaders @hide
     */
    /**
     * @cfg {String} method (Optional) @hide
     */
    /**
     * @cfg {Number} timeout (Optional) @hide
     */
    /**
     * @cfg {Boolean} autoAbort (Optional) @hide
     */
    /**
     * @cfg {Boolean} disableCaching (Optional) @hide
     */
    /**
     * @property  disableCaching
     * True to add a unique cache-buster param to GET requests. (defaults to true)
     */
    /**
     * @property  url
     * The default URL to be used for requests to the server. (defaults to undefined)
     * If the server receives all requests through one URL, setting this once is easier than
     * entering it on every request.
     */
    /**
     * @property  extraParams
     * An object containing properties which are used as extra parameters to each request made
     * by this object (defaults to undefined). Session information and other data that you need
     * to pass with each request are commonly put here.
     */
    /**
     * @property  defaultHeaders
     * An object containing request headers which are added to each request made by this object
     * (defaults to undefined).
     */
    /**
     * @property  method
     * The default HTTP method to be used for requests. Note that this is case-sensitive and
     * should be all caps (defaults to undefined; if not set but params are present will use
     * <code>"POST"</code>, otherwise will use <code>"GET"</code>.)
     */
    /**
     * @property  timeout
     * The timeout in milliseconds to be used for requests. (defaults to 30000)
     */
    /**
     * @property  autoAbort
     * Whether a new request should abort any pending requests. (defaults to false)
     */
    public static var autoAbort  : Boolean;
    /**
     * Serialize the passed form into a url encoded string
     * @param form
     * @return 
     */
    public static native function serializeForm(form : *) : String;

}}
