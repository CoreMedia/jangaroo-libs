package ext.util {


/**
 * Provides functionality to make cross-domain requests with JSONP (JSON with Padding). http://en.wikipedia.org/wiki/JSON#JSONP <p><b>Note that if you are retrieving data from a page that is in a domain that is NOT the same as the originating domain of the running page, you must use this class, because of the same origin policy.</b><br/></p><p>The content passed back from a server resource requested by a JSONP request<b>must</b> be executable JavaScript source code because it is used as the source inside a &lt;script&gt; tag.<br/></p><p>In order for the browser to process the returned data, the server must wrap the data object with a call to a callback function, the name of which is passed as a parameter callbackKey Below is a Java example for a servlet which returns data for either a ScriptTagProxy, or an HttpProxy depending on whether the callback name was passed:</p><pre><code>boolean scriptTag = false;
 String cb = request.getParameter("callback");
 if (cb != null) {
 scriptTag = true;
 response.setContentType("text/javascript");
 } else {
 response.setContentType("application/x-json");
 }
 Writer out = response.getWriter();
 if (scriptTag) {
 out.write(cb + "(");
 }
 out.print(dataBlock.toJsonString());
 if (scriptTag) {
 out.write(");");
 }
 </code></pre><p>Below is a PHP example to do the same thing:</p><pre><code>$callback = $_REQUEST['callback'];

 // Create the output object.
 $output = array('a' =&gt; 'Apple', 'b' =&gt; 'Banana');

 //start output
 if ($callback) {
 header('Content-Type: text/javascript');
 echo $callback . '(' . json_encode($output) . ');';
 } else {
 header('Content-Type: application/x-json');
 echo json_encode($output);
 }
 </code></pre><p>Below is the ASP.Net code to do the same thing:</p><pre><code>String jsonString = "{success: true}";
 String cb = Request.Params.Get("callback");
 String responseString = "";
 if (!String.IsNullOrEmpty(cb)) {
 responseString = cb + "(" + jsonString + ")";
 } else {
 responseString = jsonString;
 }
 Response.Write(responseString);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton JSONP.</p>
 * @see ext.util.#JSONP ext.util.JSONP
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSONP.html#cls-Ext.util.JSONP Ext JS source
 */
public interface IJSONP {

  /**
   Read-only current executing request
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSONP.html#prop-Ext.util.JSONP-current Ext JS source
   */
  function get current():Object;

  /**
   * @private
   */
  function set current(value:Object):void;

  /**
   Read-only queue
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSONP.html#prop-Ext.util.JSONP-queue Ext JS source
   */
  function get queue():Array;

  /**
   * @private
   */
  function set queue(value:Array):void;

  /**
   * Make a cross-domain request using JSONP.
   *
   * @param config Valid configurations are: <ul><li>url - {String} - Url to request data from. (required)</li><li>params - {Object} - A set of key/value pairs to be url encoded and passed as GET parameters in the request.</li><li>callbackKey - {String} - Key specified by the server-side provider.</li><li>callback - {Function} - Will be passed a single argument of the result of the request.</li><li>scope - {Scope} - Scope to execute your callback in.</li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSONP.html#method-Ext.util.JSONP-request Ext JS source
   */
  function request(config:Object):void;

}
}
    