package ext.data {

import ext.form.Number;
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
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.connection
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#cls-Ext.data.Connection Ext JS source
 */
[Native]
public class Connection extends Observable {

  /**
   *
   *
   * @see ext.config.connection
   */
  public function Connection() {
    super();
  }

  /**
   True to add a unique cache-buster param to GET requests. (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disableCaching():Boolean;

  /**
   Change the parameter which is sent went disabling caching through a cache buster. Defaults to '_dc'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disableCachingParam():String;

  /**
   The timeout in milliseconds to be used for requests. (defaults to 30000)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get timeout():ext.form.Number;

  /**
   * Aborts any outstanding request.
   *
   * @param request defaults to the last request
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#method-Ext.data.Connection-abort Ext JS source
   */
  public native function abort(request:Object = null):void;

  /**
   * Determine whether this object has a request outstanding.
   *
   * @param request defaults to the last transaction
   * @return True if there is an outstanding request.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#method-Ext.data.Connection-isLoading Ext JS source
   */
  public native function isLoading(request:Object = null):Boolean;

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
   * @return request The request object. This may be used to cancel the request.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Connection.html#method-Ext.data.Connection-request Ext JS source
   */
  public native function request(options:Object):Object;

}
}
    