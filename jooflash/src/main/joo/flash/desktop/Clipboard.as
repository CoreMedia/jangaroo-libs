package flash.desktop {
/**
 * The Clipboard class provides a container for transferring data and objects through the clipboard. The operating system clipboard can be accessed through the static <code>generalClipboard</code> property.
 * <p>A Clipboard object can contain the same information in more than one format. By supplying information in multiple formats, you increase the chances that another application will be able to use that information. Add data to a Clipboard object with the <code>setData()</code> or <code>setDataHandler()</code> method.</p>
 * <p>The standard formats are:</p>
 * <ul>
 * <li>BITMAP_FORMAT: a BitmapData object (AIR only)</li>
 * <li>FILE_LIST_FORMAT: an array of File objects (AIR only)</li>
 * <li>HTML_FORMAT: HTML-formatted string data</li>
 * <li>TEXT_FORMAT: string data</li>
 * <li>RICH_TEXT_FORMAT: a ByteArray containing Rich Text Format data</li>
 * <li>URL_FORMAT: a URL string (AIR only)</li></ul>
 * <p>These constants for the names of the standard formats are defined in the ClipboardFormats class.</p>
 * <p>When a transfer to or from the operating system occurs, the standard formats are automatically translated between ActionScript data types and the native operating system clipboard types.</p>
 * <p>You can use application-defined formats to add ActionScript objects to a Clipboard object. If an object is serializable, both a reference and a clone of the object can be made available. Object references are valid only within the originating application.</p>
 * <p>When it is computationally expensive to convert the information to be transferred into a particular format, you can supply the name of a function that performs the conversion. The function is called if and only if that format is read by the receiving component or application. Add a deferred rendering function to a Clipboard object with the <code>setDataHandler()</code> method. Note that in some cases, the operating system calls the function before a drop occurs. For example, when you use a handler function to provide the data for a file dragged from an AIR application to the file system, the operating system calls the data handler function as soon as the drag gesture leaves the AIR application—typically resulting in an undesireable pause as the file data is downloaded or created.</p>
 * <p><b>Note for AIR applications:</b> The clipboard object referenced by the event objects dispatched for HTML drag-and-drop and copy-and-paste events are not the same type as the AIR Clipboard object. The JavaScript clipboard object is described in the AIR developer's guide.</p>
 * <p><b>Note for Flash Player applications:</b> In Flash Player 10, a paste operation from the clipboard first requires a user event (such as a keyboard shortcut for the Paste command or a mouse click on the Paste command in a context menu). <code>Clipboard.getData()</code> will return the contents of the clipboard only if the InteractiveObject has received and is acting on a paste event. Calling <code>Clipboard.getData()</code> under any other circumstances will be unsuccessful. The same restriction applies in AIR for content outside the application sandbox.</p>
 * <p>On Linux, clipboard data does not persist when an AIR application closes.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/desktop/Clipboard.html#includeExamplesSummary">View the examples</a></p>
 * @see NativeDragManager
 * @see ClipboardFormats
 * @see ClipboardTransferMode
 *
 */
public class Clipboard {
  /**
   * An array of strings containing the names of the data formats available in this Clipboard object.
   * <p>String constants for the names of the standard formats are defined in the ClipboardFormats class. Other, application-defined, strings may also be used as format names to transfer data as an object.</p>
   * @see ClipboardFormats
   *
   * @example The following example reads the <code>formats</code> array of the system clipboard:
   * <listing>
   *  var availableFormats:Array = Clipboard.generalClipboard.formats;
   * </listing>
   */
  public function get formats():Array {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The operating system clipboard.
   * <p>Any data pasted to the system clipboard is available to other applications. This may include insecure remote code running in a web browser.</p>
   * <p><b>Note:</b> In Flash Player 10 applications, a paste operation from the clipboard first requires a user event (such as a keyboard shortcut for the Paste command or a mouse click on the Paste command in a context menu). <code>Clipboard.getData()</code> will return the contents of the clipboard only if the InteractiveObject has received and is acting on a paste event. Calling <code>Clipboard.getData()</code> under any other circumstances will be unsuccessful. The same restriction applies in AIR for content outside the application sandbox.</p>
   * <p>The <code>generalClipboard</code> object is created automatically. You cannot assign another instance of a Clipboard to this property. Instead, you use the <code>getData()</code> and <code>setData()</code> methods to read and write data to the existing object.</p>
   * <p>You should always clear the clipboard before writing new data to it to ensure that old data in all formats is erased.</p>
   * <p>The <code>generalClipboard</code> object cannot be passed to the AIR NativeDragManager. Create a new Clipboard object for native drag-and-drop operations in an AIR application.</p>
   * @example To write to the operating system clipboard:
   * <listing>
   *  import flash.desktop.ClipboardFormats;
   *
   *  var copy:String = "A string to copy to the system clipboard.";
   *  Clipboard.generalClipboard.clear();
   *  Clipboard.generalClipboard.setData(ClipboardFormats.TEXT_FORMAT, copy);
   * </listing>
   * <div>To read from the operating system clipboard:
   * <listing>
   *  import flash.desktop.ClipboardFormats;
   *
   *  var pasteData:String  = Clipboard.generalClipboard.getData(ClipboardFormats.TEXT_FORMAT) as String;
   * </listing></div>
   */
  public static function get generalClipboard():Clipboard {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an empty Clipboard object.
   * <p>Create Clipboard objects to hold the data of a native drag-and-drop gesture in Adobe AIR. Clipboard objects can be used for only one drag-and-drop gesture; they cannot be reused.</p>
   * <p>Do not create a Clipboard object for copy-and-paste operations. Use the single <code>Clipboard.generalClipboard</code> object instead.</p>
   * @throws flash.errors.IllegalOperationError <code>new Clipboard()</code> is not supported in Flash Player, since only the operating system clipboard can be used in Flash Player. For copy-and-paste operations involving the operating system clipboard, use the Clipboard.generalClipboard object rather than creating a new Clipboard object. Does not throw an error in an AIR application.
   *
   * @see #generalClipboard
   *
   * @example The following example creates a new clipboard for use with the NativeDragManager class.
   * <p><b>Note:</b> For copy-and-paste operations involving the operating system clipboard, use the <code>Clipboard.generalClipboard</code> object rather than creating a new clipboard.</p>
   * <listing>
   *  import flash.desktop.Clipboard;
   *
   *  var clipboard:Clipboard = new Clipboard();
   * </listing>
   */
  public function Clipboard() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Deletes all data representations from this Clipboard object.
   * @throws SecurityError Call to generalClipboard.clear() is not permitted in this context. In Flash Player, you can only call this method successfully during the processing of a user event (as in a key press or mouse click). In AIR, this restriction only applies to content outside of the application security sandbox.
   *
   * @example The following example clears the system clipboard:
   * <listing>
   *  Clipboard.generalClipboard.clear();
   * </listing>
   */
  public function clear():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Deletes the data representation for the specified format.
   * @param format The data format to remove.
   *
   * @throws SecurityError Call to generalClipboard.clearData() is not permitted in this context. In Flash Player, you can only call this method successfully during the processing of a user event (as in a key press or mouse click). In AIR, this restriction only applies to content outside of the application security sandbox.
   *
   * @example The following example clears any data having the format <code>ClipboardFormats.TEXT_FORMAT</code> from the system clipboard:
   * <listing>
   *  import flash.desktop.ClipboardFormats;
   *
   *  Clipboard.generalClipboard.clearData(ClipboardFormats.TEXT_FORMAT);
   * </listing>
   */
  public function clearData(format:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the clipboard data if data in the specified format is present.
   * <p>Flash Player requires that the <code>getData()</code> be called in a <code>paste</code> event handler. In AIR, this restriction only applies to content outside of the application security sandbox.</p>
   * <p>When a standard data format is accessed, the data is returned as a new object of the corresponding Flash data type.</p>
   * <p>When an application-defined format is accessed, the value of the <code>transferMode</code> parameter determines whether a reference to the original object or an anonymous object containing a serialized copy of the original object is returned. When an <code>originalPreferred</code> or <code>clonePreferred</code> mode is specified, Flash Player or AIR returns the alternate version if the preferred version is not available. When an <code>originalOnly</code> or <code>cloneOnly</code> mode is specified, Flash Player or AIR returns <code>null</code> if the requested version is not available.</p>
   * @param format The data format to return. The format string can contain one of the standard names defined in the ClipboardFormats class, or an application-defined name.
   * @param transferMode Specifies whether to return a reference or serialized copy when an application-defined data format is accessed. The value must be one of the names defined in the ClipboardTransferMode class. This value is ignored for the standard data formats; a copy is always returned.
   *
   * @return An object of the type corresponding to the data format.
   *
   * @throws Error <code>transferMode</code> is not one of the names defined in the ClipboardTransferMode class.
   * @throws flash.errors.IllegalOperationError The Clipboard object requested is no longer in scope (AIR only).
   * @throws SecurityError Reading from or writing to the clipboard is not permitted in this context. In Flash Player, you can only call this method successfully during the processing of a <code>paste</code> event. In AIR, this restriction only applies to content outside of the application security sandbox.
   *
   * @see #setData()
   * @see ClipboardFormats
   * @see ClipboardTransferMode
   *
   * @example The following example reads text from the system clipboard, if available:
   * <listing>
   *  import flash.desktop.ClipboardFormats;
   *
   *  var pasteData:String = Clipboard.generalClipboard.getData(ClipboardFormats.TEXT_FORMAT) as String;
   * </listing>
   */
  public function getData(format:String, transferMode:String = "originalPreferred"):Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Checks whether data in the specified format exists in this Clipboard object.
   * <p>Use the constants in the ClipboardFormats class to reference the standard format names.</p>
   * @param format The format type to check.
   *
   * @return <code>true</code>, if data in the specified format is present.
   *
   * @throws flash.errors.IllegalOperationError The Clipboard object requested is no longer in scope.
   * @throws SecurityError Reading from or writing to the clipboard is not permitted in this context.
   *
   * @see ClipboardFormats
   *
   * @example The following example tests the system clipboard to determine whether text-formatted data is available:
   * <listing>
   * if(Clipboard.generalClipboard.hasFormat(ClipboardFormats.TEXT_FORMAT)){
   *     //do something
   * }
   * </listing>
   */
  public function hasFormat(format:String):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a representation of the information to be transferred in the specified data format.
   * <p>In the application sandbox of Adobe AIR, <code>setData()</code> can be called anytime. In other contexts, <code>setData()</code> can only be called in response to a user-generated event such as a key press or mouse click.</p>
   * <p>Different representations of the same information can be added to the clipboard as different formats, which increases the ability of other components or applications to make use of the available data. For example, an image could be added as bitmap data for use by image editing applications, as a URL, and as an encoded PNG file for transfer to the native file system.</p>
   * <p>The data parameter must be the appropriate data type for the specified format:</p>
   * <table>
   * <tr><th>Format</th><th>Type</th><th>Description</th></tr>
   * <tr>
   * <td><code>ClipboardFormats.TEXT_FORMAT</code></td>
   * <td><code>String</code></td>
   * <td>string data</td></tr>
   * <tr>
   * <td><code>ClipboardFormats.HTML_FORMAT</code></td>
   * <td><code>String</code></td>
   * <td>HTML string data</td></tr>
   * <tr>
   * <td><code>ClipboardFormats.URL_FORMAT</code></td>
   * <td><code>String</code></td>
   * <td>URL string (AIR only)</td></tr>
   * <tr>
   * <td><code>ClipboardFormats.RICH_TEXT_FORMAT</code></td>
   * <td><code>ByteArray</code></td>
   * <td>Rich Text Format data</td></tr>
   * <tr>
   * <td><code>ClipboardFormats.BITMAP_FORMAT</code></td>
   * <td><code>BitmapData</code></td>
   * <td>bitmap data (AIR only)</td></tr>
   * <tr>
   * <td><code>ClipboardFormats.FILE_LIST_FORMAT</code></td>
   * <td>array of <code>File</code></td>
   * <td>an array of files (AIR only)</td></tr>
   * <tr>
   * <td>Custom format name</td>
   * <td>any</td>
   * <td>object reference and serialized clone</td></tr></table>
   * <p>Custom format names cannot begin with "air:" or "flash:". To prevent name collisions when using custom formats, you may want to use your application ID or a package name as a prefix to the format, such as "com.example.applicationName.dataPacket".</p>
   * <p>When transferring within or between applications, the <code>serializable</code> parameter determines whether both a reference and a copy are available, or whether only a reference to an object is available. Set <code>serializable</code> to <code>true</code> to make both the reference and a copy of the data object available. Set <code>serializable</code> to <code>false</code> to make only the object reference available. Object references are valid only within the current application so setting <code>serializable</code> to <code>false</code> also means that the data in that format is not available to other Flash Player or AIR applications. A component can choose to get the reference or the copy of the object by setting the appropriate clipboard transfer mode when accessing the data for that format.</p>
   * <p><b>Note:</b> The standard formats are always converted to native formats when data is pasted or dragged outside a supported application, so the value of the <code>serializable</code> parameter does not affect the availability of data in the standard formats to non-Flash-based applications.</p>
   * <p>To defer rendering of the data for a format, use the <code>setDataHandler()</code> method instead. If both the <code>setData()</code> and the <code>setDataHandler()</code> methods are used to add a data representation with the same format name, then the handler function will never be called.</p>
   * <p><b>Note:</b> On Mac OS, when you set the <code>format</code> parameter to <code>ClipboardFormats.URL_FORMAT</code>, the URL is transferred only if it is a valid URL. Otherwise, the Clipboard object is emptied (and calling <code>getData()</code> returns <code>null</code>).</p>
   * @param format The format of the data.
   * @param data The information to add.
   * @param serializable Specify <code>true</code> for objects that can be serialized (and deserialized).
   *
   * @return <code>true</code> if the data was succesfully set; <code>false</code> otherwise. In Flash Player, returns <code>false</code> when <code>format</code> is an unsupported member of ClipboardFormats. (Flash Player does not support <code>ClipboardFormats.URL_FORMAT</code>, <code>ClipboardFormats.FILE_LIST_FORMAT</code>, <code>ClipboardFormats.FILE_PROMISE_LIST_FORMAT</code>, or <code>ClipboardFormats.BITMAP_FORMAT</code>).
   *
   * @throws flash.errors.IllegalOperationError The Clipboard object requested is no longer in scope (which can occur with clipboards created for drag-and-drop operations).
   * @throws SecurityError Reading from or writing to the clipboard is not permitted in this context. In Flash Player, you can only call this method successfully during the processing of a user event (as in a key press or mouse click). In AIR, this restriction only applies to content outside of the application security sandbox.
   * @throws TypeError <code>format</code> or <code>data</code> is <code>null</code>.
   *
   * @see #setDataHandler()
   * @see #getData()
   * @see ClipboardFormats
   * @see ClipboardTransferMode
   *
   * @example The following example adds content to the system clipboard in both text and HTML formats:
   * <listing>
   *  import flash.desktop.ClipboardFormats;
   *
   *  var htmlString:String = "<html><body>Body content</body></html>";
   *  Clipboard.generalClipboard.setData(ClipboardFormats.TEXT_FORMAT, urlString);
   *  Clipboard.generalClipboard.setData(ClipboardFormats.HTML_FORMAT, urlString);
   * </listing>
   */
  public function setData(format:String, data:Object, serializable:Boolean = true):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a reference to a handler function that produces the data to be transfered.
   * <p>Use a handler function to defer creation or rendering of the data until it is actually accessed.</p>
   * <p>The handler function must return the appropriate data type for the specified format:</p>
   * <table>
   * <tr><th>Format</th><th>Return Type</th></tr>
   * <tr>
   * <td><code>ClipboardFormats.TEXT_FORMAT</code></td>
   * <td><code>String</code></td></tr>
   * <tr>
   * <td><code>ClipboardFormats.HTML_FORMAT</code></td>
   * <td><code>String</code></td></tr>
   * <tr>
   * <td><code>ClipboardFormats.URL_FORMAT</code></td>
   * <td><code>String</code> (AIR only)</td></tr>
   * <tr>
   * <td><code>ClipboardFormats.RICH_TEXT_FORMAT</code></td>
   * <td><code>ByteArray</code></td></tr>
   * <tr>
   * <td><code>ClipboardFormats.BITMAP_FORMAT</code></td>
   * <td><code>BitmapData</code> (AIR only)</td></tr>
   * <tr>
   * <td><code>ClipboardFormats.FILE_LIST_FORMAT</code></td>
   * <td>Array of <code>File</code> (AIR only)</td></tr>
   * <tr>
   * <td><code>ClipboardFormats.FILE_PROMISE_LIST_FORMAT</code></td>
   * <td>Array of <code>File</code> (AIR only)</td></tr>
   * <tr>
   * <td>Custom format name</td>
   * <td>Non-void</td></tr></table>
   * <p>The handler function is called when and only when the data in the specified format is read. Note that in some cases, the operating system calls the function before a drop occurs. For example, when you use a handler function to provide the data for a file dragged from an AIR application to the file system, the operating system calls the data handler function as soon as the drag gesture leaves the AIR application—typically resulting in an undesireable pause as the file data is downloaded or created. You can use a URLFilePromise for this purpose instead.</p>
   * <p>Note that the underlying data can change between the time the handler is added and the time the data is read unless your application takes steps to protect the data. The behavior that occurs when data on the clipboard represented by a handler function is read more than once is not guaranteed. The clipboard might return the data produced by the first function call or it might call the function again. Do not rely on either behavior.</p>
   * <p>In the application sandbox of Adobe AIR, <code>setDataHandler()</code> can be called anytime. In other contexts, <code>setDataHandler()</code> can only be called in response to a user-generated event such as a key press or mouse click.</p>
   * <p>To add data directly to this Clipboard object, use the <code>setData()</code> method instead. If both the <code>setData()</code> and the <code>setDataHandler()</code> methods are called with the same format name, then the handler function is never called.</p>
   * <p><b>Note:</b> On Mac OS, when you set the <code>format</code> parameter to <code>ClipboardFormats.URL_FORMAT</code>, the URL is transferred only if the handler function returns a valid URL. Otherwise, the Clipboard object is emptied (and calling <code>getData()</code> returns <code>null</code>).</p>
   * @param format A function that returns the data to be transferred.
   * @param handler The format of the data.
   * @param serializable Specify <code>true</code> if the object returned by <code>handler</code> can be serialized (and deserialized).
   *
   * @return <code>true</code> if the handler was succesfully set; <code>false</code> otherwise.
   *
   * @throws TypeError <code>format</code> or <code>handler</code> is <code>null</code>.
   * @throws flash.errors.IllegalOperationError The Clipboard object requested is no longer in scope (AIR only).
   * @throws SecurityError Reading from or writing to the clipboard is not permitted in this context. In Flash Player, you can only call this method successfully during the processing of a user event (such as a key press or mouse click). In AIR, this restriction only applies to content outside of the application security sandbox.
   *
   * @see #setData()
   * @see ClipboardFormats
   *
   * @example The following example adds a random number to the system clipboard through a deferred data function:
   * <listing>
   *  import flash.desktop.ClipboardFormats;
   *
   *  Clipboard.generalClipboard.setDataHandler(ClipboardFormats.TEXT_FORMAT, randomNumberGenerator);
   *
   *  public function randomNumberGenerator():String{
   *      return Math.random().toString();
   *  }
   * </listing>
   */
  public function setDataHandler(format:String, handler:Function, serializable:Boolean = true):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
