package flash.globalization {


/**
 * A data structure that holds information about a number that was extracted by parsing a string.
 * <p>The number string can contain a prefix and suffix surrounding a number. In such cases the <code>startIndex</code> property is set to the first character of the number. Also, the <code>endIndex</code> property is set to the index of the character that follows the last character of the number.</p>
 * @see NumberFormatter#parse()
 * @see NumberFormatter#parseNumber()
 *
 */
public final class NumberParseResult {
  /**
   * The index of the character after the last character of the numeric portion of the input string.
   */
  public function get endIndex():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The index of the first character of the numeric portion of the input string.
   */
  public function get startIndex():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The value of the numeric portion of the input string.
   */
  public function get value():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a number parse result object. NumberParseResult objects are usually created by the <code>NumberFormatter.parse()</code> and <code>NumberFormatter.parseNumber()</code> methods, rather than by calling this constructor directly.
   * @param value The value of the numeric portion of the input string.
   * @param startIndex The index of the first character of the number in the input string.
   * @param endIndex The index of the character after the last character of the number in the input string.
   *
   * @see NumberFormatter#parse()
   * @see NumberFormatter#parseNumber()
   *
   */
  public function NumberParseResult(value:Number = NaN, startIndex:int = 0x7fffffff, endIndex:int = 0x7fffffff) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
