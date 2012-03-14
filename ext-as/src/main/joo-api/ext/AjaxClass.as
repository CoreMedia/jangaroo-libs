package ext {
import ext.data.Connection;

/**
 * The global Ajax request class that provides a simple way to make Ajax requests with maximum flexibility.
 <p>Since Ext.Ajax is a singleton, you can set common properties/events for it once and override them at the request function level only if necessary.</p><p>Common <b>Properties</b> you may want to set are:</p><div class="mdetail-params"><ul><li><b><tt><a href="output/Ext.Ajax.html#Ext.Ajax-method">method</a></tt></b></li><li><b><tt><a href="output/Ext.Ajax.html#Ext.Ajax-extraParams">extraParams</a></tt></b></li><li><b><tt><a href="output/Ext.Ajax.html#Ext.Ajax-url">url</a></tt></b></li></ul></div><pre><code>// Default headers to pass in every request
 Ext.Ajax.defaultHeaders = {
 'Powered-By': 'Ext'
 };
 </code></pre><br/><br/> <p>Common <b>Events</b> you may want to set are:</p><div class="mdetail-params"><ul><li><b><tt><a href="output/Ext.data.Connection.html#Ext.data.Connection-beforerequest">beforerequest</a></tt></b></li><li><b><tt><a href="output/Ext.data.Connection.html#Ext.data.Connection-requestcomplete">requestcomplete</a></tt></b></li><li><b><tt><a href="output/Ext.data.Connection.html#Ext.data.Connection-requestexception">requestexception</a></tt></b></li></ul></div><pre><code>// Example: show a spinner during all Ajax requests
 Ext.Ajax.on('beforerequest', this.showSpinner, this);
 Ext.Ajax.on('requestcomplete', this.hideSpinner, this);
 Ext.Ajax.on('requestexception', this.hideSpinner, this);
 </code></pre><br/><br/> <p>An example request:</p><pre><code>// Basic request
 Ext.Ajax.<a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a>({
 url: 'foo.php',
 success: someFn,
 failure: otherFn,
 headers: {
 'my-header': 'foo'
 },
 params: { foo: 'bar' }
 });

 // Simple ajax form submission
 Ext.Ajax.<a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a>({
 form: 'some-form',
 params: 'foo=bar'
 });
 </code></pre><br/><br/>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class defines the type of the singleton Ajax.</p>
 * @see ext.#Ajax ext.Ajax
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#cls-Ext.Ajax Ext JS source
 */
public class AjaxClass extends Connection {

  /**
   * @private
   */
  public function AjaxClass() {
    super(null);
  }

  /**
   Whether a new request should abort any pending requests. (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-autoAbort Ext JS source
   */
  override public native function get autoAbort():Boolean;

  /**
   * @private
   */
  public native function set autoAbort(value:Boolean):void;

  /**
   An object containing request headers which are added to each request made by this object (defaults to undefined).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-defaultHeaders Ext JS source
   */
  override public native function get defaultHeaders():Object;

  /**
   * @private
   */
  public native function set defaultHeaders(value:Object):void;

  /**
   True to add a unique cache-buster param to GET requests. (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-disableCaching Ext JS source
   */
  override public native function get disableCaching():Boolean;

  /**
   * @private
   */
  public native function set disableCaching(value:Boolean):void;

  /**
   An object containing properties which are used as extra parameters to each request made by this object (defaults to undefined). Session information and other data that you need to pass with each request are commonly put here.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-extraParams Ext JS source
   */
  override public native function get extraParams():Object;

  /**
   * @private
   */
  public native function set extraParams(value:Object):void;

  /**
   The default HTTP method to be used for requests. Note that this is case-sensitive and should be all caps (defaults to undefined; if not set but params are present will use <tt>"POST"</tt>, otherwise will use <tt>"GET"</tt>.)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-method Ext JS source
   */
  override public native function get method():String;

  /**
   * @private
   */
  public native function set method(value:String):void;

  /**
   The timeout in milliseconds to be used for requests. (defaults to 30000)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-timeout Ext JS source
   */
  override public native function get timeout():Number;

  /**
   * @private
   */
  public native function set timeout(value:Number):void;

  /**
   The default URL to be used for requests to the server. (defaults to undefined) If the server receives all requests through one URL, setting this once is easier than entering it on every request.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-url Ext JS source
   */
  override public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;

  /**
   * Serialize the passed form into a url encoded string
   *
   * @param form
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#method-Ext.Ajax-serializeForm Ext JS source
   */
  public native function serializeForm(form:*):String;

}
}
    