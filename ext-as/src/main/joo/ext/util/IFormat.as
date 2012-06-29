package ext.util {


/**
 * Reusable data formatting functions.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Format.</p>
 * @see ext.util.#Format ext.util.Format
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format Sencha Docs Ext JS 3.4
 */
public interface IFormat {

  /**
   * Converts the first character only of a string to upper case
   *
   * @param value The text to convert
   * @return The converted text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-capitalize Sencha Docs Ext JS 3.4
   */
  function capitalize(value:String):String;

  /**
   * Parse a value into a formatted date using the specified format pattern.
   *
   * @param value The value to format (Strings must conform to the format expected by the javascript Date object's <a href="http://www.w3schools.com/jsref/jsref_parse.asp">parse()</a> method)
   * @param format Any valid date format string (defaults to 'm/d/Y')
   * @return The formatted date string
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-date Sencha Docs Ext JS 3.4
   */
  function date(value:*, format:String = null):String;

  /**
   * Returns a date rendering function that can be reused to apply a date format multiple times efficiently
   *
   * @param format Any valid date format string
   * @return The date formatting function
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-dateRenderer Sencha Docs Ext JS 3.4
   */
  function dateRenderer(format:String):Function;

  /**
   * Checks a reference and converts it to the default value if it's empty
   *
   * @param value Reference to check
   * @param defaultValue The value to insert of it's undefined (defaults to "")
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-defaultValue Sencha Docs Ext JS 3.4
   */
  function defaultValue(value:*, defaultValue:String):String;

  /**
   * Truncate a string and add an ellipsis ('...') to the end if it exceeds the specified length
   *
   * @param value The string to truncate
   * @param length The maximum length to allow before truncating
   * @param word True to try to find a common work break
   * @return The converted text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-ellipsis Sencha Docs Ext JS 3.4
   */
  function ellipsis(value:String, length:Number, word:Boolean):String;

  /**
   * Simple format for a file size (xxx bytes, xxx KB, xxx MB)
   *
   * @param size The numeric value to format
   * @return The formatted file size
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-fileSize Sencha Docs Ext JS 3.4
   */
  function fileSize(size:*):String;

  /**
   * Convert certain characters (&amp;, &lt;, &gt;, and ') from their HTML character equivalents.
   *
   * @param value The string to decode
   * @return The decoded text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-htmlDecode Sencha Docs Ext JS 3.4
   */
  function htmlDecode(value:String):String;

  /**
   * Convert certain characters (&amp;, &lt;, &gt;, and ') to their HTML character equivalents for literal display in web pages.
   *
   * @param value The string to encode
   * @return The encoded text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-htmlEncode Sencha Docs Ext JS 3.4
   */
  function htmlEncode(value:String):String;

  /**
   * Converts a string to all lower case letters
   *
   * @param value The text to convert
   * @return The converted text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-lowercase Sencha Docs Ext JS 3.4
   */
  function lowercase(value:String):String;

  /**
   * It does simple math for use in a template, for example:<pre><code>var tpl = new Ext.Template('{value} &#42; 10 = {value:math("&#42; 10")}');
   </code></pre>
   *
   * @return A function that operates on the passed value.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-math Sencha Docs Ext JS 3.4
   */
  function math():Function;

  /**
   * Converts newline characters to the HTML tag &lt;br/&gt;
   *
   * @param The string value to format.
   * @return The string with embedded &lt;br/&gt; tags in place of newlines.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-nl2br Sencha Docs Ext JS 3.4
   */
  function nl2br(The:String):String;

  /**
   * Formats the number according to the format string. <div style="margin-left:40px">examples (123456.789): <div style="margin-left:10px">0 - (123456) show only digits, no precision<br/>0.00 - (123456.78) show only digits, 2 precision<br/>0.0000 - (123456.7890) show only digits, 4 precision<br/>0,000 - (123,456) show comma and digits, no precision<br/>0,000.00 - (123,456.78) show comma and digits, 2 precision<br/>0,0.00 - (123,456.78) shortcut method, show comma and digits, 2 precision<br/>To reverse the grouping (,) and decimal (.) for international numbers, add /i to the end. For example: 0.000,00/i</div></div>
   *
   * @param v The number to format.
   * @param format The way you would like to format this text.
   * @return The formatted number.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-number Sencha Docs Ext JS 3.4
   */
  function number(v:Number, format:String):String;

  /**
   * Returns a number rendering function that can be reused to apply a number format multiple times efficiently
   *
   * @param format Any valid number format string for <a href="output/Ext.util.Format.html#Ext.util.Format-number">number</a>
   * @return The number formatting function
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-numberRenderer Sencha Docs Ext JS 3.4
   */
  function numberRenderer(format:String):Function;

  /**
   * Selectively do a plural form of a word based on a numeric value. For example, in a template, {commentCount:plural("Comment")} would result in "1 Comment" if commentCount was 1 or would be "x Comments" if the value is 0 or greater than 1.
   *
   * @param value The value to compare against
   * @param singular The singular form of the word
   * @param plural The plural form of the word (defaults to the singular with an "s")
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-plural Sencha Docs Ext JS 3.4
   */
  function plural(value:Number, singular:String, plural:String = null):void;

  /**
   * Rounds the passed number to the required decimal precision.
   *
   * @param value The numeric value to round.
   * @param precision The number of decimal places to which to round the first parameter's value.
   * @return The rounded value.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-round Sencha Docs Ext JS 3.4
   */
  function round(value:*, precision:Number):Number;

  /**
   * Strips all script tags
   *
   * @param value The text from which to strip script tags
   * @return The stripped text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-stripScripts Sencha Docs Ext JS 3.4
   */
  function stripScripts(value:*):String;

  /**
   * Strips all HTML tags
   *
   * @param value The text from which to strip tags
   * @return The stripped text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-stripTags Sencha Docs Ext JS 3.4
   */
  function stripTags(value:*):String;

  /**
   * Returns a substring from within an original string
   *
   * @param value The original text
   * @param start The start index of the substring
   * @param length The length of the substring
   * @return The substring
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-substr Sencha Docs Ext JS 3.4
   */
  function substr(value:String, start:Number, length:Number):String;

  /**
   * Trims any whitespace from either side of a string
   *
   * @param value The text to trim
   * @return The trimmed text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-trim Sencha Docs Ext JS 3.4
   */
  function trim(value:String):String;

  /**
   * Checks a reference and converts it to empty string if it is undefined
   *
   * @param value Reference to check
   * @return Empty string if converted, otherwise the original value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-undef Sencha Docs Ext JS 3.4
   */
  function undef(value:*):*;

  /**
   * Converts a string to all upper case letters
   *
   * @param value The text to convert
   * @return The converted text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-uppercase Sencha Docs Ext JS 3.4
   */
  function uppercase(value:String):String;

  /**
   * Format a number as US currency
   *
   * @param value The numeric value to format
   * @return The formatted currency string
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Format-method-usMoney Sencha Docs Ext JS 3.4
   */
  function usMoney(value:*):String;

}
}
    