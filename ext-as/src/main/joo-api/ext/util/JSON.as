package ext.util {
/**
 * Modified version of Douglas Crockford"s json.js that doesn"t
 * mess with the Object prototype
 * http://www.json.org/js.html
*/
public class JSON {
/**
 * @singleton
 */
    /**
     * Encodes an Object, Array or other value
     * @param o The variable to encode
     * @return The JSON string
     */
     public static native function encode(o : Object) : String;

    /**
     * Decodes (parses) a JSON string to an object. If the JSON is invalid, this function throws a SyntaxError unless the safe option is set.
     * @param json The JSON string
     * @return The resulting object
     */
  public static native function decode(json : String) : Object;

}}
