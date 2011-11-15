package flash.globalization {


/**
 * The StringTools class provides locale-sensitive case conversion methods.
 * <p>In some situations the conversion between uppercase and lowercase letters is not a simple mapping from one character to another and instead requires language- or context-specific processing. For example:</p>
 * <ul>
 * <li>In Turkish and Azeri, the uppercase of the dotted lowercase <b>i</b> is an uppercase dotted <b>İ</b> (U+0130). Similarly the lowercase of a dotless uppercase <b>I</b>, is a lowercase dotless <b>ı</b> (U+0131).</li>
 * <li>The lowercase sharp S, <b>ß</b> (U+00DF), used in German is converted to uppercase double SS.</li>
 * <li>In Greek there are two representations of the lowercase sigma, <b>σ</b> (U+03C3) and <b>ς</b> (U+03C2), which both convert to the single uppercase sigma <b>Σ</b> (U+03A3).</li></ul>
 * <p>The <code>toLowerCase()</code> and <code>toUpperCase()</code> methods of this class provide this special case conversion logic.</p>
 * <p>Due to the use of the user's settings, the use of case conversion rules provided by the operating system, and the use of a fallback locale when a requested locale is not supported, different users can see different case conversion results even when using the same locale ID.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/globalization/StringTools.html#includeExamplesSummary">View the examples</a></p>
 */
public final class StringTools {
  /**
   * The name of the actual locale ID used by this StringTools object.
   * <p>There are three possibilities for the value of the name, depending on operating system and the value of the <code>requestedLocaleIDName</code> parameter passed to the <code>StringTools()</code> constructor.</p><ol>
   * <li>If the requested locale was not <code>LocaleID.DEFAULT</code> and the operating system provides support for the requested locale, then the name returned is the same as the <code>requestedLocaleIDName</code> property.</li>
   * <li>If <code>LocaleID.DEFAULT</code> was used as the value for the <code>requestedLocaleIDName</code> parameter to the constructor, then the name of the current locale specified by the user's operating system is used. The <code>LocaleID.DEFAULT</code> value preserves user's customized setting in the OS. Passing an explicit value as the <code>requestedLocaleIDName</code> parameter does not necessarily give the same result as using the <code>LocaleID.DEFAULT</code> even if the two locale ID names are the same. The user could have customized the locale settings on the machine, and by requesting an explicit locale ID name rather than using <code>LocaleID.DEFAULT</code> your application would not retrieve those customized settings.</li>
   * <li>If the system does not support the <code>requestedLocaleIDName</code> specified in the constructor then a fallback locale ID name is provided.</li></ol>
   * @see LocaleID
   * @see #requestedLocaleIDName
   * @see StringTools
   *
   */
  public function get actualLocaleIDName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The status of the most recent operation that this StringTools object performed. The <code>lastOperationStatus</code> property is set whenever the constructor or a method of this class is called or another property is set. For the possible values see the description for each method.
   * @see LastOperationStatus
   *
   */
  public function get lastOperationStatus():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The name of the requested locale ID that was passed to the constructor of this StringTools object.
   * <p>If the <code>LocaleID.DEFAULT</code> value was used then the name returned is "i-default". The actual locale used can differ from the requested locale when a fallback locale is applied. The name of the actual locale can be retrieved using the <code>actualLocaleIDName</code> property.</p>
   * @see LocaleID
   * @see #actualLocaleIDName
   * @see #StringTools()
   *
   */
  public function get requestedLocaleIDName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a new StringTools object that provides case conversion and other utilities according to the conventions of a given locale.
   * <p>This constructor determines if the current operating system supports the requested locale ID name. If it is not supported then a fallback locale is used instead. If a fallback locale is used then the <code>lastOperationStatus</code> property indicates the type of fallback, and the <code>actualLocaleIDName</code> property contains the name of the fallback locale ID.</p>
   * <p>When this constructor completes successfully the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>When the requested locale ID name is not available then the <code>lastOperationStatus</code> is set to one of the following:</p>
   * <ul>
   * <li><code>LastOperationStatus.USING_FALLBACK_WARNING</code></li>
   * <li><code>LastOperationStatus.USING_DEFAULT_WARNING</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the LastOperationStatus class.</p>
   * @param requestedLocaleIDName The preferred locale ID name to use when determining date or time formats.
   *
   * @throws ArgumentError when the <code>requestedLocaleIDName</code> parameter is <code>null</code>
   *
   * @see LocaleID
   * @see #lastOperationStatus
   *
   */
  public function StringTools(requestedLocaleIDName:String) {
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
   * Converts a string to lowercase according to language conventions. Depending on the locale, the output string length can differ from the input string length.
   * <p>When this method is called and it completes successfully, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @param s A string to convert to lowercase.
   *
   * @return The converted lowercase string.
   *
   * @throws ArgumentError when the <code>s</code> parameter is null.
   *
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function toLowerCase(s:String):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Converts a string to uppercase according to language conventions. Depending on the locale, the output string length can differ from the input string length.
   * <p>When this method is called and it completes successfully, the <code>lastOperationStatus</code> property is set to:</p>
   * <ul>
   * <li><code>LastOperationStatus.NO_ERROR</code></li></ul>
   * <p>Otherwise the <code>lastOperationStatus</code> property is set to one of the constants defined in the <code>LastOperationStatus</code> class.</p>
   * @param s A string to convert to uppercase.
   *
   * @return The converted uppercase string.
   *
   * @throws ArgumentError when the <code>s</code> parameter is null.
   *
   * @see #lastOperationStatus
   * @see LastOperationStatus
   *
   */
  public function toUpperCase(s:String):String {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
