package flash.globalization {


/**
 * The CollatorMode class enumerates constant values that govern the behavior of string comparisons performed by a Collator object. These constants represent the values that can be passed in the <code>initialMode</code> parameter of the <code>Collator()</code> constructor.
 * @see Collator
 *
 */
public final class CollatorMode {
  /**
   * Initializes a Collator object so that the compare method is optimized for determining whether two strings are equivalent. In this mode, string comparisons ignore differences in uppercase and lower case letters, accented characters, etc.
   * @see Collator#Collator()
   *
   */
  public static const MATCHING:String = "matching";
  /**
   * Initializes a Collator object so that the compare method is optimized for sorting a list of text strings to be displayed to an end user. In this mode, string comparisons consider differences in uppercase and lowercase letters, accented characters, and so on, according to the language and sorting rules required by the locale.
   * @see Collator#Collator()
   *
   */
  public static const SORTING:String = "sorting";
}
}
