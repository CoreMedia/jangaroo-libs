package ext.data {
import ext.config.connection;
import ext.util.Observable;

/**
 * Fires before a network request is made to retrieve a data object.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>conn:ext.data.Connection</code>
 This Connection object.
 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The options config object passed to the <a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a> method.
 *       </li>

 * </ul>
 */
[Event(name="beforerequest")]

/**
 * Fires if the request was successfully completed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>conn:ext.data.Connection</code>
 This Connection object.
 *       </li>

 *       <li>
 *           <code>response:Object</code>
 The XHR object containing the response data. See <a href="http://www.w3.org/TR/XMLHttpRequest/">The XMLHttpRequest Object</a> for details.
 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The options config object passed to the <a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a> method.
 *       </li>

 * </ul>
 */
[Event(name="requestcomplete")]

/**
 * Fires if an error HTTP status was returned from the server. See <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">HTTP Status Code Definitions</a> for details of HTTP status codes.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>conn:ext.data.Connection</code>
 This Connection object.
 *       </li>

 *       <li>
 *           <code>response:Object</code>
 The XHR object containing the response data. See <a href="http://www.w3.org/TR/XMLHttpRequest/">The XMLHttpRequest Object</a> for details.
 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The options config object passed to the <a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a> method.
 *       </li>

 * </ul>
 */
[Event(name="requestexception")]


/**
 * The class encapsulates a connection to the page's originating domain, allowing requests to be made either to a configured URL, or to a URL specified at request time.
 <p>Requests made by this class are asynchronous, and will return immediately. No data from the server will be available to the statement immediately following the <a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a> call. To process returned data, use a <a href="#request-option-success">success callback</a> in the request options object, or an <a href="output/Ext.data.Connection.html#Ext.data.Connection-requestcomplete">event listener</a>.</p><h3>File Uploads</h3><a href="#request-option-isUpload">File uploads</a> are not performed using normal "Ajax" techniques, that is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the DOM <tt>&lt;form&gt;</tt> element temporarily modified to have its <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer to a dynamically generated, hidden <tt>&lt;iframe&gt;</tt> which is inserted into the document but removed after the return data has been gathered.<br/><br/> <p>The server response is parsed by the browser to create the document for the IFRAME. If the server is using JSON to send the return object, then the <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p><p>Characters which are significant to an HTML parser must be sent as HTML entities, so encode "&lt;" as "&amp;lt;", "&amp;" as "&amp;amp;" etc.</p><p>The response text is retrieved from the document, and a fake XMLHttpRequest object is created containing a <tt>responseText</tt> property in order to conform to the requirements of event handlers and callbacks.</p><p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a> and some server technologies (notably JEE) may require some custom processing in order to retrieve parameter names and parameter values from the packet content.</p><p>Also note that it's not possible to check the response code of the hidden iframe, so the success handler will ALWAYS fire.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.connection
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Connection Sencha Docs Ext JS 3.4
 */
public class Connection extends Observable {

  /**
   *
   *
   * @param config a configuration object.
   * @see ext.config.connection
   */
  public function Connection(config:connection) {
    super();
  }

  /**
   Whether this request should abort any pending requests. (defaults to false)
   */
  public native function get autoAbort():Boolean;

  /**
   An object containing request headers which are added to each request made by this object. (defaults to undefined)
   */
  public native function get defaultHeaders():Object;

  /**
   True to add a unique cache-buster param to GET requests. (defaults to true)
   */
  public native function get disableCaching():Boolean;

  /**
   Change the parameter which is sent went disabling caching through a cache buster. Defaults to '_dc'
   */
  public native function get disableCachingParam():String;

  /**
   An object containing properties which are used as extra parameters to each request made by this object. (defaults to undefined)
   */
  public native function get extraParams():Object;

  /**
   The default HTTP method to be used for requests. (defaults to undefined; if not set, but <a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a> params are present, POST will be used; otherwise, GET will be used.)
   */
  public native function get method():String;

  /**
   The timeout in milliseconds to be used for requests. (defaults to 30000)
   */
  public native function get timeout():Number;

  /**
   The default URL to be used for requests to the server. Defaults to undefined.
   <p>The <code>url</code> config may be a function which <i>returns</i> the URL to use for the Ajax request. The scope (<code><b>this</b></code> reference) of the function is the <code>scope</code> option passed to the <a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a> method.</p>
   */
  public native function get url():String;

  /**
   * Aborts any outstanding request.
   *
   * @param transactionId defaults to the last transaction
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Connection-method-abort Sencha Docs Ext JS 3.4
   */
  public native function abort(transactionId:Number = undefined):void;

  /**
   * Determine whether this object has a request outstanding.
   *
   * @param transactionId defaults to the last transaction
   * @return True if there is an outstanding request.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Connection-method-isLoading Sencha Docs Ext JS 3.4
   */
  public native function isLoading(transactionId:Number = undefined):Boolean;

  /**
   * Sends an HTTP request to a remote server.
   <p><b>Important:</b> Ajax server requests are asynchronous, and this call will return before the response has been received. Process any returned data in a callback function.</p><pre><code>Ext.Ajax.request({
   url: 'ajax_demo/sample.json',
   success: function(response, opts) {
   var obj = Ext.decode(response.responseText);
   console.dir(obj);
   },
   failure: function(response, opts) {
   console.log('server-side failure with status code ' + response.status);
   }
   });
   </code></pre><p>To execute a callback function in the correct scope, use the <tt>scope</tt> option.</p>
   *
   * @param options An object which may contain the following properties:<ul><li><b>url</b> : String/Function (Optional)<div class="sub-desc">The URL to which to send the request, or a function to call which returns a URL string. The scope of the function is specified by the <tt>scope</tt> option. Defaults to the configured <tt><a href="output/Ext.data.Connection.html#Ext.data.Connection-url">url</a></tt>.</div></li><li><b>params</b> : Object/String/Function (Optional)<div class="sub-desc">An object containing properties which are used as parameters to the request, a url encoded string or a function to call to get either. The scope of the function is specified by the <tt>scope</tt> option.</div></li><li><b>method</b> : String (Optional)<div class="sub-desc">The HTTP method to use for the request. Defaults to the configured method, or if no method was configured, "GET" if no parameters are being sent, and "POST" if parameters are being sent. Note that the method name is case-sensitive and should be all caps.</div></li><li><b>callback</b> : Function (Optional)<div class="sub-desc">The function to be called upon receipt of the HTTP response. The callback is called regardless of success or failure and is passed the following parameters:<ul><li><b>options</b> : Object<div class="sub-desc">The parameter to the request call.</div></li><li><b>success</b> : Boolean<div class="sub-desc">True if the request succeeded.</div></li><li><b>response</b> : Object<div class="sub-desc">The XMLHttpRequest object containing the response data. See <a href="http://www.w3.org/TR/XMLHttpRequest/">http://www.w3.org/TR/XMLHttpRequest/</a> for details about accessing elements of the response.</div></li></ul></div></li><li><a id="request-option-success"/><b>success</b> : Function (Optional)<div class="sub-desc">The function to be called upon success of the request. The callback is passed the following parameters:<ul><li><b>response</b> : Object<div class="sub-desc">The XMLHttpRequest object containing the response data.</div></li><li><b>options</b> : Object<div class="sub-desc">The parameter to the request call.</div></li></ul></div></li><li><b>failure</b> : Function (Optional)<div class="sub-desc">The function to be called upon failure of the request. The callback is passed the following parameters:<ul><li><b>response</b> : Object<div class="sub-desc">The XMLHttpRequest object containing the response data.</div></li><li><b>options</b> : Object<div class="sub-desc">The parameter to the request call.</div></li></ul></div></li><li><b>scope</b> : Object (Optional)<div class="sub-desc">The scope in which to execute the callbacks: The "this" object for the callback function. If the <tt>url</tt>, or <tt>params</tt> options were specified as functions from which to draw values, then this also serves as the scope for those function calls. Defaults to the browser window.</div></li><li><b>timeout</b> : Number (Optional)<div class="sub-desc">The timeout in milliseconds to be used for this request. Defaults to 30 seconds.</div></li><li><b>form</b> : Element/HTMLElement/String (Optional)<div class="sub-desc">The <tt>&lt;form&gt;</tt> Element or the id of the <tt>&lt;form&gt;</tt> to pull parameters from.</div></li><li><a id="request-option-isUpload"/><b>isUpload</b> : Boolean (Optional)<div class="sub-desc"><b>Only meaningful when used with the <tt>form</tt> option</b>. <p>True if the form object is a file upload (will be set automatically if the form was configured with <b><tt>enctype</tt></b> "multipart/form-data").</p><p>File uploads are not performed using normal "Ajax" techniques, that is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the DOM <tt>&lt;form&gt;</tt> element temporarily modified to have its <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer to a dynamically generated, hidden <tt>&lt;iframe&gt;</tt> which is inserted into the document but removed after the return data has been gathered.</p><p>The server response is parsed by the browser to create the document for the IFRAME. If the server is using JSON to send the return object, then the <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p><p>The response text is retrieved from the document, and a fake XMLHttpRequest object is created containing a <tt>responseText</tt> property in order to conform to the requirements of event handlers and callbacks.</p><p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a> and some server technologies (notably JEE) may require some custom processing in order to retrieve parameter names and parameter values from the packet content.</p></div></li><li><b>headers</b> : Object (Optional)<div class="sub-desc">Request headers to set for the request.</div></li><li><b>xmlData</b> : Object (Optional)<div class="sub-desc">XML document to use for the post. Note: This will be used instead of params for the post data. Any params will be appended to the URL.</div></li><li><b>jsonData</b> : Object/String (Optional)<div class="sub-desc">JSON data to use as the post. Note: This will be used instead of params for the post data. Any params will be appended to the URL.</div></li><li><b>disableCaching</b> : Boolean (Optional)<div class="sub-desc">True to add a unique cache-buster param to GET requests.</div></li></ul><br/><br/> <p>The options object may also contain any other property which might be needed to perform postprocessing in a callback because it is passed to callback functions.</p>
   * @return transaction The server transaction. Opaque object that may be used to cancel the request.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Connection-method-request Sencha Docs Ext JS 3.4
   */
  public native function request(options:Object):Object;

}
}
    