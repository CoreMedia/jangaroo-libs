package ext.data {


/**
 * A simple Request class used internally to the data package to provide more generalized remote-requests to a DataProxy. TODO Not yet implemented. Implement in Ext.data.Store#execute
 * @see ext.config.request
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Request.html#cls-Ext.data.Request Ext JS source
 */
public class Request {

  /**
   *
   *
   * @see ext.config.request
   */
  public function Request() {
    super();
  }

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get action():String;

  /**
   HTTP request params
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get params():Object;

  /**
   The DataReader instance which will parse the received response
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get reader():DataReader;

  /**
   The Store recordset associated with the request.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get rs():*;

  /**
   The scope of the callback function.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

}
}
    