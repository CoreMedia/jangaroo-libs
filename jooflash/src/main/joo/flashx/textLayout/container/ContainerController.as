package flashx.textLayout.container {
import flash.display.DisplayObjectContainer;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.ContextMenuEvent;
import flash.events.Event;
import flash.events.FocusEvent;
import flash.events.IMEEvent;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.events.TextEvent;
import flash.geom.Rectangle;
import flash.text.engine.TextLine;
import flash.ui.ContextMenu;

import flashx.textLayout.compose.IFlowComposer;
import flashx.textLayout.edit.IInteractionEventHandler;
import flashx.textLayout.edit.ISelectionManager;
import flashx.textLayout.elements.ContainerFormattedElement;
import flashx.textLayout.elements.TextFlow;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The ContainerController class defines the relationship between a TextFlow object and a container. A TextFlow may have one or more rectangular areas that can hold text; the text is said to be flowing through the containers. Each container is a Sprite that is the parent DisplayObject for the TextLines. Each container has a ContainerController that manages the container; the controller holds the target width and height for the text area, populates the container with TextLines, and handles scrolling. A controller also has a format associated with it that allows some formatting attributes to be applied to the text in the container. This allows, for instance, a TextFlow to have one container where the text appears in a single column, and a second container in the same TextFlow with two column text. Not all formatting attributes that can be applied to the container will affect the text; only the ones that affect container-level layout. The diagram below illustrates the relationship between the TextFlow, its flowComposer, and the display list.
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_multiController.gif" /></p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/container/ContainerController.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.compose.IFlowComposer
 * @see flashx.textLayout.elements.TextFlow
 *
 */
public class ContainerController implements IInteractionEventHandler, ITextLayoutFormat, ISandboxSupport {
  /**
   * Returns the first character in the container. If this is not the first container in the flow, this value is updated when the text is composed, that is when the IFlowComposer's <code>compose()</code> or <code>updateAllControllers()</code> methods are called.
   * @see flashx.textLayout.compose.IFlowComposer
   *
   */
  public function get absoluteStart():int {
    throw new Error('not implemented'); // TODO: implement!
  }

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
   * Returns a ColumnState object, which describes the number and characteristics of columns in the container. These values are updated when the text is recomposed, either as a result of <code>IFlowComposer.compose()</code> or <code>IFlowComposer.updateAllControllers()</code>.
   * @see ColumnState
   *
   */
  public function get columnState():ColumnState {
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
   * Returns the vertical extent allowed for text inside the container. The value is specified in pixels.
   * @see #setCompositionSize()
   *
   */
  public function get compositionHeight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the horizontal extent allowed for text inside the container. The value is specified in pixels.
   * @see #setCompositionSize()
   *
   */
  public function get compositionWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns an ITextLayoutFormat instance with the attributes applied to this container, including the attributes inherited from its root element.
   * @see #rootElement
   *
   */
  public function get computedFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the container display object that holds the text lines for this ContainerController instance.
   * @see #ContainerController()
   *
   */
  public function get container():Sprite {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   *
   */
  public static function get containerControllerInitialFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public static function set containerControllerInitialFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the <code>coreStyles</code> on this ContainerController. Note that the getter makes a copy of the core styles dictionary. The coreStyles object encapsulates those formats that are defined by TextLayoutFormat. The <code>coreStyles</code> object consists of an array of <i>stylename-value</i> pairs.
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
   * Returns the flow composer object that composes and highlights text into the container that this controller manages.
   * @see flashx.textLayout.compose.IFlowComposer
   *
   */
  public function get flowComposer():IFlowComposer {
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
   * Stores the ITextLayoutFormat object that contains the attributes for this container. The controller inherits the container properties from the TextFlow of which it is part. This property allows different controllers in the same text flow to have, for example, different column settings or padding.
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
   * Specifies the horizontal scrolling policy, which you can set by assigning one of the constants of the ScrollPolicy class: ON, OFF, or AUTO.
   * @see ScrollPolicy
   *
   */
  public function get horizontalScrollPolicy():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set horizontalScrollPolicy(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the current horizontal scroll location on the stage. The value specifies the number of pixels from the left.
   */
  public function get horizontalScrollPosition():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set horizontalScrollPosition(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The InteractionManager associated with this TextFlow object.
   * <p>Controls all selection and editing on the text. If the TextFlow is not selectable, the interactionManager is null. To make the TextFlow editable, assign a interactionManager that is both an ISelectionManager and an IEditManager. To make a TextFlow that is read-only and allows selection, assign a interactionManager that is an ISelectionManager only.</p>
   * @see flashx.textLayout.elements.TextFlow#interactionManager
   *
   */
  public function get interactionManager():ISelectionManager {
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
   * Returns the root element that appears in the container. The root element could be a DivElement or TextFlow instance, for example.
   * @see flashx.textLayout.elements.ContainerFormattedElement
   * @see flashx.textLayout.elements.DivElement
   * @see flashx.textLayout.elements.TextFlow
   *
   */
  public function get rootElement():ContainerFormattedElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextLayoutFormat: Specifies the tab stops associated with the paragraph. Setters can take an array of flashx.textLayout.formats.TabStopFormat, a condensed string representation, undefined, or <code>FormatValue.INHERIT</code>. The condensed string representation is always converted into an array of flashx.textLayout.formats.TabStopFormat.
   * <p>The string-based format is a list of tab stops, where each tab stop is delimited by one or more spaces.</p>
   * <p>A tab stop takes the following form: <alignment type><alignment position>|<alignment token>.</p>
   * <p>The alignment type is a single character, and can be S, E, C, or D (or lower-case equivalents). S or s for start, E or e for end, C or c for center, D or d for decimal. The alignment type is optional, and if its not specified will default to S.</p>
   * <p>The alignment position is a Number, and is specified according to FXG spec for Numbers (decimal or scientific notation). The alignment position is required.</p>
   * <p>The vertical bar is used to separate the alignment position from the alignment token, and should only be present if the alignment token is present.</p>
   * <p>The alignment token is optional if the alignment type is D, and should not be present if the alignment type is anything other than D. The alignment token may be * sequence of characters terminated by the space that ends the tab stop (for the last tab stop, the terminating space is optional; end of alignment token is implied). A space may be part of the alignment token if it is escaped with a backslash (\ ). A backslash may be part of the alignment token if it is escaped with another backslash (\\). If the alignment type is D, and the alignment token is not specified, it will take on the default value of null.</p>
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
   * Returns the TextFlow object whose content appears in the container. Either the <code>textFlow</code> and <code>rootElement</code> values are the same, or this is the root element's TextFlow object. For example, if the container's root element is a DivElement, the value would be the TextFlow object to which the DivElement belongs.
   * @see flashx.textLayout.elements.TextFlow
   *
   */
  public function get textFlow():TextFlow {
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
   * Returns the total number of characters in the container. This can include text that is not currently in view, if the container is scrollable. This value is updated when the text is composed (when the IFlowComposer's <code>compose()</code> or <code>updateAllControllers()</code> methods are called).
   * @see flashx.textLayout.compose.IFlowComposer
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
   * The <code>userStyles</code> object for a ContainerController instance. The getter makes a copy of the <code>userStyles</code> object, which is an array of <i>stylename-value</i> pairs.
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
   * Specifies the vertical scrolling policy, which you can set by assigning one of the constants of the ScrollPolicy class: ON, OFF, or, AUTO.
   * @see ScrollPolicy
   *
   */
  public function get verticalScrollPolicy():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set verticalScrollPolicy(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the current vertical scroll location on the stage. The value specifies the number of pixels from the top.
   */
  public function get verticalScrollPosition():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set verticalScrollPosition(value:Number):void {
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
   * Constructor - creates a ContainerController instance. The ContainerController has a default <code>compositionWidth</code> and <code>compositionHeight</code> so that some text appears in the container if you don't specify its width height.
   * @param container The DisplayObjectContainer in which to manage the text lines.
   * @param compositionWidth The initial width for composing text in the container.
   * @param compositionHeight The initial height for composing text in the container.
   *
   */
  public function ContainerController(container:Sprite, compositionWidth:Number = 100, compositionHeight:Number = 100) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>Event.ACTIVATE</code> event when the client manages events.
   * @param event The Event object.
   *
   * @see flash.events.Event#ACTIVATE
   *
   * @example This example extends ContainerController to override its activateHandler() method with a custom activateHandler() method. The example requires an application that triggers the activateHandler() method.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.display.Sprite;
   *      import flash.events.Event;
   *      import flashx.textLayout.container.ContainerController;
   *
   *     public class ContainerController_activateHandlerExample extends ContainerController
   *     {
   *         public function ContainerController_activateHandlerExample(container:Sprite, compositionWidth:Number=100, compositionHeight:Number=100)
   *         {
   *             super(container, compositionWidth, compositionHeight);
   *         }
   *         override public function activateHandler(event:Event):void
   *         {
   *             // run the TLF handler for the activate event
   *             super.activateHandler(event);
   *             // and add your own code for the event
   *             trace("You are in activateHandler()");
   *         }
   *     }
   * }
   * </listing>
   */
  public function activateHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a <code>flash.display.Shape</code> object on which background shapes (such as background color) are drawn. The default implementation of this method, which may be overriden, adds the object to <code>container</code> just before the first <code>flash.text.engine.TextLine</code> child, if one exists, and after the last exisiting child otherwise.
   * @param shape <code>flash.display.Shape</code> object to add
   *
   * @see flash.display.Shape
   * @see flash.text.engine.TextLine
   * @see #container
   *
   */
  protected function addBackgroundShape(shape:Shape):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a <code>flash.display.DisplayObjectContainer</code> object to which selection shapes (such as block selection highlight, cursor etc.) are added. The default implementation of this method, which may be overriden, has the following behavior: The object is added just before first <code>flash.text.engine.TextLine</code> child of <code>container</code> if one exists and the object is opaque and has normal blend mode. In all other cases, it is added as the last child of <code>container</code>.
   * @param selectionContainer <code>flash.display.DisplayObjectContainer</code> object to add
   *
   * @see flash.display.DisplayObjectContainer
   * @see flash.text.engine.TextLine
   * @see #container
   *
   */
  protected function addSelectionContainer(selectionContainer:DisplayObjectContainer):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a <code>flash.text.engine.TextLine</code> object as a descendant of <code>container</code>. The default implementation of this method, which may be overriden, adds the object as a direct child of <code>container</code> at the specified index.
   * @param textLine the <code>flash.text.engine.TextLine</code> object to add
   * @param index insertion index of the text line in its parent
   *
   * @see flash.text.engine.TextLine
   * @see #container
   *
   */
  protected function addTextLine(textLine:TextLine, index:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Handle a scroll event during a "drag" selection.
   * @param mouseX The horizontal position of the mouse cursor on the stage.
   * @param mouseY The vertical position of the mouse cursor on the stage.
   *
   */
  public function autoScrollIfNecessary(mouseX:int, mouseY:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Called to request clients to begin the forwarding of mouseup and mousemove events from outside a security sandbox.
   */
  public function beginMouseCapture():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Clears the style specified by <code>styleProp</code> from this FlowElement. Sets the value to <code>undefined</code>.
   * @param styleProp <code>styleProp:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   */
  public function clearStyle(styleProp:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a context menu for the ContainerController. Use the methods of the ContextMenu class to add items to the menu.
   * <p>You can override this method to define a custom context menu.</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/ui/ContextMenu.html">ContextMenu</a></code>
   *
   * @see flash.ui.ContextMenu
   *
   */
  protected function createContextMenu():ContextMenu {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>Event.DEACTIVATE</code> event when the client manages events.
   * @param event The Event object.
   *
   * @see flash.events.Event#DEACTIVATE
   *
   */
  public function deactivateHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes an edit event (CUT, COPY, PASTE, SELECT_ALL) when the client manages events.
   * @param event Event object.
   *
   * @see flash.events.Event
   *
   * @example This example extends ContainerController to override its editHandler() method with a custom editHandler() method. The example requires an application that triggers the editHandler() method.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.events.Event;
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class ContainerController_editHandlerExample extends ContainerController
   *     {
   *         public function ContainerController_editHandlerExample(container:Sprite, compositionWidth:Number=100, compositionHeight:Number=100)
   *         {
   *             super(container, compositionWidth, compositionHeight);
   *         }
   *         override public function editHandler(event:Event):void
   *         {
   *             // run the TLF handler for the focus event
   *             super.editHandler(event);
   *             // and add your own code for the event
   *             trace("You are in editHandler()");
   *         }
   *     }
   * }
   * </listing>
   */
  public function editHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Called to inform clients that the the forwarding of mouseup and mousemove events from outside a security sandbox is no longer needed.
   */
  public function endMouseCapture():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>FocusEvent.KEY_FOCUS_CHANGE</code> and <code>FocusEvent.MOUSE_FOCUS_CHANGE</code> events when the client manages events.
   * @param event The FocusEvent object.
   *
   * @see flash.events.FocusEvent#KEY_FOCUS_CHANGE
   * @see flash.events.FocusEvent#MOUSE_FOCUS_CHANGE
   *
   */
  public function focusChangeHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>FocusEvent.FOCUS_IN</code> event when the client manages events.
   * @param event The FocusEvent object.
   *
   * @see flash.events.FocusEvent#FOCUS_IN
   *
   * @example This example extends ContainerController to override its focusInHandler() method with a custom focusInHandler() method. The example requires an application that triggers the focusInHandler() method.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.events.FocusEvent;
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class ContainerController_focusInHandlerExample extends ContainerController
   *     {
   *         public function ContainerController_focusInHandlerExample(container:Sprite, compositionWidth:Number=100, compositionHeight:Number=100)
   *         {
   *             super(container, compositionWidth, compositionHeight);
   *         }
   *         override public function focusInHandler(event:FocusEvent):void
   *         {
   *             // run the TLF handler for the focus event
   *             super.focusInHandler(event);
   *             // and add your own code for the event
   *             trace("You are in focusInHandler()");
   *         }
   *     }
   * }
   * </listing>
   */
  public function focusInHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>FocusEvent.FOCUS_OUT</code> event when the client manages events.
   * @param event The FocusEvent object.
   *
   * @see flash.events.FocusEvent#FOCUS_OUT
   *
   */
  public function focusOutHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the area that the text occupies, as reflected by the last compose or update operation. The width and the height might be estimated, if the container is scrollable and the text exceeds the visible area.
   * @return describes the area that the text occupies.
   *
   * @see flash.geom.Rectangle
   *
   * @example This example uses <code>getContentBounds()</code> to draw a border around the text.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.geom.Rectangle;
   *     import flash.display.Sprite;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *
   *     public class ContainerController_getContentBoundsExample extends Sprite
   *     {
   *         private const textMarkup:String = "<flow:TextFlow xmlns:flow='http://ns.adobe.com/textLayout/2008' fontSize='08' " +
   *             "textIndent='10' paragraphSpaceBefore='6' paddingTop='8' paddingLeft='8' paddingRight='8'>" +
   *             "<flow:p paragraphSpaceBefore='inherit'>" +
   *             "<flow:span>There are many </flow:span>" +
   *             "<flow:span fontStyle='italic'>such</flow:span>" +
   *             "<flow:span> lime-kilns in that tract of country, for the purpose of burning the white" +
   *             " marble which composes a large part of the substance of the hills. Some of them, built " +
   *             "years ago, and long deserted, with weeds growing in the vacant round of the interior, " +
   *             "which is open to the sky, and grass and wild-flowers rooting themselves into the chinks" +
   *             "of the stones, look already like relics of antiquity, and may yet be overspread with the" +
   *             " lichens of centuries to come.</flow:span>" +
   *             "</flow:p>" +
   *             "</flow:TextFlow>";
   *
   *         public function ContainerController_getContentBoundsExample(textFlow:TextFlow):void
   *         {
   *             // Body text TextFlow and flow composer
   *             var textFlow:TextFlow = new TextFlow();
   *             textFlow = TextConverter.importToFlow(textMarkup, TextConverter.TEXT_LAYOUT_FORMAT);
   *             var container:Sprite = new Sprite();
   *             var controller:ContainerController = new ContainerController(container, 120, 200);
   *             container.x = 150;
   *             container.y = 50;
   *             // Add controller to text flow; add container to stage and display text
   *             textFlow.flowComposer.addController(controller);
   *             addChild(container);
   *             textFlow.flowComposer.updateAllControllers();
   *             // draw a border around the text
   *             drawBorder(controller);
   *         }
   *
   *         private function drawBorder(controller:ContainerController):void
   *         {
   *             // get the rectangle that makes up the bounds of the content
   *             var bounds:Rectangle = controller.getContentBounds();
   *             // retrieve the container and draw the border
   *             var container:Sprite = controller.container as Sprite;
   *             container.graphics.lineStyle(.5);
   *             container.graphics.moveTo(bounds.left,bounds.top);
   *             container.graphics.lineTo(bounds.right,bounds.top);
   *             container.graphics.lineTo(bounds.right,bounds.bottom);
   *             container.graphics.lineTo(bounds.left,bounds.bottom);
   *             container.graphics.lineTo(bounds.left,bounds.top);
   *             container.graphics.drawRect(bounds.left, bounds.top, bounds.width, bounds.height );
   *         }
   *     }
   * }
   *
   *
   * </listing>
   */
  public function getContentBounds():Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the index at which the first text line must appear in its parent. The default implementation of this method, which may be overriden, returns the child index of the first <code>flash.text.engine.TextLine</code> child of <code>container</code> if one exists, and that of the last child of <code>container</code> otherwise.
   * @return the index at which the first text line must appear in its parent.
   *
   * @see flash.text.engine.TextLine
   * @see #container
   *
   */
  protected function getFirstTextLineChildIndex():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Figure out the scroll distance required to scroll up or down by the specified number of lines. Negative numbers scroll upward, bringing more of the top of the TextFlow into view. Positive numbers scroll downward, bringing the next line from the bottom into full view.
   * <p>When scrolling up, for example, the method makes the next line fully visible. If the next line is partially obscured and the number of lines specified is 1, the partially obscured line becomes fully visible.</p>
   * @param numLines The number of lines to scroll.
   *
   * @return the delta amount of space to scroll
   *
   */
  public function getScrollDelta(numLines:int):Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the value of the style specified by the <code>styleProp</code> parameter.
   * @param styleProp The name of the style property whose value you want.
   *
   * @return The current value for the specified style.
   *
   */
  public function getStyle(styleProp:String):* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>IMEEvent.IME_START_COMPOSITION</code> event when the client manages events.
   * @param event The IMEEvent object.
   *
   *
   */
  public function imeStartCompositionHandler(event:IMEEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Marks all the text in this container as needing composing.
   * @example This example checks whether invalidateContents() causes the text flow to be damaged.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.conversion.TextConverter;
   *
   *     public class ContainerController_invalidateContentsExample extends Sprite
   *     {
   *         public function ContainerController_invalidateContentsExample()
   *         {
   *             // create container, text flow, composer, paragraph, and span
   *             var container:Sprite = new Sprite();
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span:SpanElement = new SpanElement;
   *             // add container to the stage; create controller and add it to the text flow
   *             addChild(container);
   *             container.x = 100;
   *             container.y = 50;
   *             var controller:ContainerController = new ContainerController(container, 200, 200);
   *             textFlow.flowComposer.addController(controller);
   *             // set font size and add text to the span; add the span to the paragraph
   *             textFlow.fontSize = 16;
   *             span.text = "Does invalidateContents() cause this text to be damaged?";
   *             paragraph.addChild(span);
   *             textFlow.addChild(paragraph);
   *             //update controller to display text
   *             textFlow.flowComposer.updateAllControllers();
   *             // invalidate the controller contents and check to see if they are damaged
   *             controller.invalidateContents();
   *             if(controller.isDamaged())
   *                 span.text += "\nYes, it does.";
   *             else
   *                 span.text += "\nNo, it doesn't";
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function invalidateContents():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Determines whether the container has text that requires composing.
   * @return true if the container requires composing.
   *
   * @example This example checks to see if the text flow is damaged after replacing text in the span.
   * <listing>
   *
   *
   * package flashx.textLayout.container.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.conversion.TextConverter;
   *
   *     public class ContainerController_isDamagedExample extends Sprite
   *     {
   *         public function ContainerController_isDamagedExample()
   *         {
   *             // create container, composer, text flow, paragraph, and span
   *             var container:Sprite = new Sprite();
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span:SpanElement = new SpanElement;
   *             // add container to the stage; create controller and add it to the text flow
   *             addChild(container);
   *             var controller:ContainerController = new ContainerController(container, 200, 700 );
   *             textFlow.flowComposer.addController(controller);
   *             //set font size, add text to the span and the paragraph to the text flow
   *                         textFlow.fontSize = 24;
   *             span.text = "Does this text flow need to be composed?";
   *             paragraph.addChild(span);
   *             textFlow.addChild(paragraph);
   *             // display the text
   *             textFlow.flowComposer.updateAllControllers();
   *             // replace 'this' with 'your' and check to see if text flow is damaged
   *             span.replaceText(5, 9, "your");
   *             if(controller.isDamaged())
   *             {
   *                 span.text += " Yes it does.";
   *             }
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function isDamaged():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>KeyboardEvent.KEY_DOWN</code> event when the client manages events.
   * @param event KeyboardEvent object.
   *
   * @see flash.events.KeyboardEvent#KEY_DOWN
   *
   */
  public function keyDownHandler(event:KeyboardEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>FocusEvent.KEY_FOCUS_CHANGE</code> event when the client manages events.
   * @param event The FocusEvent object.
   *
   * @see flash.events.FocusEvent#KEY_FOCUS_CHANGE
   *
   */
  public function keyFocusChangeHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>Keyboard.KEY_UP</code> event when the client manages events.
   * @param event The KeyboardEvent object.
   *
   * @see flash.events.KeyboardEvent#KEY_UP
   *
   * @example This example extends ContainerController to override its keyUpHandler() method with a custom keyUpHandler() method. The example requires an application that triggers the keyUpHandler() method.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.events.KeyboardEvent;
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class ContainerController_keyUpHandlerExample extends ContainerController
   *     {
   *         public function ContainerController_keyUpHandlerExample(container:Sprite, compositionWidth:Number=100, compositionHeight:Number=100)
   *         {
   *             super(container, compositionWidth, compositionHeight);
   *         }
   *         override public function keyUpHandler(event:KeyboardEvent):void
   *         {
   *             // run the TLF handler for the KEY_UP event
   *             super.keyUpHandler(event);
   *             // and add your own code for the event
   *             trace("You are in keyUpHandler()");
   *         }
   *     }
   * }
   * </listing>
   */
  public function keyUpHandler(event:KeyboardEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>ContextMenuEvent.MENU_SELECT</code> event when the client manages events.
   * @param event ContextMenuEvent object.
   *
   * @see flash.events.ContextMenuEvent#MENU_SELECT
   *
   * @example This example extends ContainerController to override its menuSelectHandler() method with a custom menuSelectHandler() method. The example requires an application that triggers the menuSelectHandler() method.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.events.ContextMenuEvent;
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class ContainerController_menuSelectHandlerExample extends ContainerController
   *     {
   *         public function ContainerController_menuSelectHandlerExample(container:Sprite, compositionWidth:Number=100, compositionHeight:Number=100)
   *          {
   *              super(container, compositionWidth, compositionHeight);
   *          }
   *         override public function menuSelectHandler(event:ContextMenuEvent):void
   *         {
   *             // run the TLF handler for the MENU_SELECT event
   *             super.menuSelectHandler(event);
   *             // and add your own code for the event
   *             trace("You are in menuSelectHandler()");
   *         }
   *     }
   * }
   * </listing>
   */
  public function menuSelectHandler(event:ContextMenuEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.DOUBLE_CLICK</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#DOUBLE_CLICK
   *
   * @example This example extends ContainerController to override its mouseDoubleClickHandler() method with a custom mouseDoubleClickHandler() method. The example requires an application that triggers the mouseDoubleClickHandler() method.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.events.MouseEvent;
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class ContainerController_mouseDoubleClickHandlerExample extends ContainerController
   *     {
   *         public function ContainerController_mouseDoubleClickHandlerExample(container:Sprite, compositionWidth:Number=100, compositionHeight:Number=100)
   *         {
   *             super(container, compositionWidth, compositionHeight);
   *         }
   *         override public function mouseDoubleClickHandler(event:MouseEvent):void
   *         {
   *             // run the TLF handler for the MOUSE_OVER event
   *             super.mouseDoubleClickHandler(event);
   *             // and add your own code for the event
   *             trace("You are in mouseDoubleClickHandler()");
   *         }
   *     }
   * }
   * </listing>
   */
  public function mouseDoubleClickHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_DOWN</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_DOWN
   *
   */
  public function mouseDownHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_MOVE</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_MOVE
   *
   */
  public function mouseMoveHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Client call to forward a mouseMove event from outside a security sandbox. Coordinates of the mouse move are not needed.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  public function mouseMoveSomewhere(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_OUT</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_OUT
   *
   */
  public function mouseOutHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_OVER</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_OVER
   *
   * @example This example extends ContainerController to override its mouseOverHandler() method with a custom mouseOverHandler() method. The example requires an application that triggers the mouseOverHandler() method.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.events.MouseEvent;
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class ContainerController_mouseOverHandlerExample extends ContainerController
   *     {
   *         public function ContainerController_mouseOverHandlerExample(container:Sprite, compositionWidth:Number=100, compositionHeight:Number=100)
   *         {
   *             super(container, compositionWidth, compositionHeight);
   *         }
   *         override public function mouseOverHandler(event:MouseEvent):void
   *         {
   *             // run the TLF handler for the MOUSE_OVER event
   *             super.mouseOverHandler(event);
   *             // and add your own code for the event
   *             trace("You are in mouseOverHandler()");
   *         }
   *     }
   * }
   * </listing>
   */
  public function mouseOverHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_UP</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_UP
   *
   */
  public function mouseUpHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Client call to forward a mouseUp event from outside a security sandbox. Coordinates of the mouse up are not needed.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  public function mouseUpSomewhere(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_WHEEL</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_WHEEL
   *
   */
  public function mouseWheelHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes the <code>flash.display.DisplayObjectContainer</code> object which contains selection shapes (such as block selection highlight, cursor etc.). The default implementation of this method, which may be overriden, removes the object from its parent if one exists.
   * @param selectionContainer <code>flash.display.DisplayObjectContainer</code> object to remove
   *
   * @see flash.display.DisplayObjectContainer
   * @see #container
   *
   */
  protected function removeSelectionContainer(selectionContainer:DisplayObjectContainer):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes a <code>flash.text.engine.TextLine</code> object from its parent. The default implementation of this method, which may be overriden, removes the object from <code>container</code> if it is a direct child of the latter. This method may be called even if the object is not a descendant of <code>container</code>. Any implementation of this method must ensure that no action is taken in this case.
   * @param textLine the <code>flash.text.engine.TextLine</code> object to remove
   *
   * @see flash.text.engine.TextLine
   * @see #container
   *
   */
  protected function removeTextLine(textLine:TextLine):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Scrolls so that the text range is visible in the container.
   * @param activePosition The end of the selection that is changed when you extend the selection. It can be either the start or the end of the selection, expressed as an offset from the start of the text flow.
   * @param anchorPosition The stable end of the selection when you extend the selection. It can be either the start or the end of the selection.
   *
   */
  public function scrollToRange(activePosition:int, anchorPosition:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the range of selected text in a component implementing ITextSupport. If either of the arguments is out of bounds the selection should not be changed. Components which wish to support inline IME should call into this method.
   * @param anchorIndex The zero-based index value of the character at the anchor end of the selection
   * @param activeIndex The zero-based index value of the character at the active end of the selection.
   *
   */
  public function selectRange(anchorIndex:int, activeIndex:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the width and height allowed for text in the container.
   * @param w The width in pixels that's available for text in the container.
   * @param h The height in pixels that's available for text in the container.
   *
   * @example This example sets the composition width and height with <code>setCompositionSize()</code>.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.conversion.TextConverter;
   *
   *     public class ContainerController_setCompositionSizeExample extends Sprite
   *     {
   *         public function ContainerController_setCompositionSizeExample()
   *         {
   *             // create container, text flow, composer, paragraph, and span
   *             var container:Sprite = new Sprite();
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span:SpanElement = new SpanElement;
   *             // add container to the stage; create controller and add it to the text flow
   *             addChild(container);
   *             container.x = 100;
   *             container.y = 50;
   *             var controller:ContainerController = new ContainerController(container);
   *             textFlow.flowComposer.addController(controller);
   *             // set font size and add text to the span; add the span to the paragraph
   *             textFlow.fontSize = 12;
   *             controller.setCompositionSize(250, 200);
   *             span.text = "This example uses setCompositionSize() to set compositionWidth (";
   *             span.text += controller.compositionWidth;
   *             span.text += ") and compositionHeight ("
   *             span.text += controller.compositionHeight;
   *             span.text += "), rather than setting them with:\nnew ContainerController()";
   *             paragraph.addChild(span);
   *             // add paragraph to text flow, and display text
   *             textFlow.addChild(paragraph);
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function setCompositionSize(w:Number, h:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the value of the style specified by the <code>styleProp</code> parameter to the value specified by the <code>newValue</code> parameter.
   * @param styleProp The name of the style property whose value you want to set.
   * @param newValue The value that you want to assign to the style.
   *
   */
  public function setStyle(styleProp:String, newValue:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>TextEvent.TEXT_INPUT</code> event when the client manages events.
   * @param event The TextEvent object.
   *
   * @see flash.events.TextEvent#TEXT_INPUT
   *
   * @example This example extends ContainerController to override its textInputHandler() method with a custom textInputHandler() method. The example requires an application that triggers the textInputHandler() method.
   * <listing>
   * package flashx.textLayout.container.examples
   * {
   *     import flash.events.TextEvent;
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class ContainerController_textInputHandlerExample extends ContainerController
   *     {
   *         public function ContainerController_textInputHandlerExample(container:Sprite, compositionWidth:Number=100, compositionHeight:Number=100)
   *          {
   *              super(container, compositionWidth, compositionHeight);
   *          }
   *         override public function textInputHandler(event:TextEvent):void
   *         {
   *             // run the TLF handler for the textInput event
   *             super.textInputHandler(event);
   *             // and add your own code for the event - e.g. only allow alpha characters
   *             trace("You are in textInputHandler()");
   *
   *         }
   *     }
   * }
   * </listing>
   */
  public function textInputHandler(event:TextEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * If scrolling, sets the scroll rectangle to the container rectangle so that * lines that are halfway in view are clipped to the scrollable region. If not scrolling, clear the scroll rectangle so that no clipping occurs.
   */
  protected function updateVisibleRectangle():void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
