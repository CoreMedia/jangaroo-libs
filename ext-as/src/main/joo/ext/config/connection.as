package ext.config {


/**
 * The class encapsulates a connection to the page's originating domain, allowing requests to be made either to a configured URL, or to a URL specified at request time.
 <p>Requests made by this class are asynchronous, and will return immediately. No data from the server will be available to the statement immediately following the <a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a> call. To process returned data, use a <a href="#request-option-success">success callback</a> in the request options object, or an <a href="output/Ext.data.Connection.html#Ext.data.Connection-requestcomplete">event listener</a>.</p><h3>File Uploads</h3><a href="#request-option-isUpload">File uploads</a> are not performed using normal "Ajax" techniques, that is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the DOM <tt>&lt;form&gt;</tt> element temporarily modified to have its <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer to a dynamically generated, hidden <tt>&lt;iframe&gt;</tt> which is inserted into the document but removed after the return data has been gathered.<br/><br/> <p>The server response is parsed by the browser to create the document for the IFRAME. If the server is using JSON to send the return object, then the <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p><p>Characters which are significant to an HTML parser must be sent as HTML entities, so encode "&lt;" as "&amp;lt;", "&amp;" as "&amp;amp;" etc.</p><p>The response text is retrieved from the document, and a fake XMLHttpRequest object is created containing a <tt>responseText</tt> property in order to conform to the requirements of event handlers and callbacks.</p><p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a> and some server technologies (notably JEE) may require some custom processing in order to retrieve parameter names and parameter values from the packet content.</p><p>Also note that it's not possible to check the response code of the hidden iframe, so the success handler will ALWAYS fire.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Connection.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Connection
 */
[ExtConfig(target="ext.data.Connection")]
public class connection extends observable {

  public function connection(config:Object = null) {

    super(config);
  }


  /**
   Whether this request should abort any pending requests. (defaults to false)
   */
  public native function get autoAbort():Boolean;

  /**
   * @private
   */
  public native function set autoAbort(value:Boolean):void;

  /**
   An object containing request headers which are added to each request made by this object. (defaults to undefined)
   */
  public native function get defaultHeaders():Object;

  /**
   * @private
   */
  public native function set defaultHeaders(value:Object):void;

  /**
   True to add a unique cache-buster param to GET requests. (defaults to true)
   */
  public native function get disableCaching():Boolean;

  /**
   * @private
   */
  public native function set disableCaching(value:Boolean):void;

  /**
   Change the parameter which is sent went disabling caching through a cache buster. Defaults to '_dc'
   */
  public native function get disableCachingParam():String;

  /**
   * @private
   */
  public native function set disableCachingParam(value:String):void;

  /**
   An object containing properties which are used as extra parameters to each request made by this object. (defaults to undefined)
   */
  public native function get extraParams():Object;

  /**
   * @private
   */
  public native function set extraParams(value:Object):void;

  /**
   The default HTTP method to be used for requests. (defaults to undefined; if not set, but <a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a> params are present, POST will be used; otherwise, GET will be used.)
   */
  public native function get method():String;

  /**
   * @private
   */
  public native function set method(value:String):void;

  /**
   The timeout in milliseconds to be used for requests. (defaults to 30000)
   */
  public native function get timeout():Number;

  /**
   * @private
   */
  public native function set timeout(value:Number):void;

  /**
   The default URL to be used for requests to the server. Defaults to undefined.
   <p>The <code>url</code> config may be a function which <i>returns</i> the URL to use for the Ajax request. The scope (<code><b>this</b></code> reference) of the function is the <code>scope</code> option passed to the <a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a> method.</p>
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;


}
}
    