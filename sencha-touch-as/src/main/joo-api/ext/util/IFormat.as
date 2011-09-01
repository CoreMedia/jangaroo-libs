package ext.util {

import ext.form.Number;

/**
 * Reusable data formatting functions
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Format.</p>
 * @see ext.util.#Format ext.util.Format
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#cls-Ext.util.Format Ext JS source
 */
public interface IFormat {

  /**
   * Parse a value into a formatted date using the specified format pattern.
   *
   * @param value The value to format (Strings must conform to the format expected by the javascript Date object's <a href="http://www.w3schools.com/jsref/jsref_parse.asp">parse()</a> method)
   * @param format Any valid date format string (defaults to 'm/d/Y')
   * @return The formatted date string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-date Ext JS source
   */
  function date(value:*, format:String = null):String;

  /**
   * Truncate a string and add an ellipsis ('...') to the end if it exceeds the specified length
   *
   * @param value The string to truncate
   * @param length The maximum length to allow before truncating
   * @param word True to try to find a common word break
   * @return The converted text
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-ellipsis Ext JS source
   */
  function ellipsis(value:String, length:ext.form.Number, word:Boolean):String;

  /**
   * Escapes the passed string for ' and \
   *
   * @param string The string to escape
   * @return The escaped string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-escape Ext JS source
   */
  function escape(string:String):String;

  /**
   * Escapes the passed string for use in a regular expression
   *
   * @param str
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-escapeRegex Ext JS source
   */
  function escapeRegex(str:String):String;

  /**
   * Allows you to define a tokenized string and pass an arbitrary number of arguments to replace the tokens. Each token must be unique, and must increment in the format {0}, {1}, etc. Example usage: <pre><code>var cls = 'my-class', text = 'Some text';
   var s = Ext.util.Format.format('&lt;div class="{0}"&gt;{1}&lt;/div&gt;', cls, text);
   // s now contains the string: '&lt;div class="my-class"&gt;Some text&lt;/div&gt;'
   </code></pre>
   *
   * @param string The tokenized string to be formatted
   * @param value1 The value to replace token {0}
   * @param value2 Etc...
   * @return The formatted string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-format Ext JS source
   */
  function format(string:String, value1:String, value2:String):String;

  /**
   * Convert certain characters (&amp;, &lt;, &gt;, and ') from their HTML character equivalents.
   *
   * @param value The string to decode
   * @return The decoded text
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-htmlDecode Ext JS source
   */
  function htmlDecode(value:String):String;

  /**
   * Convert certain characters (&amp;, &lt;, &gt;, and ') to their HTML character equivalents for literal display in web pages.
   *
   * @param value The string to encode
   * @return The encoded text
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-htmlEncode Ext JS source
   */
  function htmlEncode(value:String):String;

  /**
   * Pads the left side of a string with a specified character. This is especially useful for normalizing number and date strings. Example usage: <pre><code>var s = Ext.util.Format.leftPad('123', 5, '0');
   // s now contains the string: '00123'
   </code></pre>
   *
   * @param string The original string
   * @param size The total length of the output string
   * @param char The character with which to pad the original string (defaults to empty string " ")
   * @return The padded string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-leftPad Ext JS source
   */
  function leftPad(string:String, size:ext.form.Number, char:String = null):String;

  /**
   * Utility function that allows you to easily switch a string between two alternating values. The passed value is compared to the current string, and if they are equal, the other value that was passed in is returned. If they are already different, the first value passed in is returned. Note that this method returns the new value but does not change the current string. <pre><code>   // alternate sort directions
   sort = Ext.util.Format.toggle(sort, 'ASC', 'DESC');

   // instead of conditional logic:
   sort = (sort == 'ASC' ? 'DESC' : 'ASC');
   </code></pre>
   *
   * @param string The current string
   * @param value The value to compare to the current string
   * @param other The new value to use if the string already equals the first value passed in
   * @return The new value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-toggle Ext JS source
   */
  function toggle(string:String, value:String, other:String):String;

  /**
   * Trims whitespace from either end of a string, leaving spaces within the string intact. Example: <pre><code>   var s = '  foo bar  ';
   alert('-' + s + '-');         //alerts "- foo bar -"
   alert('-' + Ext.util.Format.trim(s) + '-');  //alerts "-foo bar-"
   </code></pre>
   *
   * @param string The string to escape
   * @return The trimmed string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Format.html#method-Ext.util.Format-trim Ext JS source
   */
  function trim(string:String):String;

}
}
    