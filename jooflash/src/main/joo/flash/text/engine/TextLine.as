package flash.text.engine {
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.events.EventDispatcher;
import flash.geom.Rectangle;

/**
 * The TextLine class is used to display text on the display list.
 * <p>You cannot create a TextLine object directly from ActionScript code. If you call <code>new TextLine()</code>, an exception is thrown. To create a TextLine object, call the <code>createTextLine()</code> method of a TextBlock.</p>
 * <p>The TextLine encapsulates the minimum information necessary to render its contents and to provide interactivity through some methods that describe the properties of the atoms of the line. The term atom refers to both graphic elements and characters (including groups of combining characters), the indivisible entities that make up a text line.</p>
 * <p>After normal event-dispatching for a text line finishes, if the line is valid, events are mirrored to the event dispatchers that are specified in the <code>eventMirror</code> properties of the content element objects that contributed to the text line. These objects are recorded in the <code>TextLine.mirrorRegions</code> property. The events are not mirrored if event propagation failed or was stopped, or if the text line is not valid.</p>
 * <p>Mirroring of mouse events is a special case. Because mirror regions aren't actually display objects, <code>mouseOver</code> and <code>mouseOut</code> events are simulated for them. <code>rollOver</code> and <code>rollOut</code> events are not simulated. All naturally occurring <code>mouseOver</code>, <code>mouseOut</code>, <code>rollOver</code> and <code>rollOut</code> events (whether targeted at the text line or at children of the text line) are ignored - they are not mirrored.</p>
 * <p>The origin of a text line object is the beginning of the baseline. If you don't set the vertical position (<code>y</code> property) of a line that contains Latin text on a Roman baseline, only the descenders of the text appear below the top of the Sprite to which you add the text line. See the following diagram:</p>
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/TextLine.gif" /></p>
 * <p>The TextLine class has several ancestor classes — DisplayObjectContainer, InteractiveObject, DisplayObject, and EventDispatcher — from which it inherits properties and methods. The following inherited properties are inapplicable to TextLine objects:</p>
 * <ul>
 * <li><code>contextMenu</code></li>
 * <li><code>focusRect</code></li>
 * <li><code>tabChildren</code></li>
 * <li><code>tabEnabled</code></li>
 * <li><code>tabIndex</code></li></ul>
 * <p>If you try to set these properties, the text engine throws the error: IllegalOperationError. You can read these properties, but they always contain default values.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/TextLine.html#includeExamplesSummary">View the examples</a></p>
 * @see ContentElement#eventMirror
 * @see TextBlock#createTextLine()
 * @see TextLineValidity
 *
 */
public final class TextLine extends DisplayObjectContainer {
  /**
   * Specifies the number of pixels from the baseline to the top of the tallest characters in the line. For a TextLine that contains only a graphic element, <code>ascent</code> is set to 0.
   */
  public function get ascent():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The number of atoms in the line, which is the number of indivisible elements, including spaces and graphic elements.
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   */
  public function get atomCount():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of pixels from the baseline to the bottom of the lowest-descending characters in the line. For a TextLine that contains only a graphic element, <code>descent</code> is set to 0.
   */
  public function get descent():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the text line contains any graphic elements.
   * @see GraphicElement
   *
   */
  public function get hasGraphicElement():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the text line contains any tabs.
   */
  public function get hasTabs():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A Vector containing the <code>TextLineMirrorRegion</code> objects associated with the line, or <code>null</code> if none exist.
   * @see ContentElement#eventMirror
   * @see TextLineMirrorRegion
   *
   */
  public function get mirrorRegions():Vector.<TextLineMirrorRegion > {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * The next TextLine in the TextBlock, or <code>null</code> if the current line is the last line in the block or the validity of the line is <code>TextLineValidity.STATIC</code>.
   * @see #previousLine
   *
   */
  public function get nextLine():TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The previous TextLine in the TextBlock, or <code>null</code> if the line is the first line in the block or the validity of the line is <code>TextLineValidity.STATIC</code>.
   * @see #nextLine
   *
   */
  public function get previousLine():TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The length of the raw text in the text block that became the line, including the U+FDEF characters representing graphic elements and any trailing spaces, which are part of the line but not are displayed.
   * @see TextBlock
   * @see ContentElement#rawText
   *
   */
  public function get rawTextLength():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The width that was specified to the <code>TextBlock.createTextLine()</code> method when it created the line. This value is useful when deciding if a change requires rebreaking the line.
   * @see TextBlock#createTextLine()
   * @see #textWidth
   * @see #unjustifiedTextWidth
   *
   */
  public function get specifiedWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The TextBlock containing this text line, or null if the validity of the line is <code>TextLineValidity.STATIC</code>, meaning that the connection between the line and the TextBlock has been severed.
   * @see TextBlock
   * @see TextLineValidity
   *
   */
  public function get textBlock():TextBlock {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The index of the first character of the line in the raw text of the text block.
   * @see TextBlock
   *
   */
  public function get textBlockBeginIndex():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The logical height of the text line, which is equal to <code>ascent</code> + <code>descent</code>. To get the inked height, access the inherited <code>height</code> property.
   * <p>The value is calculated based on the difference between the baselines that bound the line, either ideo top/bottom or ascent/descent depending on whether TextBlock.baselineZero is ideo or not. Graphic elements are not considered when computing these baselines.</p>
   * @see flash.display.DisplayObject#height
   *
   */
  public function get textHeight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The logical width of the text line, which is the width that the text engine uses to lay out the line. Access the inherited <code>width</code> property to get the actual width of the bounding box of all the drawn pixels.
   * @see #specifiedWidth
   * @see flash.display.DisplayObject#width
   *
   * @example This example displays a line once in normal posture and once in italic, and traces the values of the <code>specifiedWidth</code>, <code>textWidth</code> and <code>width</code> properties in each case. The trace output is:
   * <ul>
   * <li>specifiedWidth is: 500</li>
   * <li>textWidth is: 268.9921875</li>
   * <li>width is: 269</li>
   * <li>specifiedWidth is: 500</li>
   * <li>textWidth is: 267.52734375</li>
   * <li>width is: 267.55</li></ul>
   * <listing>
   *
   * package {
   * import flash.display.Sprite;
   * import flash.text.engine.TextBlock;
   * import flash.text.engine.TextElement;
   * import flash.text.engine.TextLine;
   * import flash.text.engine.FontDescription;
   * import flash.text.engine.ElementFormat;
   * import flash.text.engine.FontPosture;
   *
   *     public class TextLine_textWidthExample extends Sprite {
   *
   *         public function TextLine_textWidthExample() {
   *
   *             var str:String = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, ";
   *             var yPos:Number = 20;
   *             var fontDescription:FontDescription = new FontDescription();
   *             var textBlock:TextBlock = new TextBlock();
   *             fontDescription.fontPosture = FontPosture.NORMAL;
   *             var format:ElementFormat = new ElementFormat(fontDescription, 12);
   *             var textElement:TextElement = new TextElement(str, format);
   *             textBlock.content = textElement;
   *             createLine(textBlock, yPos);
   *             var fontDescriptionItalic = fontDescription.clone();
   *             fontDescriptionItalic.fontPosture = FontPosture.ITALIC;
   *             var formatItalic = new ElementFormat(fontDescriptionItalic, 12);
   *             textElement = new TextElement(str, formatItalic);
   *             textBlock.content = textElement;
   *             createLine(textBlock, yPos + 20);
   *         }
   *
   *         private function createLine(textBlock:TextBlock, yPos:Number):void {
   *             var textLine:TextLine = textBlock.createTextLine (null, 500);
   *             trace("specifiedWidth is: " + textLine.specifiedWidth);
   *             trace("textWidth is: " + textLine.textWidth);
   *             trace("width is: " + textLine.width);
   *             addChild(textLine);
   *             textLine.x = 15;
   *             textLine.y = yPos;
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function get textWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of pixels from the baseline to the top of the tallest character or graphic in the line.
   */
  public function get totalAscent():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of pixels from the baseline to the bottom of the lowest-descending character or graphic in the line.
   */
  public function get totalDescent():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The total logical height of the text line, which is equal to <code>totalAscent</code> + <code>totalDescent</code>.
   */
  public function get totalHeight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The width of the line if it was not justified. For unjustified text, this value is the same as <code>textWidth</code>. For justified text, this value is what the length would have been without justification, and <code>textWidth</code> represents the actual line width. For example, when the following String is justified and submitted to <code>TextBlock.createTextLine()</code> with a width of 500, it has an actual width of 500 but an unjustified width of 268.9921875.
   * @see EastAsianJustifier
   * @see LineJustification
   * @see SpaceJustifier
   * @see #specifiedWidth
   * @see #textWidth
   *
   * @example When the String in the following example is justified and submitted to TextBlock.createTextLine() with a width of 500, it gets an actual width of 500 but has an unjustified width of 268.9921875.
   * <listing>
   *      import flash.display.Sprite;
   *      import flash.text.engine.TextBlock;
   *      import flash.text.engine.TextElement;
   *      import flash.text.engine.TextLine;
   *      import flash.text.engine.FontDescription;
   *      import flash.text.engine.ElementFormat;
   *      import flash.text.engine.SpaceJustifier;
   *      import flash.text.engine.LineJustification;
   *
   *      var str:String = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, ";
   *      var fontDescription:FontDescription = new FontDescription();
   *      var textBlock:TextBlock = new TextBlock();
   *      var format:ElementFormat = new ElementFormat(fontDescription, 12);
   *      var textElement:TextElement = new TextElement(str, format);
   *      textBlock.content = textElement;
   *      var spaceJustifier:SpaceJustifier = new SpaceJustifier("en", LineJustification.ALL_INCLUDING_LAST);
   *      textBlock.textJustifier = spaceJustifier;
   *      var textLine:TextLine = textBlock.createTextLine(null, 500);
   *      textLine.y = 20;
   *
   *      addChild(textLine);
   *      trace("textWidth value is: " + textLine.textWidth);        // 500.00244140625
   *      trace("unjustifiedTextWidth is: " + textLine.unjustifiedTextWidth); // 268.9921875
   *     </listing>
   */
  public function get unjustifiedTextWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Provides a way for the application to associate arbitrary data with the text line.
   */
  public var userData:*;

  /**
   * Specifies the current validity of the text line. Values for this property are found in the members of the <code>TextLineValidity</code> class. The rules for setting this property are as follows:
   * <p>A line is considered USER_INVALID if validity is set to any string which is not a member of <code>TextLineValidity</code>. USER_INVALID is an abstraction used here to represent any such value.</p>
   * <p>When the contents of the TextBlock are modified, the Flash runtime marks affected text lines, the previous line, and all following lines as INVALID. The previous line must be marked invalid when a change allows the previous line to absorb part of the content that was originally on the first affected line.</p>
   * <p>Newly broken lines are always VALID. The Flash runtime may change lines that follow from VALID to POSSIBLY_INVALID or INVALID. It may change POSSIBLY_INVALID lines to VALID if the line breaks match up, or to INVALID if they don't.</p>
   * <p>Application code can mark VALID lines as INVALID or USER_INVALID, and can mark USER_INVALID lines as VALID. Application code cannot mark lines POSSIBLY_INVALID.</p>
   * <p>Application code can mark any line STATIC. Doing so causes the <code>block</code> member to become <code>null</code>. Any graphic elements in a STATIC text line are removed and reparented if they are part of a new text line broken from the text block from which the STATIC text line originally derived.</p>
   * @throws ArgumentError If current value is <code>TextLineValidity.STATIC</code>.
   * @throws ArgumentError If current value is <code>TextLineValidity.INVALID</code> and new value is anything other than <code>TextValidity.STATIC</code>.
   * @throws ArgumentError If current value is <code>TextLineValidity.POSSIBLY_INVALID</code> and new value is <code>TextLineValidity.VALID</code>.
   * @throws ArgumentError If new value is <code>TextLineValidity.POSSIBLY_INVALID</code>.
   *
   * @see TextBlock#firstInvalidLine
   * @see TextLineValidity
   *
   */
  public function get validity():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set validity(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Dumps the underlying contents of the TextLine as an XML string. This can be useful in automated testing, and includes text, formatting, and layout information.
   * <p>The following describes the output:</p>
   * <pre>     [LINE]
   <line ascent=[Number] descent=[Number] rotation=[int]>
   <elements>
   [0-N ELEMENT]
   </elements>
   <clusters>
   [0-N CLUSTER]
   </clusters>
   </line>

   [ELEMENT]
   <glyph isEmbedded=[Boolean] fontName=[String] isBold=[Boolean] isItalic=[Boolean] gid=[int] pointSize=[Number] x=[Number] y=[Number] rotation=[int]/>
   or
   <graphic child=[int] x=[Number] y=[Number] rotation=[int]/>
   or
   <embeddedRun x=[Number] y=[Number]>
   [LINE]
   </embeddedRun>

   [CLUSTER]
   <cluster xLeft=[Number] xCenter=[Number] xRight=[Number] cursorOnLeft=[Boolean] cursorOnRight=[Boolean] wordBoundaryOnLeft=[Boolean] wordBoundaryOnRight=[Boolean]/>
   </pre>
   * <p><b>Note:</b> The content and format of the output from this method could change in the future. Adobe does not guarantee backward compatibility for this method.</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see TextBlock#dump()
   *
   */
  public function dump():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   *
   * <div><b>Deprecated Since</b> Flash Player 10.1Now does nothing</div>
   * <p>This method is deprecated and has no effect. Atom data is compressed and is not a factor in managing memory efficiency.</p>
   * @see TextBlock#dump()
   *
   */
  public function flushAtomData():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the bidirectional level of the atom at the specified index. Determined by a combination of <code>TextBlock.bidiLevel</code> and the Unicode bidirectional properties of the characters that form the line.
   * <p>For example, if you start a text block with some Hebrew text, you set <code>TextBlock.bidiLevel</code> to 1, establishing a default of right to left. If within the text you have a quote in English (left to right), that text has an <code>AtomBidiLevel</code> of 2. If within the English you have a bit of Arabic (right to left), <code>AtomBidiLevel</code> for that run goes to 3. If within the Arabic a number (left to right) occurs, the <code>AtomBidiLevel</code> setting for the number is 4. It does not matter in which line the atoms end up; the Hebrew atoms are <code>AtomBidiLevel</code> 1, the English atoms are <code>AtomBidiLevel</code> 2, Arabic atoms are <code>AtomBidiLevel</code> 3, and the number atoms are <code>AtomBidiLevel</code> 4.</p>
   * @param atomIndex The zero-based index value of the atom (for example, the first atom is 0, the second atom is 1, and so on).
   *
   * @return The bidirectional level of the atom at <code>atomIndex</code>.
   *
   * @throws RangeError The specified atom index is out of range.
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   * @see TextBlock#bidiLevel
   *
   */
  public function getAtomBidiLevel(atomIndex:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the bounds of the atom at the specified index relative to the text line. The bounds of the specified atom consist of its horizontal position (<code>x</code>) in the line, its vertical position in the line (<code>y</code>), its width (<code>w</code>), and its height (<code>h</code>). All values are in pixels.
   * @param atomIndex The zero-based index value of the atom (for example, the first atom is 0, the second atom is 1, and so on).
   *
   * @return The bounds of the atom at <code>atomIndex</code>.
   *
   * @throws RangeError The atom index specified is out of range.
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   */
  public function getAtomBounds(atomIndex:int):Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the center of the atom as measured along the baseline at the specified index.
   * @param atomIndex The zero-based index value of the atom (for example, the first atom is 0, the second atom is 1, and so on).
   *
   * @return The center of the atom at <code>atomIndex</code>.
   *
   * @throws RangeError The atom index specified is out of range.
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   */
  public function getAtomCenter(atomIndex:int):Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the graphic of the atom at the specified index, or <code>null</code> if the atom is a character.
   * @param atomIndex The zero-based index value of the atom (for example, the first atom is 0, the second atom is 1, and so on).
   *
   * @return The graphic of the atom at <code>atomIndex</code>.
   *
   * @throws RangeError The atom index specified is out of range.
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   */
  public function getAtomGraphic(atomIndex:int):DisplayObject {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the index of the atom containing the character specified by the <code>charIndex</code> parameter, or -1 if the character does not contribute to any atom in the line. The <code>charIndex</code> is relative to the entire contents of the text block containing the line.
   * @param charIndex The zero-based index value of the character (for example, the first character is 0, the second character is 1, and so on).
   *
   * @return The index of the atom containing the character at <code>charIndex</code>. Returns -1 if the character does not contribute to any atom in the line.
   *
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   */
  public function getAtomIndexAtCharIndex(charIndex:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the index of the atom at the point specified by the <code>x</code> and <code>y</code> parameters, or -1 if no atom exists at that point.
   * <p>This method takes global coordinates so that you can easily use it with <code>MouseEvent.stageX</code> and <code>MouseEvent.stageY</code> properties.</p>
   * @param stageX The global <i>x</i> coordinate of the point to test.
   * @param stageY The global <i>y</i> coordinate of the point to test.
   *
   * @return The index of the atom under the point. Returns -1 if the point is not over any atom.
   *
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   */
  public function getAtomIndexAtPoint(stageX:Number, stageY:Number):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the text block begin index of the atom at the specified index.
   * @param atomIndex The zero-based index value of the atom (for example, the first atom is 0, the second atom is 1, and so on).
   *
   * @return The text block begin index of the atom at <code>atomIndex</code>.
   *
   * @throws RangeError The atom index specified is out of range.
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   */
  public function getAtomTextBlockBeginIndex(atomIndex:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the text block end index of the atom at the specified index.
   * @param atomIndex The zero-based index value of the atom (for example, the first atom is 0, the second atom is 1, and so on).
   *
   * @return The text block end index of the atom at <code>atomIndex</code>.
   *
   * @throws RangeError The atom index specified is out of range.
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   */
  public function getAtomTextBlockEndIndex(atomIndex:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the rotation of the atom at the specified index. TextRotation constants are used for this property. The rotation of the atom is the cumulative rotations of the element and the line. Its primary use is for setting the orientation of the caret (cursor) when interacting with a TextLine.
   * @param atomIndex The zero-based index value of the atom (for example, the first atom is 0, the second atom is 1, and so on).
   *
   * @return The rotation of the atom at <code>atomIndex</code>.
   *
   * @throws RangeError The specified atom index is out of range.
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   * @see ElementFormat#textRotation
   *
   */
  public function getAtomTextRotation(atomIndex:int):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether a word boundary occurs to the left of the atom at the specified index. Word boundaries are determined based on the Unicode properties of the characters which contributed to the line.
   * @param atomIndex The zero-based index value of the atom (for example, the first atom is 0, the second atom is 1, and so on).
   *
   * @return A Boolean value that indicates whether a word boundary occurs to the left of the atom at <code>atomIndex</code>.
   *
   * @throws RangeError The atom index specified is out of range.
   * @throws flash.errors.IllegalOperationError The <code>validity</code> of the line is <code>TextLineValidity.STATIC</code>.
   *
   */
  public function getAtomWordBoundaryOnLeft(atomIndex:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the position of the specified baseline, relative to <code>TextBlock.baselineZero</code>.
   * @param baseline The baseline for which to retrieve the position. Use <code>TextBaseline</code> values.
   *
   * @return The position of the specified baseline relative to <code>TextBlock.baselineZero</code>.
   *
   * @throws ArgumentError If the <code>baseline</code> specified is not a member of <code>TextBaseline</code>.
   *
   * @see TextBlock#baselineZero
   * @see TextBaseline
   *
   */
  public function getBaselinePosition(baseline:String):Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the first <code>TextLineMirrorRegion</code> on the line whose <code>mirror</code> property matches that specified by the <code>mirror</code> parameter, or <code>null</code> if no match exists.
   * <p>Even a single <code>TextElement</code> can produce multiple <code>TextLineMirrorRegion</code> objects on one or more lines, depending on bidirectional level and line breaking. The <code>nextRegion</code> and <code>previousRegion</code> properties link all the mirror regions generated from one text element.</p>
   * @param mirror The <code>EventDispatcher</code> mirror object to search for.
   *
   * @return The first <code>TextLineMirrorRegion</code> on the line whose <code>mirror</code> property matches the specified value, or <code>null</code> if no match exists.
   *
   * @see TextLineMirrorRegion
   * @see ContentElement#eventMirror
   *
   */
  public function getMirrorRegion(mirror:EventDispatcher):TextLineMirrorRegion {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The maximum requested width of a text line, in pixels. The <code>TextBlock.createTextLine()</code> method uses this constant as the default value for the <code>width</code> parameter, if you do not specify a value.
   * @see TextBlock#createTextLine()
   *
   */
  public static const MAX_LINE_WIDTH:int = 1000000;
}
}
