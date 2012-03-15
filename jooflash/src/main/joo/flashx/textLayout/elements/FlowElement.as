package flashx.textLayout.elements {
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The text in a flow is stored in tree form with the elements of the tree representing logical divisions within the text. The FlowElement class is the abstract base class of all the objects in this tree. FlowElement objects represent paragraphs, spans of text within paragraphs, and groups of paragraphs.
 * <p>The root of a composable FlowElement tree is always a TextFlow object. Leaf elements of the tree are always subclasses of the FlowLeafElement class. All leaves arranged in a composable TextFlow have a ParagraphElement ancestor.</p>
 * <p>You cannot create a FlowElement object directly. Invoking <code>new FlowElement()</code> throws an error exception.</p>
 * @see FlowGroupElement
 * @see FlowLeafElement
 * @see InlineGraphicElement
 * @see ParagraphElement
 * @see SpanElement
 * @see TextFlow
 *
 */
public class FlowElement implements ITextLayoutFormat {
  /**
   * TextLayoutFormat: Specifies the baseline to which the dominant baseline aligns. For example, if you set <code>dominantBaseline</code> to ASCENT, setting <code>alignmentBaseline</code> to DESCENT aligns the top of the text with the DESCENT baseline, or below the line. The largest element in the line generally determines the baselines.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_baselines.jpg" /></p>
   * <p>Legal values are flash.text.engine.TextBaseline.ROMAN, flash.text.engine.TextBaseline.ASCENT, flash.text.engine.TextBaseline.DESCENT, flash.text.engine.TextBaseline.IDEOGRAPHIC_TOP, flash.text.engine.TextBaseline.IDEOGRAPHIC_CENTER, flash.text.engine.TextBaseline.IDEOGRAPHIC_BOTTOM, flash.text.engine.TextBaseline.USE_DOMINANT_BASELINE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of USE_DOMINANT_BASELINE.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.TextBaseline
   *
   */
  public function get alignmentBaseline():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set alignmentBaseline(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Alpha (transparency) value for the background (adopts default value if undefined during cascade). A value of 0 is fully transparent, and a value of 1 is fully opaque. Display objects with alpha set to 0 are active, even though they are invisible.
   * <p>Legal values are numbers from 0 to 1 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 1.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get backgroundAlpha():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set backgroundAlpha(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Background color of the text (adopts default value if undefined during cascade). Can be either the constant value <code>BackgroundColor.TRANSPARENT</code>, or a hexadecimal value that specifies the three 8-bit RGB (red, green, blue) values; for example, 0xFF0000 is red and 0x00FF00 is green.
   * <p>Legal values as a string are flashx.textLayout.formats.BackgroundColor.TRANSPARENT, flashx.textLayout.formats.FormatValue.INHERIT and uints from 0x0 to 0xffffffff.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of TRANSPARENT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.BackgroundColor
   *
   */
  public function get backgroundColor():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set backgroundColor(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Amount to shift the baseline from the <code>dominantBaseline</code> value. Units are in pixels, or a percentage of <code>fontSize</code> (in which case, enter a string value, like 140%). Positive values shift the line up for horizontal text (right for vertical) and negative values shift it down for horizontal (left for vertical).
   * <p>Legal values are flashx.textLayout.formats.BaselineShift.SUPERSCRIPT, flashx.textLayout.formats.BaselineShift.SUBSCRIPT, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Legal values as a number are from -1000 to 1000.</p>
   * <p>Legal values as a percent are numbers from -1000 to 1000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.BaselineShift
   *
   */
  public function get baselineShift():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set baselineShift(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Specifies a vertical or horizontal progression of line placement. Lines are either placed top-to-bottom (<code>BlockProgression.TB</code>, used for horizontal text) or right-to-left (<code>BlockProgression.RL</code>, used for vertical text).
   * <p>Legal values are flashx.textLayout.formats.BlockProgression.RL, flashx.textLayout.formats.BlockProgression.TB, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of TB.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.BlockProgression
   *
   */
  public function get blockProgression():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set blockProgression(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Controls where lines are allowed to break when breaking wrapping text into multiple lines. Set to <code>BreakOpportunity.AUTO</code> to break text normally. Set to <code>BreakOpportunity.NONE</code> to <i>not</i> break the text unless the text would overrun the measure and there are no other places to break the line. Set to <code>BreakOpportunity.ANY</code> to allow the line to break anywhere, rather than just between words. Set to <code>BreakOpportunity.ALL</code> to have each typographic cluster put on a separate line (useful for text on a path).
   * <p>Legal values are flash.text.engine.BreakOpportunity.ALL, flash.text.engine.BreakOpportunity.ANY, flash.text.engine.BreakOpportunity.AUTO, flash.text.engine.BreakOpportunity.NONE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.BreakOpportunity
   *
   */
  public function get breakOpportunity():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set breakOpportunity(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: The type of CFF hinting used for this text. CFF hinting determines whether the Flash runtime forces strong horizontal stems to fit to a sub pixel grid or not. This property applies only if the <code>renderingMode</code> property is set to <code>RenderingMode.CFF</code>, and the font is embedded (<code>fontLookup</code> property is set to <code>FontLookup.EMBEDDED_CFF</code>). At small screen sizes, hinting produces a clear, legible text for human readers.
   * <p>Legal values are flash.text.engine.CFFHinting.NONE, flash.text.engine.CFFHinting.HORIZONTAL_STEM, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of HORIZONTAL_STEM.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.CFFHinting
   *
   */
  public function get cffHinting():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set cffHinting(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Color of the text. A hexadecimal number that specifies three 8-bit RGB (red, green, blue) values; for example, 0xFF0000 is red and 0x00FF00 is green.
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get color():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set color(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Number of text columns (adopts default value if undefined during cascade). The column number overrides the other column settings. Value is an integer, or <code>FormatValue.AUTO</code> if unspecified. If <code>columnCount</code> is not specified,<code>columnWidth</code> is used to create as many columns as can fit in the container.
   * <p>Legal values as a string are flashx.textLayout.formats.FormatValue.AUTO, flashx.textLayout.formats.FormatValue.INHERIT and from ints from 1 to 50.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.FormatValue
   *
   */
  public function get columnCount():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set columnCount(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Specifies the amount of gutter space, in pixels, to leave between the columns (adopts default value if undefined during cascade). Value is a Number
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 20.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get columnGap():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set columnGap(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Column width in pixels (adopts default value if undefined during cascade). If you specify the width of the columns, but not the count, TextLayout will create as many columns of that width as possible, given the container width and <code>columnGap</code> settings. Any remainder space is left after the last column. Value is a Number.
   * <p>Legal values as a string are flashx.textLayout.formats.FormatValue.AUTO, flashx.textLayout.formats.FormatValue.INHERIT and numbers from 0 to 8000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.FormatValue
   *
   */
  public function get columnWidth():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set columnWidth(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the computed format attributes that are in effect for this element. Takes into account the inheritance of attributes from parent elements.
   * @see flashx.textLayout.formats.ITextLayoutFormat
   *
   */
  public function get computedFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the core styles on a FlowElement instance. Returns a copy of the core styles.
   */
  public function get coreStyles():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: The type of digit case used for this text. Setting the value to <code>DigitCase.OLD_STYLE</code> approximates lowercase letterforms with varying ascenders and descenders. The figures are proportionally spaced. This style is only available in selected typefaces, most commonly in a supplemental or expert font. The <code>DigitCase.LINING</code> setting has all-cap height and is typically monospaced to line up in charts.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_digitcase.gif" /></p>
   * <p>Legal values are flash.text.engine.DigitCase.DEFAULT, flash.text.engine.DigitCase.LINING, flash.text.engine.DigitCase.OLD_STYLE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of DEFAULT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.DigitCase
   *
   */
  public function get digitCase():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set digitCase(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Type of digit width used for this text. This can be <code>DigitWidth.PROPORTIONAL</code>, which looks best for individual numbers, or <code>DigitWidth.TABULAR</code>, which works best for numbers in tables, charts, and vertical rows.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_digitwidth.gif" /></p>
   * <p>Legal values are flash.text.engine.DigitWidth.DEFAULT, flash.text.engine.DigitWidth.PROPORTIONAL, flash.text.engine.DigitWidth.TABULAR, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of DEFAULT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.DigitWidth
   *
   */
  public function get digitWidth():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set digitWidth(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Specifies the default bidirectional embedding level of the text in the text block. Left-to-right reading order, as in Latin-style scripts, or right-to-left reading order, as in Arabic or Hebrew. This property also affects column direction when it is applied at the container level. Columns can be either left-to-right or right-to-left, just like text. Below are some examples:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_direction.gif" /></p>
   * <p>Legal values are flashx.textLayout.formats.Direction.LTR, flashx.textLayout.formats.Direction.RTL, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of LTR.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.Direction
   *
   */
  public function get direction():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set direction(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Specifies which element baseline snaps to the <code>alignmentBaseline</code> to determine the vertical position of the element on the line. A value of <code>TextBaseline.AUTO</code> selects the dominant baseline based on the <code>locale</code> property of the parent paragraph. For Japanese and Chinese, the selected baseline value is <code>TextBaseline.IDEOGRAPHIC_CENTER</code>; for all others it is <code>TextBaseline.ROMAN</code>. These baseline choices are determined by the choice of font and the font size.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_baselines.jpg" /></p>
   * <p>Legal values are flashx.textLayout.formats.FormatValue.AUTO, flash.text.engine.TextBaseline.ROMAN, flash.text.engine.TextBaseline.ASCENT, flash.text.engine.TextBaseline.DESCENT, flash.text.engine.TextBaseline.IDEOGRAPHIC_TOP, flash.text.engine.TextBaseline.IDEOGRAPHIC_CENTER, flash.text.engine.TextBaseline.IDEOGRAPHIC_BOTTOM, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of flashx.textLayout.formats.FormatValue.AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.TextBaseline
   *
   */
  public function get dominantBaseline():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set dominantBaseline(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Specifies the baseline position of the first line in the container. Which baseline this property refers to depends on the container-level locale. For Japanese and Chinese, it is <code>TextBaseline.IDEOGRAPHIC_BOTTOM</code>; for all others it is <code>TextBaseline.ROMAN</code>. The offset from the top inset (or right inset if <code>blockProgression</code> is RL) of the container to the baseline of the first line can be either <code>BaselineOffset.ASCENT</code>, meaning equal to the ascent of the line, <code>BaselineOffset.LINE_HEIGHT</code>, meaning equal to the height of that first line, or * fixed-value number to specify an absolute distance. <code>BaselineOffset.AUTO</code> aligns the ascent of the line with the container top inset.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO1.png" /><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO2.png" /><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO3.png" /><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO4.png" /></p>
   * <p>Legal values as a string are flashx.textLayout.formats.BaselineOffset.AUTO, flashx.textLayout.formats.BaselineOffset.ASCENT, flashx.textLayout.formats.BaselineOffset.LINE_HEIGHT, flashx.textLayout.formats.FormatValue.INHERIT and numbers from 0 to 1000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.BaselineOffset
   *
   */
  public function get firstBaselineOffset():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set firstBaselineOffset(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: The name of the font to use, or a comma-separated list of font names. The Flash runtime renders the element with the first available font in the list. For example Arial, Helvetica, _sans causes the player to search for Arial, then Helvetica if Arial is not found, then _sans if neither is found.
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of Arial.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get fontFamily():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontFamily(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Font lookup to use. Specifying <code>FontLookup.DEVICE</code> uses the fonts installed on the system that is running the SWF file. Device fonts result in a smaller movie size, but text is not always rendered the same across different systems and platforms. Specifying <code>FontLookup.EMBEDDED_CFF</code> uses font outlines embedded in the published SWF file. Embedded fonts increase the size of the SWF file (sometimes dramatically), but text is consistently displayed in the chosen font.
   * <p>Legal values are flash.text.engine.FontLookup.DEVICE, flash.text.engine.FontLookup.EMBEDDED_CFF, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of DEVICE.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.FontLookup
   *
   */
  public function get fontLookup():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontLookup(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: The size of the text in pixels.
   * <p>Legal values are numbers from 1 to 720 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 12.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get fontSize():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontSize(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Style of text. May be <code>FontPosture.NORMAL</code>, for use in plain text, or <code>FontPosture.ITALIC</code> for italic. This property applies only to device fonts (<code>fontLookup</code> property is set to flash.text.engine.FontLookup.DEVICE).
   * <p>Legal values are flash.text.engine.FontPosture.NORMAL, flash.text.engine.FontPosture.ITALIC, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of NORMAL.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.FontPosture
   *
   */
  public function get fontStyle():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontStyle(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Weight of text. May be <code>FontWeight.NORMAL</code> for use in plain text, or <code>FontWeight.BOLD</code>. Applies only to device fonts (<code>fontLookup</code> property is set to flash.text.engine.FontLookup.DEVICE).
   * <p>Legal values are flash.text.engine.FontWeight.NORMAL, flash.text.engine.FontWeight.BOLD, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of NORMAL.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.FontWeight
   *
   */
  public function get fontWeight():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set fontWeight(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat properties applied directly to this element.
   * <p>Each element may have properties applied to it as part of its format. Properties applied to this element override properties inherited from the parent. Properties applied to this element will in turn be inherited by element's children if they are not overridden on the child. If no properties are applied to the element, this will be null.</p>
   * @see flashx.textLayout.formats.ITextLayoutFormat
   *
   */
  public function get format():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set format(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Assigns an identifying name to the element, making it possible to set a style for the element by referencing the <code>id</code>. For example, the following line sets the color for a SpanElement object that has an id of span1:
   * <listing>
   *          textFlow.getElementByID("span1").setStyle("color", 0xFF0000);
   *         </listing>
   * @see TextFlow#getElementByID()
   *
   */
  public function get id():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set id(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Rule used to justify text in a paragraph. Default value is <code>FormatValue.AUTO</code>, which justifies text based on the paragraph's <code>locale</code> property. For all languages except Japanese and Chinese, <code>FormatValue.AUTO</code> becomes <code>JustificationRule.SPACE</code>, which adds extra space to the space characters. For Japanese and Chinese, <code>FormatValue.AUTO</code> becomes <code>JustficationRule.EAST_ASIAN</code>. In part, justification changes the spacing of punctuation. In Roman text the comma and Japanese periods take a full character's width but in East Asian text only half of a character's width. Also, in the East Asian text the spacing between sequential punctuation marks becomes tighter, obeying traditional East Asian typographic conventions. Note, too, in the example below the leading that is applied to the second line of the paragraphs. In the East Asian version, the last two lines push left. In the Roman version, the second and following lines push left.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_justificationrule.png" /></p>
   * <p>Legal values are flashx.textLayout.formats.JustificationRule.EAST_ASIAN, flashx.textLayout.formats.JustificationRule.SPACE, flashx.textLayout.formats.FormatValue.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of flashx.textLayout.formats.FormatValue.AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.JustificationRule
   *
   */
  public function get justificationRule():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set justificationRule(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: The style used for justification of the paragraph. Used only in conjunction with a <code>justificationRule</code> setting of <code>JustificationRule.EAST_ASIAN</code>. Default value of <code>FormatValue.AUTO</code> is resolved to <code>JustificationStyle.PUSH_IN_KINSOKU</code> for all locales. The constants defined by the JustificationStyle class specify options for handling kinsoku characters, which are Japanese characters that cannot appear at either the beginning or end of a line. If you want looser text, specify <code>JustificationStyle.PUSH-OUT-ONLY</code>. If you want behavior that is like what you get with the <code>justificationRule</code> of <code>JustificationRule.SPACE</code>, use <code>JustificationStyle.PRIORITIZE-LEAST-ADJUSTMENT</code>.
   * <p>Legal values are flash.text.engine.JustificationStyle.PRIORITIZE_LEAST_ADJUSTMENT, flash.text.engine.JustificationStyle.PUSH_IN_KINSOKU, flash.text.engine.JustificationStyle.PUSH_OUT_ONLY, flashx.textLayout.formats.FormatValue.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of flashx.textLayout.formats.FormatValue.AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.JustificationStyle
   *
   */
  public function get justificationStyle():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set justificationStyle(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Kerning adjusts the pixels between certain character pairs to improve readability. Kerning is supported for all fonts with kerning tables.
   * <p>Legal values are flash.text.engine.Kerning.ON, flash.text.engine.Kerning.OFF, flash.text.engine.Kerning.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.Kerning
   *
   */
  public function get kerning():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set kerning(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Specifies the leading model, which is a combination of leading basis and leading direction. Leading basis is the baseline to which the <code>lineHeight</code> property refers. Leading direction determines whether the <code>lineHeight</code> property refers to the distance of a line's baseline from that of the line before it or the line after it. The default value of <code>FormatValue.AUTO</code> is resolved based on the paragraph's <code>locale</code> property. For Japanese and Chinese, it is <code>LeadingModel.IDEOGRAPHIC_TOP_DOWN</code> and for all others it is <code>LeadingModel.ROMAN_UP</code>.
   * <p>Leading Basis:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LB1.png" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LB2.png" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LB3.png" /></p>
   * <p>Leading Direction:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LD1.png" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LD2.png" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LD3.png" /></p>
   * <p>Legal values are flashx.textLayout.formats.LeadingModel.ROMAN_UP, flashx.textLayout.formats.LeadingModel.IDEOGRAPHIC_TOP_UP, flashx.textLayout.formats.LeadingModel.IDEOGRAPHIC_CENTER_UP, flashx.textLayout.formats.LeadingModel.IDEOGRAPHIC_TOP_DOWN, flashx.textLayout.formats.LeadingModel.IDEOGRAPHIC_CENTER_DOWN, flashx.textLayout.formats.LeadingModel.APPROXIMATE_TEXT_FIELD, flashx.textLayout.formats.LeadingModel.ASCENT_DESCENT_UP, flashx.textLayout.formats.LeadingModel.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.LeadingModel
   *
   */
  public function get leadingModel():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set leadingModel(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Controls which of the ligatures that are defined in the font may be used in the text. The ligatures that appear for each of these settings is dependent on the font. A ligature occurs where two or more letter-forms are joined as a single glyph. Ligatures usually replace consecutive characters sharing common components, such as the letter pairs 'fi', 'fl', or 'ae'. They are used with both Latin and Non-Latin character sets. The ligatures enabled by the values of the LigatureLevel class - <code>MINIMUM</code>, <code>COMMON</code>, <code>UNCOMMON</code>, and <code>EXOTIC</code> - are additive. Each value enables a new set of ligatures, but also includes those of the previous types.
   * <p><b>Note:</b> When working with Arabic or Syriac fonts, <code>ligatureLevel</code> must be set to MINIMUM or above.</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_ligatures.png" /></p>
   * <p>Legal values are flash.text.engine.LigatureLevel.MINIMUM, flash.text.engine.LigatureLevel.COMMON, flash.text.engine.LigatureLevel.UNCOMMON, flash.text.engine.LigatureLevel.EXOTIC, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of COMMON.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.LigatureLevel
   *
   */
  public function get ligatureLevel():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set ligatureLevel(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Controls word wrapping within the container (adopts default value if undefined during cascade). Text in the container may be set to fit the width of the container (<code>LineBreak.TO_FIT</code>), or can be set to break only at explicit return or line feed characters (<code>LineBreak.EXPLICIT</code>).
   * <p>Legal values are flashx.textLayout.formats.LineBreak.EXPLICIT, flashx.textLayout.formats.LineBreak.TO_FIT, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of TO_FIT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.LineBreak
   *
   */
  public function get lineBreak():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set lineBreak(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Leading controls for the text. The distance from the baseline of the previous or the next line (based on <code>LeadingModel</code>) to the baseline of the current line is equal to the maximum amount of the leading applied to * character in the line. This is either a number or a percent. If specifying a percent, enter a string value, like 140%.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_lineHeight1.jpg" /><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_lineHeight2.jpg" /></p>
   * <p>Legal values as a number are from -720 to 720.</p>
   * <p>Legal values as a percent are numbers from -1000% to 1000%.</p>
   * <p>Legal values include flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 120%.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get lineHeight():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set lineHeight(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: If <code>true</code>, applies strikethrough, a line drawn through the middle of the text.
   * <p>Legal values are true, false and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of false.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get lineThrough():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set lineThrough(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the formatting attributes used for links in active state, when the mouse is down on a link. This value will cascade down the hierarchy and apply to * links that are descendants. Equivalent to setStyle(linkActiveFormat,value). Expects a dictionary of properties. Converts an array of objects with key and value as members to a dictionary.
   */
  public function get linkActiveFormat():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set linkActiveFormat(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the formatting attributes used for links in hover state, when the mouse is within the bounds (rolling over) a link. This value will cascade down the hierarchy and apply to * links that are descendants. Equivalent to setStyle(linkHoverFormat,value). Expects a dictionary of properties. Converts an array of objects with key and value as members to a dictionary.
   */
  public function get linkHoverFormat():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set linkHoverFormat(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the formatting attributes used for links in normal state. This value will cascade down the hierarchy and apply to * links that are descendants. Equivalent to setStyle(linkNormalFormat,value). Expects a dictionary of properties. Converts an array of objects with key and value as members to a dictionary.
   */
  public function get linkNormalFormat():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set linkNormalFormat(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: The locale of the text. Controls case transformations and shaping. Standard locale identifiers as described in Unicode Technical Standard #35 are used. For example en, en_US and en-US are all English, ja is Japanese.
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of en.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get locale():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set locale(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Botttom inset in pixels (adopts default value if undefined during cascade). Space between the bottom edge of the container and the text. Value is a Number.
   * <p>With horizontal text, in scrollable containers with multiple columns, the first and following columns will show the padding as blank space at the bottom of the container, but for the last column, if the text doesn't all fit, you may have to scroll in order to see the padding.</p>
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get paddingBottom():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paddingBottom(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Left inset in pixels (adopts default value if undefined during cascade). Space between the left edge of the container and the text. Value is a Number.
   * <p>With vertical text, in scrollable containers with multiple columns, the first and following columns will show the padding as blank space at the end of the container, but for the last column, if the text doesn't all fit, you may have to scroll in order to see the padding.</p>
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get paddingLeft():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paddingLeft(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Right inset in pixels (adopts default value if undefined during cascade). Space between the right edge of the container and the text. Value is a Number.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get paddingRight():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paddingRight(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Top inset in pixels (adopts default value if undefined during cascade). Space between the top edge of the container and the text. Value is a Number.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get paddingTop():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paddingTop(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: A Number that specifies, in pixels, the amount to indent the paragraph's end edge. Refers to the right edge in left-to-right text and the left edge in right-to-left text.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get paragraphEndIndent():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paragraphEndIndent(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: A Number that specifies the amount of space, in pixels, to leave after the paragraph. Collapses in tandem with <code>paragraphSpaceBefore</code>.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get paragraphSpaceAfter():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paragraphSpaceAfter(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: A Number that specifies the amount of space, in pixels, to leave before the paragraph. Collapses in tandem with <code>paragraphSpaceAfter</code>.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get paragraphSpaceBefore():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paragraphSpaceBefore(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: A Number that specifies, in pixels, the amount to indent the paragraph's start edge. Refers to the left edge in left-to-right text and the right edge in right-to-left text.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get paragraphStartIndent():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paragraphStartIndent(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the parent of this FlowElement object. Every FlowElement has at most one parent.
   */
  public function get parent():FlowGroupElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the relative end of this FlowElement object in the parent. If the parent is null this is always equal to <code>textLength</code>. If the parent is not null, the value is the sum of the text lengths of this and all previous siblings, which is effectively the first character in the next FlowElement object.
   * @see FlowGroupElement
   * @see #textLength
   *
   */
  public function get parentRelativeEnd():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the relative start of this FlowElement object in the parent. If parent is null, this value is always zero. If parent is not null, the value is the sum of the text lengths of all previous siblings.
   * @see #textLength
   *
   */
  public function get parentRelativeStart():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: The rendering mode used for this text. Applies only to embedded fonts (<code>fontLookup</code> property is set to <code>FontLookup.EMBEDDED_CFF</code>).
   * <p>Legal values are flash.text.engine.RenderingMode.NORMAL, flash.text.engine.RenderingMode.CFF, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of CFF.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.RenderingMode
   *
   */
  public function get renderingMode():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set renderingMode(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Assigns an identifying class to the element, making it possible to set a style for the element by referencing the <code>styleName</code>.
   */
  public function get styleName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set styleName(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Specifies the tab stops associated with the paragraph. Setters can take an array of flashx.textLayout.formats.TabStopFormat, a condensed string representation, undefined, or <code>FormatValue.INHERIT</code>. The condensed string representation is always converted into an array of flashx.textLayout.formats.TabStopFormat.
   * <p>The string-based format is a list of tab stops, where each tab stop is delimited by one or more spaces.</p>
   * <p>A tab stop takes the following form: &lt;alignment type>&lt;alignment position>|&lt;alignment token>.</p>
   * <p>The alignment type is a single character, and can be S, E, C, or D (or lower-case equivalents). S or s for start, E or e for end, C or c for center, D or d for decimal. The alignment type is optional, and if its not specified will default to S.</p>
   * <p>The alignment position is a Number, and is specified according to FXG spec for Numbers (decimal or scientific notation). The alignment position is required.</p>
   * <p>The vertical bar is used to separate the alignment position from the alignment token, and should only be present if the alignment token is present.</p>
   * <p>The alignment token is optional if the alignment type is D, and should not be present if the alignment type is anything other than D. The alignment token may be &#42; sequence of characters terminated by the space that ends the tab stop (for the last tab stop, the terminating space is optional; end of alignment token is implied). A space may be part of the alignment token if it is escaped with a backslash (\ ). A backslash may be part of the alignment token if it is escaped with another backslash (\\). If the alignment type is D, and the alignment token is not specified, it will take on the default value of null.</p>
   * <p>If no tab stops are specified, a tab action defaults to the end of the line.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of null.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get tabStops():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set tabStops(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Alignment of lines in the paragraph relative to the container. <code>TextAlign.LEFT</code> aligns lines along the left edge of the container. <code>TextAlign.RIGHT</code> aligns on the right edge. <code>TextAlign.CENTER</code> positions the line equidistant from the left and right edges. <code>TextAlign.JUSTIFY</code> spreads the lines out so they fill the space. <code>TextAlign.START</code> is equivalent to setting left in left-to-right text, or right in right-to-left text. <code>TextAlign.END</code> is equivalent to setting right in left-to-right text, or left in right-to-left text.
   * <p>Legal values are flashx.textLayout.formats.TextAlign.LEFT, flashx.textLayout.formats.TextAlign.RIGHT, flashx.textLayout.formats.TextAlign.CENTER, flashx.textLayout.formats.TextAlign.JUSTIFY, flashx.textLayout.formats.TextAlign.START, flashx.textLayout.formats.TextAlign.END, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of START.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.TextAlign
   *
   */
  public function get textAlign():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textAlign(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Alignment of the last (or only) line in the paragraph relative to the container in justified text. If <code>textAlign</code> is set to <code>TextAlign.JUSTIFY</code>, <code>textAlignLast</code> specifies how the last line (or only line, if this is a one line block) is aligned. Values are similar to <code>textAlign</code>.
   * <p>Legal values are flashx.textLayout.formats.TextAlign.LEFT, flashx.textLayout.formats.TextAlign.RIGHT, flashx.textLayout.formats.TextAlign.CENTER, flashx.textLayout.formats.TextAlign.JUSTIFY, flashx.textLayout.formats.TextAlign.START, flashx.textLayout.formats.TextAlign.END, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of START.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.TextAlign
   *
   */
  public function get textAlignLast():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textAlignLast(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Alpha (transparency) value for the text. A value of 0 is fully transparent, and a value of 1 is fully opaque. Display objects with <code>textAlpha</code> set to 0 are active, even though they are invisible.
   * <p>Legal values are numbers from 0 to 1 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 1.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get textAlpha():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textAlpha(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Decoration on text. Use to apply underlining; default is none.
   * <p>Legal values are flashx.textLayout.formats.TextDecoration.NONE, flashx.textLayout.formats.TextDecoration.UNDERLINE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of NONE.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.TextDecoration
   *
   */
  public function get textDecoration():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textDecoration(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: A Number that specifies, in pixels, the amount to indent the first line of the paragraph. A negative indent will push the line into the margin, and possibly out of the container.
   * <p>Legal values are numbers from -1000 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get textIndent():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textIndent(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Specifies options for justifying text. Default value is <code>TextJustify.INTER_WORD</code>, meaning that extra space is added to the space characters. <code>TextJustify.DISTRIBUTE</code> adds extra space to space characters and between individual letters. Used only in conjunction with a <code>justificationRule</code> value of <code>JustificationRule.SPACE</code>.
   * <p>Legal values are flashx.textLayout.formats.TextJustify.INTER_WORD, flashx.textLayout.formats.TextJustify.DISTRIBUTE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of INTER_WORD.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.TextJustify
   *
   */
  public function get textJustify():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textJustify(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the total length of text owned by this FlowElement object and its children. If an element has no text, the value of <code>textLength</code> is usually zero.
   * <p>ParagraphElement objects have a final span with a paragraph terminator character for the last SpanElement object.The paragraph terminator is included in the value of the <code>textLength</code> of that SpanElement object and all its parents. It is not included in <code>text</code> property of the SpanElement object.</p>
   * @see #textLength
   *
   */
  public function get textLength():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Determines the number of degrees to rotate this text.
   * <p>Legal values are flash.text.engine.TextRotation.ROTATE_0, flash.text.engine.TextRotation.ROTATE_180, flash.text.engine.TextRotation.ROTATE_270, flash.text.engine.TextRotation.ROTATE_90, flash.text.engine.TextRotation.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.TextRotation
   *
   */
  public function get textRotation():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textRotation(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the tracking and is synonymous with the <code>trackingRight</code> property. Specified as a number of pixels or a percent of <code>fontSize</code>.
   * @see #trackingRight
   *
   */
  public function set tracking(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Number in pixels (or percent of <code>fontSize</code>, like 120%) indicating the amount of tracking (manual kerning) to be applied to the left of each character. If kerning is enabled, the <code>trackingLeft</code> value is added to the values in the kerning table for the font. If kerning is disabled, the <code>trackingLeft</code> value is used as a manual kerning value. Supports both positive and negative values.
   * <p>Legal values as a number are from -1000 to 1000.</p>
   * <p>Legal values as a percent are numbers from -1000% to 1000%.</p>
   * <p>Legal values include flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get trackingLeft():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set trackingLeft(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Number in pixels (or percent of <code>fontSize</code>, like 120%) indicating the amount of tracking (manual kerning) to be applied to the right of each character. If kerning is enabled, the <code>trackingRight</code> value is added to the values in the kerning table for the font. If kerning is disabled, the <code>trackingRight</code> value is used as a manual kerning value. Supports both positive and negative values.
   * <p>Legal values as a number are from -1000 to 1000.</p>
   * <p>Legal values as a percent are numbers from -1000% to 1000%.</p>
   * <p>Legal values include flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  public function get trackingRight():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set trackingRight(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: The type of typographic case used for this text. Here are some examples:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_typographiccase.png" /></p>
   * <p>Legal values are flashx.textLayout.formats.TLFTypographicCase.DEFAULT, flashx.textLayout.formats.TLFTypographicCase.CAPS_TO_SMALL_CAPS, flashx.textLayout.formats.TLFTypographicCase.UPPERCASE, flashx.textLayout.formats.TLFTypographicCase.LOWERCASE, flashx.textLayout.formats.TLFTypographicCase.LOWERCASE_TO_SMALL_CAPS, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of DEFAULT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.TLFTypographicCase
   *
   */
  public function get typographicCase():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set typographicCase(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Allows you to read and write user styles on a FlowElement object. Note that reading this property makes a copy of the user-styles dictionary.
   */
  public function get userStyles():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set userStyles(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Vertical alignment or justification (adopts default value if undefined during cascade). Determines how TextFlow elements align within the container.
   * <p>Legal values are flashx.textLayout.formats.VerticalAlign.TOP, flashx.textLayout.formats.VerticalAlign.MIDDLE, flashx.textLayout.formats.VerticalAlign.BOTTOM, flashx.textLayout.formats.VerticalAlign.JUSTIFY, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of TOP.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.VerticalAlign
   *
   */
  public function get verticalAlign():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set verticalAlign(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Collapses or preserves whitespace when importing text into a TextFlow. <code>WhiteSpaceCollapse.PRESERVE</code> retains all whitespace characters. <code>WhiteSpaceCollapse.COLLAPSE</code> removes newlines, tabs, and leading or trailing spaces within a block of imported text. Line break tags () and Unicode line separator characters are retained.
   * <p>Legal values are flashx.textLayout.formats.WhiteSpaceCollapse.PRESERVE, flashx.textLayout.formats.WhiteSpaceCollapse.COLLAPSE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of COLLAPSE.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flashx.textLayout.formats.WhiteSpaceCollapse
   *
   */
  public function get whiteSpaceCollapse():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set whiteSpaceCollapse(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Base class - invoking <code>new FlowElement()</code> throws an error exception.
   */
  public function FlowElement() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Clears the style specified by the <code>styleProp</code> parameter from this FlowElement object. Sets the value to <code>undefined</code>.
   * @param styleProp The name of the style to clear.
   *
   * @see #getStyle()
   * @see #setStyle()
   * @see #userStyles
   *
   * @example This example shows that <code>clearStyle()</code> sets the value of a style to undefined but that an inherited value can still be applied to the style.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_clearStyleExample extends Sprite{
   *         public function FlowElement_clearStyleExample()
   *         {
   *             // create a container and a TextFlow object
   *             var container:Sprite = new Sprite();
   *             this.addChild(container);
   *             var textFlow:TextFlow = new TextFlow();
   *
   *             // create a paragraph and set lineThrough style to true
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             paragraph.setStyle("color", 204);
   *             // create two spans of text
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *             var span3:SpanElement = new SpanElement();
   *             span1.text = "After calling clearStyle(), the value of color for span1 is: ";
   *             span2.text = " but the value of span1.getStyle() for color is ";
   *             span3.text = " because getStyle() returns the inherited value that's applied to the style.";
   *             span1.clearStyle("color");        // undefined
   *             span1.text += span1.color;
   *             paragraph.addChild(span1);
   *             paragraph.addChild(span2);
   *             span2.text += span1.getStyle("color");    //204
   *             paragraph.addChild(span3);
   *
   *             textFlow.addChild(paragraph);
   *             // add controller, then update controller to display text
   *             var firstController:ContainerController = new ContainerController(container, 200, 200 );
   *             textFlow.flowComposer.addController(firstController);
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function clearStyle(styleProp:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Makes a deep copy of this FlowElement object, including * children, copying the content between the two specified character positions and returning the copy as a FlowElement object.
   * <p>With no arguments, <code>deepCopy()</code> defaults to copying the entire element.</p>
   * @param relativeStart relative text position of the first character to copy. First position is 0.
   * @param relativeEnd relative text position of the last character to copy. A value of -1 indicates copy to end.
   *
   * @return the object created by the deep copy operation.
   *
   * @see #shallowCopy()
   *
   * @example This example creates a second paragraph as a deep copy of the first one, starting at offset 3, and displays the result.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_deepCopyExample extends Sprite{
   *         public function FlowElement_deepCopyExample()
   *         {
   *             // create a container and add it to the stage
   *             var container:Sprite = new Sprite();
   *             this.stage.addChild(container);
   *             // create TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *             // add text to the spans and spans to the paragraph
   *             span1.text = "Hello, ";
   *             span2.text = "World!";
   *             p.fontSize = 48;
   *             p.addChild(span1);
   *             p.addChild(span2);
   *             // make a deep copy of paragraph p, starting at relative offset 3; copy to end
   *             var p2:ParagraphElement = p.deepCopy(3, -1) as ParagraphElement;
   *             // add copied paragraph (p2) to textflow; add composer and controller
   *             // and update controller to display text
   *             textFlow.addChild(p2);
   *             var controller:ContainerController = new ContainerController(container, 200, 200 );
   *             textFlow.flowComposer.addController(controller);
   *             textFlow.flowComposer.updateAllControllers();    // 'lo, World!'
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function deepCopy(relativeStart:int = 0, relativeEnd:int = -1):FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Compare the userStyles of this with otherElement's userStyles.
   * @param otherElement the FlowElement object with which to compare user styles
   *
   * @return true if the user styles are equal; false otherwise.
   *
   * @see #getStyle()
   * @see #setStyle()
   * @see #userStyles
   *
   */
  public function equalUserStyles(otherElement:FlowElement):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the start location of the element in the text flow as an absolute index. The first character in the flow is position 0.
   * @return The index of the start of the element from the start of the TextFlow object.
   *
   * @see #parentRelativeStart
   * @see TextFlow
   *
   * @example This example uses two SpanElement objects to create a paragraph and calls <code>span2.getAbsoluteStart()</code> to obtain the starting position of span2.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_getAbsoluteStartExample extends Sprite
   *     {
   *         public function FlowElement_getAbsoluteStartExample()
   *         {
   *             // create a container and add it to the stage
   *             var container:Sprite = new Sprite();
   *             this.stage.addChild(container);
   *             // create TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *             // add text to the spans, spans to the paragraph, and paragraph to the text flow
   *             span1.text = "The start of span2 ";
   *             span2.text = "in this paragraph is at index: ";
   *             p.fontSize = 20;
   *             p.addChild(span1);
   *             p.addChild(span2);
   *             textFlow.addChild(p);
   *             // find the starting position of span2 and update controller to display text
   *             span2.text += span2.getAbsoluteStart();  // 19
   *             var controller:ContainerController = new ContainerController(container, 200, 200 );
   *             textFlow.flowComposer.addController(controller);
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function getAbsoluteStart():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the character at the specified position, relative to this FlowElement object. The first character is at relative position 0.
   * @param relativePosition The relative position of the character in this FlowElement object.
   *
   * @return String containing the character.
   *
   * @see #getCharCodeAtPosition()
   *
   * @example This example returns the character at relative position 27 in a SpanElement.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_getCharAtPositionExample extends Sprite
   *     {
   *         public function FlowElement_getCharAtPositionExample()
   *         {
   *             // create a container and a controller for it and add it to the stage
   *             var container:Sprite = new Sprite();
   *             var controller:ContainerController = new ContainerController( container, 400, 200 );
   *             this.stage.addChild( container );
   *
   *             //create TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *
   *             // add text to the two spans, calling getCharAtPosition() to return the
   *             // character at relative position 27 in the first span
   *             span1.text = "The character at offset 27 in this paragraph is: ";
   *             span2.text =  span1.getCharAtPosition(27) + ".";    // i
   *
   *             // add spans to paragraph p
   *             p.addChild(span1);
   *             p.addChild(span2);
   *
   *             // add paragraph p to text flow and update controller to display it
   *             textFlow.addChild(p);
   *             textFlow.flowComposer.addController( controller );
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function getCharAtPosition(relativePosition:int):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the character code at the specified position, relative to this FlowElement. The first character is at relative position 0.
   * @param relativePosition The relative position of the character in this FlowElement object.
   *
   * @return the Unicode value for the character at the specified position.
   *
   * @see #getCharAtPosition()
   *
   * @example This example returns the character code of the character at relative position 16 of a SpanElement.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_getCharCodeAtPositionExample extends Sprite
   *     {
   *         public function FlowElement_getCharCodeAtPositionExample()
   *         {
   *             // create a container and a controller for it and add it to the stage
   *             var container:Sprite = new Sprite();
   *             var controller:ContainerController = new ContainerController( container, 400, 200 );
   *             this.stage.addChild( container );
   *
   *             //create TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *
   *             // add text to spans; use getCharCodeAtPosition() to add char code from pos. 16
   *             // of span1
   *
   *             span1.text = "The character code at offset 16 in this paragraph is: ";
   *             span2.text =  String(span1.getCharCodeAtPosition(16)) + ".";    // 100 (d)
   *
   *             // add spans to paragraph p
   *             p.addChild(span1);
   *             p.addChild(span2);
   *
   *             // add paragraph p to text flow and update controller to display it
   *             textFlow.addChild(p);
   *             textFlow.flowComposer.addController( controller );
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function getCharCodeAtPosition(relativePosition:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the start of this element relative to an ancestor element. Assumes that the ancestor element is in the parent chain. If the ancestor element is the parent, this is the same as <code>this.parentRelativeStart</code>. If the ancestor element is the grandparent, this is the same as <code>parentRelativeStart</code> plus <code>parent.parentRelativeStart</code> and so on.
   * @param ancestorElement The element from which you want to find the relative start of this element.
   *
   * @return the offset of this element.
   *
   * @see #getAbsoluteStart()
   *
   * @example This example calls <code>getElementRelativeStart()</code> to determine the relative starting position of a link within a paragraph.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.LinkElement;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_getElementRelativeStartExample extends Sprite
   *     {
   *         public function FlowElement_getElementRelativeStartExample()
   *         {
   *             // create a container and a controller for it and add it to the stage
   *             var container:Sprite = new Sprite();
   *             var controller:ContainerController = new ContainerController( container, 400, 200 );
   *             this.stage.addChild( container );
   *
   *             //create TextFlow, ParagraphElement, SpanElement, and LinkElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var link:LinkElement = new LinkElement();
   *             var span2:SpanElement = new SpanElement();
   *             var span3:SpanElement = new SpanElement();
   *
   *             // add text to first two spans
   *             span1.text = "The relative start of the link SpanElement (";
   *             span2.text =  ") in this paragraph is at position ";
   *
   *             // create link span, add text and corresponding URL and add to link
   *             var linkSpan:SpanElement = new SpanElement();
   *             linkSpan.text = "Adobe's website";
   *             link.href = "http://www.adobe.com";
   *             link.addChild(linkSpan);
   *
   *             // add first span, link, and second span to paragraph p
   *             p.addChild(span1);
   *             p.addChild(link);
   *             p.addChild(span2);
   *
   *             // call getElementRelativeStart() to get start of linkSpan and add to span 3
   *             span3.text = String(linkSpan.getElementRelativeStart(p)) + ".";  // 44.
   *             p.addChild(span3);
   *
   *             // add paragraph p to text flow and update controller to display it
   *             textFlow.addChild(p);
   *             textFlow.flowComposer.addController( controller );
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function getElementRelativeStart(ancestorElement:FlowElement):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the next FlowElement sibling in the text flow hierarchy.
   * @return the next FlowElement object of the same type, or null if there is no sibling.
   *
   * @see #getPreviousSibling()
   *
   * @example This example uses two SpanElement objects to display Hello World and sets the result of <code>span2.getNextSibling()</code> to red.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_getNextSiblingExample extends Sprite
   *     {
   *         public function FlowElement_getNextSiblingExample()
   *         {
   *             // create a container and add it to the stage
   *             var container:Sprite = new Sprite();
   *             this.stage.addChild(container);
   *             // create TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *             var nextSpanElement:SpanElement = new SpanElement();
   *             // add text, set font size, add spans to paragraph, add paragraph to text flow
   *             span1.text = "Hello, ";
   *             span2.text = "World!";
   *             p.fontSize = 48;
   *             p.addChild(span1);
   *             p.addChild(span2);
   *             textFlow.addChild(p);
   *             // get next SpanElement for span1 and set its color to red; display text
   *             nextSpanElement = SpanElement(span1.getNextSibling());
   *             nextSpanElement.color = 0xCC0000;
   *             textFlow.flowComposer.addController(new ContainerController(this,stage.stageWidth,stage.stageHeight));
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function getNextSibling():FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the ParagraphElement object associated with this element. It looks up the text flow hierarchy and returns the first ParagraphElement object.
   * @return the ParagraphElement object that's associated with this FlowElement object.
   *
   * @see #getTextFlow()
   * @see ParagraphElement
   *
   * @example This example uses <code>getParagraph()</code> to return the ParagraphElement for a LinkElement object.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.LinkElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_getParagraphExample extends Sprite
   *     {
   *         public function FlowElement_getParagraphExample()
   *         {
   *             // create a container and a controller for it and add to the stage
   *             var container:Sprite = new Sprite();
   *             var controller:ContainerController = new ContainerController( container, 400, 200 );
   *             this.stage.addChild( container );
   *
   *             //create TextFlow, ParagraphElement, SpanElement, and LinkElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var link:LinkElement = new LinkElement();
   *             var span2:SpanElement = new SpanElement();
   *
   *             // add text to first span
   *             span1.text = "Text that includes a link to ";
   *
   *             // create link span, add text and corresponding URL and add to link
   *             var linkSpan:SpanElement = new SpanElement();
   *             linkSpan.text = "Adobe's website";
   *             link.href = "http://www.adobe.com";
   *             link.addChild(linkSpan);
   *
   *             // add text to second span and add spans and link to paragraph p
   *             span2.text = ". Notice that paragraph p2 is identical to paragraph p.";
   *             p.addChild(span1);
   *             p.addChild(link);
   *             p.addChild(span2);
   *
   *             // call getParagraph() to retrieve paragaph for LinkElement
   *             var p2:ParagraphElement = link.getParagraph();
   *
   *             // add paragraph p2 to the text flow and display it
   *             textFlow.addChild(p2);
   *             textFlow.flowComposer.addController( controller );
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function getParagraph():ParagraphElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the previous FlowElement sibling in the text flow hierarchy.
   * @return the previous FlowElement object of the same type, or null if there is no previous sibling.
   *
   * @see #getNextSibling()
   *
   * @example This example uses two SpanElement objects to display Hello World and sets the result of <code>span2.getPreviousSibling()</code> to red.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_getPreviousSiblingExample extends Sprite
   *     {
   *         public function FlowElement_getPreviousSiblingExample()
   *         {
   *             // create a container and add it to the stage
   *             var container:Sprite = new Sprite();
   *             this.stage.addChild(container);
   *             // create TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *             var prevSpanElement:SpanElement = new SpanElement();
   *             // add text, set font size, add spans to paragraph, add paragraph to text flow
   *             span1.text = "Hello, ";
   *             span2.text = "World!";
   *             p.fontSize = 48;
   *             p.addChild(span1);
   *             p.addChild(span2);
   *             textFlow.addChild(p);
   *             // get previous SpanElement for span2 and set its color to red; display text
   *             prevSpanElement = SpanElement(span2.getPreviousSibling());
   *             prevSpanElement.color = 0xCC0000;
   *             textFlow.flowComposer.addController(new ContainerController(this,400,200));
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function getPreviousSibling():FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the value of the style specified by the <code>styleProp</code> parameter, which specifies the style name and can include * user style name. Accesses an existing span, paragraph, text flow, or container style. Searches the parent tree if the style's value is <code>undefined</code> on a particular element.
   * @param styleProp The name of the style whose value is to be retrieved.
   *
   * @return The value of the specified style. The type varies depending on the type of the style being accessed. Returns <code>undefined</code> if the style is not set.
   *
   * @see #clearStyle()
   * @see #setStyle()
   * @see #userStyles
   *
   * @example This example calls <code>getStyle()</code> to determine whether the <code>lineThrough</code> style is applied to a span.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_getStyleExample extends Sprite
   *     {
   *         public function FlowElement_getStyleExample()
   *         {
   *             // create a container and a TextFlow object
   *             var container:Sprite = new Sprite();
   *             this.stage.addChild(container);
   *             var textFlow:TextFlow = new TextFlow();
   *
   *             // create a paragraph and set lineThrough style to true
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             paragraph.setStyle("lineThrough", true);
   *             // create two spans of text
   *             var p1Span1:SpanElement = new SpanElement();
   *             var p1Span2:SpanElement = new SpanElement();
   *             p1Span1.text = "It was a dark and stormy night. ";
   *             p1Span2.text = "The quick red fox jumped over the lazy brown dog.";
   *             paragraph.addChild(p1Span1);
   *             paragraph.addChild(p1Span2);
   *
   *             // call getStyle() for 1st span to see if lineThrough is on
   *             if(p1Span1.getStyle("lineThrough") == true)
   *                 p1Span1.setStyle("lineThrough", false)    // if so, turn it off for this span
   *             textFlow.addChild(paragraph);
   *
   *             // add composer and controller, then update controller to display text
   *             var controller:ContainerController = new ContainerController(container, 200, 200 );
   *             textFlow.flowComposer.addController(controller);
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function getStyle(styleProp:String):* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the specified range of text from a flow element.
   * @param relativeStart The starting position of the range of text to be retrieved, relative to the start of the FlowElement
   * @param relativeEnd The ending position of the range of text to be retrieved, relative to the start of the FlowElement, -1 for up to the end of the element
   * @param paragraphSeparator character to put between paragraphs
   *
   * @return The requested text.
   *
   */
  public function getText(relativeStart:int = 0, relativeEnd:int = -1, paragraphSeparator:String = " "):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Climbs the text flow hierarchy to return the root TextFlow object for the element.
   * @return The root TextFlow object for this FlowElement object.
   *
   * @see TextFlow
   *
   * @example This example uses <code>getTextFlow()</code> with a LinkElement object to return its root TextFlow.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.LinkElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_getTextFlowExample extends Sprite
   *     {
   *         public function FlowElement_getTextFlowExample()
   *         {
   *             // create a container and a controller for it and add to the stage
   *             var container:Sprite = new Sprite();
   *             var controller:ContainerController = new ContainerController(container, 400, 200);
   *             this.stage.addChild( container );
   *
   *             //create TextFlow, ParagraphElement, SpanElement, and LinkElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var link:LinkElement = new LinkElement();
   *             var span2:SpanElement = new SpanElement();
   *
   *             // add text to first span
   *             span1.text = "Text that includes a link to ";
   *
   *             // create link span, add text and corresponding URL and add to link
   *             var linkSpan:SpanElement = new SpanElement();
   *             linkSpan.text = "Adobe's website";
   *             link.href = "http://www.adobe.com";
   *             link.addChild(linkSpan);
   *
   *             // add text to second span, add spans and link to paragraph p, and
   *             // add paragraph p to textFlow
   *             span2.text = ". Notice that textFlow2 is identical to textFlow.";
   *             p.addChild(span1);
   *             p.addChild(link);
   *             p.addChild(span2);
   *             textFlow.addChild(p);
   *
   *             // use getTextFlow() with LinkElement to return its TextFlow; update controller
   *             // and display it
   *             var textFlow2:TextFlow = link.getTextFlow();
   *             textFlow2.flowComposer.addController( controller );
   *             textFlow2.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function getTextFlow():TextFlow {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Called for MXML objects after the implementing object has been created and all component properties specified on the MXML tag have been initialized.
   * @param document The MXML document that created the object.
   * @param id The identifier used by document to refer to this object.
   *
   */
  public function initialized(document:Object, id:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the style specified by the <code>styleProp</code> parameter to the value specified by the <code>newValue</code> parameter. You can set a span, paragraph, text flow, or container style, including * user name-value pair.
   * <p><b>Note:</b> If you assign a custom style, Text Layout Framework can import and export it but compiled MXML cannot support it.</p>
   * @param styleProp The name of the style to set.
   * @param newValue The value to which to set the style.
   *
   * @see #clearStyle()
   * @see #getStyle()
   * @see #userStyles
   *
   * @example This example calls <code>setStyle()</code> to set the color on a span and to set the font style for the text flow to italic.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flash.text.engine.FontPosture;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_setStyleExample extends Sprite
   *     {
   *         public function FlowElement_setStyleExample()
   *         {
   *             // create a container and a controller for it and add it to the stage
   *             var container:Sprite = new Sprite();
   *             var controller:ContainerController = new ContainerController( container, 400, 200 );
   *             this.stage.addChild( container );
   *
   *             // create TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *
   *             // add text to the spans
   *             span1.text = "Hello, ";
   *             span2.text = "World!";
   *
   *             // set the color style for span2 and add spans to paragraph p
   *             span2.setStyle("color", 0xCC0000);
   *             p.addChild(span1);
   *             p.addChild(span2);
   *
   *             // add paragraph to text flow, set fontStyle for the text flow to italic,
   *             // and update controller to display the paragraph
   *             textFlow.addChild(p);
   *             textFlow.setStyle("fontStyle", FontPosture.ITALIC);
   *             textFlow.flowComposer.addController( controller );
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function setStyle(styleProp:String, newValue:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Makes a copy of this FlowElement object, copying the content between two specified character positions. It returns the copy as a new FlowElement object. Unlike <code>deepCopy()</code>, <code>shallowCopy()</code> does not copy * of the children of this FlowElement object.
   * <p>With no arguments, <code>shallowCopy()</code> defaults to copying all of the content.</p>
   * @param relativeStart The relative text position of the first character to copy. First position is 0.
   * @param relativeEnd The relative text position of the last character to copy. A value of -1 indicates copy to end.
   *
   * @return the object created by the copy operation.
   *
   * @see #deepCopy()
   *
   * @example This example creates a second paragraph as a shallow copy of the first one and shows that the new paragraph has no children.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowElement_shallowCopyExample extends Sprite
   *     {
   *         public function FlowElement_shallowCopyExample()
   *         {
   *             // create a container and add it to the stage
   *             var container:Sprite = new Sprite();
   *             this.stage.addChild(container);
   *             // create TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *             var span3:SpanElement = new SpanElement();
   *             // add text to the spans, spans to the paragraph
   *             span1.text = "paragraph2 has  ";
   *             span3.text = " children, so it would display nothing."
   *             p.fontSize = 20;
   *             p.addChild(span1);
   *             p.addChild(span2);
   *             p.addChild(span3);
   *             // create paragraph p2 as a shallow copy of paragraph p
   *             var p2:ParagraphElement = p.shallowCopy(3, -1) as ParagraphElement;
   *             // add the number of children that p2 has to span2 for paragraph p
   *             span2.text += p2.numChildren;    // 0
   *             // add paragraph p to textFlow and update controller to display it
   *             textFlow.addChild(p);
   *             var controller:ContainerController = new ContainerController(container, 200, 200 );
   *             textFlow.flowComposer.addController(controller);
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function shallowCopy(relativeStart:int = 0, relativeEnd:int = -1):FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Splits this FlowElement object at the position specified by the <code>relativePosition</code> parameter, which is a relative position in the text for this element. This method splits only SpanElement and FlowGroupElement objects.
   * @param relativePosition the position at which to split the content of the original object, with the first position being 0.
   *
   * @return the new object, which contains the content of the original object, starting at the specified position.
   *
   * @throws RangeError if <code>relativePosition</code> is greater than <code>textLength</code>, or less than 0.
   *
   */
  public function splitAtPosition(relativePosition:int):FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
