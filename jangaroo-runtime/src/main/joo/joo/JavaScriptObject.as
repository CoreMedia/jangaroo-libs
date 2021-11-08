package joo {

/**
 * This is a marker class indicating that any subclass is intended to be used as a typed JSON object, i.e.
 * no enumerable "meta" properties may be defined by the Jangaroo Runtime.
 */
[Deprecated(since="4.1.9", replacement="none")]
public class JavaScriptObject {

  /**
   * Create a typed JavaScript object from the given JSON object.
   * @param config the JSON object to copy into this JavaScriptObject. If no JSON object is given, this JavaScriptObject
   *   is initially empty.
   */
  public function JavaScriptObject(config:Object = null) {
    for (var key:String in config) {
      this[key] = config[key];
    }
  }

}
}
