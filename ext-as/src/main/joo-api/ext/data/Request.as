package ext.data {
/**
 * A simple Request class used internally to the data package to provide more generalized remote-requests to a DataProxy. TODO Not yet implemented. Implement in Ext.data.Store#execute
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.request
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Request Sencha Docs Ext JS 3.4
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
   */
  public native function get action():String;

  /**
   HTTP request params
   */
  public native function get params():Object;

  /**
   The DataReader instance which will parse the received response
   */
  public native function get reader():DataReader;

  /**
   The Store recordset associated with the request.
   */
  public native function get rs():*;

  /**
   The scope of the callback function.
   */
  public native function get scope():Object;

}
}
    