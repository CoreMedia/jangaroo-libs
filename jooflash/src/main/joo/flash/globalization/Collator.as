package flash.globalization {


/**
 * The Collator class provides locale-sensitive string comparison capabilities.
 * <p>This class uses the string comparison services provided by the operating system. The comparisons differ according to the locale identifier that is provided when the class instance is created. ActionScript stores strings using the Unicode character set. The Boolean string comparison operators (==, !=, <, <=, >, >=) use Unicode code points for comparison. In most cases the resulting sort order doesn't match the conventions of a particular language and region, and thus should not be used to sort strings that are presented in a user interface. In contrast the comparison methods in this class provide an order that adheres to these conventions.</p>
 * <p>Here are some examples where the sort order differs depending on the language:</p>
 * <ul>
 * <li>In English, lowercase a is before uppercase A and uppercase A is before lowercase b.</li>
 * <li>ö is after z in Swedish, whereas in German ö is after o</li>
 * <li>ch is sorted as one character between c-d in traditional Spanish</li>
 * <li>accented characters in French are sorted according to the last accent difference instead of the first accent difference: for example, cote < côte < coté < côté instead of cote < coté < côte < côté</li></ul>
 * <p>Sort orders can even differ within the same language and region depending on the usage. For example, in German there is a different sort order used for names in a phone book versus words in a dictionary. In Chinese and Japanese there are different ways of sorting the ideographic characters: by pronunciation or by the ideographic radical and the number of strokes uses in the glyph. In Spanish and Georgian, there is a difference between modern and traditional sorting.</p>
 * <p>The comparison methods in this class provide two main usage modes. The <code>initialMode</code> parameter of the <code>Collator()</code> constructor controls these modes. The default "sorting" mode is for sorting items that are displayed to an end user. In this mode, comparison is more strict to ensure that items that are otherwise the same are sorted in a consistent manner. For example, uppercase letters and lowercase letters do not compare as equal. In the "matching" mode the comparison is more lenient. For example in this mode uppercase and lowercase letters are treated equally. Here's an example that demonstrates both of these modes:</p>
 * <listing>
 *
 *      var sortingCollator:Collator = new Collator("en-US", CollatorMode.SORTING);
 *      var words:Array = new  Array("Airplane" , "airplane", "boat", "Boat");
 *      words.sort(sortingCollator.compare);
 *      trace(words);
 *
 *      var matchingCollator:Collator = new Collator("en-US", CollatorMode.MATCHING);
 *      if (matchingCollator.equals("Car", "car")) {
 *        trace("The words match!");
 *      }
 *     </listing>
 * <p>Even when providing a locale ID parameter to the constructor as shown above, collation behavior can differ by user based on the user's operating system settings and whether a fallback locale is used when the requested locale is not supported.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/globalization/Collator.html#includeExamplesSummary">View the examples</a></p>
 */
public final class Collator {
  /**
   * The name of the actual locale ID used by this Collator object.
   * <p>There are three possibilities for the value of the name, depending on operating system and the value of the <code>requestedLocaleIDName</code> parameter passed to the <code>Collator()</code> constructor.</p><ol>
   * <li>If the requested locale was not <code>LocaleID.DEFAULT</code> and the operating system provides support for the requested locale, then the name returned is the same as the <code>requestedLocaleIDName</code> property.</li>
   * <li>If <code>LocaleID.DEFAULT</code> was used as the value for the <code>requestedLocaleIDName</code> parameter to the constructor, then the name of the current locale specified by the user's operating system is used. The <code>LocaleID.DEFAULT</code> value preserves user's customized setting in the OS. Passing an explicit value as the <code>requestedLocaleIDName</code> parameter does not necessarily give the same result as using the <code>LocaleID.DEFAULT</code> even if the two locale ID names are the same. The user might have customized the locale settings on their machine, and by requesting an explicit locale ID name rather than using <code>LocaleID.DEFAULT</code> your application would not retrieve those customized settings.</li>
   * <li>If the system does not support the <code>requestedLocaleIDName</code> specified in the constructor then a fallback locale ID name is provided.</li></ol>
   * @see LocaleID
   * @see #requestedLocaleIDName
   *
   */
  public function get actualLocaleIDName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * When this property is set to true, identical strings and strings that differ only in the case of the letters are evaluated as equal. For example, <code>compare("ABC", "abc")</code> returns <code>true</code> when the <code>ignoreCase</code> property is set to <code>true</code>.
   * <p>The case conversion of the string follows the rules for the specified locale.</p>
   * <p>When the <code>ignoreCase</code> property is false then upper- and lowercase characters are not equal to one another.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise, the <code>lastOperationStatus</code> property is set to one of the constants defined in the LastOperationStatus class.</p>
   * <p>The default value is <code><code>true</code> when the <code>Collator()</code> constructor's <code>initialMode</code> parameter is set to <code>Collator.MATCHING</code>. <code>false</code> when the <code>Collator()</code> constructor's <code>initialMode</code> parameter is set to Collator.SORTING..</code></p>
   * @see #lastOperationStatus
   * @see #compare()
   * @see #equals()
   * @see LastOperationStatus
   *
   */
  public function get ignoreCase():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set ignoreCase(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * When this property is true, full-width and half-width forms of some Chinese and Japanese characters are evaluated as equal.
   * <p>For compatibility with existing standards for Chinese and Japanese character sets, Unicode provides character codes for both full-width and half width-forms of some characters. For example, when the <code>ignoreCharacterWidth</code> property is set to <code>true</code>, <code>compare("Ａｱ", "Aア")</code> returns <code>true</code>.</p>
   * <p>If the <code>ignoreCharacterWidth</code> property is set to <code>false</code>, then full-width and half-width forms are not equal to one another.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the LastOperationStatus class.</p>
   * <p>The default value is <code>false.</code></p>
   * @see #lastOperationStatus
   * @see #compare()
   * @see #equals()
   * @see LastOperationStatus
   *
   */
  public function get ignoreCharacterWidth():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set ignoreCharacterWidth(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * When this property is set to true, strings that use the same base characters but different accents or other diacritic marks are evaluated as equal. For example <code>compare("coté", "côte")</code> returns <code>true</code> when the <code>ignoreDiacritics</code> property is set to <code>true</code>.
   * <p>When the <code>ignoreDiacritics</code> is set to <code>false</code> then base characters with diacritic marks or accents are not considered equal to one another.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the LastOperationStatus class.</p>
   * <p>The default value is <code>false.</code></p>
   * @see #lastOperationStatus
   * @see #compare()
   * @see #equals()
   * @see LastOperationStatus
   *
   */
  public function get ignoreDiacritics():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set ignoreDiacritics(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * When this property is set to true, strings that differ only by the type of kana character being used are treated as equal. For example, <code>compare("カナ", "かな")</code> returns <code>true</code> when the <code>ignoreKanaType</code> property is set to <code>true</code>.
   * <p>If the <code>ignoreKanaType</code> is set to <code>false</code> then hiragana and katakana characters that refer to the same syllable are not equal to one another.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the LastOperationStatus class.</p>
   * <p>The default value is <code>false.</code></p>
   * @see #lastOperationStatus
   * @see #compare()
   * @see #equals()
   * @see LastOperationStatus
   *
   */
  public function get ignoreKanaType():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set ignoreKanaType(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * When this property is set to is true, symbol characters such as spaces, currency symbols, math symbols, and other types of symbols are ignored when sorting or matching. For example the strings "OBrian", "O'Brian", and "O Brian" would all be treated as equal when the <code>ignoreSymbols</code> property is set to <code>true</code>.
   * <p>If the <code>ignoreSymbols</code> property is false then symbol characters are considered in string comparisons.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the LastOperationStatus class.</p>
   * <p>The default value is <code>false.</code></p>
   * @see #lastOperationStatus
   * @see #compare()
   * @see #equals()
   * @see LastOperationStatus
   *
   */
  public function get ignoreSymbols():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set ignoreSymbols(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The status of the most recent operation that this Collator object performed. The <code>lastOperationStatus</code> is set whenever the constructor or a method of this class is called, or when a property is set. For the possible values see the description under each method.
   * @see LastOperationStatus
   *
   */
  public function get lastOperationStatus():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Controls how numeric values embedded in strings are handled during string comparison.
   * <p>When the <code>numericComparison</code> property is set to <code>true</code>, the compare method converts numbers that appear in strings to numerical values for comparison.</p>
   * <p>When this property is set to <code>false</code>, the comparison treats numbers as character codes and sort them according to the rules for sorting characters in the specified locale.</p>
   * <p>For example, when this property is true for the locale ID "en-US", then the strings "version1", "version10", and "version2" are sorted into the following order: version1 < version2 < version10.</p>
   * <p>When this property is false for "en-US", those same strings are sorted into the following order: version1 < version10 < version2.</p>
   * <p>When this property is assigned a value and there are no errors or warnings, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the LastOperationStatus class.</p>
   * <p>The default value is <code>false.</code></p>
   * @see #lastOperationStatus
   * @see #compare()
   * @see #equals()
   * @see LastOperationStatus
   *
   */
  public function get numericComparison():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set numericComparison(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The name of the requested locale ID that was passed to the constructor of this Collator object.
   * <p>If the <code>LocaleID.DEFAULT</code> value was used then the name returned is "i-default". The actual locale used can differ from the requested locale when a fallback locale is applied. The name of the actual locale can be retrieved using the <code>actualLocaleIDName</code> property.</p>
   * @see LocaleID
   * @see #actualLocaleIDName
   *
   */
  public function get requestedLocaleIDName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a new Collator object to provide string comparisons according to the conventions of a specified locale.
   * <p>If the current operating system does not support the locale ID that is passed in the <code>requestedLocaleIDName</code> parameter, then a fallback locale is determined. If a fallback is used then the <code>lastOperationStatus</code> property is set to indicate the type of fallback.</p>
   * <p>The <code>initialMode</code> parameter sets various collation options for general uses. It can be set to one of the following values:</p>
   * <ul>
   * <li><code>CollatorMode.SORTING</code>: sets collation options for general linguistic sorting usages such as sorting a list of text strings that are displayed to an end user. In this mode, differences in uppercase and lowercase letters, accented characters, and other differences specific to the locale are considered when doing string comparisons.</li>
   * <li><code>CollatorMode.MATCHING</code>: sets collation options for general usages such as determining if two strings are equivalent. In this mode, differences in uppercase and lower case letters, accented characters, and so on are ignored when doing string comparisons.</li></ul>
   * <p>Here is an example of a sorted list created using a Collator with the locale ID "en-US" (English in US) and the <code>CollatorMode.SORTING</code> option:</p>AaÄäＡａAEaeÆæBbＢｂCcçＣｃ
   * <p>As shown above, all characters are treated as if they have different values, but in linguistic order.</p>
   * <p>Here is an example of a sorted list created using Collator with the locale ID "en-US" (English in US) and the <code>CollatorMode.MATCHING</code> option:</p>A a Ä ä Ａ ａAE ae Æ æB b Ｂ ｂC c ç Ｃ ｃ
   * <p>As shown above, some characters are in linguistic order and are treated as if they have the same character value.</p>
   * <p>For finer control over sorting order, you can change collator properties such as <code>Collator.ignoreCase</code> or <code>Collator.ignoreDiacritics</code>.</p>
   * <p>For reference, here is a corresponding sorting example done using the standard <code>Array.sort()</code>, which is not locale-aware:</p>AAEBCaaebcÄÆäæçＡＢａｂ
   * <p>As you can see above, all characters are sorted simply in Unicode numeric value order. It does not make much sense linguistically.</p>
   * <p>To use the user's current operating system preferences, pass the static value <code>LocaleID.DEFAULT</code> in the <code>requestedLocaleIDName</code> parameter to the constructor.</p>
   * <p>Some locales have several sort order variants. For example, in German one sort order is used for phone books and another sort order is used for dictionaries. In Chinese, words are commonly supported by transliteration of the characters into the pinyin. These different sort orders can be selected by including the "collation" keyword in the string that is passed in the <code>requestedLocaleIDName</code> parameter to the constructor.</p>
   * <listing>
   *          var germanPhonebook:LocaleID = new LocaleID("de-DE&#64;collation=phonebook");
   *          var chinesePinyin:LocaleID = new LocaleID("zh-Hant&#64;collation=pinyin");
   *         </listing>
   * <p>Possible values for the collation string are as follows, with the affected languages shown in parentheses:</p>Collation stringDescriptionstandardThe default ordering for each language. <code>phonebook</code>For a phonebook-style ordering (used in German).<code>pinyin</code>Pinyin ordering for Latin and for CJK characters; that is, an ordering for CJK characters based on a character-by-character transliteration into a pinyin. (used in Chinese)<code>traditional</code>For a traditional-style sort (used in Spanish) <code>stroke</code>Pinyin ordering for Latin, stroke order for CJK characters (used in Chinese)<code>direct</code>(used in Hindi) <code>big5han</code>Pinyin ordering for Latin, big5 character set ordering for CJK characters. (used in Chinese) <code>gb2312han</code> Pinyin ordering for Latin, gb2312han character set ordering for CJK characters. (used in Chinese) <code>unihan</code>Pinyin ordering for Latin, Unihan radical-stroke ordering for CJK characters. (used in Chinese)
   * <p>If the host platform does not support the requested collation type, then a fallback is used and the <code>lastOperationStatus</code> property is set to indicate that a fallback was selected. You can use the <code>actualLocaleIDName</code> property to determine the value that was used as a fallback, as shown in the following example:</p>
   * <listing>
   *          var collator:Collator = new Collator("fr-FR");
   *          if (collator.lastOperationStatus == LastOperationStatus.USING_FALLBACK_WARNING)
   *          {
   *            trace ("Using fallback locale: " + collator.actualLocaleIDName);
   *          }
   *         </listing>
   * <p>When the constructor completes successfully, then the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>When the requested locale ID is not available, then the <code>lastOperationStatus</code> property is set to one of the following:</p>
   * <ul>
   * <li><code>LastOperationStatus.USING_FALLBACK_WARNING</code></li>
   * <li><code>LastOperationStatus.USING_DEFAULT_WARNING</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the LastOperationStatus class.</p>
   * <p>For details on the warnings listed above and other possible values of <code>lastOperationStatus</code>, see the descriptions in the <code>LastOperationStatus</code> class.</p>
   * @param requestedLocaleIDName <code>String</code> to be used by this Collator object.
   * @param initialMode A string value to specify the initial collation mode. The default value is <code>CollatorMode.SORTING</code>. See the CollatorMode class for a list of available modes.
   *
   * @throws TypeError when the <code>requestedLocaleIDName</code> parameter is <code>null</code>.
   * @throws ArgumentError when the <code>requestedLocaleIDName</code> parameter contains an invalid value.
   *
   * @see CollatorMode
   * @see LastOperationStatus
   * @see LocaleID
   * @see #lastOperationStatus
   * @see #requestedLocaleIDName
   * @see #actualLocaleIDName
   *
   */
  public function Collator(requestedLocaleIDName:String, initialMode:String = "sorting") {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Compares two strings and returns an integer value indicating whether the first string is less than, equal to, or greater than the second string. The comparison uses the sort order rules for the locale ID that was specified in the <code>Collator()</code> constructor.
   * <p>When this method is called and it completes successfully, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @param string1 First comparison string.
   * @param string2 Second comparison string.
   *
   * @return An integer value indicating whether the first string is less than, equal to, or greater than the second string.
   * <ul>
   * <li>If the return value is negative, <code>string1</code> is less than <code>string2</code>.</li>
   * <li>If the return value is zero, <code>string1</code> is equal to <code>string2</code>.</li>
   * <li>If the return value is positive, <code>string1</code> is larger than <code>string2</code>.</li></ul>
   *
   * @throws TypeError when a required parameter is null.
   * @throws ArgumentError when a parameter contains an invalid value.
   *
   * @see #equals()
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function compare(string1:String, string2:String):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Compares two strings and returns a Boolean value indicating whether the strings are equal. The comparison uses the sort order rules for the locale ID that was specified in the <code>Collator()</code> constructor.
   * <p>When this method is called and it completes successfully, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @param string1 First comparison string.
   * @param string2 Second comparison string.
   *
   * @return A Boolean value indicating whether the strings are equal (<code>true</code>) or unequal (<code>false</code>).
   *
   * @throws TypeError when a required parameter is null.
   * @throws ArgumentError when a parameter contains an invalid value.
   *
   * @see #compare()
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function equals(string1:String, string2:String):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Lists all of the locale ID names supported by this class.
   * <p>If this class is not supported at all on the current operating system, this method returns a null value.</p>
   * @return A vector of strings containing all of the locale ID names supported by this class.
   *
   */
  public static function getAvailableLocaleIDNames():Vector.<String> {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
