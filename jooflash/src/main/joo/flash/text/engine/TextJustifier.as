package flash.text.engine {


/**
 * The TextJustifier class is an abstract base class for the justifier types that you can apply to a TextBlock, specifically the EastAsianJustifier and SpaceJustifier classes.
 * <p>You cannot instantiate the TextJustifier class directly. Invoking <code>new TextJustifier()</code> throws an <code>ArgumentError</code> exception. Setting the properties of an EastAsianJustifier or SpaceJustifier object after you apply it to a TextBlock does not invalidate the TextBlock.</p>
 * @see EastAsianJustifier
 * @see SpaceJustifier
 * @see TextBlock#textJustifier
 *
 */
public class TextJustifier {
  /**
   * Specifies the line justification for the text in a text block.
   * <p>Use the following constants defined by the <code>LineJustification</code> as valid values for this property:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>LineJustification.UNJUSTIFIED</code></td>
   * <td>Generates unjustified lines.</td></tr>
   * <tr>
   * <td><code>LineJustification.ALL_BUT_LAST</code></td>
   * <td>Generates all lines justified except for the last one.</td></tr>
   * <tr>
   * <td><code>LineJustification.ALL_INCLUDING_LAST</code></td>
   * <td>Generates all lines justified.</td></tr></table>
   * @see LineJustification
   *
   */
  public function get lineJustification():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set lineJustification(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the locale to determine the justification rules for the text in a text block. Standard locale identifiers are used. For example "en", "en_US" and "en-US" are all English, "ja" is Japanese.
   * @throws ArgumentError The <code>locale</code> specified is <code>null</code> or too short to represent a valid locale.
   *
   */
  public function get locale():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Calling the <code>new TextJustifier()</code> constructor throws an <code>ArgumentError</code> exception. You <i>can</i>, however, call constructors for the following subclasses of TextJustifier:
   * <ul>
   * <li><code>new SpaceJustifier()</code></li>
   * <li><code>new EastAsianJustifier()</code></li></ul>
   * @param locale The locale to determine the justification rules.
   * @param lineJustification The type of line justification for the paragraph. Use <code>LineJustification</code> constants for this property.
   *
   * @throws ArgumentError The <code>locale</code> specified is <code>null</code> or too short to represent a valid locale.
   * @throws ArgumentError The <code>lineJustification</code> specified is not a member of <code>LineJustification</code>.
   *
   * @see EastAsianJustifier
   * @see LineJustification
   * @see SpaceJustifier
   *
   */
  public function TextJustifier(locale:String, lineJustification:String) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a cloned copy of the TextJustifier.
   * <p>Subclasses of TextJustifier must override this method.</p>
   * @return A copy of the <code>TextJustifier</code> object.
   *
   */
  public function clone():TextJustifier {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a default TextJustifier subclass appropriate to the specified locale.
   * <p>If the locale is Chinese, Korean, or Japanese, the method constructs a default EastAsianJustifier object. Otherwise the text engine constructs a default SpaceJustifier object.</p>
   * @param locale The locale to determine the justifier constructed.
   *
   * @return A reference to a <code>TextJustifier</code> object.
   *
   * @throws ArgumentError The <code>locale</code> specified is <code>null</code> or too short to represent a valid locale.
   *
   */
  public static function getJustifierForLocale(locale:String):TextJustifier {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
