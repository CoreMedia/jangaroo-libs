package flash.net {
import js.XMLHttpRequest;

/**
 * Sends a URL request to a server, but ignores any response.
 * <p>To examine the server response, use the <code>URLLoader.load()</code> method instead.</p>
 * <p>You cannot connect to commonly reserved ports. For a complete list of blocked ports, see "Restricting Networking APIs" in the <i>ActionScript 3.0 Developer's Guide</i>.</p>
 * <p>You can prevent a SWF file from using this method by setting the <code>allowNetworking</code> parameter of the the <code>object</code> and <code>embed</code> tags in the HTML page that contains the SWF content.</p>
 * <p>In Flash Player 10 and later, if you use a multipart Content-Type (for example "multipart/form-data") that contains an upload (indicated by a "filename" parameter in a "content-disposition" header within the POST body), the POST operation is subject to the security rules applied to uploads:</p>
 * <ul>
 * <li>The POST operation must be performed in response to a user-initiated action, such as a mouse click or key press.</li>
 * <li>If the POST operation is cross-domain (the POST target is not on the same server as the SWF file that is sending the POST request), the target server must provide a URL policy file that permits cross-domain access.</li></ul>
 * <p>Also, for any multipart Content-Type, the syntax must be valid (according to the RFC2046 standards). If the syntax appears to be invalid, the POST operation is subject to the security rules applied to uploads.</p>
 * <p>For more information related to security, see the Flash Player Developer Center Topic: <a href="http://www.adobe.com/go/devnet_security_en">Security</a>.</p>
 * @param request A URLRequest object specifying the URL to send data to.
 *
 * @throws SecurityError Local untrusted SWF files cannot communicate with the Internet. You can avoid this situation by reclassifying this SWF file as local-with-networking or trusted.
 * @throws SecurityError You cannot connect to commonly reserved ports. For a complete list of blocked ports, see "Restricting Networking APIs" in the <i>ActionScript 3.0 Developer's Guide</i>.
 *
 * @example The following example passes data about a user session, captured in a URLVariables object, to the application at http://www.yourDomain.com/application.jsp.
 * <listing>
 *  package {
 *     import flash.display.Sprite;
 *     import flash.net.URLRequest;
 *     import flash.net.URLVariables;
 *     import flash.net.sendToURL;
 *
 *     public class SendToURLExample extends Sprite {
 *
 *         public function SendToURLExample() {
 *             var url:String = "http://www.yourDomain.com/application.jsp";
 *             var variables:URLVariables = new URLVariables();
 *             variables.sessionId = new Date().getTime();
 *             variables.userLabel = "Your Name";
 *
 *             var request:URLRequest = new URLRequest(url);
 *             request.data = variables;
 *             trace("sendToURL: " + request.url + "?" + request.data);
 *             try {
 *                 sendToURL(request);
 *             }
 *             catch (e:Error) {
 *                 // handle error here
 *             }
 *         }
 *     }
 * }
 * </listing>
 */
public function sendToURL(request:URLRequest):void {
  var xhr:XMLHttpRequest = new XMLHttpRequest();
  xhr.open(request.method, request.url);
  xhr.setRequestHeader("Content-Type", request.contentType);
  var requestHeaders:Array = request.requestHeaders;
  for (var i:uint = 0; i < requestHeaders.length; i++) {
    var requestHeader:URLRequestHeader = requestHeaders[i];
    xhr.setRequestHeader(requestHeader.name, requestHeader.value);
  }
  xhr.send(request.method === "GET" ? undefined : request.data);
}

}
