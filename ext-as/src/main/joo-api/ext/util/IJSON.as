package ext.util {


/**
 * Modified version of Douglas Crockford"s json.js that doesn"t mess with the Object prototype http://www.json.org/js.html
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton JSON.</p>
 * @see ext.util.#JSON ext.util.JSON
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.JSON Sencha Docs Ext JS 3.4
 */
public interface IJSON {

  /**
   * Decodes (parses) a JSON string to an object. If the JSON is invalid, this function throws a SyntaxError unless the safe option is set.
   *
   * @param json The JSON string
   * @return The resulting object
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.JSON-method-decode Sencha Docs Ext JS 3.4
   */
  function decode(json:String):Object;

  /**
   * Encodes an Object, Array or other value
   *
   * @param o The variable to encode
   * @return The JSON string
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.JSON-method-encode Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.JSON-method-encodeDate Sencha Docs Ext JS 3.4
   */
  function encodeDate(d:Date):String;

}
}
    