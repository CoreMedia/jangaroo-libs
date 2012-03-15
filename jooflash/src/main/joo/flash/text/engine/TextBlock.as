package flash.text.engine {
/**
 * The TextBlock class is a factory for the creation of TextLine objects, which you can render by placing them on the display list.
 * <p>The TextBlock class is intended to contain a single paragraph because the Unicode bidirectional and line-break algorithms operate on one paragraph at a time. For applications that compose multiple paragraphs of text, use a markup language, or text analysis to divide the text into paragraphs and create one TextBlock per paragraph.</p>
 * <p>The TextBlock object stores its content in the <code>content</code> property, which is an instance of the ContentElement class. Because you can't create an instance of the ContentElement class, set <code>content</code> to an instance of one of its subclasses: TextElement, GraphicElement, or GroupElement. Use TextElement for purely text content, GraphicElement for an image or graphic content, and GroupElement for content that contains a combination of TextElement, GraphicElement, and other GroupElement objects. See the ContentElement class and its subclasses for details on managing formatted runs of text, embedded sub-runs, and graphic elements.</p>
 * <p>After you create the TextBlock instance and set the <code>content</code> property, call the <code>createTextLine()</code> method to create lines of text, which are instances of the <code>TextLine</code> class.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/TextBlock.html#includeExamplesSummary">View the examples</a></p>
 * @see ContentElement
 * @see GraphicElement
 * @see GroupElement
 * @see TextBaseline
 * @see TextElement
 * @see TextJustifier
 * @see TextLine
 * @see TextRotation
 * @see TabStop
 *
 */
public final class TextBlock {
  /**
   * Specifies that you want to enhance screen appearance at the expense of what-you-see-is-what-you-get (WYSIWYG) print fidelity. For platforms and fonts that do not support sub pixel glyph positioning during device font rendering, but do support non-linear scaling, setting this property to <code>true</code> enables the use of those metrics at some cost to WYSIWYG print fidelity, particularly for small point sizes. Non linear font scaling works by selectivly scaling the width of individual glyphs to conceal unsightly gaps caused by pixel snapping.
   * <p>On platforms which do support sub-pixel glyph positioning, this flag is ignored.</p>
   * <p>This flag has no effect on embedded font rendering</p>
   * <p>The default value is <code>true</code>.</p>
   */
  public function get applyNonLinearFontScaling():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set applyNonLinearFontScaling(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The font used to determine the baselines for all the lines created from the block, independent of their content. Baselines depend on font and font size.
   * <p>The default value is <code>null</code>. When the baseline font is <code>null</code>, the baseline font size is ignored and the baseline for any given line is based on the font and size of the largest text in the line. When you specify both <code>baselineFontDescription</code> and <code>baselineFontSize</code>, they determine the baselines for all the lines in the text block, independent of their content. This combination is most often useful in Asian typography.</p>
   * @see #baselineFontSize
   * @see FontDescription
   *
   */
  public function get baselineFontDescription():FontDescription {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set baselineFontDescription(value:FontDescription):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The font size used to calculate the baselines for the lines created from the block. Baselines depend on font and font size.
   * <p>The default value is <code>12</code>. When the baseline font is <code>null</code>, the baseline font size is ignored and the baseline for any given line is based on the font and size of the largest text in the line.</p>
   * @throws ArgumentError The <code>baselineFontSize</code> specified is less than 0.
   *
   * @see #baselineFontDescription
   * @see FontDescription
   *
   */
  public function get baselineFontSize():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set baselineFontSize(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies which baseline is at y=0 for lines created from this block. Valid values for this property are found in the members of the <code>TextBaseline</code> class.
   * <p>The default value is <code>TextBaseline.ROMAN</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>TextBaseline.ROMAN</code></td>
   * <td>The roman baseline of the lines is at y=0.</td></tr>
   * <tr>
   * <td><code>TextBaseline.ASCENT</code></td>
   * <td>The ascent baseline of the lines is at y=0.</td></tr>
   * <tr>
   * <td><code>TextBaseline.DESCENT</code></td>
   * <td>The descent baseline of the lines is at y=0.</td></tr>
   * <tr>
   * <td><code>TextBaseline.IDEOGRAPHIC_TOP</code></td>
   * <td>The ideographic top baseline of the lines is at y=0.</td></tr>
   * <tr>
   * <td><code>TextBaseline.IDEOGRAPHIC_CENTER</code></td>
   * <td>The ideographic center baseline of the lines is at y=0.</td></tr>
   * <tr>
   * <td><code>TextBaseline.IDEOGRAPHIC_BOTTOM</code></td>
   * <td>The ideographic bottom baseline of the lines is at y=0.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>TextBaseline</code>.
   *
   * @see TextBaseline
   *
   */
  public function get baselineZero():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set baselineZero(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the default bidirectional embedding level of the text in the text block. An even value means left-to-right and an odd value means right-to-left. You can increment <code>bidiLevel</code> to indicate the number of levels by which particular text is embedded with respect to left-to-right and right-to-left.
   * <p>The default value is 0.</p>
   * <p>Modifying <code>bidiLevel</code> changes the validity of all previously broken lines to TextLineValidity.INVALID. After changing <code>bidiLevel</code>, the <code>firstInvalidLine</code> property equals the <code>firstLine</code> property, and you must rebreak all the lines in the TextBlock.</p>
   * @throws ArgumentError If set to a value which is less than 0.
   *
   * @see #createTextLine()
   *
   * @example This example shows the same text string (logical order: a, b, c, alef, bet, gimel) rendered first with <code>bidiLevel</code> even and second with <code>bidiLevel</code> odd.
   * <listing>
   * package {
   *
   *     import flash.display.Sprite;
   *     import flash.text.engine.TextBlock;
   *     import flash.text.engine.TextElement;
   *     import flash.text.engine.TextLine;
   *     import flash.text.engine.ElementFormat;
   *     import flash.text.engine.FontDescription;
   *
   *     public class TextBlock_bidiLevelExample extends Sprite {
   *
   *         public function TextBlock_bidiLevelExample():void {
   *             var fontSize:Number = 36;
   *
   *             var format:ElementFormat = new ElementFormat();
   *             format.fontDescription = new FontDescription("Adobe Hebrew");
   *             format.fontSize = fontSize;
   *             var y:Number = 0;
   *             var leading:Number = fontSize * 0.2;
   *             var text:String = "abc" + String.fromCharCode(0x05D0, 0x05D1, 0x05D2);
   *
   *             var textBlock:TextBlock = new TextBlock();
   *             textBlock.content = new TextElement(text, format);
   *
   *             // bidiLevel even
   *             textBlock.bidiLevel = 0;
   *             var textLine = textBlock.createTextLine(null, 400);
   *             y += leading + textLine.ascent;
   *             textLine.y = y;
   *             y += textLine.descent;
   *             addChild(textLine);
   *
   *             // bidiLevel odd
   *             textBlock.content = new TextElement(text, format);
   *             textBlock.bidiLevel = 1;
   *             textLine = textBlock.createTextLine(null, 400);
   *             y += leading + textLine.ascent;
   *             textLine.y = y;
   *             addChild(textLine);
   *         }
   *     }
   * }
   * </listing>
   */
  public function get bidiLevel():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set bidiLevel(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Holds the contents of the text block. Because ContentElement is a base class, assign <code>content</code> an instance of a ContentElement subclass: TextElement, GraphicElement, or GroupElement. A TextElement object contains a String, a GraphicElement object contains a DisplayObject, and a GroupElement contains a Vector object that contains one or more TextElement, GraphicElement, or other GroupElement objects. Use a TextElement for a paragraph of homogenous text, a GraphicElement for a graphic, and a GroupElement for a combination of text and graphic elements or multiples instances of these elements, as well as other GroupElement objects.
   * <p>The default value is <code>null</code>.</p>
   * <p>Modifying the <code>content</code> property changes the validity of all previously created lines to <code>TextLineValidity.INVALID</code>. After changing <code>content</code>, the <code>firstInvalidLine</code> property equals the <code>firstLine</code> property and you must rebreak all lines in the TextBlock.</p>
   * @throws ArgumentError If set to a value which is not a known subclass of <code>ContentElement</code>.
   * @throws ArgumentError The <code>value</code> specified is already a member of a group.
   *
   * @see ContentElement
   * @see GraphicElement
   * @see GroupElement
   * @see TextElement
   * @see #createTextLine()
   *
   */
  public function get content():ContentElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set content(value:ContentElement):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Identifies the first line in the text block in which <code>TextLine.validity</code> is not equal to <code>TextLineValidity.VALID</code>.
   * <p>The default value is <code>null</code>.</p>
   * @see TextLine#validity
   * @see TextLineValidity
   *
   */
  public function get firstInvalidLine():TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The first TextLine in the TextBlock, if any.
   * <p>The default value is <code>null</code>.</p>
   * @see TextLine
   *
   */
  public function get firstLine():TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The last TextLine in the TextBlock, if any.
   * <p>The default value is <code>null</code>.</p>
   * @see TextLine
   *
   */
  public function get lastLine():TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Rotates the text lines in the text block as a unit. Call the <code>createTextLine()</code> method <i>after</i> setting <code>lineRotation</code> for it to take effect. The default value is <code>TextRotation.ROTATE_0</code>.
   * <p>The final rotation of any glyph depends on the values of <code>ElementFormat.textRotation</code>, <code>ContentElement.textRotation</code>, and <code>TextBlock.lineRotation</code>.</p>
   * <p><code>TextBlock.lineRotation</code> is typically used for Asian text. To create a paragraph of vertical Japanese text, do the following:</p><ol>
   * <li>Set the <code>TextBlock.lineRotation</code> property to <code>TextRotation.ROTATE_90</code>.</li>
   * <li>Leave the <code>ElementFormat.textRotation</code> property of the content as the default, <code>TextRotation.AUTO</code>.</li></ol>
   * <p>Use the following constants, which are defined in the <code>TextRotation</code> class, to set the value for this property:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_0</code></td>
   * <td>Lines are not rotated.</td></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_90</code></td>
   * <td>Lines are rotated 90 degrees clockwise.</td></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_180</code></td>
   * <td>Lines are rotated 180 degrees.</td></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_270</code></td>
   * <td>Lines are rotated 270 degrees clockwise.</td></tr>
   * <tr>
   * <td><code>TextRotation.AUTO</code></td>
   * <td>Not supported.</td></tr></table>
   * @throws ArgumentError If set to any value which is not a member of <code>TextRotation</code>.
   * @throws ArgumentError If set to <code>TextRotation.AUTO</code>.
   *
   * @see ContentElement#textRotation
   * @see ElementFormat#textRotation
   * @see TextLine
   * @see TextRotation
   *
   * @example This example adds Japanese text to a TextBlock and sets the <code>lineRotation</code> property to TextRotation.ROTATE_90 to display the line vertically.
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.text.engine.FontDescription;
   *     import flash.text.engine.TextBlock;
   *     import flash.text.engine.TextElement;
   *     import flash.text.engine.TextLine;
   *     import flash.text.engine.TextRotation;
   *     import flash.text.engine.ElementFormat;
   *
   *     public class TextBlock_lineRotationExample extends Sprite {
   *
   *         public function TextBlock_lineRotationExample():void {
   *             var Japanese:String = String.fromCharCode(
   *                 0x5185, 0x95A3, 0x5E9C, 0x304C, 0x300C, 0x653F, 0x5E9C, 0x30A4,
   *                 0x30F3, 0x30BF, 0x30FC, 0x30CD, 0x30C3, 0x30C8, 0x30C6, 0x30EC,
   *                 0x30D3, 0x300D, 0x306E, 0x52D5, 0x753B, 0x914D, 0x4FE1, 0x5411,
   *                 0x3051, 0x306B, 0x30A2, 0x30C9, 0x30D3, 0x30B7, 0x30B9, 0x30C6,
   *                 0x30E0, 0x30BA, 0x793E, 0x306E
   *             ) +
   *             "FMS 2" +
   *             String.fromCharCode(0x3092, 0x63A1, 0x7528, 0x3059, 0x308B, 0x3068,
   *                 0x767a, 0x8868, 0x3057, 0x307e, 0x3057, 0x305F, 0x3002);
   *
   *             var fontDescription:FontDescription = new FontDescription("MS Mincho");
   *             var format:ElementFormat = new ElementFormat();
   *             format.fontSize = 15;
   *             format.fontDescription = fontDescription;
   *
   *             var textElement:TextElement = new TextElement(Japanese, format);
   *             var textBlock:TextBlock = new TextBlock();
   *             textBlock.content = textElement;
   *             textBlock.lineRotation = TextRotation.ROTATE_90;
   *
   *             var linePosition:Number = this.stage.stageWidth - 120;
   *             var previousLine:TextLine = null;
   *
   *             while (true) {
   *                 var textLine:TextLine = textBlock.createTextLine(
   *                     previousLine,
   *                     300);
   *                 if (textLine == null)
   *                     break;
   *                 textLine.y = 30;
   *                 textLine.x = linePosition;
   *                 linePosition -= 24;
   *                 addChild(textLine);
   *                 previousLine = textLine;
   *             }
   *         }
   *     }
   * }
   * </listing>
   */
  public function get lineRotation():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set lineRotation(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the tab stops for the text in the text block, in the form of a Vector of <code>TabStop</code> objects.
   * <p>The default value is <code>null</code>, which means no tab stops are specified. When no tab stops are specified (or the insertion point is beyond the last specified tab stop) the runtime creates half-inch tabs by default.</p>
   * <p>When the <code>tabStops</code> property is set, the TextBlock makes a copy of the Vector for internal use. Modifying the original Vector or its contents does not affect the TextBlock. When the <code>tabStops</code> property is queried, a copy of the internal Vector is returned. Again, modifying this returned vector or its contents does not affect the TextBlock.</p>
   * @throws ArgumentError The <code>tabStops</code> specified contain <code>null</code> elements.
   * @throws ArgumentError The <code>tabStops</code> specified are not sorted by increasing position.
   *
   * @see TabStop
   *
   */
  public function get tabStops():Vector.<TabStop> {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * @private
   */
  public function set tabStops(value:Vector.<TabStop>):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the TextJustifier to use during line creation.
   * <p>The default value is a constructed default TextJustifier object.</p>
   * <p>When the <code>textJustifier</code> property is set, the TextBlock makes a copy of the object for internal use. Modifying the original object does not affect the TextBlock. When the <code>textJustifier</code> property is queried, a copy of the internal object is returned. Again, modifying this returned object does not affect the TextBlock.</p>
   * @throws ArgumentError If set to a value which is not a known subclass of <code>TextJustifier</code>.
   *
   * @see EastAsianJustifier
   * @see SpaceJustifier
   * @see TextJustifier
   *
   */
  public function get textJustifier():TextJustifier {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * @private
   */
  public function set textJustifier(value:TextJustifier):void {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Indicates the result of a <code>createTextLine()</code> operation. Changing the content of the block invalidates previously broken lines and resets this property to <code>null</code>.
   * <p>The default value is <code>null</code>.</p>
   * <p>Values for this property are found in <code>TextLineCreationResult</code></p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>TextLineCreationResult.SUCCESS</code></td>
   * <td>The line was successfully broken.</td></tr>
   * <tr>
   * <td><code>TextLineCreationResult.COMPLETE</code></td>
   * <td>Either the new line created aligned perfectly with following lines which have transitioned from POSSIBLY_INVALID to VALID, or no line was created because all text in the block had already been broken.</td></tr>
   * <tr>
   * <td><code>TextLineCreationResult.INSUFFICIENT_WIDTH</code></td>
   * <td>No line was created because no text could fit in the specified width.</td></tr></table>
   * @see TextLineCreationResult
   *
   */
  public function get textLineCreationResult():String {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Provides a way for the application to associate arbitrary data with the text block. The data could be information that refers to the content, such as a revision date or the name of the author, or it could be cached data that you use during processing.
   */
  public var userData:*;
  /**
   * Creates a TextBlock object
   * @param content The contents of the text block.
   * @param tabStops The tab stops for the text in the text block.
   * @param textJustifier The TextJustifier object to use during line creation for this block. If no justifier is provided, a default justifier is constructed based on an English locale.
   * @param lineRotation The rotation applied to the text lines generated from the text block as units.
   * @param baselineZero Specifies which baseline is at y=0 for all lines in the block.
   * @param bidiLevel The default bidirectional embedding level of the text in the text block.
   * @param applyNonLinearFontScaling Specifies that you want to enhance screen appearance at the expense of WYSIWYG print fidelity.
   * @param baselineFontDescription Specifies a font description from which to derive line baselines for all lines in the block.
   * @param baselineFontSize Specifies the size to use with the baselineFontDescription. This parameter is ignored if <code>baselineFontDescription</code> is <code>null</code>.
   *
   * @throws ArgumentError The <code>content</code> specified is not a known subclass of <code>ContentElement</code>.
   * @throws ArgumentError The <code>content</code> specified is already a member of a group.
   * @throws ArgumentError The <code>lineRotation</code> specified is not a member of <code>TextRotation</code>.
   * @throws ArgumentError The <code>baselineZero</code> specified is not a member of <code>TextBaseline</code>.
   * @throws ArgumentError The <code>bidiLevel</code> specified is less than 0.
   * @throws ArgumentError The <code>tabStops</code> specified contain <code>null</code> elements.
   * @throws ArgumentError The <code>tabStops</code> specified are not sorted by increasing position.
   * @throws ArgumentError The <code>baselineFontSize</code> specified is less than 0.
   *
   * @see #applyNonLinearFontScaling
   * @see #baselineFontDescription
   * @see #baselineFontSize
   * @see #baselineZero
   * @see #bidiLevel
   * @see #lineRotation
   * @see #tabStops
   * @see TextJustifier
   *
   */
  public function TextBlock(content:ContentElement = null, tabStops:Vector.<TabStop> = null,
                            textJustifier:TextJustifier = null, lineRotation:String = "rotate0",
                            baselineZero:String = "roman", bidiLevel:int = 0,
                            applyNonLinearFontScaling:Boolean = true,
                            baselineFontDescription:FontDescription = null,
                            baselineFontSize:Number = 12.0) {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Instructs the text block to create a line of text from its content, beginning at the point specified by the <code>previousLine</code> parameter and breaking at the point specified by the <code>width</code> parameter. The text line is a TextLine object, which you can add to the display list.
   * <p>Breaking lines over a range of a text block that has already been broken can change the validity of lines in and beyond the area where breaking takes place. The status of lines can change from VALID to INVALID or POSSIBLY_INVALID. If a newly broken line aligns perfectly with a previously broken line which has a status of POSSIBLY_INVALID, that previously broken line and all following POSSIBLY_INVALID lines change back to a status of VALID. The validity of lines that have been set to values that are not members of <code>TextLineValidity</code> do not change to VALID, but could change to INVALID. Check the <code>firstInvalidLine</code> property after any change to the text block to see where to begin or continue rebreaking text lines.</p>
   * <p>You can create artificial word breaks by including the Unicode Zero Width Space (ZWSP) character in the text. This can be useful for languages such as Thai, which require a dictionary for correct line breaking. The Flash runtime does not include such a dictionary.</p>
   * <p>In order to reduce memory overhead, when all the desired lines have been created, unless it is expected that the lines will need to be repeatedly rebroken due to, for example, the resizing of the container, the user should call the <code>releaseLineCreationData()</code> method allowing the text block to dispose of the temporary data associated with line breaking.</p>
   * @param previousLine Specifies the previously broken line after which breaking is to commence. Can be <code>null</code> when breaking the first line.
   * @param width Specifies the desired width of the line in pixels. The actual width may be less.
   * @param lineOffset An optional parameter which specifies the difference in pixels between the origin of the line and the origin of the tab stops. This can be used when lines are not aligned, but it is desirable for their tabs to be so. The default value for this parameter is <code>0.0</code>.
   * @param fitSomething An optional parameter which instructs Flash Player to fit at least one character into the text line, no matter what width has been specified (even if width is zero or negative, which would otherwise result in an exception being thrown).
   *
   * @return A text line, or <code>null</code> if the text block is empty or the width specified is less than the width of the next element. To distinguish between these cases, check the <code>textLineCreationResult</code> property of the text block.
   *
   * @throws ArgumentError If the TextLine specified by <code>previousLine</code> is not valid.
   * @throws ArgumentError If the TextLine specified by <code>previousLine</code> is owned by a different TextBlock.
   * @throws ArgumentError If <code>width</code> is less than zero, unless <code>fitSomething</code> is true.
   * @throws ArgumentError If <code>width</code> is greater than <code>TextLine.MAX_LINE_WIDTH</code>.
   * @throws flash.errors.IllegalOperationError If one or more elements in the content of the text block has a <code>null ElementFormat</code>.
   *
   * @see TextLine
   * @see TextLine#validity
   * @see TextLineValidity
   * @see #releaseLineCreationData()
   *
   * @example This example calls the <code>createTextLine()</code> method to create lines of text in a text block. It accomplishes this by performing the following tasks:
   * <ul>
   * <li>Creating a TextElement from a String and giving it a font size of 20</li>
   * <li>Creating a TextBlock and assigning the TextElement to it</li>
   * <li>Calling <code>createTextLine()</code> to create lines 300 pixels wide from the text block</li>
   * <li>Placing each line on Stage (<code>addChild()</code>) and setting its position (<code>x</code> and <code>y</code>)</li></ul>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.text.engine.TextBlock;
   *     import flash.text.engine.TextElement;
   *     import flash.text.engine.TextLine;
   *     import flash.text.engine.ElementFormat;
   *     import flash.text.engine.FontDescription;
   *
   *     public class TextBlock_createTextLineExample extends Sprite {
   *
   *         public function TextBlock_createTextLineExample():void {
   *
   *             var str:String = "I am a TextElement, created from a String and assigned " +
   *             "to the content property of a TextBlock. The createTextLine() method " +
   *             "then created these lines, 300 pixels wide, for display." ;
   *
   *             var fontDescription:FontDescription = new FontDescription("Arial");
   *             var format:ElementFormat = new ElementFormat(fontDescription);
   *             format.fontSize = 16;
   *             var textElement:TextElement = new TextElement(str, format);
   *             var textBlock:TextBlock = new TextBlock();
   *             textBlock.content = textElement;
   *             createLines(textBlock);
   *         }
   *
   *         private function createLines(textBlock:TextBlock):void
   *         {
   *             var lineWidth:Number = 300;
   *             var xPos:Number = 15.0;
   *             var yPos:Number = 20.0;
   *
   *             var textLine:TextLine = textBlock.createTextLine (null, lineWidth);
   *             while (textLine)
   *             {
   *                 textLine.x = xPos;
   *                 textLine.y = yPos;
   *                 yPos += textLine.height + 2;
   *                 addChild (textLine);
   *                 textLine = textBlock.createTextLine (textLine, lineWidth);
   *             }
   *         }
   *     }
   * }
   * </listing>
   */
  public function createTextLine(previousLine:TextLine = null, width:Number = 1000000, lineOffset:Number = 0.0, fitSomething:Boolean = false):TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Dumps the underlying contents of the TextBlock as an XML string. This can be useful in automated testing, and includes text, formatting, and layout information.
   * <p>The following describes the output:</p>
   * <pre>
   >block&lt;
        [0-N LINE]
   >/block&lt;
   </pre>
   * <p>For a description of the output for each line, see the TextLine.dump() method.</p>
   * <p><b>Note:</b> The content and format of the output may change in the future. Adobe does not guarantee backward compatibility of this method.</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see TextLine#dump()
   */
  public function dump():String {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Finds the index of the next atom boundary from the specified character index, not including the character at the specified index. The characters between atom boundaries combine to form one atom in a <code>TextLine</code>, such as an 'e' and a combining acute accent.
   * @param afterCharIndex Specifies the index of the character from which to search for the next atom boundary.
   *
   * @return The index of the next atom boundary from the specified character index.
   *
   * @throws RangeError The <code>index</code> specified is out of range.
   * @throws flash.errors.IllegalOperationError The TextLine to which the indexed character belongs is not valid.
   *
   * @see TextLine#atomCount
   *
   */
  public function findNextAtomBoundary(afterCharIndex:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Finds the index of the next word boundary from the specified character index, not including the character at the specified index. Word boundaries are determined based on the Unicode properties of the characters.
   * @param afterCharIndex Specifies the index of the character from which to search for the next word boundary.
   *
   * @return The index of the next word boundary from the specified character index.
   *
   * @throws RangeError The <code>index</code> specified is out of range.
   * @throws flash.errors.IllegalOperationError The TextLine to which the indexed character belongs is not valid.
   *
   */
  public function findNextWordBoundary(afterCharIndex:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Finds the index of the previous atom boundary to the specified character index, not including the character at the specified index. The characters between atom boundaries combine to form one atom in a <code>TextLine</code>, such as an 'e' and a combining acute accent.
   * @param beforeCharIndex Specifies the index of the character from which to search for the previous atom boundary.
   *
   * @return The index of the previous atom boundary to the specified character index.
   *
   * @throws RangeError The <code>index</code> specified is out of range.
   * @throws flash.errors.IllegalOperationError The TextLine to which the indexed character belongs is not valid.
   *
   * @see TextLine#atomCount
   *
   */
  public function findPreviousAtomBoundary(beforeCharIndex:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Finds the index of the previous word boundary to the specified character index, not including the character at the specified index. Word boundaries are determined based on the Unicode properties of the characters.
   * @param beforeCharIndex Specifies the index of the character from which to search for the previous word boundary.
   *
   * @return The index of the previous word boundary to the specified character index.
   *
   * @throws RangeError The <code>index</code> specified is out of range.
   * @throws flash.errors.IllegalOperationError The TextLine to which the indexed character belongs is not valid.
   *
   */
  public function findPreviousWordBoundary(beforeCharIndex:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Returns the TextLine containing the character specified by the <code>charIndex</code> parameter.
   * @param charIndex The zero-based index value of the character (for example, the first character is 0, the second character is 1, and so on).
   *
   * @return The TextLine containing the character at <code>charIndex</code>.
   *
   * @throws RangeError The character index specified is out of range.
   *
   */
  public function getTextLineAtCharIndex(charIndex:int):TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Instructs the text block to re-use an existing text line to create a line of text from its content, beginning at the point specified by the <code>previousLine</code> parameter and breaking at the point specified by the <code>width</code> parameter. The text line is a TextLine object, which you can add to the display list. By re-using an existing text line, performance is enhanced due to reduced object creation.
   * <p>The <code>textLine</code> being recreated is released from whatever text block it is in, if any. In addition, all properties, including inherited properties from <code>DisplayObjectContainer</code>, <code>InteractiveObject</code>, and <code>DisplayObject</code> are reset to their default values. Finally, all children of the line are removed including graphic elements and other decorations, and all event listeners on the line are removed. To improve performance, the only exception to this complete reset is that the line itself is not removed from its parent.</p>
   * <p>Breaking lines over a range of a text block that has already been broken can change the validity of lines in and beyond the area where breaking takes place. The status of lines can change from VALID to INVALID or POSSIBLY_INVALID. If a newly broken line aligns perfectly with a previously broken line which has a status of POSSIBLY_INVALID, that previously broken line and all following POSSIBLY_INVALID lines change back to a status of VALID. The validity of lines that have been set to values that are not members of <code>TextLineValidity</code> do not change to VALID, but could change to INVALID. Check the <code>firstInvalidLine</code> property after any change to the text block to see where to begin or continue rebreaking text lines.</p>
   * <p>You can create artificial word breaks by including the Unicode Zero Width Space (ZWSP) character in the text. This can be useful for languages such as Thai, which require a dictionary for correct line breaking. The Flash runtime does not include such a dictionary.</p>
   * <p>In order to reduce memory overhead, when all the desired lines have been created, unless it is expected that the lines will need to be repeatedly rebroken due to, for example, the resizing of the container, the user should call the <code>releaseLineCreationData()</code> method allowing the text block to dispose of the temporary data associated with line breaking.</p>
   * @param textLine Specifies a previously created TextLine to be re-used.
   * @param previousLine Specifies the previously broken line after which breaking is to commence. Can be <code>null</code> when breaking the first line.
   * @param width Specifies the desired width of the line in pixels. The actual width may be less.
   * @param lineOffset An optional parameter which specifies the difference in pixels between the origin of the line and the origin of the tab stops. This can be used when lines are not aligned, but it is desirable for their tabs to be so. The default value for this parameter is <code>0.0</code>.
   * @param fitSomething An optional parameter which instructs Flash Player to fit at least one character into the text line, no matter what width has been specified (even if width is zero or negative, which would otherwise result in an exception being thrown).
   *
   * @return A text line, or <code>null</code> if the text block is empty or the width specified is less than the width of the next element. To distinguish between these cases, check the <code>textLineCreationResult</code> property of the text block.
   *
   * @throws ArgumentError If <code>textLine</code> is null.
   * @throws ArgumentError If the TextLine specified by <code>previousLine</code> is not valid.
   * @throws ArgumentError If the TextLine specified by <code>previousLine</code> is owned by a different TextBlock.
   * @throws ArgumentError If the TextLine specified by <code>previousLine</code> is also specified by <code>textLine</code>.
   * @throws ArgumentError If <code>width</code> is less than zero, unless <code>fitSomething</code> is true.
   * @throws ArgumentError If <code>width</code> is greater than <code>TextLine.MAX_LINE_WIDTH</code>.
   * @throws flash.errors.IllegalOperationError If one or more elements in the content of the text block has a <code>null ElementFormat</code>.
   *
   * @see TextBaseline
   * @see TextLine
   * @see TextLine#validity
   * @see TextLineValidity
   * @see #releaseLineCreationData()
   *
   * @example This example re-uses the TextLine object <code>textLine</code>:
   * <listing>
   * var elementFormat:ElementFormat = new ElementFormat();
   * elementFormat.fontDescription = new FontDescription("Arial");
   * elementFormat.fontSize = 48;
   *
   * var textElement:TextElement = new TextElement("Text you'll never see", elementFormat)
   * var textBlock:TextBlock = new TextBlock(textElement);
   * var textLine:TextLine = textBlock.createTextLine();
   * textLine.x = 50;
   * textLine.y = 50;
   * addChild(textLine);
   *
   * // Reuse the element format to preserve the text formatting
   * var elementTwo:TextElement = new TextElement("Text you see", elementFormat);
   * textBlock.content = elementTwo;
   * textBlock.recreateTextLine(textLine);
   *
   * // Set the position (and any other display object properties like alpha, children, etc.)
   * // otherwise, they're all set to default properties.
   * textLine.x = 50;
   * textLine.y = 50;
   * </listing>
   */
  public function recreateTextLine(textLine:TextLine, previousLine:TextLine = null, width:Number = 1000000, lineOffset:Number = 0.0, fitSomething:Boolean = false):TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Instructs the text block to release all the temporary data associated with the creation of text lines. To minimize an application's memory foot print, you should call the <code>releaseLineCreationData()</code> method when you are done creating text lines from a text block. However, to maximize performance for rebreaking the lines (for example when the container is resized) the <code>releaseLineCreationData()</code> method should not be called. It is up to the application to balance memory vs. performance.
   * <p>The recommended process for text that is not expected to change is: initialize a text block, call the <code>createTextLine()</code> method as often as necessary to create the desired output, and then call the <code>releaseLineCreationData()</code> method.</p>
   * @see #createTextLine()
   *
   */
  public function releaseLineCreationData():void {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * Removes a range of text lines from the list of lines maintained by the TextBlock. This allows the lines to be garbage-collected if no other references exist.
   * <p>Sets the <code>textBlock</code>, <code>nextLine</code>, and <code>previousLine</code> members of the removed lines to <code>null</code>. Sets the <code>validity</code> of the removed lines and of all lines which follow the removed lines in the TextBlock to <code>TextLineValidity.INVALID</code>.</p>
   * @param firstLine Specifies the first line to release.
   * @param lastLine Specifies the last line to release.
   *
   * @throws ArgumentError If the TextLine specified by <code>firstLine</code> or <code>lastLine</code> is not in the list of text lines maintained by the text block.
   *
   * @see TextLine
   *
   */
  public function releaseLines(firstLine:TextLine, lastLine:TextLine):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
