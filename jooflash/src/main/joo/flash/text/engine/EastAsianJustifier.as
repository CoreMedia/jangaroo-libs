package flash.text.engine {


/**
 * The EastAsianJustifier class has properties to control the justification options for text lines whose content is primarily East Asian text.
 * <p>Use the constructor <code>new EastAsianJustifier()</code> to create an EastAsianJustifier object before setting its properties. Setting the properties of an EastAsianJustifier object after it has been applied to a TextBlock does not invalidate the TextBlock.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/EastAsianJustifier.html#includeExamplesSummary">View the examples</a></p>
 * @see JustificationStyle
 * @see LineJustification
 * @see TextBlock#textJustifier
 *
 */
public final class EastAsianJustifier extends TextJustifier {
  /**
   * Specifies the justification style for the text in a text block.
   * <p>The default value is <code>JustificationStyle.PUSH_IN_KINSOKU</code>.</p>
   * <p>Use one of the constants in the JustificationStyle class to set the value for this property. The following table lists the possible values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>JustificationStyle.PUSH_IN_KINSOKU</code></td>
   * <td>Specifies push in justification.</td></tr>
   * <tr>
   * <td><code>JustificationStyle.PUSH_OUT_ONLY</code></td>
   * <td>Specifies push out justification.</td></tr>
   * <tr>
   * <td><code>JustificationStyle.PRIORITIZE_LEAST_ADJUSTMENT</code></td>
   * <td>Specifies justification wherein the least adjustment is prioritized.</td></tr></table>
   * @see JustificationStyle
   *
   */
  public function get justificationStyle():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set justificationStyle(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an EastAsianJustifier object.
   * @param locale The locale to determine the justification rules. The default value is <code>"ja"</code>.
   * @param lineJustification The type of line justification for the paragraph. Use <code>LineJustification</code> constants for this property. The default value is <code>LineJustification.ALL_BUT_LAST</code>.
   * @param justificationStyle The justification style for the text in a text block using an East Asian justifier. Use <code>JustificationStyle</code> constants for this property. The default value is <code>JustificationStyle.PUSH_IN_KINSOKU</code>.
   *
   * @throws ArgumentError The <code>locale</code> specified is <code>null</code> or too short to represent a valid locale.
   * @throws ArgumentError The <code>lineJustification</code> specified is not a member of <code>LineJustification</code>.
   * @throws ArgumentError The <code>justificationStyle</code> specified is not a member of <code>JustificationStyle</code>.
   *
   * @see JustificationStyle
   * @see LineJustification
   *
   */
  public function EastAsianJustifier(locale:String = "ja", lineJustification:String = "allButLast", justificationStyle:String = "pushInKinsoku") {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a cloned copy of the EastAsianJustifier.
   * @return A copy of the <code>EastAsianJustifier</code> object.
   *
   */
  override public function clone():TextJustifier {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
