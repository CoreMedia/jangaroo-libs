package ext.util {
/**
 * Reusable data formatting functions
*/
public class Format {
/**
 * @singleton
 */
        /**
         * Truncate a string and add an ellipsis ('...') to the end if it exceeds the specified length
         * @param value The string to truncate
         * @param length The maximum length to allow before truncating
         * @param word True to try to find a common work break
         * @return The converted text
         */
        public static native function ellipsis(value : String, length : Number, word : Boolean) : String;
        /**
         * Checks a reference and converts it to empty string if it is undefined
         * @param value Reference to check
         * @return Empty string if converted, otherwise the original value
         */
        public static native function undef(value : *) : *;
        /**
         * Checks a reference and converts it to the default value if it's empty
         * @param value Reference to check
         * @param defaultValue The value to insert of it's undefined (defaults to "")
         * @return 
         */
        public static native function defaultValue(value : *, defaultValue : String) : String;
        /**
         * Convert certain characters (&, <, >, and ') to their HTML character equivalents for literal display in web pages.
         * @param value The string to encode
         * @return The encoded text
         */
        public static native function htmlEncode(value : String) : String;
        /**
         * Convert certain characters (&, <, >, and ') from their HTML character equivalents.
         * @param value The string to decode
         * @return The decoded text
         */
        public static native function htmlDecode(value : String) : String;
        /**
         * Trims any whitespace from either side of a string
         * @param value The text to trim
         * @return The trimmed text
         */
        public static native function trim(value : String) : String;
        /**
         * Returns a substring from within an original string
         * @param value The original text
         * @param start The start index of the substring
         * @param length The length of the substring
         * @return The substring
         */
        public static native function substr(value : String, start : Number, length : Number) : String;
        /**
         * Converts a string to all lower case letters
         * @param value The text to convert
         * @return The converted text
         */
        public static native function lowercase(value : String) : String;
        /**
         * Converts a string to all upper case letters
         * @param value The text to convert
         * @return The converted text
         */
        public static native function uppercase(value : String) : String;
        /**
         * Converts the first character only of a string to upper case
         * @param value The text to convert
         * @return The converted text
         */
        public static native function capitalize(value : String) : String;
        protected static native function call(value, fn) : void;
        /**
         * Format a number as US currency
         * @param value The numeric value to format
         * @return The formatted currency string
         */
        public static native function usMoney(value : *) : String;
        /**
         * Parse a value into a formatted date using the specified format pattern.
         * @param value The value to format (Strings must conform to the format expected by the javascript Date object's <a href="http://www.w3schools.com/jsref/jsref_parse.asp">parse()</a> method)
         * @param format Any valid date format string (defaults to 'm/d/Y')
         * @return The formatted date string
         */
        public static native function date(value : *, format : String = undefined) : String;
        /**
         * Returns a date rendering function that can be reused to apply a date format multiple times efficiently
         * @param format Any valid date format string
         * @return The date formatting function
         */
        public static native function dateRenderer(format : String) : Function;
        protected static var stripTagsRE ;
        /**
         * Strips all HTML tags
         * @param value The text from which to strip tags
         * @return The stripped text
         */
        public static native function stripTags(value : *) : String;
        public static var stripScriptsRe ;
        /**
         * Strips all script tags
         * @param value The text from which to strip script tags
         * @return The stripped text
         */
        public static native function stripScripts(value : *) : String;
        /**
         * Simple format for a file size (xxx bytes, xxx KB, xxx MB)
         * @param size The numeric value to format
         * @return The formatted file size
         */
        public static native function fileSize(size : *) : String;
        /**
         * It does simple math for use in a template, for example:<pre><code>
         * var tpl = new ext.Template('{value} * 10 = {value:math("* 10")}');
         * </code></pre>
         * @return A function that operates on the passed value.
         */
        public static native function math() : Function;
        /**
         * Rounds the passed number to the required decimal precision.
         * @param value The numeric value to round.
         * @param precision The number of decimal places to which to round the first parameter's value.
         * @return The rounded value.
         */
        public static native function round(value : *, precision : Number) : Number;
        /**
         * Formats the number according to the format string.
         * <div style="margin-left:40px">examples (123456.789):
         * <div style="margin-left:10px">
         * 0 - (123456) show only digits, no precision<br>
         * 0.00 - (123456.78) show only digits, 2 precision<br>
         * 0.0000 - (123456.7890) show only digits, 4 precision<br>
         * 0,000 - (123,456) show comma and digits, no precision<br>
         * 0,000.00 - (123,456.78) show comma and digits, 2 precision<br>
         * 0,0.00 - (123,456.78) shortcut method, show comma and digits, 2 precision<br>
         * To reverse the grouping (,) and decimal (.) for international numbers, add /i to the end.
         * For example: 0.000,00/i
         * </div></div>
         * @param v The number to format.
         * @param format The way you would like to format this text.
         * @return The formatted number.
         */
        public static native function number(v : Number, format : String) : String;
        /**
         * Returns a number rendering function that can be reused to apply a number format multiple times efficiently
         * @param format Any valid number format string for <b class='link'>#number</b>
         * @return The number formatting function
         */
        public static native function numberRenderer(format : String) : Function;
        /**
         * Selectively do a plural form of a word based on a numeric value. For example, in a template,
         * {commentCount:plural("Comment")}  would result in "1 Comment" if commentCount was 1 or would be "x Comments"
         * if the value is 0 or greater than 1.
         * @param value The value to compare against
         * @param singular The singular form of the word
         * @param plural The plural form of the word (defaults to the singular with an "s")
         */
        public static native function plural(value : Number, singular : String, plural : String = undefined) : void;
        /**
         * Converts newline characters to the HTML tag &lt;br/>
         * @param v The string value to format.
         * @return The string with embedded &lt;br/> tags in place of newlines.
         */
        public static native function nl2br(v : String) : String;
}}
