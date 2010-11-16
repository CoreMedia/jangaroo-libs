package ext {
import ext.data.Connection;

/**
 * The global Ajax request class that provides a simple way to make Ajax requests
 * with maximum flexibility.
 * <p>Since ext.Ajax is a singleton, you can set common properties/events for it once
 * and override them at the request function level only if necessary.</p>
 * <p>Common <b>Properties</b> you may want to set are:</p>
 * <ul>
 * <li><code><b class='link' title='#method'>method</b></code></li>
 * <li><code><b class='link' title='#extraParams'>extraParams</b></code></li>
 * <li><code><b class='link' title='#url'>url</b></code></li>
 * </ul>
 * <pre><code>
// Default headers to pass in every request
ext.Ajax.defaultHeaders = {
    'Powered-By': 'Ext'
};
 * </code></pre> 
 * <p>Common <b>Events</b> you may want to set are:</p>
 * <ul>
 * <li><code><b class='link' title='ext.data.Connection#beforerequest'>beforerequest</b></code></li>
 * <li><code><b class='link' title='ext.data.Connection#requestcomplete'>requestcomplete</b></code></li>
 * <li><code><b class='link' title='ext.data.Connection#requestexception'>requestexception</b></code></li>
 * </ul>
 * <pre><code>
// Example: show a spinner during all Ajax requests
ext.Ajax.on('beforerequest', this.showSpinner, this);
ext.Ajax.on('requestcomplete', this.hideSpinner, this);
ext.Ajax.on('requestexception', this.hideSpinner, this);
 * </code></pre> 
 * <p>An example request:</p>
 * <pre><code>
// Basic request
ext.Ajax.<b class='link' title='ext.data.Connection#request'>request</b>({
   url: 'foo.php',
   success: someFn,
   failure: otherFn,
   headers: {
       'my-header': 'foo'
   },
   params: { foo: 'bar' }
});

// Simple ajax form submission
ext.Ajax.<b class='link' title='ext.data.Connection#request'>request</b>({
    form: 'some-form',
    params: 'foo=bar'
});
 * </code></pre> 
*/
public class AjaxClass extends Connection {

  /**
   * @singleton
   * @cfg {String} url @hide
   * @cfg {Object} extraParams @hide
   * @cfg {Object} defaultHeaders @hide
   * @cfg {String} method (Optional) @hide
   * @cfg {Number} timeout (Optional) @hide
   * @cfg {Boolean} autoAbort (Optional) @hide
   * @cfg {Boolean} disableCaching (Optional) @hide
   */
  public function AjaxClass(config : Object) {
    super(config);
  }
    /**
     * The default URL to be used for requests to the server. (defaults to undefined)
     * If the server receives all requests through one URL, setting this once is easier than
     * entering it on every request.
     */
     public var url : String;
    /**
     * An object containing properties which are used as extra parameters to each request made
     * by this object (defaults to undefined). Session information and other data that you need
     * to pass with each request are commonly put here.
     */
    public var extraParams : Object;
    /**
     * An object containing request headers which are added to each request made by this object
     * (defaults to undefined).
     */
    public var defaultHeaders:Object;
    /**
     * Serialize the passed form into a url encoded string
     * @param form
     * @return String
     */
    public native function serializeForm(form : *) : String;

}}
