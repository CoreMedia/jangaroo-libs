package ext.data {


/**
 * Fires when the server returns an exception
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Proxy</code>

 *       </li>

 *       <li>
 *           <code>request:ext.data.Request</code>
 The request that was sent
 *       </li>

 *       <li>
 *           <code>operation:ext.data.Operation</code>
 The operation that triggered the request
 *       </li>

 * </ul>
 */
[Event(name="exception")]


/**
 * ScriptTagProxy is useful when you need to load data from a domain other than the one your application is running on. If your application is running on http://domainA.com it cannot use <a href="Ext.data.AjaxProxy.html">Ajax</a> to load its data from http://domainB.com because cross-domain ajax requests are prohibited by the browser.
 <p>We can get around this using a ScriptTagProxy. ScriptTagProxy injects a &lt;script&gt; tag into the DOM whenever an AJAX request would usually be made. Let's say we want to load data from http://domainB.com/users - the script tag that would be injected might look like this:</p><pre><code>&lt;script src="http://domainB.com/users?callback=someCallback"&gt;&lt;/script&gt;
 </code></pre><p>When we inject the tag above, the browser makes a request to that url and includes the response as if it was any other type of JavaScript include. By passing a callback in the url above, we're telling domainB's server that we want to be notified when the result comes in and that it should call our callback function with the data it sends back. So long as the server formats the response to look like this, everything will work:</p><pre><code>someCallback({
 users: [
 {
 id: 1,
 name: "Ed Spencer",
 email: "ed&#64;sencha.com"
 }
 ]
 });
 </code></pre><p>As soon as the script finishes loading, the 'someCallback' function that we passed in the url is called with the JSON object that the server returned.</p><p>ScriptTagProxy takes care of all of this automatically. It formats the url you pass, adding the callback parameter automatically. It even creates a temporary callback function, waits for it to be called and then puts the data into the Proxy making it look just like you loaded it through a normal <a href="Ext.data.AjaxProxy.html">AjaxProxy</a>. Here's how we might set that up:</p><pre><code>Ext.regModel('User', {
 fields: ['id', 'name', 'email']
 });

 var store = new Ext.data.Store({
 model: 'User',
 proxy: {
 type: 'scripttag',
 url : 'http://domainB.com/users'
 }
 });

 store.load();
 </code></pre><p>That's all we need to do - ScriptTagProxy takes care of the rest. In this case the Proxy will have injected a script tag like this:</p><pre><code>&lt;script src="http://domainB.com/users?callback=stcCallback001" id="stcScript001"&gt;&lt;/script&gt;
 </code></pre><p><u>Customization</u></p><p>Most parts of this script tag can be customized using the <a href="output/Ext.data.ScriptTagProxy.html#Ext.data.ScriptTagProxy-callbackParam">callbackParam</a>, <a href="output/Ext.data.ScriptTagProxy.html#Ext.data.ScriptTagProxy-callbackPrefix">callbackPrefix</a> and <a href="output/Ext.data.ScriptTagProxy.html#Ext.data.ScriptTagProxy-scriptIdPrefix">scriptIdPrefix</a> configurations. For example:</p><pre><code>var store = new Ext.data.Store({
 model: 'User',
 proxy: {
 type: 'scripttag',
 url : 'http://domainB.com/users',
 callbackParam: 'theCallbackFunction',
 callbackPrefix: 'ABC',
 scriptIdPrefix: 'injectedScript'
 }
 });

 store.load();
 </code></pre><p>Would inject a script tag like this:</p><pre><code>&lt;script src="http://domainB.com/users?theCallbackFunction=ABC001" id="injectedScript001"&gt;&lt;/script&gt;
 </code></pre><p><u>Implementing on the server side</u></p><p>The remote server side needs to be configured to return data in this format. Here are suggestions for how you might achieve this using Java, PHP and ASP.net:</p><p>Java:</p><pre><code>boolean scriptTag = false;
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
 </code></pre><p>PHP:</p><pre><code>$callback = $_REQUEST['callback'];

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
 </code></pre><p>ASP.net:</p><pre><code>String jsonString = "{success: true}";
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

 * @see ext.config.scripttagproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#cls-Ext.data.ScriptTagProxy Ext JS source
 */
public class ScriptTagProxy extends ServerProxy {

  /**
   *
   *
   * @see ext.config.scripttagproxy
   */
  public function ScriptTagProxy() {
    super();
  }

  /**
   Reference to the most recent request made through this Proxy. Used internally to clean up when the Proxy is destroyed
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#prop-Ext.data.ScriptTagProxy-lastRequest Ext JS source
   */
  public native function get lastRequest():Request;

  /**
   * @private
   */
  public native function set lastRequest(value:Request):void;

  /**
   True to automatically append the request's params to the generated url. Defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoAppendParams():Boolean;

  /**
   The name of the parameter to pass to the server which tells the server the name of the callback function set up by the load call to process the returned data object. Defaults to "callback".<p>The server-side processing must read this parameter value, and generate javascript output which calls this named function passing the data object as its only parameter.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get callbackParam():String;

  /**
   The prefix string that is used to create a unique callback function name in the global scope. This can optionally be modified to give control over how the callback string passed to the remote server is generated. Defaults to 'stcCallback'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get callbackPrefix():String;

  /**
   The param name to use when passing records to the server (e.g. 'records=someEncodedRecordString'). Defaults to 'records'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get recordParam():String;

  /**
   The prefix string that is used to create a unique ID for the injected script tag element (defaults to 'stcScript')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scriptIdPrefix():String;

  /**
   * Aborts the current server request if one is currently running
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-abort Ext JS source
   */
  public native function abort():void;

  /**
   * Cleans up after a completed request by removing the now unnecessary script tag from the DOM. Also removes the global JSON-P callback function.
   *
   * @param request The Request object
   * @param success True if the request was successful
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-afterRequest Ext JS source
   */
  override public native function afterRequest(request:Request, success:Boolean):void;

  /**
   * Generates a url based on a given Ext.data.Request object. Adds the params and callback function name to the url
   *
   * @param request The request object
   * @return The url
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-buildUrl Ext JS source
   */
  override public native function buildUrl(request:Request):String;

  /**
   *
   *
   * @param request The Request object
   * @param operation The Operation being executed
   * @param callback The callback function to be called when the request completes. This is usually the callback passed to doRequest
   * @param scope The scope in which to execute the callback function
   * @return The callback function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-createRequestCallback Ext JS source
   */
  public native function createRequestCallback(request:Request, operation:Operation, callback:Function, scope:Object):Function;

  /**
   *
   *
   * @param request The Request to handle
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-createTimeoutHandler Ext JS source
   */
  public native function createTimeoutHandler(request:Request):void;

  /**
   *
   *
   * @param operation The Ext.data.Operation object
   * @param callback The callback function to call when the Operation has completed
   * @param scope The scope in which to execute the callback
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-doRequest Ext JS source
   */
  override public native function doRequest(operation:Operation, callback:Function, scope:Object):void;

  /**
   * Encodes an array of records into a string suitable to be appended to the script src url. This is broken out into its own function so that it can be easily overridden.
   *
   * @param records The records array
   * @return The encoded records string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-encodeRecords Ext JS source
   */
  public native function encodeRecords(records:Array):String;

  /**
   *
   *
   * @return True if there is a current request that hasn't completed yet
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-isLoading Ext JS source
   */
  public native function isLoading():Boolean;

}
}
    