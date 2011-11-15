package flash.text.engine {
/**
 * The FontDescription class represents the information necessary to describe a font.
 * <p>A FontDescription object is applied to an ElementFormat, which is in turn applied to a ContentElement in a TextBlock. Once a FontDescription has been applied to an ElementFormat, its <code>locked</code> property is set to <code>true</code>. The properties of a locked FontDescription object cannot be changed. Instead, use the <code>clone()</code> method to create an unlocked copy of the object, which can be modified and assigned to the ElementFormat.</p>
 * <p><b>Note:</b> FTE (Flash Text Engine) does not support Type 1 fonts or bitmap fonts such as Type 3, ATC, sfnt-wrapped CID, or Naked CID.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/FontDescription.html#includeExamplesSummary">View the examples</a></p>
 * @see ElementFormat#fontDescription
 *
 */
public final class FontDescription {
  /**
   * The type of CFF hinting used for this text. Use <code>CFFHinting</code> constants for this property. This property applies only if the <code>RenderingMode</code> property of the text is set to <code>RenderingMode.CFF</code>.
   * <p>The type of CFF (Compact Font Format) hinting used determines whether the Flash runtime forces strong horizontal stems to fit to a sub-pixel grid or not.</p>
   * <p>Applies only to embedded fonts.</p>
   * <p>The default value is <code>CFFHinting.HORIZONTAL_STEM</code>.</p>
   * <p>For the <code>CFFHinting</code> property, you can use the following constants from the CFFHinting class:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>CFFHinting.NONE</code></td>
   * <td>Specifies no CFF hinting. Horizontal stems in the glyphs are not forced to the sub-pixel grid. This setting is appropriate for animation or for large font sizes.</td></tr>
   * <tr>
   * <td><code>CFFHinting.HORIZONTAL_STEM</code></td>
   * <td>Specifies CFF hinting. Strong horizontal stems are fit to the sub-pixel grid on a screen. To use this setting, the <code>RenderingMode</code> property must be set to <code>RenderingMode.CFF</code>.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>CFFHinting</code>.
   * @throws flash.errors.IllegalOperationError If set after the FontDescription object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see CFFHinting
   * @see #renderingMode
   * @see RenderingMode
   *
   */
  public function get cffHinting():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set cffHinting(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies how the font should be looked up.
   * <p>The default value is <code>FontLookup.DEVICE</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>FontLookup.DEVICE</code></td>
   * <td>The runtime looks up a device font with the specified <code>name</code> on the local system with which to render the text.</td></tr>
   * <tr>
   * <td><code>FontLookup.EMBEDDED_CFF</code></td>
   * <td>The runtime looks up an embedded CFF font with the specified <code>name</code> with which to render the text. Only fonts of type <code>flash.text.Font.fontType.EMBEDDED_CFF</code> are considered. If the specified CFF font is not embedded in the application, the runtime attempts to use a fallback device font for each glyph. This method is less efficient than selecting a device font in the first place.</td></tr></table>
   * @throws flash.errors.IllegalOperationError If set after the FontDescription object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see CFFHinting
   * @see FontLookup
   *
   */
  public function get fontLookup():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontLookup(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The name of the font to use, or a comma-separated list of font names. The runtime renders the element with the first available font in the list. For example "Arial, Helvetica, _sans" causes the player to search for Arial, then Helvetica, if Arial is not found, then _sans, if neither is found.
   * <p>Flash runtimes support three generic device font names: _sans (for sans serif fonts), _serif (for serif fonts), and _typewriter (for mono-space fonts). These are mapped to specific device fonts depending on the platform.</p>
   * <p>The default value is <code>"_serif"</code>.</p>
   * <p>Flash runtimes provide font fallback for glyphs which are not found in the selected font. Whether the font in use is embedded or device, if the glyph is not found in the font, the runtime attempts to render it using another device font likely to contain the glyph.</p>
   * @throws flash.errors.IllegalOperationError If set after the FontDescription object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see FontLookup
   *
   */
  public function get fontName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontName(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the font posture.
   * <p>The default value is <code>FontPosture.NORMAL</code>.</p>
   * <p>To set values for this property, use the following constants from the FontPosture class:</p>
   * <table>
   * <tr><th>Value</th><th>Description</th></tr>
   * <tr>
   * <td><code>FontPosture.NORMAL</code></td>
   * <td>Normal font posture.</td></tr>
   * <tr>
   * <td><code>FontPosture.ITALIC</code></td>
   * <td>Italic font posture.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>FontPosture</code>.
   * @throws flash.errors.IllegalOperationError If set after the FontDescription object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see FontPosture
   *
   */
  public function get fontPosture():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontPosture(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the font weight.
   * <p>The default value is <code>FontWeight.NORMAL</code>.</p>
   * <p>To set values for this property, use the following constants from the FontWeight class:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>FontWeight.NORMAL</code></td>
   * <td>Normal font weight.</td></tr>
   * <tr>
   * <td><code>FontWeight.BOLD</code></td>
   * <td>Bold font weight.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>FontWeight</code>.
   * @throws flash.errors.IllegalOperationError If set after the FontDescription object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see FontWeight
   *
   */
  public function get fontWeight():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontWeight(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether or not the FontDescription is locked. If <code>true</code> the FontDescription cannot be modified. Call <code>FontDescription.clone()</code> to get an unlocked copy of the FontDescription object.
   * @throws flash.errors.IllegalOperationError If set after the FontDescription object is locked (<code>locked</code> is <code>true</code>).
   *
   */
  public function get locked():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set locked(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The rendering mode used for this text. Use <code>RenderingMode</code> constants for this property.
   * <p>Applies only to embedded fonts.</p>
   * <p>The default value is <code>RenderingMode.CFF</code>.</p>
   * <p>To set values for this property, use the following constants from the RenderingMode class:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>RenderingMode.NORMAL</code></td>
   * <td>Applies the regular text rendering, which matches the type of rendering that Flash Player 7 and earlier versions used.</td></tr>
   * <tr>
   * <td><code>RenderingMode.CFF</code></td>
   * <td>Applies CFF (Compact Font Format) rendering, which makes text more legible. (This feature became available in Flash Player 10.) CFF rendering allows for high-quality rendering of font faces at small sizes.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>RenderingMode</code>.
   * @throws flash.errors.IllegalOperationError If set after the FontDescription object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see RenderingMode
   *
   */
  public function get renderingMode():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set renderingMode(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a FontDescription object.
   * @param fontName The name of the font to use, or a comma-separated list of font names.
   * @param fontWeight Specifies the font weight.
   * @param fontPosture Specifies the font posture.
   * @param fontLookup Specifies how to look up the font.
   * @param renderingMode The rendering mode used for this text. Use <code>RenderingMode</code> constants for this property.
   * @param cffHinting The type of CFF (Compact Font Format) hinting used for this text. Use <code>CFFHinting</code> constants for this property.
   *
   * @throws ArgumentError The <code>fontWeight</code> specified is not a member of <code>FontWeight</code>.
   * @throws ArgumentError The <code>fontPosture</code> specified is not a member of <code>FontPosture</code>.
   * @throws ArgumentError The <code>fontLookup</code> specified is not a member of <code>FontLookup</code>.
   * @throws ArgumentError The <code>renderingMode</code> specified is not a member of <code>RenderingMode</code>.
   * @throws ArgumentError The <code>cffHinting</code> specified is not a member of <code>CFFHinting</code>.
   *
   */
  public function FontDescription(fontName:String = "_serif", fontWeight:String = "normal", fontPosture:String = "normal", fontLookup:String = "device", renderingMode:String = "cff", cffHinting:String = "horizontalStem") {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs an unlocked, cloned copy of the FontDescription.
   * @return An unlocked copy of the <code>FontDescription</code> object.
   *
   * @example
   * <p>This example creates a <code>FontDescription</code> object, assigns a device font to it, sets various font properties, and assigns the new object (and therefore locking it) to an <code>ElementFormat</code> object. A new <code>TextElement</code> is created, using the <code>ElementFormat</code>, and the <code>TextElement</code> is used as content for a <code>TextBlock</code>. A line of text is created from the <code>TextBlock</code>.</p>
   * <p>To modify the <code>FontDescription</code> object, first check its <code>locked</code> property. If true, use the <code>clone()</code> method to create an unlocked copy of the <code>FontDescription</code>, change its properties, and assign it to a new ElementFormat object. Then re-link the new <code>ElementFormat</code> to the <code>TextBlock</code>. When the lines are re-broken, the new lines will have the new font settings.</p>
   * <listing>
   * package {
   *
   *     import flash.display.Sprite;
   *     import flash.text.engine.*;
   *
   *
   *     public class FontDescription_cloneExample extends Sprite {
   *         private var fd:FontDescription;
   *         private var fd2:FontDescription;
   *
   *         public function FontDescription_cloneExample():void {
   *             fd = new FontDescription();
   *             fd.fontLookup = flash.text.engine.FontLookup.DEVICE;
   *             fd.fontName = "Palatino";
   *             fd.fontWeight = flash.text.engine.FontWeight.BOLD;
   *             fd.fontPosture = flash.text.engine.FontPosture.ITALIC;
   *
   *             var ef1:ElementFormat = new ElementFormat(fd);
   *
   *             var str:String = "This is flash text 0123456789";
   *             var tb:TextBlock = new TextBlock();
   *             var te1:TextElement = new TextElement(str, ef1);
   *             tb.content = te1;
   *             var line1:TextLine = tb.createTextLine(null, 600);
   *             addChild(line1);
   *
   *             fd2 = (fd.locked) ? fd.clone() : fd;
   *             fd2.fontWeight = flash.text.engine.FontWeight.NORMAL;
   *             var ef2:ElementFormat = new ElementFormat(fd2);
   *
   *             tb.content.elementFormat=ef2;
   *             var line2:TextLine = tb.createTextLine(null, 600);
   *             addChild(line2);
   *
   *         }
   *     }
   * }
   * </listing>
   */
  public function clone():FontDescription {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns true if a usable device font is available with the specified <code>fontName</code>, <code>fontWeight</code>, and <code>fontPosture</code>.
   * <p>The flash.text.engine classes can only use OpenType and TrueType device fonts. If a font based on an older font technology is used, the runtime falls back to known good device fonts on a glyph-by-glyph basis to render the text</p>
   * @param fontName The name of the device font to check.
   * @param fontWeight Specifies the font weight. Use <code>FontWeight</code>.
   * @param fontPosture Specifies the font posture. Use <code>FontPosture</code>.
   *
   * @return <code>true</code> if a compatible device font is available, otherwise <code>false</code>.
   *
   * @throws ArgumentError The <code>fontWeight</code> specified is not a member of <code>FontWeight</code>.
   * @throws ArgumentError The <code>fontPosture</code> specified is not a member of <code>FontPosture</code>.
   *
   * @see #fontLookup
   * @see TextBlock#createTextLine()
   * @see FontPosture
   * @see FontWeight
   *
   */
  public static function isDeviceFontCompatible(fontName:String, fontWeight:String, fontPosture:String):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns true if an embedded font is available with the specified <code>fontName</code>, <code>fontWeight</code>, and <code>fontPosture</code> where <code>Font.fontType</code> is <code>flash.text.FontType.EMBEDDED_CFF</code>. Starting with Flash Player 10, two kinds of embedded fonts can appear in application content. Normal embedded fonts are only used by TextField. CFF embedded fonts are only used by the flash.text.engine classes. The two types are distinguised by the <code>fontType</code> property of the <code>Font</code> class, as returned by the <code>enumerateFonts()</code> function.
   * <p>The flash.text.engine classes cannot use a font of type <code>EMBEDDED</code>. If <code>fontLookup</code> is set to <code>FontLookup.EMBEDDED_CFF</code> and the only font available at run time with the specified name, weight, and posture is of type <code>EMBEDDED</code>, the runtime falls back to device fonts on a glyph-by-glyph basis to render the text, as if no embedded font were available with the specified name and style.</p>
   * <p>If both <code>EMBEDDED</code> and <code>EMBEDDED_CFF</code> fonts are available with the same name, weight, and posture, the <code>EMBEDDED_CFF</code> font is selected and text renders with the <code>EMBEDDED_CFF</code> font.</p>
   * @param fontName The name of the embedded font to check.
   * @param fontWeight Specifies the font weight. Use <code>FontWeight</code>.
   * @param fontPosture Specifies the font posture. Use <code>FontPosture</code>.
   *
   * @return <code>true</code> if a compatible embedded font is available, otherwise <code>false</code>.
   *
   * @throws ArgumentError The <code>fontWeight</code> specified is not a member of <code>FontWeight</code>.
   * @throws ArgumentError The <code>fontPosture</code> specified is not a member of <code>FontPosture</code>.
   *
   * @see #fontLookup
   * @see TextBlock#createTextLine()
   * @see flash.text.FontType#EMBEDDED_CFF
   * @see FontPosture
   * @see FontWeight
   *
   */
  public static function isFontCompatible(fontName:String, fontWeight:String, fontPosture:String):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
