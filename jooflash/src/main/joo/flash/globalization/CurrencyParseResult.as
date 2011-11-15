package flash.globalization {


/**
 * A data structure that represents a currency amount and currency symbol or string that were extracted by parsing a currency value.
 * @see CurrencyFormatter#parse()
 *
 */
public final class CurrencyParseResult {
  /**
   * The portion of the input string that corresponds to the currency symbol or currency string.
   */
  public function get currencyString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The currency amount value that was extracted from the input string.
   */
  public function get value():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a currency parse result object.
   * @param value A number representing the currency amount value.
   * @param symbol A string representing the currency symbol.
   *
   */
  public function CurrencyParseResult(value:Number = NaN, symbol:String = "") {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
