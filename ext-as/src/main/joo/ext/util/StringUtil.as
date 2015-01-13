package ext.util {

[Native(amd="ext-as.module", "util.StringUtil")]
public class StringUtil {

  /**
   * Allows you to define a tokenized string and pass an arbitrary number of arguments to replace the tokens.  Each
   * token must be unique, and must increment in the format {0}, {1}, etc.  Example usage:
   * <pre><code>
   var cls = 'my-class', text = 'Some text';
   var s = ext.util.StringUtil.format('&lt;div class="{0}">{1}&lt;/div>', cls, text);
   // s now contains the string: '&lt;div class="my-class">Some text&lt;/div>'
   * </code></pre>
   * @param {String} string The tokenized string to be formatted
   * @param {Array} values The values to replace tokens {0}, {1}, ...
   * @return {String} The formatted string
   */
  public static native function format(string:String, ...values):String;
}
}