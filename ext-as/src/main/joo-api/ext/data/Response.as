package ext.data {


/**
 * A generic response class to normalize response-handling internally to the framework.
 * @see ext.config.response
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Response.html#cls-Ext.data.Response Ext JS source
 */
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get action():String;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get data():*;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get message():String;

  /**
   The raw response returned from server-code
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get raw():Object;

  /**
   related to the Request action
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get records():*;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get success():Boolean;

}
}
    