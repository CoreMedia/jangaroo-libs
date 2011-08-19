package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class ScriptTagProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.ScriptTagProxy
 */
[ExtConfig(target="ext.data.ScriptTagProxy")]
public class scripttagproxy extends dataproxy {

  public function scripttagproxy(config:Object = null) {

    super(config);
  }


  /**
   The name of the parameter to pass to the server which tells the server the name of the callback function set up by the load call to process the returned data object. Defaults to "callback".<p>The server-side processing must read this parameter value, and generate javascript output which calls this named function passing the data object as its only parameter.</p>
   */
  public native function get callbackParam():String;

  /**
   * @private
   */
  public native function set callbackParam(value:String):void;

  /**
   Defaults to true. Disable caching by adding a unique parameter name to the request.
   */
  public native function get nocache():Boolean;

  /**
   * @private
   */
  public native function set nocache(value:Boolean):void;

  /**
   The number of milliseconds to wait for a response. Defaults to 30 seconds.
   */
  public native function get timeout():Number;

  /**
   * @private
   */
  public native function set timeout(value:Number):void;

  /**
   The URL from which to request the data object.
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;


}
}
    