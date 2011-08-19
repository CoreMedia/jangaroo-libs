package ext.config {


/**
 *
 *
 * <p>This class serves as a
 * typed config object for constructor of class DirectProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.DirectProxy
 */
[ExtConfig(target="ext.data.DirectProxy")]
public class directproxy extends dataproxy {

  public function directproxy(config:Object = null) {

    super(config);
  }


  /**
   Function to call when executing a request. directFn is a simple alternative to defining the api configuration-parameter for Store's which will not implement a full CRUD api.
   */
  public native function get directFn():Function;

  /**
   * @private
   */
  public native function set directFn(value:Function):void;

  /**
   Defaults to <tt>undefined</tt>. A list of params to be executed server side. Specify the params in the order in which they must be executed on the server-side as either (1) an Array of String values, or (2) a String of params delimited by either whitespace, comma, or pipe. For example, any of the following would be acceptable:<pre><code>paramOrder: ['param1','param2','param3']
   paramOrder: 'param1 param2 param3'
   paramOrder: 'param1,param2,param3'
   paramOrder: 'param1|param2|param'
   </code></pre>
   */
  public native function get paramOrder():*;

  /**
   * @private
   */
  public native function set paramOrder(value:*):void;

  /**
   Send parameters as a collection of named arguments (defaults to <tt>true</tt>). Providing a <tt><a href="output/Ext.data.DirectProxy.html#Ext.data.DirectProxy-paramOrder">paramOrder</a></tt> nullifies this configuration.
   */
  public native function get paramsAsHash():Boolean;

  /**
   * @private
   */
  public native function set paramsAsHash(value:Boolean):void;


}
}
    