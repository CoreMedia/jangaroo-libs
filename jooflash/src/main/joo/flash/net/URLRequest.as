package flash.net {
import flash.net.URLRequestMethod;

/**
 * The URLRequest class captures all of the information in a single HTTP request.
 * URLRequest objects are passed to the load() methods of URLStream, URLLoader, Loader and other loading operations
 * to initiate URL downloads, as well as to the upload()  and download() methods of the FileReference class.
 * <p>By default, the URL that you pass to the url parameter must be in exactly the same domain as the calling
 * SWF file, including subdomains. For example, www.adobe.com and store.adobe.com are different domains. To load data
 * from a different domain, place a cross-domain policy file on the server that is hosting the SWF file.</p>
 * <p>When you use this class, consider the Adobe® Flash® Player security model:</p>
 * <ul>
 * <li>Data loading is not allowed if the calling SWF file is in the local-with-file-system sandbox and the target
 *  resource is from a network sandbox.</li>
 * <li>Data loading is also not allowed if the calling SWF file is from a network sandbox and the target resource is
 *  local.</li>
 * </ul>
 * <p>For more information, see the following:</p>
 * <ul>
 * <li>The security chapter in the Programming ActionScript 3.0 book and the latest comments on LiveDocs</li>
 * <li>The Flash Player 9 Security white paper</li>
 * </ul>
 * @see URLRequestHeader
 * @see URLLoader
 * @see URLStream
 * @see FileReference 
 */
public class URLRequest {

  /**
   * Creates a URLRequest object. If System.useCodePage is true, the request is encoded using the system code page,
   * rather than Unicode. If System.useCodePage is false, the request is encoded using Unicode, rather than the system
   * code page.
   * @param url (default = null) The URL to be requested. You can set the URL later by using the url property.
   * @see flash.system.System.useCodePage 
   */
  public function URLRequest(url : String = null) {
    this.url = url;
  }

  /**
   *  The MIME content type of any POST data.
   *  <p><b>Note:</b> The FileReference.upload() and FileReference.download() methods do not support the
   *  URLRequest.contentType parameter.</p>
   */
  public var contentType : String;

  /**
   * An object containing data to be transmitted with the URL request.
   * <p>This property is used with the method property. If the value of URLRequest.method is POST, the data is
   * transmitted with the URLRequest object with the HTTP POST method.</p>
   * <p>If the value of URLRequest.method is GET, the data defines variables to be sent with the URLRequest object
   * with the HTTP GET method.</p>
   * <p>The URLRequest API offers binary POST support and support for URL-encoded variables, as well as support for
   * strings. The data object can be of ByteArray, URLVariables, or String type.</p>
   * <p>The way in which the data is used depends on the type of object used:</p>
   * <ul>
   * <li>If the object is a ByteArray object, the binary data of the ByteArray object is used as POST data. For GET,
   * data of ByteArray type is not supported. Also, data of ByteArray type is not supported for FileReference.upload()
   * and FileReference.download().</li>
   * <li>If the object is a URLVariables object and the method is POST, the variables are encoded using
   * x-www-form-urlencoded format and the resulting string is used as POST data. An exception is a call to
   * FileReference.upload(), in which the variables are sent as separate fields in a multipart/form-data post.</li>
   * <li>If the object is a URLVariables object and the method is GET, the URLVariables object defines variables to 
   * be sent with the URLRequest object.</li>
   * <li>Otherwise, the object is converted to a string, and the string is used as the POST or GET data.</li>
   * </ul>
   * <p>This data is not sent until a method, such as navigateToURL() or FileReference.upload(), uses the URLRequest
   * object.</p>
   * @see URLRequest.method
   * @see URLRequestMethod
   * @see URLVariables
   * @see flash.utils.ByteArray
   */
  public var data : Object;

  /**
   * Controls whether the HTTP form submission method is a GET  or POST operation.
   * Valid values are URLRequestMethod.GET or URLRequestMethod.POST.
   * <p>The default value is URLRequestMethod.GET.</p>
   * @throws ArgumentError If the value parameter is not URLRequestMethod.GET or URLRequestMethod.POST.
   * @see URLRequestMethod
   */
  public var method : String = URLRequestMethod.GET;

  /**
   * The array of HTTP request headers to be appended to the HTTP request.
   * The array is composed of URLRequestHeader objects. Each object in the array must be a URLRequestHeader object
   * that contains a name string and a value string, as follows:
   * <code>var rhArray:Array = new Array(new URLRequestHeader("Content-Type", "text/html"));</code>
   * <p>Flash Player imposes certain restrictions on request headers; for more information, see the URLRequestHeader
   * class description.</p>
   * <p>The FileReference.upload() and FileReference.download() methods do not support the URLRequest.requestHeaders
   * parameter.</p>
   * @see URLRequestHeader 
   */
  public var requestHeaders : Array;

  /**
   * The URL to be requested.
   * By default, the URL must be in exactly the same domain as the calling SWF file, including subdomains.
   * For example, SWF files at www.adobe.com and store.adobe.com are in different domains.
   * To load data from a different domain, put a cross-domain policy file on the server that is hosting the SWF file.
   * For more information, see the security documentation described in the URLRequest class description.
   */
  public var url : String;
}
}