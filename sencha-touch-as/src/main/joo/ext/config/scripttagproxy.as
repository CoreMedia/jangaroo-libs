package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class ScriptTagProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.ScriptTagProxy
 */
[ExtConfig(target="ext.data.ScriptTagProxy")]
public class scripttagproxy extends serverproxy {

  public function scripttagproxy(config:Object = null) {

    super(config);
  }


  /**
   True to automatically append the request's params to the generated url. Defaults to true
   */
  public native function get autoAppendParams():Boolean;

  /**
   * @private
   */
  public native function set autoAppendParams(value:Boolean):void;

  /**
   The name of the parameter to pass to the server which tells the server the name of the callback function set up by the load call to process the returned data object. Defaults to "callback".<p>The server-side processing must read this parameter value, and generate javascript output which calls this named function passing the data object as its only parameter.</p>
   */
  public native function get callbackParam():String;

  /**
   * @private
   */
  public native function set callbackParam(value:String):void;

  /**
   The prefix string that is used to create a unique callback function name in the global scope. This can optionally be modified to give control over how the callback string passed to the remote server is generated. Defaults to 'stcCallback'
   */
  public native function get callbackPrefix():String;

  /**
   * @private
   */
  public native function set callbackPrefix(value:String):void;

  /**
   The param name to use when passing records to the server (e.g. 'records=someEncodedRecordString'). Defaults to 'records'
   */
  public native function get recordParam():String;

  /**
   * @private
   */
  public native function set recordParam(value:String):void;

  /**
   The prefix string that is used to create a unique ID for the injected script tag element (defaults to 'stcScript')
   */
  public native function get scriptIdPrefix():String;

  /**
   * @private
   */
  public native function set scriptIdPrefix(value:String):void;


}
}
    