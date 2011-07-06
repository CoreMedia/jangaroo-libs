package ext.util {


/**
 * Modified version of Douglas Crockford"s json.js that doesn"t mess with the Object prototype http://www.json.org/js.html
 * <p>This interface defines the type of the singleton JSON.</p>
 * @see ext.util.#JSON ext.util.JSON
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSON.html#cls-Ext.util.JSON Ext JS source
 */
public interface IJSON {

  /**
   * Decodes (parses) a JSON string to an object. If the JSON is invalid, this function throws a SyntaxError unless the safe option is set.
   *
   * @param json The JSON string
   * @return The resulting object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSON.html#method-Ext.util.JSON-decode Ext JS source
   */
  function decode(json:String):Object;

  /**
   * Encodes an Object, Array or other value
   *
   * @param o The variable to encode
   * @return The JSON string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSON.html#method-Ext.util.JSON-encode Ext JS source
   */
  function encode(o:*):String;

  /**
   * Encodes a Date. This returns the actual string which is inserted into the JSON string as the literal expression. <b>The returned value includes enclosing double quotation marks.</b>
   <p>The default return format is "yyyy-mm-ddThh:mm:ss".</p><p>To override this:</p><pre><code>Ext.util.JSON.encodeDate = function(d) {
   return d.format('"Y-m-d"');
   };
   </code></pre>
   *
   * @param d The Date to encode
   * @return The string literal to use in a JSON string.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSON.html#method-Ext.util.JSON-encodeDate Ext JS source
   */
  function encodeDate(d:Date):String;

}
}
    