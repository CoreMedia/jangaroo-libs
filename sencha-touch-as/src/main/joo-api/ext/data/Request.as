package ext.data {

import ext.config.request;

/**
 * Simple class that represents a Request that will be made by any <a href="Ext.data.ServerProxy.html">Ext.data.ServerProxy</a> subclass. All this class does is standardize the representation of a Request as used by any ServerProxy subclass, it does not contain any actual logic or perform the request itself.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.request
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Request.html#cls-Ext.data.Request Ext JS source
 */
[Native]
public class Request {

  /**
   *
   *
   * @param config Optional config object
   * @see ext.config.request
   */
  public function Request(config:request) {
    super();
  }

  /**
   The name of the action this Request represents. Usually one of 'create', 'read', 'update' or 'destroy'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get action():String;

  /**
   The HTTP method to use on this Request (defaults to 'GET'). Should be one of 'GET', 'POST', 'PUT' or 'DELETE'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get method():String;

  /**
   HTTP request params. The Proxy and its Writer have access to and can modify this object.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get params():Object;

  /**
   The url to access on this Request
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get url():String;

}
}
    