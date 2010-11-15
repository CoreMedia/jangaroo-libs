package flash.net {

import js.XMLHttpRequest;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequest;

/**
 * The URLLoader class downloads data from a URL as text, binary data, or URL-encoded variables.
 * It is useful for downloading text files, XML, or other information to be used in a dynamic, data-driven application.
 * <p>A URLLoader object downloads all of the data from a URL before making it available to ActionScript. It sends out
 * notifications about the progress of the download, which you can monitor through the bytesLoaded and bytesTotal
 * properties, as well as through dispatched events.</p>
 * <p>The value you pass for the url parameter must, by default, be in exactly the same domain. For example, a SWF file
 * at www.adobe.com can load data only from sources that are also at www.adobe.com. To load data from a different
 * domain, place a cross-domain policy file on the server hosting the SWF file.</p>
 * @see URLRequest
 * @see URLVariables
 * @see URLStream
 */
public class URLLoader extends EventDispatcher {

  /**
   * Indicates the number of bytes that have been loaded thus far during the load operation.
   */
  public var bytesLoaded : uint = 0;

  /**
   * Indicates the total number of bytes in the downloaded data. This property contains 0 while the load operation is
   * in progress and is populated when the operation is complete. 
   */
  public var bytesTotal : uint = 0;

  /**
   * The data received from the load operation. This property is populated only when the load operation is complete.
   * The format of the data depends on the setting of the dataFormat property:
   * <p>If the dataFormat property is URLLoaderDataFormat.TEXT, the received data is a string containing the text of
   *  the loaded file.</p>
   * <p>If the dataFormat property is URLLoaderDataFormat.BINARY, the received data is a ByteArray object containing
   *  the raw binary data.</p>
   * <p>If the dataFormat property is URLLoaderDataFormat.VARIABLES, the received data is a URLVariables object
   *  containing the URL-encoded variables.</p>
   */
  public var data : *;

  /**
   * Controls whether the downloaded data is received as text (URLLoaderDataFormat.TEXT), raw binary data
   * (URLLoaderDataFormat.BINARY), or URL-encoded variables (URLLoaderDataFormat.VARIABLES).
   * <p>If the value of the dataFormat property is URLLoaderDataFormat.TEXT, the received data is a string containing
   *  the text of the loaded file.</p>
   * <p>If the value of the dataFormat property is URLLoaderDataFormat.BINARY, the received data is a ByteArray object
   *  containing the raw binary data.</p>
   * <p>If the value of the dataFormat property is URLLoaderDataFormat.VARIABLES, the received data is a URLVariables
   *  object containing the URL-encoded variables.</p>
   * <p>The default value is URLLoaderDataFormat.TEXT.</p>
   */
  public var dataFormat : String = URLLoaderDataFormat.TEXT;

  /**
   * Creates a URLLoader object.
   * @param request (default = null) A URLRequest object specifying the URL to download. If this parameter is
   * omitted, no load operation begins. If specified, the load operation begins immediately (see the load entry for
   * more information). 
   */
  public function URLLoader(request : URLRequest = null) {
    if (request) {
      this.load(request);
    }
  }

  /**
   * Closes the load operation in progress. Any load operation in progress is immediately terminated.
   * If no URL is currently being streamed, an invalid stream error is thrown. 
   */
  public function close() : void {
    this.xmlHttpRequest.abort();
  }

  /**
   * Sends and loads data from the specified URL. The data can be received as text, raw binary data, or URL-encoded
   * variables, depending on the value you set for the dataFormat property. Note that the default value of the
   * dataFormat property is text. If you want to send data to the specified URL, you can set the data property in the
   * URLRequest object.
   * <p>Note: If a file being loaded contains non-ASCII characters (as found in many non-English languages), it is
   * recommended that you save the file with UTF-8 or UTF-16 encoding as opposed to a non-Unicode format like ASCII.</p>
   * <p>By default, the URL you load must be in exactly the same domain as the calling SWF file. For example, a SWF
   * file at www.adobe.com can load data only from sources that are also at www.adobe.com. To load data from a
   * different domain, put a cross-domain policy file on the server hosting the SWF file.</p>
   * <p>When using this method, consider the user agent's security model.</p>
   * @param request A URLRequest object specifying the URL to download.
   * 
   * @event complete:Event — Dispatched after data has loaded successfully.
   * @event httpStatus:HTTPStatusEvent — If access is over HTTP, and the current Flash Player environment supports
   *  obtaining status codes, you may receive these events in addition to any complete or error event.
   * @event ioError:IOErrorEvent — The load operation could not be completed.
   * @event progress:ProgressEvent — Dispatched when data is received as the download operation progresses.
   * @event securityError:SecurityErrorEvent — A load operation attempted to retrieve data from a server outside the
   *  caller's security sandbox. This may be worked around using a policy file on the server.
   * @event open:Event — Dispatched when a load operation commences.
   * 
   * @throws ArgumentError URLRequest.requestHeader objects may not contain certain prohibited HTTP request headers.
   *  For more information, see the URLRequestHeader class description.
   * @throws MemoryError This error can occur for the following reasons: 1) Flash Player cannot convert the
   *  URLRequest.data parameter from UTF8 to MBCS. This error is applicable if the URLRequest object passed to load()
   *  is set to perform a GET operation and if System.useCodePage is set to true. 2) Flash Player cannot allocate
   *  memory for the POST data. This error is applicable if the URLRequest object passed to load is set to perform a
   *  POST operation.
   * @throws SecurityError Local untrusted SWF files may not communicate with the Internet. This may be worked around
   *  by reclassifying this SWF file as local-with-networking or trusted.
   * @throws TypeError The value of the request parameter or the URLRequest.url property of the URLRequest object
   *  passed are null.
   * @see URLRequestHeader
   * @see URLRequest.requestHeaders
   * @see URLRequest.data
   * @see Working with external data 
   */
  public function load(request : URLRequest) : void {
    try {
      this.xmlHttpRequest = new XMLHttpRequest();
    } catch(e : Error) {
      throw new Error("Your browser does not support XMLHttpRequest: "+e.message);
    }
    this.xmlHttpRequest.onreadystatechange = this.readyStateChanged;
    this.xmlHttpRequest.open(request.method, request.url, true);
    this.xmlHttpRequest.send(null);
  }

  private function readyStateChanged() : void {
    trace("URLLoader: "+this.xmlHttpRequest.readyState);
    if (this.xmlHttpRequest.readyState==XMLHttpRequest.DONE) {
      this.data = this.xmlHttpRequest.responseText;
    }
    var event : flash.events.Event = this.createEvent();
    if (event) {
      this.dispatchEvent(event);
    }
  }

  private function createEvent() : flash.events.Event {
    switch (this.xmlHttpRequest.readyState) {
      case XMLHttpRequest.OPENED: return new flash.events.Event(flash.events.Event.OPEN, false, false);
      case XMLHttpRequest.DONE: return new flash.events.Event(flash.events.Event.COMPLETE, false, false);
    }
    return null;
    
  }
  private var xmlHttpRequest : XMLHttpRequest;
}
}