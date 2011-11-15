package flashx.textLayout.formats {
/**
 * This interface provides read access to FlowElements-related properties.
 */
public interface ITextLayoutFormat {
  /**
   * Specifies the baseline to which the dominant baseline aligns. For example, if you set <code>dominantBaseline</code> to ASCENT, setting <code>alignmentBaseline</code> to DESCENT aligns the top of the text with the DESCENT baseline, or below the line. The largest element in the line generally determines the baselines.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_baselines.jpg" /></p>
   * <p>Legal values are flash.text.engine.TextBaseline.ROMAN, flash.text.engine.TextBaseline.ASCENT, flash.text.engine.TextBaseline.DESCENT, flash.text.engine.TextBaseline.IDEOGRAPHIC_TOP, flash.text.engine.TextBaseline.IDEOGRAPHIC_CENTER, flash.text.engine.TextBaseline.IDEOGRAPHIC_BOTTOM, flash.text.engine.TextBaseline.USE_DOMINANT_BASELINE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of USE_DOMINANT_BASELINE.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.TextBaseline
   *
   * @example This example sets <code>alignmentBaseline</code> to three different values - USE_DOMINANT_BASELINE, DESCENT, and IDEOGRAPHIC_CENTER - for three spans in a paragraph that has <code>dominantBaseline</code> set to ASCENT.
   * <listing>
   * package flashx.textLayout.formats.examples {
   *     import flash.display.Sprite;
   *     import flash.text.engine.TextBaseline;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.formats.TextAlign;
   *
   *     public class TextLayoutFormat_alignmentBaselineExample extends Sprite
   *     {
   *         public function TextLayoutFormat_alignmentBaselineExample()
   *         {
   *             // create text flow with dominantBaseline of ASCENT and 3 spans
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             paragraph.fontFamily = "Helvetica";
   *             paragraph.fontSize = 20;
   *             paragraph.dominantBaseline = TextBaseline.ASCENT
   *             var spanOne:SpanElement = new SpanElement();
   *             var spanTwo:SpanElement = new SpanElement();
   *             var spanThree:SpanElement = new SpanElement();
   *             spanOne.text = "Hello, World  ";
   *             spanTwo.text = "Hello, World  ";
   *             spanThree.text = "Hello, World";
   *
   *             // add spans to paragraph and specify alignment baseline for each
   *             paragraph.addChild(spanOne);
   *             spanOne.alignmentBaseline = TextBaseline.USE_DOMINANT_BASELINE;
   *             paragraph.addChild(spanTwo);
   *             spanTwo.alignmentBaseline = TextBaseline.DESCENT;
   *             paragraph.addChild(spanThree);
   *             spanThree.alignmentBaseline = TextBaseline.IDEOGRAPHIC_CENTER;
   *
   *             // add paragraph to TextFlow and set container position
   *             textFlow.addChild(paragraph);
   *             this.x = 50;
   *             this.y = 100;
   *
   *             // update controller to display on stage
   *             textFlow.flowComposer.addController(new ContainerController(this,400,300));
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  function get alignmentBaseline():*;

  /**
   * Alpha (transparency) value for the background (adopts default value if undefined during cascade). A value of 0 is fully transparent, and a value of 1 is fully opaque. Display objects with alpha set to 0 are active, even though they are invisible.
   * <p>Legal values are numbers from 0 to 1 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 1.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get backgroundAlpha():*;

  /**
   * Background color of the text (adopts default value if undefined during cascade). Can be either the constant value <code>BackgroundColor.TRANSPARENT</code>, or a hexadecimal value that specifies the three 8-bit RGB (red, green, blue) values; for example, 0xFF0000 is red and 0x00FF00 is green.
   * <p>Legal values as a string are flashx.textLayout.formats.BackgroundColor.TRANSPARENT, flashx.textLayout.formats.FormatValue.INHERIT and uints from 0x0 to 0xffffffff.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of TRANSPARENT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see BackgroundColor
   *
   */
  function get backgroundColor():*;

  /**
   * Amount to shift the baseline from the <code>dominantBaseline</code> value. Units are in pixels, or a percentage of <code>fontSize</code> (in which case, enter a string value, like 140%). Positive values shift the line up for horizontal text (right for vertical) and negative values shift it down for horizontal (left for vertical).
   * <p>Legal values are flashx.textLayout.formats.BaselineShift.SUPERSCRIPT, flashx.textLayout.formats.BaselineShift.SUBSCRIPT, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Legal values as a number are from -1000 to 1000.</p>
   * <p>Legal values as a percent are numbers from -1000 to 1000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see BaselineShift
   *
   */
  function get baselineShift():*;

  /**
   * Specifies a vertical or horizontal progression of line placement. Lines are either placed top-to-bottom (<code>BlockProgression.TB</code>, used for horizontal text) or right-to-left (<code>BlockProgression.RL</code>, used for vertical text).
   * <p>Legal values are flashx.textLayout.formats.BlockProgression.RL, flashx.textLayout.formats.BlockProgression.TB, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of TB.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see BlockProgression
   *
   */
  function get blockProgression():*;

  /**
   * Controls where lines are allowed to break when breaking wrapping text into multiple lines. Set to <code>BreakOpportunity.AUTO</code> to break text normally. Set to <code>BreakOpportunity.NONE</code> to <i>not</i> break the text unless the text would overrun the measure and there are no other places to break the line. Set to <code>BreakOpportunity.ANY</code> to allow the line to break anywhere, rather than just between words. Set to <code>BreakOpportunity.ALL</code> to have each typographic cluster put on a separate line (useful for text on a path).
   * <p>Legal values are flash.text.engine.BreakOpportunity.ALL, flash.text.engine.BreakOpportunity.ANY, flash.text.engine.BreakOpportunity.AUTO, flash.text.engine.BreakOpportunity.NONE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.BreakOpportunity
   *
   */
  function get breakOpportunity():*;

  /**
   * The type of CFF hinting used for this text. CFF hinting determines whether the Flash runtime forces strong horizontal stems to fit to a sub pixel grid or not. This property applies only if the <code>renderingMode</code> property is set to <code>RenderingMode.CFF</code>, and the font is embedded (<code>fontLookup</code> property is set to <code>FontLookup.EMBEDDED_CFF</code>). At small screen sizes, hinting produces a clear, legible text for human readers.
   * <p>Legal values are flash.text.engine.CFFHinting.NONE, flash.text.engine.CFFHinting.HORIZONTAL_STEM, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of HORIZONTAL_STEM.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.CFFHinting
   *
   */
  function get cffHinting():*;

  /**
   * Color of the text. A hexadecimal number that specifies three 8-bit RGB (red, green, blue) values; for example, 0xFF0000 is red and 0x00FF00 is green.
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get color():*;

  /**
   * Number of text columns (adopts default value if undefined during cascade). The column number overrides the other column settings. Value is an integer, or <code>FormatValue.AUTO</code> if unspecified. If <code>columnCount</code> is not specified,<code>columnWidth</code> is used to create as many columns as can fit in the container.
   * <p>Legal values as a string are flashx.textLayout.formats.FormatValue.AUTO, flashx.textLayout.formats.FormatValue.INHERIT and from ints from 1 to 50.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see FormatValue
   *
   */
  function get columnCount():*;

  /**
   * Specifies the amount of gutter space, in pixels, to leave between the columns (adopts default value if undefined during cascade). Value is a Number
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 20.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get columnGap():*;

  /**
   * Column width in pixels (adopts default value if undefined during cascade). If you specify the width of the columns, but not the count, TextLayout will create as many columns of that width as possible, given the container width and <code>columnGap</code> settings. Any remainder space is left after the last column. Value is a Number.
   * <p>Legal values as a string are flashx.textLayout.formats.FormatValue.AUTO, flashx.textLayout.formats.FormatValue.INHERIT and numbers from 0 to 8000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see FormatValue
   *
   */
  function get columnWidth():*;

  /**
   * The type of digit case used for this text. Setting the value to <code>DigitCase.OLD_STYLE</code> approximates lowercase letterforms with varying ascenders and descenders. The figures are proportionally spaced. This style is only available in selected typefaces, most commonly in a supplemental or expert font. The <code>DigitCase.LINING</code> setting has all-cap height and is typically monospaced to line up in charts.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_digitcase.gif" /></p>
   * <p>Legal values are flash.text.engine.DigitCase.DEFAULT, flash.text.engine.DigitCase.LINING, flash.text.engine.DigitCase.OLD_STYLE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of DEFAULT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.DigitCase
   *
   */
  function get digitCase():*;

  /**
   * Type of digit width used for this text. This can be <code>DigitWidth.PROPORTIONAL</code>, which looks best for individual numbers, or <code>DigitWidth.TABULAR</code>, which works best for numbers in tables, charts, and vertical rows.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_digitwidth.gif" /></p>
   * <p>Legal values are flash.text.engine.DigitWidth.DEFAULT, flash.text.engine.DigitWidth.PROPORTIONAL, flash.text.engine.DigitWidth.TABULAR, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of DEFAULT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.DigitWidth
   *
   */
  function get digitWidth():*;

  /**
   * Specifies the default bidirectional embedding level of the text in the text block. Left-to-right reading order, as in Latin-style scripts, or right-to-left reading order, as in Arabic or Hebrew. This property also affects column direction when it is applied at the container level. Columns can be either left-to-right or right-to-left, just like text. Below are some examples:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_direction.gif" /></p>
   * <p>Legal values are flashx.textLayout.formats.Direction.LTR, flashx.textLayout.formats.Direction.RTL, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of LTR.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see Direction
   *
   */
  function get direction():*;

  /**
   * Specifies which element baseline snaps to the <code>alignmentBaseline</code> to determine the vertical position of the element on the line. A value of <code>TextBaseline.AUTO</code> selects the dominant baseline based on the <code>locale</code> property of the parent paragraph. For Japanese and Chinese, the selected baseline value is <code>TextBaseline.IDEOGRAPHIC_CENTER</code>; for all others it is <code>TextBaseline.ROMAN</code>. These baseline choices are determined by the choice of font and the font size.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_baselines.jpg" /></p>
   * <p>Legal values are flashx.textLayout.formats.FormatValue.AUTO, flash.text.engine.TextBaseline.ROMAN, flash.text.engine.TextBaseline.ASCENT, flash.text.engine.TextBaseline.DESCENT, flash.text.engine.TextBaseline.IDEOGRAPHIC_TOP, flash.text.engine.TextBaseline.IDEOGRAPHIC_CENTER, flash.text.engine.TextBaseline.IDEOGRAPHIC_BOTTOM, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of flashx.textLayout.formats.FormatValue.AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.TextBaseline
   *
   */
  function get dominantBaseline():*;

  /**
   * Specifies the baseline position of the first line in the container. Which baseline this property refers to depends on the container-level locale. For Japanese and Chinese, it is <code>TextBaseline.IDEOGRAPHIC_BOTTOM</code>; for all others it is <code>TextBaseline.ROMAN</code>. The offset from the top inset (or right inset if <code>blockProgression</code> is RL) of the container to the baseline of the first line can be either <code>BaselineOffset.ASCENT</code>, meaning equal to the ascent of the line, <code>BaselineOffset.LINE_HEIGHT</code>, meaning equal to the height of that first line, or any fixed-value number to specify an absolute distance. <code>BaselineOffset.AUTO</code> aligns the ascent of the line with the container top inset.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO1.png" /><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO2.png" /><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO3.png" /><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_FBO4.png" /></p>
   * <p>Legal values as a string are flashx.textLayout.formats.BaselineOffset.AUTO, flashx.textLayout.formats.BaselineOffset.ASCENT, flashx.textLayout.formats.BaselineOffset.LINE_HEIGHT, flashx.textLayout.formats.FormatValue.INHERIT and numbers from 0 to 1000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see BaselineOffset
   *
   */
  function get firstBaselineOffset():*;

  /**
   * The name of the font to use, or a comma-separated list of font names. The Flash runtime renders the element with the first available font in the list. For example Arial, Helvetica, _sans causes the player to search for Arial, then Helvetica if Arial is not found, then _sans if neither is found.
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of Arial.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get fontFamily():*;

  /**
   * Font lookup to use. Specifying <code>FontLookup.DEVICE</code> uses the fonts installed on the system that is running the SWF file. Device fonts result in a smaller movie size, but text is not always rendered the same across different systems and platforms. Specifying <code>FontLookup.EMBEDDED_CFF</code> uses font outlines embedded in the published SWF file. Embedded fonts increase the size of the SWF file (sometimes dramatically), but text is consistently displayed in the chosen font.
   * <p>Legal values are flash.text.engine.FontLookup.DEVICE, flash.text.engine.FontLookup.EMBEDDED_CFF, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of DEVICE.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.FontLookup
   *
   */
  function get fontLookup():*;

  /**
   * The size of the text in pixels.
   * <p>Legal values are numbers from 1 to 720 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 12.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get fontSize():*;

  /**
   * Style of text. May be <code>FontPosture.NORMAL</code>, for use in plain text, or <code>FontPosture.ITALIC</code> for italic. This property applies only to device fonts (<code>fontLookup</code> property is set to flash.text.engine.FontLookup.DEVICE).
   * <p>Legal values are flash.text.engine.FontPosture.NORMAL, flash.text.engine.FontPosture.ITALIC, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of NORMAL.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.FontPosture
   *
   */
  function get fontStyle():*;

  /**
   * Weight of text. May be <code>FontWeight.NORMAL</code> for use in plain text, or <code>FontWeight.BOLD</code>. Applies only to device fonts (<code>fontLookup</code> property is set to flash.text.engine.FontLookup.DEVICE).
   * <p>Legal values are flash.text.engine.FontWeight.NORMAL, flash.text.engine.FontWeight.BOLD, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of NORMAL.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.FontWeight
   *
   */
  function get fontWeight():*;

  /**
   * Rule used to justify text in a paragraph. Default value is <code>FormatValue.AUTO</code>, which justifies text based on the paragraph's <code>locale</code> property. For all languages except Japanese and Chinese, <code>FormatValue.AUTO</code> becomes <code>JustificationRule.SPACE</code>, which adds extra space to the space characters. For Japanese and Chinese, <code>FormatValue.AUTO</code> becomes <code>JustficationRule.EAST_ASIAN</code>. In part, justification changes the spacing of punctuation. In Roman text the comma and Japanese periods take a full character's width but in East Asian text only half of a character's width. Also, in the East Asian text the spacing between sequential punctuation marks becomes tighter, obeying traditional East Asian typographic conventions. Note, too, in the example below the leading that is applied to the second line of the paragraphs. In the East Asian version, the last two lines push left. In the Roman version, the second and following lines push left.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_justificationrule.png" /></p>
   * <p>Legal values are flashx.textLayout.formats.JustificationRule.EAST_ASIAN, flashx.textLayout.formats.JustificationRule.SPACE, flashx.textLayout.formats.FormatValue.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of flashx.textLayout.formats.FormatValue.AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see JustificationRule
   *
   */
  function get justificationRule():*;

  /**
   * The style used for justification of the paragraph. Used only in conjunction with a <code>justificationRule</code> setting of <code>JustificationRule.EAST_ASIAN</code>. Default value of <code>FormatValue.AUTO</code> is resolved to <code>JustificationStyle.PUSH_IN_KINSOKU</code> for all locales. The constants defined by the JustificationStyle class specify options for handling kinsoku characters, which are Japanese characters that cannot appear at either the beginning or end of a line. If you want looser text, specify <code>JustificationStyle.PUSH-OUT-ONLY</code>. If you want behavior that is like what you get with the <code>justificationRule</code> of <code>JustificationRule.SPACE</code>, use <code>JustificationStyle.PRIORITIZE-LEAST-ADJUSTMENT</code>.
   * <p>Legal values are flash.text.engine.JustificationStyle.PRIORITIZE_LEAST_ADJUSTMENT, flash.text.engine.JustificationStyle.PUSH_IN_KINSOKU, flash.text.engine.JustificationStyle.PUSH_OUT_ONLY, flashx.textLayout.formats.FormatValue.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of flashx.textLayout.formats.FormatValue.AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.JustificationStyle
   *
   */
  function get justificationStyle():*;

  /**
   * Kerning adjusts the pixels between certain character pairs to improve readability. Kerning is supported for all fonts with kerning tables.
   * <p>Legal values are flash.text.engine.Kerning.ON, flash.text.engine.Kerning.OFF, flash.text.engine.Kerning.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.Kerning
   *
   */
  function get kerning():*;

  /**
   * Specifies the leading model, which is a combination of leading basis and leading direction. Leading basis is the baseline to which the <code>lineHeight</code> property refers. Leading direction determines whether the <code>lineHeight</code> property refers to the distance of a line's baseline from that of the line before it or the line after it. The default value of <code>FormatValue.AUTO</code> is resolved based on the paragraph's <code>locale</code> property. For Japanese and Chinese, it is <code>LeadingModel.IDEOGRAPHIC_TOP_DOWN</code> and for all others it is <code>LeadingModel.ROMAN_UP</code>.
   * <p>Leading Basis:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LB1.png" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LB2.png" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LB3.png" /></p>
   * <p>Leading Direction:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LD1.png" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LD2.png" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_LD3.png" /></p>
   * <p>Legal values are flashx.textLayout.formats.LeadingModel.ROMAN_UP, flashx.textLayout.formats.LeadingModel.IDEOGRAPHIC_TOP_UP, flashx.textLayout.formats.LeadingModel.IDEOGRAPHIC_CENTER_UP, flashx.textLayout.formats.LeadingModel.IDEOGRAPHIC_TOP_DOWN, flashx.textLayout.formats.LeadingModel.IDEOGRAPHIC_CENTER_DOWN, flashx.textLayout.formats.LeadingModel.APPROXIMATE_TEXT_FIELD, flashx.textLayout.formats.LeadingModel.ASCENT_DESCENT_UP, flashx.textLayout.formats.LeadingModel.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see LeadingModel
   *
   */
  function get leadingModel():*;

  /**
   * Controls which of the ligatures that are defined in the font may be used in the text. The ligatures that appear for each of these settings is dependent on the font. A ligature occurs where two or more letter-forms are joined as a single glyph. Ligatures usually replace consecutive characters sharing common components, such as the letter pairs 'fi', 'fl', or 'ae'. They are used with both Latin and Non-Latin character sets. The ligatures enabled by the values of the LigatureLevel class - <code>MINIMUM</code>, <code>COMMON</code>, <code>UNCOMMON</code>, and <code>EXOTIC</code> - are additive. Each value enables a new set of ligatures, but also includes those of the previous types.
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
  function get ligatureLevel():*;

  /**
   * Controls word wrapping within the container (adopts default value if undefined during cascade). Text in the container may be set to fit the width of the container (<code>LineBreak.TO_FIT</code>), or can be set to break only at explicit return or line feed characters (<code>LineBreak.EXPLICIT</code>).
   * <p>Legal values are flashx.textLayout.formats.LineBreak.EXPLICIT, flashx.textLayout.formats.LineBreak.TO_FIT, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of TO_FIT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see LineBreak
   *
   */
  function get lineBreak():*;

  /**
   * Leading controls for the text. The distance from the baseline of the previous or the next line (based on <code>LeadingModel</code>) to the baseline of the current line is equal to the maximum amount of the leading applied to any character in the line. This is either a number or a percent. If specifying a percent, enter a string value, like 140%.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_lineHeight1.jpg" /><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_lineHeight2.jpg" /></p>
   * <p>Legal values as a number are from -720 to 720.</p>
   * <p>Legal values as a percent are numbers from -1000% to 1000%.</p>
   * <p>Legal values include flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 120%.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get lineHeight():*;

  /**
   * If <code>true</code>, applies strikethrough, a line drawn through the middle of the text.
   * <p>Legal values are true, false and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of false.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get lineThrough():*;

  /**
   * The locale of the text. Controls case transformations and shaping. Standard locale identifiers as described in Unicode Technical Standard #35 are used. For example en, en_US and en-US are all English, ja is Japanese.
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of en.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get locale():*;

  /**
   * Botttom inset in pixels (adopts default value if undefined during cascade). Space between the bottom edge of the container and the text. Value is a Number.
   * <p>With horizontal text, in scrollable containers with multiple columns, the first and following columns will show the padding as blank space at the bottom of the container, but for the last column, if the text doesn't all fit, you may have to scroll in order to see the padding.</p>
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get paddingBottom():*;

  /**
   * Left inset in pixels (adopts default value if undefined during cascade). Space between the left edge of the container and the text. Value is a Number.
   * <p>With vertical text, in scrollable containers with multiple columns, the first and following columns will show the padding as blank space at the end of the container, but for the last column, if the text doesn't all fit, you may have to scroll in order to see the padding.</p>
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get paddingLeft():*;

  /**
   * Right inset in pixels (adopts default value if undefined during cascade). Space between the right edge of the container and the text. Value is a Number.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get paddingRight():*;

  /**
   * Top inset in pixels (adopts default value if undefined during cascade). Space between the top edge of the container and the text. Value is a Number.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get paddingTop():*;

  /**
   * A Number that specifies, in pixels, the amount to indent the paragraph's end edge. Refers to the right edge in left-to-right text and the left edge in right-to-left text.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get paragraphEndIndent():*;

  /**
   * A Number that specifies the amount of space, in pixels, to leave after the paragraph. Collapses in tandem with <code>paragraphSpaceBefore</code>.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get paragraphSpaceAfter():*;

  /**
   * A Number that specifies the amount of space, in pixels, to leave before the paragraph. Collapses in tandem with <code>paragraphSpaceAfter</code>.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get paragraphSpaceBefore():*;

  /**
   * A Number that specifies, in pixels, the amount to indent the paragraph's start edge. Refers to the left edge in left-to-right text and the right edge in right-to-left text.
   * <p>Legal values are numbers from 0 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get paragraphStartIndent():*;

  /**
   * The rendering mode used for this text. Applies only to embedded fonts (<code>fontLookup</code> property is set to <code>FontLookup.EMBEDDED_CFF</code>).
   * <p>Legal values are flash.text.engine.RenderingMode.NORMAL, flash.text.engine.RenderingMode.CFF, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of CFF.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.RenderingMode
   *
   */
  function get renderingMode():*;

  /**
   * Specifies the tab stops associated with the paragraph. Setters can take an array of flashx.textLayout.formats.TabStopFormat, a condensed string representation, undefined, or <code>FormatValue.INHERIT</code>. The condensed string representation is always converted into an array of flashx.textLayout.formats.TabStopFormat.
   * <p>The string-based format is a list of tab stops, where each tab stop is delimited by one or more spaces.</p>
   * <p>A tab stop takes the following form: <alignment type><alignment position>|<alignment token>.</p>
   * <p>The alignment type is a single character, and can be S, E, C, or D (or lower-case equivalents). S or s for start, E or e for end, C or c for center, D or d for decimal. The alignment type is optional, and if its not specified will default to S.</p>
   * <p>The alignment position is a Number, and is specified according to FXG spec for Numbers (decimal or scientific notation). The alignment position is required.</p>
   * <p>The vertical bar is used to separate the alignment position from the alignment token, and should only be present if the alignment token is present.</p>
   * <p>The alignment token is optional if the alignment type is D, and should not be present if the alignment type is anything other than D. The alignment token may be any sequence of characters terminated by the space that ends the tab stop (for the last tab stop, the terminating space is optional; end of alignment token is implied). A space may be part of the alignment token if it is escaped with a backslash (\ ). A backslash may be part of the alignment token if it is escaped with another backslash (\\). If the alignment type is D, and the alignment token is not specified, it will take on the default value of null.</p>
   * <p>If no tab stops are specified, a tab action defaults to the end of the line.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of null.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get tabStops():*;

  /**
   * Alignment of lines in the paragraph relative to the container. <code>TextAlign.LEFT</code> aligns lines along the left edge of the container. <code>TextAlign.RIGHT</code> aligns on the right edge. <code>TextAlign.CENTER</code> positions the line equidistant from the left and right edges. <code>TextAlign.JUSTIFY</code> spreads the lines out so they fill the space. <code>TextAlign.START</code> is equivalent to setting left in left-to-right text, or right in right-to-left text. <code>TextAlign.END</code> is equivalent to setting right in left-to-right text, or left in right-to-left text.
   * <p>Legal values are flashx.textLayout.formats.TextAlign.LEFT, flashx.textLayout.formats.TextAlign.RIGHT, flashx.textLayout.formats.TextAlign.CENTER, flashx.textLayout.formats.TextAlign.JUSTIFY, flashx.textLayout.formats.TextAlign.START, flashx.textLayout.formats.TextAlign.END, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of START.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see TextAlign
   *
   */
  function get textAlign():*;

  /**
   * Alignment of the last (or only) line in the paragraph relative to the container in justified text. If <code>textAlign</code> is set to <code>TextAlign.JUSTIFY</code>, <code>textAlignLast</code> specifies how the last line (or only line, if this is a one line block) is aligned. Values are similar to <code>textAlign</code>.
   * <p>Legal values are flashx.textLayout.formats.TextAlign.LEFT, flashx.textLayout.formats.TextAlign.RIGHT, flashx.textLayout.formats.TextAlign.CENTER, flashx.textLayout.formats.TextAlign.JUSTIFY, flashx.textLayout.formats.TextAlign.START, flashx.textLayout.formats.TextAlign.END, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of START.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see TextAlign
   *
   */
  function get textAlignLast():*;

  /**
   * Alpha (transparency) value for the text. A value of 0 is fully transparent, and a value of 1 is fully opaque. Display objects with <code>textAlpha</code> set to 0 are active, even though they are invisible.
   * <p>Legal values are numbers from 0 to 1 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 1.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get textAlpha():*;

  /**
   * Decoration on text. Use to apply underlining; default is none.
   * <p>Legal values are flashx.textLayout.formats.TextDecoration.NONE, flashx.textLayout.formats.TextDecoration.UNDERLINE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of NONE.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see TextDecoration
   *
   */
  function get textDecoration():*;

  /**
   * A Number that specifies, in pixels, the amount to indent the first line of the paragraph. A negative indent will push the line into the margin, and possibly out of the container.
   * <p>Legal values are numbers from -1000 to 1000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get textIndent():*;

  /**
   * Specifies options for justifying text. Default value is <code>TextJustify.INTER_WORD</code>, meaning that extra space is added to the space characters. <code>TextJustify.DISTRIBUTE</code> adds extra space to space characters and between individual letters. Used only in conjunction with a <code>justificationRule</code> value of <code>JustificationRule.SPACE</code>.
   * <p>Legal values are flashx.textLayout.formats.TextJustify.INTER_WORD, flashx.textLayout.formats.TextJustify.DISTRIBUTE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of INTER_WORD.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see TextJustify
   *
   */
  function get textJustify():*;

  /**
   * Determines the number of degrees to rotate this text.
   * <p>Legal values are flash.text.engine.TextRotation.ROTATE_0, flash.text.engine.TextRotation.ROTATE_180, flash.text.engine.TextRotation.ROTATE_270, flash.text.engine.TextRotation.ROTATE_90, flash.text.engine.TextRotation.AUTO, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of AUTO.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see flash.text.engine.TextRotation
   *
   */
  function get textRotation():*;

  /**
   * Number in pixels (or percent of <code>fontSize</code>, like 120%) indicating the amount of tracking (manual kerning) to be applied to the left of each character. If kerning is enabled, the <code>trackingLeft</code> value is added to the values in the kerning table for the font. If kerning is disabled, the <code>trackingLeft</code> value is used as a manual kerning value. Supports both positive and negative values.
   * <p>Legal values as a number are from -1000 to 1000.</p>
   * <p>Legal values as a percent are numbers from -1000% to 1000%.</p>
   * <p>Legal values include flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get trackingLeft():*;

  /**
   * Number in pixels (or percent of <code>fontSize</code>, like 120%) indicating the amount of tracking (manual kerning) to be applied to the right of each character. If kerning is enabled, the <code>trackingRight</code> value is added to the values in the kerning table for the font. If kerning is disabled, the <code>trackingRight</code> value is used as a manual kerning value. Supports both positive and negative values.
   * <p>Legal values as a number are from -1000 to 1000.</p>
   * <p>Legal values as a percent are numbers from -1000% to 1000%.</p>
   * <p>Legal values include flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get trackingRight():*;

  /**
   * The type of typographic case used for this text. Here are some examples:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_typographiccase.png" /></p>
   * <p>Legal values are flashx.textLayout.formats.TLFTypographicCase.DEFAULT, flashx.textLayout.formats.TLFTypographicCase.CAPS_TO_SMALL_CAPS, flashx.textLayout.formats.TLFTypographicCase.UPPERCASE, flashx.textLayout.formats.TLFTypographicCase.LOWERCASE, flashx.textLayout.formats.TLFTypographicCase.LOWERCASE_TO_SMALL_CAPS, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of DEFAULT.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see TLFTypographicCase
   *
   */
  function get typographicCase():*;

  /**
   * Vertical alignment or justification (adopts default value if undefined during cascade). Determines how TextFlow elements align within the container.
   * <p>Legal values are flashx.textLayout.formats.VerticalAlign.TOP, flashx.textLayout.formats.VerticalAlign.MIDDLE, flashx.textLayout.formats.VerticalAlign.BOTTOM, flashx.textLayout.formats.VerticalAlign.JUSTIFY, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of TOP.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see VerticalAlign
   *
   */
  function get verticalAlign():*;

  /**
   * Collapses or preserves whitespace when importing text into a TextFlow. <code>WhiteSpaceCollapse.PRESERVE</code> retains all whitespace characters. <code>WhiteSpaceCollapse.COLLAPSE</code> removes newlines, tabs, and leading or trailing spaces within a block of imported text. Line break tags () and Unicode line separator characters are retained.
   * <p>Legal values are flashx.textLayout.formats.WhiteSpaceCollapse.PRESERVE, flashx.textLayout.formats.WhiteSpaceCollapse.COLLAPSE, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will inherit its value from an ancestor. If no ancestor has set this property, it will have a value of COLLAPSE.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see WhiteSpaceCollapse
   *
   */
  function get whiteSpaceCollapse():*;
}
}
