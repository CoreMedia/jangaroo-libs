package ext.data {
/**
 * A generic response class to normalize response-handling internally to the framework.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.response
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Response Sencha Docs Ext JS 3.4
 */
[Native]
public class Response {

  /**
   *
   *
   * @see ext.config.response
   */
  public function Response() {
    super();
  }

  /**
   <a href="output/Ext.data.Api.html#Ext.data.Api-actions">Ext.data.Api.actions</a>
   */
  public native function get action():String;

  /**
   */
  public native function get data():*;

  /**
   */
  public native function get message():String;

  /**
   The raw response returned from server-code
   */
  public native function get raw():Object;

  /**
   related to the Request action
   */
  public native function get records():*;

  /**
   */
  public native function get success():Boolean;

}
}
    