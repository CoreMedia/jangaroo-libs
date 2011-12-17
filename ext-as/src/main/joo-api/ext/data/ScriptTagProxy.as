package ext.data {
import ext.config.scripttagproxy;

/**
 * <b>Deprecated</b> in favor of 'exception' event. Fires if an exception occurs in the Proxy during data loading. This event can be fired for one of two reasons: <ul><li><b>The load call timed out.</b> This means the load callback did not execute within the time limit specified by <a href="output/Ext.data.ScriptTagProxy.html#Ext.data.ScriptTagProxy-timeout">timeout</a>. In this case, this event will be raised and the fourth parameter (read error) will be null.</li><li><b>The load succeeded but the reader could not read the response.</b> This means the server returned data, but the configured Reader threw an error while reading the data. In this case, this event will be raised and the caught error will be passed along as the fourth parameter of this event.</li></ul>Note that this event is also relayed through <a href="Ext.data.Store.html">Ext.data.Store</a>, so you can listen for it directly on any Store instance.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Object</code>

 *       </li>

 *       <li>
 *           <code>options:Object</code>
 The loading options that were specified (see <a href="output/Ext.data.ScriptTagProxy.html#Ext.data.ScriptTagProxy-load">load</a> for details). If the load call timed out, this parameter will be null.
 *       </li>

 *       <li>
 *           <code>arg:Object</code>
 The callback's arg object passed to the <a href="output/Ext.data.ScriptTagProxy.html#Ext.data.ScriptTagProxy-load">load</a> function
 *       </li>

 *       <li>
 *           <code>e:Error</code>
 The JavaScript Error object caught if the configured Reader could not read the data. If the remote request returns success: false, this parameter will be null.
 *       </li>

 * </ul>
 */
[Event(name="loadexception")]


/**
 * An implementation of Ext.data.DataProxy that reads a data object from a URL which may be in a domain other than the originating domain of the running page. <p><b>Note that if you are retrieving data from a page that is in a domain that is NOT the same as the originating domain of the running page, you must use this class, rather than HttpProxy.</b><br/></p><p>The content passed back from a server resource requested by a ScriptTagProxy <b>must</b> be executable JavaScript source code because it is used as the source inside a &lt;script&gt; tag.<br/></p><p>In order for the browser to process the returned data, the server must wrap the data object with a call to a callback function, the name of which is passed as a parameter by the ScriptTagProxy. Below is a Java example for a servlet which returns data for either a ScriptTagProxy, or an HttpProxy depending on whether the callback name was passed:</p><pre><code>boolean scriptTag = false;
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

 * @see ext.config.scripttagproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#cls-Ext.data.ScriptTagProxy Ext JS source
 */
public class ScriptTagProxy extends DataProxy {

  /**
   *
   *
   * @param config A configuration object.
   * @see ext.config.scripttagproxy
   */
  public function ScriptTagProxy(config:scripttagproxy = null) {
    super(config);
  }

  /**
   The name of the parameter to pass to the server which tells the server the name of the callback function set up by the load call to process the returned data object. Defaults to "callback".<p>The server-side processing must read this parameter value, and generate javascript output which calls this named function passing the data object as its only parameter.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get callbackParam():String;

  /**
   Defaults to true. Disable caching by adding a unique parameter name to the request.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get nocache():Boolean;

  /**
   The number of milliseconds to wait for a response. Defaults to 30 seconds.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get timeout():Number;

  /**
   The URL from which to request the data object.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get url():String;

  /**
   * Abort the current server request.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-abort Ext JS source
   */
  public native function abort():void;

  /**
   * HttpProxy implementation of DataProxy#doRequest
   *
   * @param action
   * @param rs If action is <tt>read</tt>, rs will be null
   * @param params An object containing properties which are to be used as HTTP parameters for the request to the remote server.
   * @param reader The Reader object which converts the data object into a block of Ext.data.Records.
   * @param callback The function into which to pass the block of Ext.data.Records. The function must be passed <ul><li>The Record block object</li><li>The "arg" argument from the load function</li><li>A boolean success indicator</li></ul>
   * @param scope The scope (<code>this</code> reference) in which the callback function is executed. Defaults to the browser window.
   * @param arg An optional argument which is passed to the callback as its second parameter.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-doRequest Ext JS source
   */
  public native function doRequest(action:String, rs:*, params:Object, reader:DataReader, callback:Function, scope:Object, arg:Object):void;

  /**
   * Callback for read actions
   *
   * @param action [Ext.data.Api.actions.create|read|update|destroy]
   * @param trans The request transaction object
   * @param res The server response
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-onRead Ext JS source
   */
  protected native function onRead(action:String, trans:Object, res:Object):void;

  /**
   * Callback for write actions
   *
   * @param action [Ext.data.Api.actions.create|read|update|destroy]
   * @param trans The request transaction object
   * @param res The server response
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScriptTagProxy.html#method-Ext.data.ScriptTagProxy-onWrite Ext JS source
   */
  protected native function onWrite(action:String, trans:Object, res:Object):void;

}
}
    