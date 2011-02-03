package flash.errors {


/**
 * The Flash runtimes throw this exception when they encounter a corrupted SWF file.
 */
public dynamic class InvalidSWFError extends Error {
  /**
   * Creates a new InvalidSWFError object.
   * @param message A string associated with the error object.
   * @param id <code>id:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code> (default = <code>0</code>)
   *
   */
  public function InvalidSWFError(message:String = "", id:int = 0) {
    super(message);
    // TODO: implement!
  }
}
}
