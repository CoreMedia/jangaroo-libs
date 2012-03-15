package flash.globalization {


/**
 * The CurrencyFormatter class provides locale-sensitive formatting and parsing of currency values.
 * <p>The CurrencyFormatter class uses the data and functionality provided by the operating system and is designed to format currency values according to the conventions of a specific locale and type of currency. The position of the currency symbol, the negative symbol, the decimal separator, the grouping separator, the grouping pattern decimal separator, and other elements can vary depending on the locale.</p>
 * <p>If the operating system supports the requested locale, the properties and currency type are set according to the conventions and defaults of the requested locale. If the requested locale is not available, then the properties are set according to a fallback or default system locale, which can be retrieved using the <code>actualLocaleIDName</code> property.</p>
 * <p>Due to the use of the user's settings, the use of formatting patterns provided by the operating system, and the use of a fallback locale when a requested locale is not supported, different users can see different formatting results, even when using the same locale ID.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/globalization/CurrencyFormatter.html#includeExamplesSummary">View the examples</a></p>
 */
public final class CurrencyFormatter {
  /**
   * The name of the actual locale ID used by this CurrencyFormatter object.
   * <p>There are three possibilities for the value of the name, depending on operating system and the value of the <code>requestedLocaleIDName</code> parameter passed to the <code>CurrencyFormatter()</code> constructor.</p><ol>
   * <li>If the requested locale was not <code>LocaleID.DEFAULT</code> and the operating system provides support for the requested locale, then the name returned is the same as the <code>requestedLocaleIDName</code> property.</li>
   * <li>If <code>LocaleID.DEFAULT</code> was used as the value for the <code>requestedLocaleIDName</code> parameter to the constructor, then the name of the current locale specified by the user's operating system is used. The <code>LocaleID.DEFAULT</code> value preserves user's customized setting in the OS. Passing an explicit value as the <code>requestedLocaleIDName</code> parameter does not necessarily give the same result as using the <code>LocaleID.DEFAULT</code> even if the two locale ID names are the same. The user might have customized the locale settings on their machine, and by requesting an explicit locale ID name rather than using <code>LocaleID.DEFAULT</code> your application would not retrieve those customized settings.</li>
   * <li>If the system does not support the <code>requestedLocaleIDName</code> specified in the constructor then a fallback locale ID name is provided.</li></ol>
   * @see LocaleID
   * @see #requestedLocaleIDName
   * @see #CurrencyFormatter()
   *
   */
  public function get actualLocaleIDName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The three letter ISO 4217 currency code for the actual locale being used.
   * <p>This code is used to determine the currency symbol or string when formatting currency amounts using the <code>format()</code> method with the <code>withCurrencySymbol</code> parameter set to <code>false</code>.</p>
   * <p>This property is initialized by the constructor based on the actual locale that is used. When a fallback locale is used this property reflects the preferred, default currency code for the fallback locale.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @see #format()
   * @see #setCurrency()
   * @see #currencySymbol
   *
   */
  public function get currencyISOCode():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The currency symbol or string for the actual locale being used.
   * <p>This property is used as the currency symbol when formatting currency amounts using the <code>format()</code> method with the <code>withCurrencySymbol</code> parameter set to <code>true</code>.</p>
   * <p>This property is initialized by the constructor based on the actual locale that is used. When a fallback locale is used this property reflects the preferred, default currency symbol for the fallback locale.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @see #format()
   * @see #setCurrency()
   * @see #formattingWithCurrencySymbolIsSafe()
   * @see #currencyISOCode
   *
   */
  public function get currencySymbol():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The decimal separator character used for formatting or parsing currency amounts that have a decimal part.
   * <p>This property is initially set based on the locale that is selected when the formatter object is constructed.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @throws TypeError if this property is assigned a null value.
   *
   * @see #format()
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function get decimalSeparator():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set decimalSeparator(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the set of digit characters used when formatting currency amounts.
   * <p>Different languages and regions use different sets of characters to represent the digits 0 through 9. This property defines the set of digits to be used.</p>
   * <p>The value of this property represents the Unicode value for the zero digit of a decimal digit set. The valid values for this property are defined in the NationalDigitsType class.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @throws TypeError if this property is assigned a null value.
   *
   * @see #lastOperationStatus
   * @see LastOperationStatus
   * @see NationalDigitsType
   *
   */
  public function get digitsType():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set digitsType(value:uint):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The maximum number of digits that can appear after the decimal separator.
   * <p>Numbers are rounded to the number of digits specified by this property. <b>The rounding scheme varies depending on the user's operating system.</b></p>
   * <p>When the <code>trailingZeros</code> property is set to <code>true</code>, the fractional portion of the number (after the decimal point) is padded with trailing zeros until its length matches the value of this <code>fractionalDigits</code> property.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * <p>The default value is <code>0.</code></p>
   * @see #trailingZeros
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function get fractionalDigits():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fractionalDigits(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Describes the placement of grouping separators within the formatted currency amount string.
   * <p>When the <code>useGrouping</code> property is set to true, the <code>groupingPattern</code> property is used to define the placement and pattern used for the grouping separator.</p>
   * <p>The grouping pattern is defined as a string containing numbers separated by semicolons and optionally may end with an asterisk. For example: <code>"3;2;&#42;"</code>. Each number in the string represents the number of digits in a group. The grouping separator is placed before each group of digits. An asterisk at the end of the string indicates that groups with that number of digits should be repeated for the rest of the formatted string. If there is no asterisk then there are no additional groups or separators for the rest of the formatted string.</p>
   * <p>The first number in the string corresponds to the first group of digits to the left of the decimal separator. Subsequent numbers define the number of digits in subsequent groups to the left. Thus the string "3;2;&#42;" indicates that a grouping separator is placed after the first group of 3 digits, followed by groups of 2 digits. For example: <code>98,76,54,321</code></p>
   * <p>The following table shows examples of formatting the currency amount 123456789.12 with various grouping patterns. The grouping separator is a comma, the decimal separator is a period, and a dollar sign ($) is the currency symbol.</p>
   * <table>
   * <tr>
   * <td>Grouping Pattern</td>
   * <td>Sample Format</td></tr>
   * <tr>
   * <td><code>3;&#42;</code></td>
   * <td>$123,456,789.12</td></tr>
   * <tr>
   * <td><code>3;2;&#42;</code></td>
   * <td>$12,34,56,789.12</td></tr>
   * <tr>
   * <td><code>3</code></td>
   * <td>$123456,789.12</td></tr></table>
   * <p>Only a limited number of grouping sizes can be defined. On some operating systems, grouping patterns can only contain two numbers plus an asterisk. Other operating systems can support up to four numbers and an asterisk. For patterns without an asterisk, some operating systems only support one number while others support up to three numbers. If the maximum number of grouping pattern elements is exceeded, then additional elements are ignored, and the <code>lastOperationStatus</code> property is set as described below.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @throws TypeError if this property is assigned a null value.
   *
   * @see #groupingSeparator
   * @see #useGrouping
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function get groupingPattern():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set groupingPattern(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The character or string used for the grouping separator.
   * <p>The value of this property is used as the grouping separator when formatting currency amounts when the <code>useGrouping</code> property is set to <code>true</code>. This property is initially set based on the locale that is selected when the formatter object is constructed.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @throws TypeError if this property is assigned a null value.
   *
   * @see #format()
   * @see #useGrouping
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function get groupingSeparator():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set groupingSeparator(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The status of the most recent operation that this CurrencyFormatter object performed. The <code>lastOperationStatus</code> property is set whenever the constructor or a method of this class is called or another property is set. For the possible values see the description for each method.
   * @see LastOperationStatus
   *
   */
  public function get lastOperationStatus():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether a leading zero is included in a formatted currency amount when there are no integer digits to the left of the decimal separator.
   * <p>When this property is set to <code>true</code> a leading zero is included to the left of the decimal separator when formatting numeric values between -1.0 and 1.0. When this property is set to <code>false</code> a leading zero is not included.</p>
   * <p>For example if the currency amount is 0.321 and this property is set <code>true</code>, then the leading zero is included in the formatted string. If the property is set to <code>false</code>, the leading zero is not included. In that case the string would just include the decimal separator followed by the decimal digits, like <code>$.321</code>.</p>
   * <p>The following table shows examples of how currency amounts are formatted based on the values of this property and the related <code>fractionalDigits</code> and <code>trailingZeros</code> properties.</p>
   * <table>
   * <tr>
   * <td>trailingZeros</td>
   * <td><b>leadingZero</b></td>
   * <td>fractionalDigits</td>
   * <td>0.12</td>
   * <td>0</td></tr>
   * <tr>
   * <td>true</td>
   * <td>true</td>
   * <td>3</td>
   * <td>$0.120</td>
   * <td>$0.000</td></tr>
   * <tr>
   * <td>false</td>
   * <td>true</td>
   * <td>3</td>
   * <td>$0.12</td>
   * <td>$0</td></tr>
   * <tr>
   * <td>true</td>
   * <td>false</td>
   * <td>3</td>
   * <td>$.120</td>
   * <td>$.000</td></tr>
   * <tr>
   * <td>false</td>
   * <td>false</td>
   * <td>3</td>
   * <td>$.12</td>
   * <td>$0</td></tr></table>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @throws TypeError if this property is assigned a null value.
   *
   * @see #format()
   * @see #lastOperationStatus
   * @see LastOperationStatus
   * @see #trailingZeros
   *
   */
  public function get leadingZero():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set leadingZero(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A numeric value that indicates a formatting pattern for negative currency amounts. This pattern defines the location of the currency symbol and the negative symbol or parentheses in relation to the numeric portion of the currency amount.
   * <p>The value of this property must be one of the constants defined in the table below.</p>
   * <p>The table below summarizes the possible formatting patterns for negative currency amounts. When a currency amount is formatted with the <code>format()</code> method:</p>
   * <ul>
   * <li>The '¤' symbol is replaced with the value of the <code>currencyISOCode</code> or the <code>currencySymbol</code> property, depending on the value of the <code>withCurrencySymbol</code> parameter passed to the <code>format()</code> method;</li>
   * <li>The '-' character is replaced with the value of the <code>negativeNumberSymbol</code> property;</li>
   * <li>The 'n' character is replaced with the currency amount value that is passed to the <code>format()</code> method.</li></ul>
   * <table>
   * <tr>
   * <td>Negative currency format type</td>
   * <td>Formatting pattern</td></tr>
   * <tr>
   * <td>0</td>
   * <td>(¤n)</td></tr>
   * <tr>
   * <td>1</td>
   * <td>-¤n</td></tr>
   * <tr>
   * <td>2</td>
   * <td>¤-n</td></tr>
   * <tr>
   * <td>3</td>
   * <td>¤n-</td></tr>
   * <tr>
   * <td>4</td>
   * <td>(n¤)</td></tr>
   * <tr>
   * <td>5</td>
   * <td>-n¤</td></tr>
   * <tr>
   * <td>6</td>
   * <td>n-¤</td></tr>
   * <tr>
   * <td>7</td>
   * <td>n¤-</td></tr>
   * <tr>
   * <td>8</td>
   * <td>-n ¤</td></tr>
   * <tr>
   * <td>9</td>
   * <td>-¤ n</td></tr>
   * <tr>
   * <td>10</td>
   * <td>n ¤-</td></tr>
   * <tr>
   * <td>11</td>
   * <td>¤ n-</td></tr>
   * <tr>
   * <td>12</td>
   * <td>¤ -n</td></tr>
   * <tr>
   * <td>13</td>
   * <td>n- ¤</td></tr>
   * <tr>
   * <td>14</td>
   * <td>(¤ n)</td></tr>
   * <tr>
   * <td>15</td>
   * <td>(n ¤)</td></tr></table>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @throws ArgumentError if the assigned value is not between 0 and 15.
   *
   * @see #format()
   * @see #currencySymbol
   * @see #negativeSymbol
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function get negativeCurrencyFormat():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set negativeCurrencyFormat(value:uint):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The negative symbol used when formatting negative currency amounts.
   * <p>This symbol is used with the negative currency format when formatting a currency amount that is less than zero. It is not used in negative currency formats that do not include a negative sign (for example, when negative currency amounts are enclosed in parentheses).</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @throws TypeError if this property is assigned a null value.
   *
   * @see #format()
   * @see #negativeCurrencyFormat
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function get negativeSymbol():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set negativeSymbol(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A numeric value that indicates a formatting pattern for positive currency amounts. This format defines the location of currency symbol relative to the numeric portion of the currency amount.
   * <p>The value of this property must be one of the constants defined in the table below.</p>
   * <p>The table below summarizes the possible formatting patterns for positive currency amounts. When a currency amount is formatted with the <code>format()</code> method:</p>
   * <ul>
   * <li>The '¤' symbol is replaced with the value of the <code>currencyISOCode</code> or the <code>currencySymbol</code> property, depending on the value of the <code>withCurrencySymbol</code> parameter passed to the <code>format()</code> method;</li>
   * <li>The 'n' character is replaced with the currency amount value that is passed to the <code>format()</code> method.</li></ul>
   * <table>
   * <tr>
   * <td>Positive currency format type</td>
   * <td>Formatting pattern</td></tr>
   * <tr>
   * <td>0</td>
   * <td>¤n</td></tr>
   * <tr>
   * <td>1</td>
   * <td>n¤</td></tr>
   * <tr>
   * <td>2</td>
   * <td>¤ n</td></tr>
   * <tr>
   * <td>3</td>
   * <td>n ¤</td></tr></table>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @throws ArgumentError if the assigned value is not between 0 and 3.
   *
   * @see #currencySymbol
   * @see #format()
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function get positiveCurrencyFormat():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set positiveCurrencyFormat(value:uint):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The name of the requested locale ID that was passed to the constructor of this CurrencyFormatter object.
   * <p>If the <code>LocaleID.DEFAULT</code> value was used then the name returned is "i-default". The actual locale used can differ from the requested locale when a fallback locale is applied. The name of the actual locale can be retrieved using the <code>actualLocaleIDName</code> property.</p>
   * @see LocaleID
   * @see #actualLocaleIDName
   * @see #CurrencyFormatter()
   *
   */
  public function get requestedLocaleIDName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether trailing zeros are included in the formatted currency amount.
   * <p>When this property is set to <code>true</code>, trailing zeros are included in the fractional part of the formatted number up the limit specified by the <code>fractionalDigits</code> property. When this property is set to <code>false</code> then no trailing zeros are shown.</p>
   * <p>For example if the currency amount is 123.4, and this property is set true, and the <code>fractionalDigits</code> property is set to 3, the formatted string would show trailing zeros, like <code>$123.400</code> . If this property is <code>false</code>, trailing zeros are not included, and the string shows just the decimal separator followed by the non-zero decimal digits, like <code>$123.4</code> .</p>
   * <p>The following table shows examples of how currency amounts are formatted based on the values of this property and the related <code>fractionalDigits</code> and <code>leadingZero</code> properties.</p>
   * <table>
   * <tr>
   * <td><b>trailingZeros</b></td>
   * <td>leadingZero</td>
   * <td>fractionalDigits</td>
   * <td>0.12</td>
   * <td>0</td></tr>
   * <tr>
   * <td>true</td>
   * <td>true</td>
   * <td>3</td>
   * <td>$0.120</td>
   * <td>$0.000</td></tr>
   * <tr>
   * <td>false</td>
   * <td>true</td>
   * <td>3</td>
   * <td>$0.12</td>
   * <td>$0</td></tr>
   * <tr>
   * <td>true</td>
   * <td>false</td>
   * <td>3</td>
   * <td>$.120</td>
   * <td>$.000</td></tr>
   * <tr>
   * <td>false</td>
   * <td>false</td>
   * <td>3</td>
   * <td>$.12</td>
   * <td>$0</td></tr></table>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * <p>The default value is <code>dependent on the actual locale and operating system.</code></p>
   * @throws TypeError if this property is assigned a null value.
   *
   * @see #leadingZero
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function get trailingZeros():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set trailingZeros(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Enables the use of the grouping separator when formatting currency amounts.
   * <p>When the <code>useGrouping</code> property is set to <code>true</code>, digits are grouped and delimited by the grouping separator character. For example: <code>$123,456,789</code></p>
   * <p>When the <code>useGrouping</code> property is set to <code>false</code>, digits are not grouped or separated. For example: <code>$123456789</code></p>
   * <p>The <code>groupingSeparator</code> property defines the symbol to be used as a grouping separator. The <code>groupingPattern</code> property defines the number of digits between grouping separators.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @see #groupingPattern
   * @see #groupingSeparator
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function get useGrouping():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set useGrouping(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a new CurrencyFormatter object to format numbers representing currency amounts according to the conventions of a given locale.
   * <p>This constructor determines if the current operating system supports the requested locale ID name. If it is not supported then a fallback locale is used instead. If a fallback locale is used then the <code>lastOperationStatus</code> property indicates the type of fallback, and the <code>actualLocaleIDName</code> property contains the name of the fallback locale ID.</p>
   * <p>Certain properties such as the <code>currencySymbol</code> and <code>currencyISOCode</code> properties are set automatically based on the locale.</p>
   * <p>NOTE: When a fallback locale is used the currency properties are set to default values, and therefore the <code>currencySymbol</code> or <code>currencyISOCode</code> properties might be given unexpected values. It is a good idea to examine the <code>currencySymbol</code> and <code>currencyISOCode</code> property values before formatting a currency amount.</p>
   * <p>To format based on the user's current operating system preferences, pass the value <code>LocaleID.DEFAULT</code> in the <code>requestedLocaleIDName</code> parameter to the constructor.</p>
   * <p>When the constructor is called and it completes successfully, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>When the requested locale ID name is not available then the <code>lastOperationStatus</code> is set to one of the following:</p>
   * <ul>
   * <li><code>LastOperationStatus.USING_FALLBACK_WARNING</code></li>
   * <li><code>LastOperationStatus.USING_DEFAULT_WARNING</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the LastOperationStatus class.</p>
   * <p>For details on the warnings listed above and other possible values of the <code>lastOperationStatus</code> property, see the descriptions in the <code>LastOperationStatus</code> class.</p>
   * @param requestedLocaleIDName The preferred locale ID name to use when determining date or time formats.
   *
   * @throws TypeError if the <code>requestedLocaleIDName</code> parameter is <code>null</code>.
   *
   * @see #lastOperationStatus
   * @see #requestedLocaleIDName
   * @see #actualLocaleIDName
   * @see LastOperationStatus
   * @see LocaleID
   *
   */
  public function CurrencyFormatter(requestedLocaleIDName:String) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a string representing a currency amount formatted according to the current properties of this CurrencyFormatter object, including the locale, currency symbol, and currency ISO code.
   * <p>By default this method uses the <code>currencyISOCode</code> property to determine the currency symbol and other settings used when formatting.</p>
   * <p>Many countries and regions use the same currency symbols for different currencies. For example the United States, Australia, New Zealand, Canada, and Mexico all use the same dollar sign symbol ($) for local currency values. When the formatting currency differs from the user's local currency it is best to use the ISO code as the currency string. You can use the <code>formattingWithCurrencySymbolIsSafe()</code> method to test whether the ISO code of the currency to be formatted matches the <code>currencyISOCode</code> property of the formatter.</p>
   * <p>This method can format numbers of very large and very small magnitudes. However the number of significant digits is limited to the precision provided by the Number data type.</p>
   * @param value The numeric value to be formatted into a currency string.
   * @param withCurrencySymbol When set to false the <code>currencyISOCode</code> property determines which currency string or symbol to use in the output string. When set to true, the current value of the <code>currencySymbol</code> property is used in the output string.
   *
   * @return A string containing the formatted currency value.
   *
   * @see #currencySymbol
   * @see #currencyISOCode
   * @see #formattingWithCurrencySymbolIsSafe()
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   * @example In this example the requested locale is fr-CA French (Canada). The example assumes that this locale is supported in the user's operating system and therefore no fallback locale is used. For fr-CA the default currency is Canadian dollars with an ISO code of CAD. Therefore when formatting a currency with the default values, CAD is used as the currency symbol. When the <code>withCurrencySymbol</code> parameter is set to true the <code>currencySymbol</code> property is used to format the currency amount.
   * <listing>
   *
   *          var cf:CurrencyFormatter = new CurrencyFormatter("fr-CA");
   *
   *          trace(cf.actualLocaleIDName);               // "fr-CA"
   *          trace(cf.currencyISOCode);                // "CAD"
   *          trace(cf.currencySymbol);                // "$"
   *
   *          trace(cf.format(1254.56));                // "1 254,56 CAD"
   *          trace(cf.format(1254.56, true));            // "1 254,56 $"
   *         </listing>
   * <p>The second example shows a method of formatting a currency amount in Canadian dollars using the default user's locale. The <code>formattingWithCurrencySymbolIsSafe()</code> method is used to test to see if the user's default currency is Canadian dollars and if so then the format method is used with the <code>withCurrencySymbol</code> parameter set to true. Otherwise the currency is set to Canadian dollars with a more descriptive currency symbol. The example shows how the currency would be formatted if the default locale was either French (Canada) or English (USA).</p>
   * <listing>
   *
   *          var cf:CurrencyFormatter = new CurrencyFormatter(LocaleID.DEFAULT);
   *
   *          if (cf.formattingWithCurrencySymbolIsSafe("CAD")) {
   *            trace(cf.actualLocaleIDName);     // "fr-CA French (Canada)"
   *            trace(cf.format(1254.56, false)); // "1 254,56 $"
   *          }
   *          else {
   *            trace(cf.actualLocaleIDName);     // "en-US English (USA)"
   *            cf.setCurrency("CAD", "C$")
   *            trace(cf.format(1254.56, true));  // "C$ 1,254.56"
   *          }
   *         </listing>
   */
  public function format(value:Number, withCurrencySymbol:Boolean = false):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Determines whether the currently specified currency symbol can be used when formatting currency amounts.
   * <p>Many regions and countries use the same currency symbols. This method can be used to safeguard against the use of an ambiguous currency symbol, or a currency symbol or ISO code that is different than expected due to the use of a fallback locale.</p>
   * <p>A common use case for this method is to determine whether to show a local currency symbol (if the amount is formatted in the user's default currency), or a more specific ISO code string (if the amount is formatted in a currency different from the user's default).</p>
   * <p>This method compares the <code>requestedISOCode</code> parameter against the current <code>currencyISOCode</code> property, returning <code>true</code> if the strings are equal and <code>false</code> if they are not. When the strings are equal, using the <code>format()</code> method with the <code>withCurrencySymbol</code> parameter set to <code>true</code> results in a formatted currency value string with a unique currency symbol for the locale. If this method returns false, then using the <code>format()</code> method with the <code>withCurrencySymbol</code> parameter set to true could result in the use of an ambiguous or incorrect currency symbol.</p>
   * <p>When this method is called and it completes successfully, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @param requestedISOCode A three letter ISO 4217 currency code (for example, USD for US dollars, EUR for Euros). Must contain three uppercase letters from A to Z.
   *
   * @return <code>true</code> if the <code>currencyISOCode</code> property matches the <code>requestedISOCode</code> parameter; otherwise <code>false</code>.
   *
   * @throws TypeError if the <code>requestedISOCode</code> parameter is null.
   *
   * @see #currencySymbol
   * @see #currencyISOCode
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function formattingWithCurrencySymbolIsSafe(requestedISOCode:String):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Lists all of the locale ID names supported by this class.
   * <p>If this class is not supported on the current operating system, this method returns a null value.</p>
   * <p>When this method is called and it completes successfully, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @return A vector of strings containing all of the locale ID names supported by this class.
   *
   */
  public static function getAvailableLocaleIDNames():Vector.<String> {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Parses a string into a currency amount and a currency symbol.
   * <p>The parsing algorithm uses the value of the <code>decimalSeparator</code> property to determine the integral and fractional portion of the number. It uses the values of the <code>negativeCurrencyFormat</code> and <code>positiveCurrencyFormat</code> properties to determine the location of the currency symbol or string relative to the currency amount. For negative amounts the value of the <code>negativeCurrencyFormat</code> property determines the location of the negative symbol and whether parentheses are used.</p>
   * <p>If the order of the currency symbol, minus sign, and number in the input string does not match the pattern identified by the <code>negativeCurrencyFormat</code> and <code>positiveCurrencyFormat</code> properties, then:</p><ol>
   * <li>The <code>value</code> property of the returned CurrencyParseResult object is set to <code>NaN</code>.</li>
   * <li>The <code>currencyString</code> property of the returned CurrencyParseResult object is set to <code>null</code>.</li>
   * <li>The <code>lastOperationStatus</code> property is set to indicate that parsing failed.</li></ol>
   * <p>The input string may include space characters, which are ignored during the parsing.</p>
   * <p>Parsing can succeed even if there is no currency symbol. No validation is done of the portion of the string corresponding to the currency symbol. If there is no currency symbol or string, the <code>currencyString</code> property in the returned CurrencyParseResult object is set to an empty string.</p>
   * <p>When this method is called and it completes successfully, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @param inputString The input string to parse.
   *
   * @return A CurrencyParseResult object containing the numeric value and the currency symbol or string.
   *
   * @throws TypeError if the <code>inputString</code> parameter is null.
   *
   * @see #decimalSeparator
   * @see #negativeCurrencyFormat
   * @see #positiveCurrencyFormat
   * @see CurrencyParseResult
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function parse(inputString:String):CurrencyParseResult {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the <code>currencyISOCode</code> and <code>currencySymbol</code> properties of the CurrencyFormatter object.
   * <p>When this method is called and it completes successfully, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the the <code>currencyISOCode</code> and the <code>currencySymbol</code> properties are not modified and the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @param currencyISOCode The three letter ISO 4217 currency code (for example, USD for US dollars, EUR for Euros). Must contain three uppercase letters from A to Z.
   * @param currencySymbol The currency symbol or string to be used when formatting currency values. This can be an empty string.
   *
   * @throws TypeError if the <code>currencyISOCode</code> or <code>currencySymbol</code> parameter is null.
   *
   * @see #currencyISOCode
   * @see #currencySymbol
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function setCurrency(currencyISOCode:String, currencySymbol:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
