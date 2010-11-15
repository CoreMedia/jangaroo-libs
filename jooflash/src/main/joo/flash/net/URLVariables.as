package flash.net {

/**
 * The URLVariables class allows you to transfer variables between a Flash® application and a server.
 * Use URLVariables objects with methods of the URLLoader class, with the data property of the URLRequest class,
 * and with flash.net package functions.
 * @see URLLoader
 */
public class URLVariables {

  /**
   * Creates a new URLVariables object.
   * You pass URLVariables objects to the data property of URLRequest objects.
   * <p>If you call the URLVariables constructor with a string, the decode() method is automatically called to convert
   * the string to properties of the URLVariables object.</p>
   * @param source (default = null) A URL-encoded string containing name/value pairs. 
   */
  public function URLVariables(source : String = null) {
    
  }

  /**
   * Converts the variable string to properties of the specified URLVariables object.
   * <p>This method is used internally by the URLVariables events. Most users do not need to call this method directly.</p>
   * @param source A URL-encoded query string containing name/value pairs.
   * @throws Error The source parameter must be a URL-encoded query string containing name/value pairs.
   */
  public function decode(source : String) : void {
    
  }

  /**
   * Returns a string containing all enumerable variables, in the MIME content encoding application/x-www-form-urlencoded.
   * @return A URL-encoded string containing name/value pairs. 
   */
  public function toString() : String {
    return "";
  }
  
}
}
