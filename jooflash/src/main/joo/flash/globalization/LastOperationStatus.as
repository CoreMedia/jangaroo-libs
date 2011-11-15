package flash.globalization {


/**
 * The LastOperationStatus class enumerates constant values that represent the status of the most recent globalization service operation. These values can be retrieved through the read-only property <code>lastOperationStatus</code> available in most globalization classes.
 */
public final class LastOperationStatus {
  /**
   * Indicates that given buffer is not enough to hold the result.
   */
  public static const BUFFER_OVERFLOW_ERROR:String = "bufferOverflowError";
  /**
   * Indicates that the return error code is not known. Any non-static method or read/write properties can return this error when the operation is not successful and the return error code is not known.
   */
  public static const ERROR_CODE_UNKNOWN:String = "errorCodeUnknown";
  /**
   * Indicates that an argument passed to a method was illegal.
   * <p>For example, the following code shows that an invalid argument error status is set when <code>CurrencyFormatter.grouping</code> property is set to the invalid value "3;".</p>
   * <listing>
   *         var cf:CurrencyFormatter = new CurrencyFormatter("en-US");
   *         cf.groupingPattern = "3;";
   *         trace(cf.lastOperationStatus); // "illegalArgumentError"
   *        </listing>
   */
  public static const ILLEGAL_ARGUMENT_ERROR:String = "illegalArgumentError";
  /**
   * Indicates that an iterator went out of range or an invalid parameter was specified for month, day, or time.
   */
  public static const INDEX_OUT_OF_BOUNDS_ERROR:String = "indexOutOfBoundsError";
  /**
   * Indicates that a given attribute value is out of the expected range.
   * <p>The following example shows that setting the <code>NumberFormatter.negativeNumberFormat</code> property to an out-of-range value results in an invalid attribute value status.</p>
   * <listing>
   *         var nf:NumberFormatter = new NumberFormatter(LocaleID.DEFAULT);
   *         nf.negativeNumberFormat = 9;
   *         nf.lastOperationStatus; // "invalidAttrValue"
   *        </listing>
   */
  public static const INVALID_ATTR_VALUE:String = "invalidAttrValue";
  /**
   * Indicates that invalid Unicode value was found.
   */
  public static const INVALID_CHAR_FOUND:String = "invalidCharFound";
  /**
   * Indicates that memory allocation has failed.
   */
  public static const MEMORY_ALLOCATION_ERROR:String = "memoryAllocationError";
  /**
   * Indicates that the last operation succeeded without any errors. This status can be returned by all constructors, non-static methods, static methods and read/write properties.
   */
  public static const NO_ERROR:String = "noError";
  /**
   * Indicates that an operation resulted a value that exceeds a specified numeric type.
   */
  public static const NUMBER_OVERFLOW_ERROR:String = "numberOverflowError";
  /**
   * Indicates that the parsing of a number failed. This status can be returned by parsing methods of the formatter classes, such as <code>CurrencyFormatter.parse()</code> and <code>NumberFormatter.parseNumber()</code>. For example, if the value "12abc34" is passed as the parameter to the <code>CurrencyFormatter.parse()</code> method, the method returns "NaN" and sets the <code>lastOperationStatus</code> value to <code>LastOperationStatus.PARSE_ERROR</code>.
   */
  public static const PARSE_ERROR:String = "parseError";
  /**
   * Indicates that the pattern for formatting a number, date, or time is invalid. This status is set when the user's operating system does not support the given pattern.
   * <p>For example, the following code shows the value of the <code>lastOperationStatus</code> property after an invalid "xx" pattern is used for date formatting:</p>
   * <listing>
   *         var df:DateTimeFormatter = new DateTimeFormatter("en-US");
   *         df.setDateTimePattern("xx");
   *         trace(df.lastOperationStatus); // "patternSyntaxError"
   *        </listing>
   */
  public static const PATTERN_SYNTAX_ERROR:String = "patternSyntaxError";
  /**
   * Indicates that an underlying platform API failed for an operation.
   */
  public static const PLATFORM_API_FAILED:String = "platformAPIFailed";
  /**
   * Indicates that a truncated Unicode character value was found.
   */
  public static const TRUNCATED_CHAR_FOUND:String = "truncatedCharFound";
  /**
   * Indicates that an unexpected token was detected in a Locale ID string.
   * <p>For example, the following code shows the value of the <code>lastOperationStatus</code> property after an incomplete string is used when requesting a locale ID. As a result the <code>lastOperationStatus</code> property is set to the value <code>UNEXPECTED_TOKEN</code> after a call to the <code>LocaleID.getKeysAndValues()</code> method.</p>
   * <listing>
   *         var locale:LocaleID = new LocaleID("en-US&#64;Collation");
   *         var kav:Object = locale.getKeysAndValues();
   *         trace(locale.lastOperationStatus); // "unexpectedToken"
   *        </listing>
   */
  public static const UNEXPECTED_TOKEN:String = "unexpectedToken";
  /**
   * Indicates that the requested operation or option is not supported. This status can be returned by methods like <code>DateTimeFormatter.setDateTimePattern()</code> and when retrieving properties like <code>Collator.ignoreCase</code>.
   */
  public static const UNSUPPORTED_ERROR:String = "unsupportedError";
  /**
   * Indicates that an operating system default value was used during the most recent operation. Class constructors can return this status.
   */
  public static const USING_DEFAULT_WARNING:String = "usingDefaultWarning";
  /**
   * Indicates that a fallback value was set during the most recent operation. This status can be returned by constructors and methods like <code>DateTimeFormatter.setDateTimeStyles()</code>, and when retrieving properties like <code>CurrencyFormatter.groupingPattern</code>.
   */
  public static const USING_FALLBACK_WARNING:String = "usingFallbackWarning";
}
}
