package flash.text.engine {
/**
 * The ElementFormat class represents formatting information which can be applied to a ContentElement. Use the ElementFormat class to create specific text formatting for the various subclasses of ContentElement. The properties of the ElementFormat class apply to device and embedded fonts.
 * <p>An ElementFormat object that is applied to a ContentElement in a TextBlock does not invalidate the TextBlock. Once an ElementFormat has been applied to a ContentElement, its <code>locked</code> property is set to <code>true</code>. The properties of a locked ElementFormat object cannot be changed. Instead, use the <code>clone()</code> method to create an unlocked copy of the object, which can be modified and assigned to the ContentElement.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/ElementFormat.html#includeExamplesSummary">View the examples</a></p>
 * @see ContentElement#elementFormat
 *
 */
public final class ElementFormat {
  /**
   * Specifies the type of baseline in the containing element to which to align the dominant baselines of elements having this format. Use <code>TextBaseline</code> constants for this property.
   * <p>The largest vertical element in the line determines the alignment of baselines unless <code>TextBlock.baselineFontDescription</code> and <code>TextBlock.baselineFontSize</code> are set to override that logic.</p>
   * <p>The default value is <code>TextBaseline.USE_DOMINANT_BASELINE</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>TextBaseline.ROMAN</code></td>
   * <td>The <code>dominantBaseline</code> aligns with the roman baseline of the line.</td></tr>
   * <tr>
   * <td><code>TextBaseline.ASCENT</code></td>
   * <td>The <code>dominantBaseline</code> aligns with the ascent baseline of the line.</td></tr>
   * <tr>
   * <td><code>TextBaseline.DESCENT</code></td>
   * <td>The <code>dominantBaseline</code> aligns with the descent baseline of the line.</td></tr>
   * <tr>
   * <td><code>TextBaseline.IDEOGRAPHIC_TOP</code></td>
   * <td>The <code>dominantBaseline</code> aligns with the ideographic top baseline of the line.</td></tr>
   * <tr>
   * <td><code>TextBaseline.IDEOGRAPHIC_CENTER</code></td>
   * <td>The <code>dominantBaseline</code> aligns with the ideographic center baseline of the line.</td></tr>
   * <tr>
   * <td><code>TextBaseline.IDEOGRAPHIC_BOTTOM</code></td>
   * <td>The <code>dominantBaseline</code> aligns with the ideographic bottom baseline of the line.</td></tr>
   * <tr>
   * <td><code>TextBaseline.USE_DOMINANT_BASELINE</code></td>
   * <td>The <code>dominantBaseline</code> aligns with the same baseline of the line.</td></tr></table>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Sets the alignment baseline of the line to which the <code>dominantBaseline</code> of the graphic element aligns.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Sets the alignment baseline of the line to which the <code>dominantBaseline</code> of the text element aligns.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>TextBaseline</code>.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see TextBaseline
   * @see #dominantBaseline
   *
   */
  public function get alignmentBaseline():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set alignmentBaseline(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the transparency of the line elements affected by this obect. Valid values range from 0 (fully transparent) to 1 (fully opaque). Display objects with <code>alpha</code> set to 0 are active, even though they are invisible.
   * <p>The default value is <code>1</code>.</p>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Applies the specified alpha to the graphic element. Combines multiplicatively with any alpha set on the graphic <code>DisplayObject</code> itself or on the <code>TextLine</code>.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Applies the specified alpha to the text element. Combines multiplicatively with any alpha set on the <code>TextLine</code>.</td></tr></table>
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see flash.display.DisplayObject#alpha
   *
   */
  public function get alpha():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set alpha(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the baseline shift for the element in pixels.
   * <p>The element is shifted away from the <code>dominantBaseline</code> by this amount. The offset is added to the y position of the members of the element, so in non-rotated text, a positive baseline shift moves the element down and a negative baseline shift moves the element up.</p>
   * <p>The default value is <code>0.0</code>, indicating no shift.</p>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Shifts the graphic away from the baseline.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Shifts the text away from the baseline.</td></tr></table>
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   */
  public function get baselineShift():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set baselineShift(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The line break opportunity applied to this text. This property determines which characters can be used for breaking when wrapping text is broken into multiple lines. Use <code>BreakOpportunity</code> constants for this property.
   * <p>The default value is <code>BreakOpportunity.AUTO</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>BreakOpportunity.AUTO</code></td>
   * <td>Line breaking opportunities are based on standard Unicode character properties, such as breaking between words and on hyphens.</td></tr>
   * <tr>
   * <td><code>BreakOpportunity.ANY</code></td>
   * <td>Any character in the <code>ContentElement</code> object is treated as a line break opportunity. This value is typically used when Roman text is embedded in Asian text and it is desirable for breaks to happen in the middle of words.</td></tr>
   * <tr>
   * <td><code>BreakOpportunity.NONE</code></td>
   * <td>No characters in the range are treated as line break opportunities.</td></tr>
   * <tr>
   * <td><code>BreakOpportunity.ALL</code></td>
   * <td>All characters in the range are treated as line break opportunities, meaning that a line break will occur after each character. Useful for creating effects like text on a path.</td></tr></table>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Determines the break opportunity between adjacent text elements in the group. If the elementFormat of the group is <code>null</code>, the format of the first of the adjacent elements is used.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the break opportunity between the characters in the text element.</td></tr></table>
   * @throws ArgumentError If set to a value not a member of <code>BreakOpportunity</code>.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see BreakOpportunity
   *
   */
  public function get breakOpportunity():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set breakOpportunity(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the color of the text. An integer containing three 8-bit RGB components; for example, 0xFF0000 is red and 0x00FF00 is green.
   * <p>The default value is <code>0x000000</code>, which is black.</p>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Sets the color of the text.</td></tr></table>
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   */
  public function get color():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set color(value:uint):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The digit case used for this text. Digit case affects the style and positioning of groups of numeric characters. Use <code>DigitCase</code> constants for this property.
   * <p>The default value is <code>DigitCase.DEFAULT</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>DigitCase.DEFAULT</code></td>
   * <td>Applies default digit case to the text.</td></tr>
   * <tr>
   * <td><code>DigitCase.LINING</code></td>
   * <td>Applies lining digit case to the text.</td></tr>
   * <tr>
   * <td><code>DigitCase.OLD_STYLE</code></td>
   * <td>Applies old style digit case to the text.</td></tr></table>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the digit case used for the text in the element.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>DigitCase</code>.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see DigitCase
   *
   */
  public function get digitCase():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set digitCase(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The digit width used for this text. Use <code>DigitWidth</code> constants for this property.
   * <p>The default value is <code>DigitWidth.DEFAULT</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>DigitWidth.DEFAULT</code></td>
   * <td>Applies default digit width to the text.</td></tr>
   * <tr>
   * <td><code>DigitWidth.PROPORTIONAL</code></td>
   * <td>Applies proportional digit width to the text.</td></tr>
   * <tr>
   * <td><code>DigitWidth.TABULAR</code></td>
   * <td>Applies tabular digit width to the text.</td></tr></table>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the digit width used for the text in the element.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>DigitWidth</code>.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see DigitWidth
   *
   */
  public function get digitWidth():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set digitWidth(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the type of baseline to use as the dominant baseline. The dominant baseline is aligned with the alignment baseline to determine the vertical position of the element on the line. Use <code>TextBaseline</code> constants for this property.
   * <p>The content of the element determines the baselines. In the case of a <code>TextElement</code>, the font and the point size determine the baselines. In the case of a <code>GraphicElement</code>, the height of the element determines the baselines.</p>
   * <p>The default value is <code>TextBaseline.ROMAN</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>TextBaseline.ROMAN</code></td>
   * <td>The roman baseline of the element aligns with the <code>alignmentBaseline</code>.</td></tr>
   * <tr>
   * <td><code>TextBaseline.ASCENT</code></td>
   * <td>The ascent baseline of the element aligns with the <code>alignmentBaseline</code>.</td></tr>
   * <tr>
   * <td><code>TextBaseline.DESCENT</code></td>
   * <td>The descent baseline of the element aligns with the <code>alignmentBaseline</code>.</td></tr>
   * <tr>
   * <td><code>TextBaseline.IDEOGRAPHIC_TOP</code></td>
   * <td>The ideographic top baseline of the element aligns with the <code>alignmentBaseline</code>.</td></tr>
   * <tr>
   * <td><code>TextBaseline.IDEOGRAPHIC_CENTER</code></td>
   * <td>The ideographic center baseline of the element aligns with the <code>alignmentBaseline</code>.</td></tr>
   * <tr>
   * <td><code>TextBaseline.IDEOGRAPHIC_BOTTOM</code></td>
   * <td>The ideographic bottom baseline of the element aligns with the <code>alignmentBaseline</code>.</td></tr></table>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Determines which of the baselines of the graphic element aligns with the <code>alignmentBaseline</code>.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines which of the baselines of the text element aligns with the <code>alignmentBaseline</code>.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>TextBaseline</code>.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see TextBaseline
   * @see #alignmentBaseline
   *
   */
  public function get dominantBaseline():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set dominantBaseline(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * An object whose properties describe a font.
   * <p>The default value is a default-constructed FontDescription object.</p>
   * <p>When the fontDescription property is set, the FontDescription object provided is locked: its <code>locked</code> property is set to <code>true</code>. A locked FontDescription cannot be modified.</p>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the font used for the text in the element.</td></tr></table>
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see FontDescription
   *
   */
  public function get fontDescription():FontDescription {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontDescription(value:FontDescription):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The size of text in pixels.
   * <p>The default value is <code>12.0</code>.</p>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the size in pixels for the text in the element.</td></tr></table>
   * @throws ArgumentError If set to a value less than zero.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   */
  public function get fontSize():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontSize(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Kerning adjusts the pixels between certain character pairs to improve readability. Kerning is supported for all fonts which have kerning tables.
   * <p>The default value is <code>Kerning.ON</code>.</p>
   * <p>To set values for this property, use the following constants in the Kerning class:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>Kerning.ON</code></td>
   * <td>Kerning is enabled.</td></tr>
   * <tr>
   * <td><code>Kerning.OFF</code></td>
   * <td>Kerning is disabled.</td></tr>
   * <tr>
   * <td><code>Kerning.AUTO</code></td>
   * <td>Kerning is enabled except where inappropriate in Asian typography. Kerning is applied between two characters if neither is Kanji, Hiragana, or Katakana.</td></tr></table>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Determines whether kerning is applied between adjacent text elements in the group. If the elementFormat of the group is <code>null</code>, the format of the first of the adjacent elements is used.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines whether kerning is applied between the characters in the text element.</td></tr></table>
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see Kerning
   *
   */
  public function get kerning():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set kerning(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The ligature level used for this text. A ligature occurs where two or more letter-forms are joined as a single glyph. Ligatures usually replace consecutive characters sharing common components, such as the letter pairs 'fi', 'fl', or 'ae'. They are used with both Latin and non-Latin character sets. Use <code>LigatureLevel</code> constants for this property.
   * <p>The default value is <code>LigatureLevel.COMMON</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>LigatureLevel.NONE</code></td>
   * <td>No ligatures are created.</td></tr>
   * <tr>
   * <td><code>LigatureLevel.MINIMUM</code></td>
   * <td>Minimal ligatures are created.</td></tr>
   * <tr>
   * <td><code>LigatureLevel.COMMON</code></td>
   * <td>Common ligatures are created.</td></tr>
   * <tr>
   * <td><code>LigatureLevel.UNCOMMON</code></td>
   * <td>Uncommon ligatures are created.</td></tr>
   * <tr>
   * <td><code>LigatureLevel.EXOTIC</code></td>
   * <td>Exotic ligatures are created.</td></tr></table>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Determines the ligature level between adjacent text elements in the group. If the elementFormat of the group is <code>null</code>, the format of the first of the adjacent elements is used.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the ligature level between the characters in the text element.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>LigatureLevel</code>.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see LigatureLevel
   *
   */
  public function get ligatureLevel():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set ligatureLevel(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The locale of the text. Controls case transformations and shaping. Standard locale identifiers are used. For example "en", "en_US" and "en-US" are all English, "ja" is Japanese. See <a href="http://www.loc.gov/standards/iso639-2/php/code_list.php">iso639-2 code list</a> for a list of locale codes.
   * <p>The default value is <code>"en"</code>.</p>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines transformations and shaping for the text in the element.</td></tr></table>
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   */
  public function get locale():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set locale(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the ElementFormat is locked. If <code>true</code> the ElementFormat cannot be modified. Call <code>ElementFormat.clone()</code> to get an unlocked copy of the ElementFormat object.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
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
   * Sets the rotation applied to individual glyphs. Use constants defined in the TextRotation class for this property.
   * <p>The default value is <code>TextRotation.AUTO</code>.</p>
   * <p>The final rotation of any glyph is the sum of <code>ElementFormat.textRotation</code>, <code>ContentElement.textRotation</code>, and <code>TextBlock.lineRotation</code>.</p>
   * <p>You typically use this property for Asian text where characters must be rotated to display properly in vertical layout. Use <code>TextRotation.AUTO</code> in combination with <code>TextBlock.lineRotation = TextRotation.ROTATE_90</code> to accomplish this.</p>
   * <p>Setting this property on fonts which do not contain vertical layout information can give undesirable results. Fonts that contain a vmtx or VORG table, such as the Japanese font, "MS Mincho", work correctly because the tables supply the data that the layout engine requires for correct layout. Fonts such as Verdana, which do not contain the necessary information, do not.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_0</code></td>
   * <td>Glyphs are not rotated.</td></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_90</code></td>
   * <td>Glyphs are rotated 90 degrees clockwise.</td></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_180</code></td>
   * <td>Glyphs are rotated 180 degrees.</td></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_270</code></td>
   * <td>Glyphs are rotated 270 degrees clockwise.</td></tr>
   * <tr>
   * <td><code>TextRotation.AUTO</code></td>
   * <td>Specifies a 90 degree counter clockwise rotation for full width and wide glyphs only, as determined by the Unicode properties of the glyph. This value is typically used with Asian text to rotate only those glyphs that require rotation. This rotation is applied only in vertical text to return full width and wide characters to a vertical orientation without affecting other characters.</td></tr></table>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the rotation of the glyphs in the text element.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>TextRotation</code>.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see TextRotation
   * @see ContentElement#textRotation
   * @see TextBlock#lineRotation
   *
   */
  public function get textRotation():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textRotation(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The tracking or manual kerning applied to the left of each glyph in pixels. If <code>kerning</code> is enabled, the <code>trackingLeft</code> value is added to the values in the kerning table for the font. If <code>kerning</code> is disabled, the <code>trackingLeft</code> value is used as a manual kerning value. Supports both positive and negative values.
   * <p>Typically, the desired tracking value is split between <code>trackingRight</code> and <code>trackingLeft</code>. Otherwise, in mixed directionality text, there is twice the tracking at one bidi boundary and none at the other.</p>
   * <p>The default value is <code>0.0</code>.</p>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Determines the tracking applied to the left side of the graphic.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the tracking applied to the left side of characters in the text element.</td></tr></table>
   * <p>Example:</p>
   * <listing>
   *           //positive tracking added to kerning
   *           var ef1:ElementFormat = new ElementFormat();
   *           ef1.kerning = flash.text.engine.Kerning.ON;
   *           ef1.trackingLeft = 0.5;
   *
   *           //negative manual kerning
   *           var ef2:ElementFormat = new ElementFormat();
   *           ef2.kerning = flash.text.engine.Kerning.OFF;
   *           ef2.trackingLeft = -1.0;
   *     </listing>
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   */
  public function get trackingLeft():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set trackingLeft(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The tracking or manual kerning applied to the right of each glyph in pixels. If <code>kerning</code> is enabled, the <code>trackingRight</code> value is added to the values in the kerning table for the font. If <code>kerning</code> is disabled, the <code>trackingRight</code> value is used as a manual kerning value. Supports both positive and negative values.
   * <p>Typically, the desired tracking value is split between <code>trackingRight</code> and <code>trackingLeft</code>. Otherwise, in mixed directionality text, there is twice the tracking at one bidi boundary and none at the other.</p>
   * <p>The default value is <code>0.0</code>.</p>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Determines the tracking applied to the right side of the graphic.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the tracking applied to the right side of characters in the text element.</td></tr></table>
   * <p>Example:</p>
   * <listing>
   *           //positive tracking added to kerning
   *           var ef1:ElementFormat = new ElementFormat();
   *           ef1.kerning = flash.text.engine.Kerning.ON;
   *           ef1.trackingRight = 0.5;
   *
   *           //negative manual kerning
   *           var ef2:ElementFormat = new ElementFormat();
   *           ef2.kerning = flash.text.engine.Kerning.OFF;
   *           ef2.trackingRight = -1.0;
   *     </listing>
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   */
  public function get trackingRight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set trackingRight(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The typographic case used for this text. Use constants defined in the TypographicCase class for this property.
   * <p>The default value is <code>TypographicCase.DEFAULT</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>TypographicCase.DEFAULT</code></td>
   * <td>Specifies that normal case is used for all characters.</td></tr>
   * <tr>
   * <td><code>TypographicCase.TITLE</code></td>
   * <td>Specifies that uppercase characters use title glyphs on output.</td></tr>
   * <tr>
   * <td><code>TypographicCase.CAPS</code></td>
   * <td>Specifies that spacing is adjusted for uppercase characters on output.</td></tr>
   * <tr>
   * <td><code>TypographicCase.SMALL_CAPS</code></td>
   * <td>Specifies that uppercase characters use small caps glyphs on output.</td></tr>
   * <tr>
   * <td><code>TypographicCase.UPPERCASE</code></td>
   * <td>Specifies that all characters use uppercase glyphs on output.</td></tr>
   * <tr>
   * <td><code>TypographicCase.LOWERCASE</code></td>
   * <td>Specifies that all characters use lowercase glyphs on output.</td></tr>
   * <tr>
   * <td><code>TypographicCase.CAPS_AND_SMALL_CAPS</code></td>
   * <td>Specifies that all lowercase characters use small caps glyphs on output.</td></tr></table>
   * <table>
   * <tr><th>Subclass</th><th>Effect of setting property</th></tr>
   * <tr>
   * <td><code>GraphicElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>GroupElement</code></td>
   * <td>Has no effect.</td></tr>
   * <tr>
   * <td><code>TextElement</code></td>
   * <td>Determines the typographic case used for the text in the element.</td></tr></table>
   * @throws ArgumentError If set to a value not a member of <code>TypographicCase</code>.
   * @throws flash.errors.IllegalOperationError If set after the ElementFormat object is locked (<code>locked</code> is <code>true</code>).
   *
   * @see TypographicCase
   *
   */
  public function get typographicCase():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set typographicCase(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an ElementFormat object.
   * @param fontDescription The FontDescription object which identifies the font used with this element format. The default value is <code>null</code>. If no font description is provided, a default font description is constructed.
   * @param fontSize The size of text in pixels.
   * @param color The color of text. A hexadecimal number containing three 8-bit RGB components; for example, 0xFF0000 is red and 0x00FF00 is green.
   * @param alpha The <code>alpha</code> property applied to all line atoms based on the element format.
   * @param textRotation the rotation applied to individual glyphs. Use TextRotation constants for this property.
   * @param dominantBaseline The baseline to which the glyphs in the text snap. Use TextBaseline constants for this property.
   * @param alignmentBaseline The baseline on the containing line to which the dominant baseline snaps. Use TextBaseline constants for this property.
   * @param baselineShift The baseline shift for the text in pixels em.
   * @param kerning The kerning used for this text. Use constants defined in the Kerning class.
   * @param trackingRight The tracking or manual kerning applied to the right of each glyph in pixels.
   * @param trackingLeft The tracking or manual kerning applied to the left of each glyph in pixels.
   * @param locale The locale of the text.
   * @param breakOpportunity The line break opportunity applied to this text. Use BreakOpportunity constants for this property.
   * @param digitCase The digit case used for this text. Use DigitCase constants for this property.
   * @param digitWidth The digit width used for this text. Use DigitWidth constants for this property.
   * @param ligatureLevel The ligature level used for this text. Use LigatureLevel constants for this property.
   * @param typographicCase The typographic case used for this text. Use TypographicCase constants for this property.
   *
   * @throws ArgumentError The <code>fontSize</code> specified is less than 0.
   * @throws ArgumentError The <code>textRotation</code> specified is not a member of <code>TextRotation</code>.
   * @throws ArgumentError The <code>dominantBaseline</code> specified is not a member of <code>TextBaseline</code>.
   * @throws ArgumentError The <code>alignmentBaseline</code> specified is not a member of <code>TextBaseline</code>.
   * @throws ArgumentError The <code>kerning</code> specified is not a member of <code>Kerning</code>.
   * @throws ArgumentError The <code>breakOpportunity</code> specified is not a member of <code>BreakOpportunity</code>.
   * @throws ArgumentError The <code>digitCase</code> specified is not a member of <code>DigitCase</code>.
   * @throws ArgumentError The <code>digitWidth</code> specified is not a member of <code>DigitWidth</code>.
   * @throws ArgumentError The <code>ligatureLevel</code> specified is not a member of <code>LigatureLevel</code>.
   * @throws ArgumentError The <code>typographicCase</code> specified is not a member of <code>TypographicCase</code>.
   *
   */
  public function ElementFormat(fontDescription:FontDescription = null, fontSize:Number = 12.0, color:uint = 0x000000, alpha:Number = 1.0, textRotation:String = "auto", dominantBaseline:String = "roman", alignmentBaseline:String = "useDominantBaseline", baselineShift:Number = 0.0, kerning:String = "on", trackingRight:Number = 0.0, trackingLeft:Number = 0.0, locale:String = "en", breakOpportunity:String = "auto", digitCase:String = "default", digitWidth:String = "default", ligatureLevel:String = "common", typographicCase:String = "default") {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs an unlocked, cloned copy of the ElementFormat.
   * @return An unlocked copy of the <code>ElementFormat</code> object.
   *
   * @example
   * <p>This example creates an <code>ElementFormat</code> object and sets a <code>FontSize</code>. A new <code>TextElement</code> is created, using the <code>ElementFormat</code> (and therefore locking it), and the <code>TextElement</code> is used as content for a <code>TextBlock</code>. A line of text is created from the <code>TextBlock</code>.</p>
   * <p>To modify the <code>ElementFormat</code> object, first check its <code>locked</code> property. If true, use the <code>clone()</code> method to create an unlocked copy of the <code>ElementFormat</code>, change its properties, then re-link the new <code>ElementFormat</code> to the <code>TextBlock</code>. When the lines are re-broken, the new lines will have the new font settings.</p>
   * <listing>
   * package {
   *
   *     import flash.display.Sprite;
   *     import flash.text.engine.*;
   *
   *
   *     public class ElementFormat_cloneExample extends Sprite {
   *         private var ef1:ElementFormat;
   *         private var ef2:ElementFormat;
   *
   *         public function ElementFormat_cloneExample():void {
   *             var fd:FontDescription = new FontDescription();
   *             fd.fontLookup = flash.text.engine.FontLookup.DEVICE;
   *             fd.fontName = "Palatino";
   *
   *             var ef1:ElementFormat = new ElementFormat(fd);
   *             ef1.fontSize=20;
   *
   *             var str:String = "This is flash text 0123456789";
   *             var tb:TextBlock = new TextBlock();
   *             var te1:TextElement = new TextElement(str, ef1);
   *             tb.content = te1;
   *             var line1:TextLine = tb.createTextLine(null, 600);
   *             addChild(line1);
   *
   *             ef2 = (ef1.locked) ? ef1.clone() : ef1;
   *             ef2.fontSize = 32;
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
  public function clone():ElementFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a <code>FontMetrics</code> object with properties which describe the emBox, strikethrough position, strikethrough thickness, underline position, and underline thickness for the font specified by <code>fontDescription</code> and <code>fontSize</code>.
   * @return A <code>FontMetrics</code> object describing properties of the font specified by <code>fontDescription</code>.
   *
   * @see FontDescription
   * @see FontMetrics
   *
   * @example This example creates an <code>ElementFormat</code> object with an assigned <code>FontDescription</code> and uses the <code>getFontMetrics</code> method to display metrics for the chosen font at 24 points.
   * <listing>
   * package {
   *
   *     import flash.display.Sprite;
   *     import flash.text.engine.*;
   *
   *
   *     public class FontMetricsExample extends Sprite {
   *
   *         public function FontMetricsExample():void {
   *             var fd:FontDescription = new FontDescription();
   *             fd.fontName = "Garamond";
   *             fd.fontWeight = flash.text.engine.FontWeight.BOLD;
   *
   *             var ef1:ElementFormat = new ElementFormat(fd);
   *             ef1.fontSize = 24;
   *             var fm1:FontMetrics = ef1.getFontMetrics();
   *
   *             trace(fm1.emBox);
   *             trace(fm1.strikethroughOffset);
   *             trace(fm1.strikethroughThickness);
   *             trace(fm1.subscriptScale);
   *             trace(fm1.subscriptOffset);
   *             trace(fm1.superscriptScale);
   *             trace(fm1.superscriptOffset);
   *             trace(fm1.underlineOffset);
   *             trace(fm1.underlineThickness);
   *
   *
   *         }
   *     }
   * }
   * </listing>
   */
  public function getFontMetrics():FontMetrics {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
