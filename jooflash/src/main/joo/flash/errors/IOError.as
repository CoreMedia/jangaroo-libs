package flash.errors {

/**
 * The IOError exception is thrown when some type of input or output failure occurs.
 * For example, an IOError exception is thrown if a read/write operation is attempted on
 * a socket that has not connected or that has become disconnected.
 *
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7ecc.html Working with the debugger versions of Flash runtimes
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7ece.html Comparing the Error classes
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7eb1.html flash.error package Error classes
 */
public class IOError extends Error {

  /**
   * Creates a new IOError object.
   *
   * @param message (default = "<code></code>") A string associated with the error object.
   */
  public function IOError(message:String = "") {
    super(message);
  }

}
}