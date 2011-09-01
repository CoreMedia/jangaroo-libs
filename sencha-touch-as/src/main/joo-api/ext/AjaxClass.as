package ext {

import ext.data.Connection;
import ext.form.Number;

/**
 * A singleton instance of an <a href="Ext.data.Connection.html">Ext.data.Connection</a>.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class defines the type of the singleton Ajax.</p>
 * @see ext.#Ajax ext.Ajax
 * @see ext.config.ajax
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#cls-Ext.Ajax Ext JS source
 */
public class AjaxClass extends Connection {

  /**
   * @private
   *
   * @see ext.config.ajax
   */
  public function AjaxClass() {
    super();
  }

  /**
   Whether a new request should abort any pending requests. (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-autoAbort Ext JS source
   */
  public native function get autoAbort():Boolean;

  /**
   * @private
   */
  public native function set autoAbort(value:Boolean):void;

  /**
   An object containing request headers which are added to each request made by this object (defaults to undefined).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-defaultHeaders Ext JS source
   */
  public native function get defaultHeaders():Object;

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
  override public native function set disableCaching(value:Boolean):void;

  /**
   An object containing properties which are used as extra parameters to each request made by this object (defaults to undefined). Session information and other data that you need to pass with each request are commonly put here.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-extraParams Ext JS source
   */
  public native function get extraParams():Object;

  /**
   * @private
   */
  public native function set extraParams(value:Object):void;

  /**
   The default HTTP method to be used for requests. Note that this is case-sensitive and should be all caps (defaults to undefined; if not set but params are present will use <tt>"POST"</tt>, otherwise will use <tt>"GET"</tt>.)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-method Ext JS source
   */
  public native function get method():String;

  /**
   * @private
   */
  public native function set method(value:String):void;

  /**
   The timeout in milliseconds to be used for requests. (defaults to 30000)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-timeout Ext JS source
   */
  override public native function get timeout():ext.form.Number;

  /**
   * @private
   */
  override public native function set timeout(value:ext.form.Number):void;

  /**
   The default URL to be used for requests to the server. (defaults to undefined) If the server receives all requests through one URL, setting this once is easier than entering it on every request.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#prop-Ext.Ajax-url Ext JS source
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;

}
}
    