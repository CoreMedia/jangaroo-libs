package flash.text.engine {
import flash.events.EventDispatcher;

/**
 * The ContentElement class serves as a base class for the element types that can appear in a GroupElement, namely a GraphicElement, another GroupElement, or a TextElement.
 * <p>ContentElement is an abstract base class; therefore, you cannot instantiate ContentElement directly. Invoking <code>new ContentElement()</code> throws an <code>ArgumentError</code> exception.</p>
 * <p>You can assign a ContentElement element to exactly one <code>GroupElement</code> or to the <code>content</code> property of exactly one text block.</p>
 * @see ElementFormat
 * @see GraphicElement
 * @see GroupElement
 * @see TextBlock#content
 * @see TextElement
 * @see TextLineMirrorRegion
 * @see TextRotation
 *
 */
public class ContentElement {
  /**
   * The ElementFormat object used for the element.
   * <p>The default value is <code>null</code>.</p>
   * <p>When the <code>elementFormat</code> property is set, the ElementFormat object provided is locked: its <code>locked</code> property is set to <code>true</code>. A locked ElementFormat cannot be modified.</p>
   * @see ElementFormat
   * @see TextBlock
   * @see TextElement
   *
   */
  public function get elementFormat():ElementFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set elementFormat(value:ElementFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The <code>EventDispatcher</code> object that receives copies of every event dispatched to valid text lines based on this content element. The specified object can be used to set up listeners for a text link or other interactive piece of text, as it can be difficult to determine at runtime which parts of lines have resulted from particular content elements. You can also use listeners to apply decorations such as underlines, the metrics of which you cannot determine until after the text is laid out. The default value is <code>null</code>, which means no mirrored events are dispatched.
   * <p>Event mirrors manifest themselves in text lines as instances of the <code>TextLineMirrorRegion</code> class. Depending on bidirectional processing and line breaking, one or more mirror regions can be produced.</p>
   * <p>The default value is <code>null</code>.</p>
   * @see flash.events.EventDispatcher
   * @see TextLineMirrorRegion
   *
   */
  public function get eventMirror():EventDispatcher {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set eventMirror(value:EventDispatcher):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The GroupElement object that contains this element, or <code>null</code> if it is not in a group.
   * <p>The default value is <code>null</code>.</p>
   * @see GroupElement
   *
   */
  public function get groupElement():GroupElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A copy of the text in the element, including any U+FDEF characters. The Unicode character, U+FDEF, marks the location of a graphic element in the String.
   */
  public function get rawText():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A copy of the text in the element, not including any U+FDEF characters, which represent graphic elements in the String.
   * @see TextElement#text
   *
   */
  public function get text():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The TextBlock to which this element belongs.
   * <p>The default value is <code>null</code>.</p>
   * @see TextBlock
   *
   */
  public function get textBlock():TextBlock {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The index in the text block of the first character of this element. This value is not cached; it is calculated whenever this method is called.
   * <p>The default value is -1.</p>
   */
  public function get textBlockBeginIndex():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The rotation to apply to the element as a unit. Use <code>TextRotation</code> constants for this property.
   * <p>The default value is <code>TextRotation.ROTATE_0</code>.</p>
   * <p>The final rotation of any glyph is the sum of <code>ElementFormat.textRotation</code>, <code>ContentElement.textRotation</code>, and <code>TextBlock.lineRotation</code>.</p>
   * <p><code>ContentElement.textRotation</code> is used to create a short run of text whose rotation differs from the containing line. TCY runs in Japanese text are an example. TCY stands for Tate-Chu-Yoko and refers to a little horizontal run of text (usually a number) in some vertical Japanese text. To create a Paragraph of vertical Japanese text containing a TCY run, do the following:</p><ol>
   * <li>Set <code>TextBlock.lineRotation=TextRotation.ROTATE_90</code></li>
   * <li>Set <code>TextBlock.content</code> to a GroupElement, consisting of three TextElement objects. The first of these elements is the Japanese text before the TCY run, the second is the Latin text of the TCY run, and the third is the Japanese text after the TCY run.</li>
   * <li>Set the <code>textRotation</code> property of the TCY TextElement to <code>TextRotation.ROTATE_270</code>. The TCY text element rotates as a unit. It starts with a 90 degree rotation inherited from the line. Adding another 270 degrees takes it around to horizontal.</li></ol>
   * <p>Rotated content elements cannot be nested. In any hierarchy of content elements, no matter how complex, only one content element can have its <code>textRotation</code> property set. The following methods and property setters throw an argument error if nested rotations are detected:</p><ol>
   * <li><code>ContentElement.textRotation</code></li>
   * <li><code>GroupElement.setElements</code></li>
   * <li><code>GroupElement.replaceElements</code></li></ol>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_0</code></td>
   * <td>Element is not rotated.</td></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_90</code></td>
   * <td>Element is rotated 90 degrees clockwise.</td></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_180</code></td>
   * <td>Element is rotated 180 degrees.</td></tr>
   * <tr>
   * <td><code>TextRotation.ROTATE_270</code></td>
   * <td>Element is rotated 270 degrees clockwise.</td></tr>
   * <tr>
   * <td><code>TextRotation.AUTO</code></td>
   * <td>Not supported.</td></tr></table>
   * @throws ArgumentError If set to any value that is not a member of TextRotation.
   * @throws ArgumentError If set to <code>TextRotation.AUTO</code>.
   * @throws ArgumentError If the operation would result in nested rotations within a GroupElement.
   *
   * @see TextRotation
   * @see ElementFormat#textRotation
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
   * Provides a way for an application to associate arbitrary data with the element.
   * <p>The default value is <code>null</code>.</p>
   */
  public var userData:*;

  /**
   * Calling the <code>new ContentElement()</code> constructor throws an <code>ArgumentError</code> exception. You <i>can</i>, however, call constructors for the following subclasses of ContentElement:
   * <ul>
   * <li><code>new GraphicElement()</code></li>
   * <li><code>new GroupElement()</code></li>
   * <li><code>new TextElement()</code></li></ul>
   * @param elementFormat The element format for the text in the element. The default value is <code>null</code>.
   * @param eventMirror The <code>EventDispatcher</code> object that receives copies of every event dispatched to valid text lines created based on this content element. The default value is <code>null</code>.
   * @param textRotation The rotation applied the element as a unit. Use <code>TextRotation</code> constants for this property. The default value is <code>TextRotation.ROTATE_0</code>.
   *
   */
  public function ContentElement(elementFormat:ElementFormat = null, eventMirror:EventDispatcher = null, textRotation:String = "rotate0") {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the presence of a graphic element in the text.
   * @see #rawText
   *
   */
  public static const GRAPHIC_ELEMENT:uint = 0xFDEF;
}
}
