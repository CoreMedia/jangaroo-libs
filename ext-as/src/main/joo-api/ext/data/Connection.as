package ext.data {
import ext.util.Observable;

/**
     * <p>The class encapsulates a connection to the page's originating domain, allowing requests to be made
     * either to a configured URL, or to a URL specified at request time.</p>
     * <p>Requests made by this class are asynchronous, and will return immediately. No data from
     * the server will be available to the statement immediately following the <b class='link' title='#request'>request</b> call.
     * To process returned data, use a
     * <a href="#request-option-success" ext:member="request-option-success" ext:cls="ext.data.Connection">success callback</a>
     * in the request options object,
     * or an <b class='link' title='#requestcomplete event'>listener</b>.</p>
     * <p><h3>File Uploads</h3><a href="#request-option-isUpload" ext:member="request-option-isUpload" ext:cls="ext.data.Connection">File uploads</a> are not performed using normal "Ajax" techniques, that
     * is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard
     * manner with the DOM <code>&lt;form></code> element temporarily modified to have its
     * <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer
     * to a dynamically generated, hidden <code>&lt;iframe></code> which is inserted into the document
     * but removed after the return data has been gathered.</p>
     * <p>The server response is parsed by the browser to create the document for the IFRAME. If the
     * server is using JSON to send the return object, then the
     * <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header
     * must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p>
     * <p>Characters which are significant to an HTML parser must be sent as HTML entities, so encode
     * "&lt;" as "&amp;lt;", "&amp;" as "&amp;amp;" etc.</p>
     * <p>The response text is retrieved from the document, and a fake XMLHttpRequest object
     * is created containing a <code>responseText</code> property in order to conform to the
     * requirements of event handlers and callbacks.</p>
     * <p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a>
     * and some server technologies (notably JEE) may require some custom processing in order to
     * retrieve parameter names and parameter values from the packet content.</p>
*/
public class Connection extends Observable {
/**
     * @constructor
     * @param config a configuration object.
     */
public function Connection(config : Object) {
  super();
  config++;
}
            public var id;
            public var name;
            public var className;
            public var src;
            public var target;
            public var method;
            public var enctype;
            public var encoding;
            public var action;
                     public var responseXML ;
                     public var argument ;
        /**
         * @cfg {String} url (Optional) <p>The default URL to be used for requests to the server. Defaults to undefined.</p>
         * <p>The <code>url</code> config may be a function which <i>returns</i> the URL to use for the Ajax request. The scope
         * (<code><b>this</b></code> reference) of the function is the <code>scope</code> option passed to the <b class='link' title='#request'>request</b> method.</p>
         */
        /**
         * @cfg {Object} extraParams (Optional) An object containing properties which are used as
         * extra parameters to each request made by this object. (defaults to undefined)
         */
        /**
         * @cfg {Object} defaultHeaders (Optional) An object containing request headers which are added
         *  to each request made by this object. (defaults to undefined)
         */
        /**
         * @cfg {String} method (Optional) The default HTTP method to be used for requests.
         * (defaults to undefined; if not set, but <b class='link' title='#request'>request</b> params are present, POST will be used;
         * otherwise, GET will be used.)
         */
        /**
         * @cfg {Number} timeout (Optional) The timeout in milliseconds to be used for requests. (defaults to 30000)
         */
        public var timeout  : Number;
        /**
         * @cfg {Boolean} autoAbort (Optional) Whether this request should abort any pending requests. (defaults to false)
         */
        public var autoAbort : Boolean;
        /**
         * @cfg {Boolean} disableCaching (Optional) True to add a unique cache-buster param to GET requests. (defaults to true)
         */
        public var disableCaching : Boolean;
        /**
         * @cfg {String} disableCachingParam (Optional) Change the parameter which is sent went disabling caching
         * through a cache buster. Defaults to '_dc'
         */
        public var disableCachingParam : String;
        /**
         * <p>Sends an HTTP request to a remote server.</p>
         * <p><b>Important:</b> Ajax server requests are asynchronous, and this call will
         * return before the response has been received. Process any returned data
         * in a callback function.</p>
         * <pre><code>
ext.Ajax.request({
   url&#58; 'ajax_demo/sample.json',
   success&#58; function(response, opts) {
      var obj = Ext.decode(response.responseText);
      console.dir(obj);
   },
   failure&#58; function(response, opts) {
      console.log('server-side failure with status code ' + response.status);
   }
});
         * </code></pre>
         * <p>To execute a callback function in the correct scope, use the <code>scope</code> option.</p>
         * @param options An object which may contain the following properties:<ul>
         * <li><b>url</b> : String/Function (Optional)<div class="sub-desc">The URL to
         * which to send the request, or a function to call which returns a URL string. The scope of the
         * function is specified by the <code>scope</code> option. Defaults to the configured
         * <code><b class='link' title='#url'>url</b></code>.</div></li>
         * <li><b>params</b> : Object/String/Function (Optional)<div class="sub-desc">
         * An object containing properties which are used as parameters to the
         * request, a url encoded string or a function to call to get either. The scope of the function
         * is specified by the <code>scope</code> option.</div></li>
         * <li><b>method</b> : String (Optional)<div class="sub-desc">The HTTP method to use
         * for the request. Defaults to the configured method, or if no method was configured,
         * "GET" if no parameters are being sent, and "POST" if parameters are being sent.  Note that
         * the method name is case-sensitive and should be all caps.</div></li>
         * <li><b>callback</b> : Function (Optional)<div class="sub-desc">The
         * function to be called upon receipt of the HTTP response. The callback is
         * called regardless of success or failure and is passed the following
         * parameters:<ul>
         * <li><b>options</b> : Object<div class="sub-desc">The parameter to the request call.</div></li>
         * <li><b>success</b> : Boolean<div class="sub-desc">True if the request succeeded.</div></li>
         * <li><b>response</b> : Object<div class="sub-desc">The XMLHttpRequest object containing the response data. 
         * See <a href="http://www.w3.org/TR/XMLHttpRequest/">http://www.w3.org/TR/XMLHttpRequest/</a> for details about 
         * accessing elements of the response.</div></li>
         * </ul></div></li>
         * <li><a id="request-option-success"></a><b>success</b> : Function (Optional)<div class="sub-desc">The function
         * to be called upon success of the request. The callback is passed the following
         * parameters:<ul>
         * <li><b>response</b> : Object<div class="sub-desc">The XMLHttpRequest object containing the response data.</div></li>
         * <li><b>options</b> : Object<div class="sub-desc">The parameter to the request call.</div></li>
         * </ul></div></li>
         * <li><b>failure</b> : Function (Optional)<div class="sub-desc">The function
         * to be called upon failure of the request. The callback is passed the
         * following parameters:<ul>
         * <li><b>response</b> : Object<div class="sub-desc">The XMLHttpRequest object containing the response data.</div></li>
         * <li><b>options</b> : Object<div class="sub-desc">The parameter to the request call.</div></li>
         * </ul></div></li>
         * <li><b>scope</b> : Object (Optional)<div class="sub-desc">The scope in
         * which to execute the callbacks: The "this" object for the callback function. If the <code>url</code>, or <code>params</code> options were
         * specified as functions from which to draw values, then this also serves as the scope for those function calls.
         * Defaults to the browser window.</div></li>
         * <li><b>timeout</b> : Number (Optional)<div class="sub-desc">The timeout in milliseconds to be used for this request. Defaults to 30 seconds.</div></li>
         * <li><b>form</b> : Element/HTMLElement/String (Optional)<div class="sub-desc">The <code>&lt;form&gt;</code>
         * Element or the id of the <code>&lt;form&gt;</code> to pull parameters from.</div></li>
         * <li><a id="request-option-isUpload"></a><b>isUpload</b> : Boolean (Optional)<div class="sub-desc"><b>Only meaningful when used 
         * with the <code>form</code> option</b>.
         * <p>True if the form object is a file upload (will be set automatically if the form was
         * configured with <b><code>enctype</code></b> "multipart/form-data").</p>
         * <p>File uploads are not performed using normal "Ajax" techniques, that is they are <b>not</b>
         * performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the
         * DOM <code>&lt;form></code> element temporarily modified to have its
         * <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer
         * to a dynamically generated, hidden <code>&lt;iframe></code> which is inserted into the document
         * but removed after the return data has been gathered.</p>
         * <p>The server response is parsed by the browser to create the document for the IFRAME. If the
         * server is using JSON to send the return object, then the
         * <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header
         * must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p>
         * <p>The response text is retrieved from the document, and a fake XMLHttpRequest object
         * is created containing a <code>responseText</code> property in order to conform to the
         * requirements of event handlers and callbacks.</p>
         * <p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a>
         * and some server technologies (notably JEE) may require some custom processing in order to
         * retrieve parameter names and parameter values from the packet content.</p>
         * </div></li>
         * <li><b>headers</b> : Object (Optional)<div class="sub-desc">Request
         * headers to set for the request.</div></li>
         * <li><b>xmlData</b> : Object (Optional)<div class="sub-desc">XML document
         * to use for the post. Note: This will be used instead of params for the post
         * data. Any params will be appended to the URL.</div></li>
         * <li><b>jsonData</b> : Object/String (Optional)<div class="sub-desc">JSON
         * data to use as the post. Note: This will be used instead of params for the post
         * data. Any params will be appended to the URL.</div></li>
         * <li><b>disableCaching</b> : Boolean (Optional)<div class="sub-desc">True
         * to add a unique cache-buster param to GET requests.</div></li>
         * </ul></p>
         * <p>The options object may also contain any other property which might be needed to perform
         * postprocessing in a callback because it is passed to callback functions.</p>
         * @return transactionId The id of the server transaction. This may be used
         * to cancel the request.
         */
        public native function request(options : Object) : Number;
        /**
         * Determine whether this object has a request outstanding.
         * @param transactionId defaults to the last transaction
         * @return True if there is an outstanding request.
         */
        public native function isLoading(transactionId : Number = undefined) : Boolean;
        /**
         * Aborts any outstanding request.
         * @param transactionId defaults to the last transaction
         */
        public native function abort(transactionId : Number = undefined) : void;
}}
