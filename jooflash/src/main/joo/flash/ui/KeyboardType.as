package flash.ui {


/**
 * The KeyboardType class is an enumeration class that provides values for different categories of physical computer or device keyboards.
 * <p>Use the values defined by the KeyboardType class with the <code>Keybooard.physicalKeyboardType</code> property.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/ui/KeyboardType.html#includeExamplesSummary">View the examples</a></p>
 * @see Keyboard#physicalKeyboardType
 *
 */
public final class KeyboardType {
  /**
   * A standard keyboard with a full set of numbers and letters.
   * <p>Most desktop computers and some mobile devices provide an alphanumeric keyboard.</p>
   */
  public static const ALPHANUMERIC:String = "alphanumeric";
  /**
   * A phone-style 12-button keypad.
   * <p>Many mobile devices provide a keypad, although some provide an alphanumeric keyboard.</p>
   */
  public static const KEYPAD:String = "keypad";
  /**
   * No physical keyboard is supported.
   * <p>Typically, a virtual keyboard is provided in the absence of a physical keyboard.</p>
   * @see Keyboard#hasVirtualKeyboard
   *
   */
  public static const NONE:String = "none";
}
}
