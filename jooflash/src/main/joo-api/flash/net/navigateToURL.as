package flash.net {

/**
 * <span>Opens or replaces a window in the application that contains the Flash Player container
     (usually a browser). In Adobe AIR, the function opens a URL in the default system web browser</span>



      </p><p>  <b><i>Important Security Note  </i></b> </p>
      <p>Developers often pass URL values to the <code>navigateToURL()</code> function that were obtained from external sources
     such as FlashVars.  Attackers may try to manipulate these external sources to perform attacks such as cross-site scripting.
     Therefore, developers should validate all URLs before passing them to this function. </p>

     <p>Good data validation for URLs can mean different things depending on the usage of the URL within the overall application.
     The most common data validation techniques include validating that the URL is of the appropriate scheme.
     For instance, unintentionally allowing javascript: URLs may result in cross-site scripting.
     Validating that the URL is a within your domain can ensure that the SWF file can't be used as an open-redirector
     by people who conduct phishing attacks.  For additional security, you may also choose to validate the path of the URL
     and to validate that the URL conforms to the RFC guidelines</p>

     <p>For example, the following code shows a simple example of performing data validation by denying any URL
     that does not begin with http:// or https:// and validating that the URL is within your domain name.
     This example may not be appropriate for all web applications and you should consider whether additional checks
     against the URL are necessary. </p>


      <div class="listing"><pre>     // AS3 Regular expression pattern match for URLs that start with http:// and https:// plus your domain name.
     function checkProtocol (flashVarURL:String):Boolean {
        // Get the domain name for the SWF if it is not known at compile time.
        // If the domain is known at compile time, then the following two lines can be replaced with a hard coded string.
        var my_lc:LocalConnection = new LocalConnection();
        var domainName:String = my_lc.domain;
        // Build the RegEx to test the URL.
        // This RegEx assumes that there is at least one "/" after the
        // domain. http://www.mysite.com will not match.
        var pattern:RegExp = new RegExp("^http[s]?\:\\/\\/([^\\/]+)\\/");
        var result:Object = pattern.exec(flashVarURL);
        if (result == null || result[1] != domainName || flashVarURL.length &gt;= 4096) {
          return (false);
        }
        return (true);
     }

      </pre></div>
     <p>For <i>local</i> content running in a browser, calls to the
     <code>navigateToURL()</code> method that specify a <code>"javascript:"</code> pseudo-protocol
     (via a <code>URLRequest</code> object passed as the first parameter) are only permitted if the SWF
     file and the containing web page (if there is one) are in the local-trusted security sandbox.
     Some browsers do not support using the javascript protocol with the <code>navigateToURL()</code>

     method. Instead, consider using the <code>call()</code> method of the <code>ExternalInterface</code>
     API to invoke JavaScript methods within the enclosing HTML page.</p>

      <p>In Flash Player, and in non-application sandboxes in Adobe AIR,
     you cannot connect to commonly reserved ports.
     For a complete list of blocked ports, see "Restricting Networking APIs" in the
     <i>ActionScript 3.0 Developer's Guide</i>.</p>

     <p>In Flash Player 10 and later running in a browser, using this method programmatically to
     open a pop-up window may not be successful.  Various browsers (and browser configurations) may block pop-up windows
     at any time; it is not possible to guarantee any pop-up window will appear.
     However, for the best chance of success, use this method to open a pop-up window only in code that executes
     as a direct result of a user action (for example, in an event handler for a mouse click or key-press event.)</p>


     <p> In Flash Player 10 and later, if you use a multipart Content-Type (for example "multipart/form-data")
     that contains an upload (indicated by a "filename" parameter in a "content-disposition" header within the POST body),
     the POST operation is subject to the security rules applied to uploads:</p>
     <ul><li>The POST operation must be performed in response to a user-initiated action, such as a mouse click or key press.</li><li>If the POST operation is cross-domain (the POST target is not on the same server as the SWF file
     that is sending the POST request),
     the target server must provide a URL policy file that permits cross-domain access.</li></ul>
     <p>Also, for any multipart Content-Type, the syntax must be valid (according to the RFC2046 standards).
     If the syntax appears to be invalid, the POST operation is subject to the security rules applied to uploads.</p>



     <p>In AIR, on mobile platforms, the sms: and tel: URI schemes are supported. On Android, the market: URI scheme is supported.
     The URL syntax is subject to the platform conventions. For example, on Android, the URI scheme must be lower case.
     When you navigate to a URL using one of these schemes, the runtime opens the URL in the default application for
     handling the scheme. Thus, navigating to <code>tel:+5555555555</code> opens the phone dialer with the specified
     number already entered. An separate app or utility, such as a phone dialer must be available to process the URL.</p>



 * @param request A URLRequest object that specifies the URL to navigate to.

     <p><span>For content running in Adobe AIR, when </span>
     using the <code>navigateToURL()</code> function, the runtime treats a URLRequest that uses the POST
     method (one that has its <code>method</code> property set to <code>URLRequestMethod.POST</code>)
     as using the GET method.</p>


 * @param windowName (default = <code>null</code>)<code></code> — The browser window or HTML frame in which to display
                   the document indicated by the <code>request</code> parameter.
     You can enter the name of a specific window or use one of the following values:
     <ul><li><code>"_self"</code> specifies the current frame in the current window.</li><li><code>"_blank"</code> specifies a new window.</li><li><code>"_parent"</code> specifies the parent of the current frame.</li><li><code>"_top"</code> specifies the top-level frame in the current window.</li></ul>

     <p>If you do not specify a value for this parameter, a new empty window is created.
     In the stand-alone player, you can either specify a new (<code>"_blank"</code>) window
     or a named window. The other values don't apply.</p>

     <p><b>Note:</b> When code in a SWF file that is running in the
     local-with-filesystem sandbox calls the <code>navigateToURL()</code>
     function and specifies a custom window name for the <code>window</code>
     parameter, the window name is transfered into a random name. The name is in
     the form <code>"_flashXXXXXXXX"</code>, where each X represents a random
     hexadecimal digit. Within the same session (until you close the containing
     browser window), if you call the function again and specify the same name for
     the <code>window</code> parameter, the same random string is used.</p>


     </td></tr></tbody></table><br><span class="label">Throws</span><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td width="20"></td><td><code><a href="../../flash/errors/IOError.html">IOError</a> </code> — The <code>digest</code> property of the <code>request</code> object is not
     <code>null</code>. You should only set the <code>digest</code> property of a URLRequest object
     for use calling the <code>URLLoader.load()</code> method when loading a SWZ file (an Adobe
     platform component).

     </td></tr><tr><td class="paramSpacer">&nbsp;</td></tr><tr><td width="20"></td><td><code><a href="../../SecurityError.html">SecurityError</a> </code> — In Flash Player (and in non-application sandbox content in Adobe AIR),
     this error is thrown in the following situations:
     <ul><li>Local untrusted SWF files may not communicate with
     the Internet. You can avoid this situation by reclassifying this SWF file
     as local-with-networking or trusted.</li><li>A navigate operation attempted to evaluate a scripting
     pseudo-URL, but the containing document (usually an HTML document in a
     browser) is from a sandbox to which you do not have access.  You can avoid this situation
     by specifying <code>allowScriptAccess="always"</code> in the containing
     document.</li><li>You cannot navigate the special windows
     <code>"_self"</code>, <code>"_top"</code>, or <code>"_parent"</code>

     if your SWF file is contained by an HTML page
     that has set the <code>allowScriptAccess</code> to
     <code>"none"</code>, or to <code>"sameDomain"</code>
     when the domains of the HTML file and the SWF file do not match.</li><li>You cannot navigate a window with a nondefault name
     from within a SWF file that is in the local-with-filesystem sandbox.</li><li>You cannot connect to commonly reserved ports.
     For a complete list of blocked ports, see "Restricting Networking APIs" in the
     <i>ActionScript 3.0 Developer's Guide</i>.</li></ul>

     </td></tr><tr><td class="paramSpacer">&nbsp;</td></tr><tr><td width="20"></td><td><code><a href="../../Error.html">Error</a> </code> — If the method is not called in response to a user action, such as a mouse
     event or keypress event. This requirement only applies to content in Flash Player and
     to non-application sandbox content in Adobe AIR.

     </td></tr></tbody></table><p><span class="label">See also</span></p><div class="seeAlso"><a href="../../flash/external/ExternalInterface.html#call%28%29" target="">flash.external.ExternalInterface.call()</a><br><a href="http://help.adobe.com/en_US/Flex/4.0/UsingSDK/WS2db454920e96a9e51e63e3d11c0bf69084-7ea7.html" target="_top">Using the navigateToURL() method
in Flex</a></div><span id="pageFilter"><br><span class="label"> Example &nbsp;(
                <span class="usage"><a href="http://www.adobe.com/go/learn_as3_usingexamples_en"> How to use this example </a></span>)
            </span><br><br><div class="detailBody"> The following example opens the URL http://www.adobe.com in a new browser window and passes data about a
 user session, captured in a URLVariables object, to the web server.

<div class="listing"><pre>package {
    import flash.display.Sprite;
    import flash.net.navigateToURL;
    import flash.net.URLRequest;
    import flash.net.URLVariables;

    public class NavigateToURLExample extends Sprite {

        public function NavigateToURLExample() {
            var url:String = "http://www.adobe.com";
            var variables:URLVariables = new URLVariables();
            variables.exampleSessionId = new Date().getTime();
            variables.exampleUserLabel = "Your Name";
            var request:URLRequest = new URLRequest(url);
            request.data = variables;
            try {
                navigateToURL(request);
            }
            catch (e:Error) {
                // handle error here
            }
        }
    }
}
</pre></div></div></span><span id="pageFilter"><br><div class="detailBody"> The following example shows how you can open new browser windows from Flash Player using the navigateToURL() method.
 Example provided by
 <a href="http://actionscriptexamples.com/2008/12/08/opening-urls-in-new-browser-windows-using-actionscript-30-and-actionscript-20/" target="_mmexternal">ActionScriptExamples.com</a>.
<div class="listing"><pre>// Requires
// - Button symbol on Stage (or a display object, such as a MovieClip) with instance name "buttonSymbol"
//
buttonSymbol.addEventListener(MouseEvent.CLICK, buttonSymbol_click);

function buttonSymbol_click(evt:MouseEvent):void {
    var req:URLRequest = new URLRequest("http://www.adobe.com/");
    navigateToURL(req, "_blank");
}
</pre>
 */
public function navigateToURL(request:URLRequest, windowName:String = null):void {
  window.open(request.url, windowName || "_blank");
}

}
