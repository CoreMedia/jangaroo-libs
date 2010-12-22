package flash.text
{
import flash.display.Graphics;
import flash.display.InteractiveObject;

import js.CanvasRenderingContext2D;
import js.HTMLCanvasElement;
import js.HTMLElement;

/**
   * Flash Player dispatches the textInput event when a user enters one or more characters of text.
   * @eventType flash.events.TextEvent.TEXT_INPUT
   */
  //[Event(name="textInput", type="flash.events.TextEvent")]

  /**
   * Dispatched by a TextField object after the user scrolls.
   * @eventType flash.events.Event.SCROLL
   */
  [Event(name="scroll", type="flash.events.Event")]

  /**
   * Dispatched when a user clicks a hyperlink in an HTML-enabled text field, where the URL begins with "event:".
   * @eventType flash.events.TextEvent.LINK
   */
  //[Event(name="link", type="flash.events.TextEvent")]

  /**
   * Dispatched after a control value is modified, unlike the textInput event, which is dispatched before the value is modified.
   * @eventType flash.events.Event.CHANGE
   */
  [Event(name="change", type="flash.events.Event")]

  /// The TextField class is used to create display objects for text display and input.
  public class TextField extends InteractiveObject {

    /// Creates a new TextField instance.
    public function TextField () {
      super();
      _lines = [""];
    }

    /// When set to true and the text field is not in focus, Flash Player highlights the selection in the text field in gray.
    public var alwaysShowSelection : Boolean;

    /**
     * The type of anti-aliasing used for this text field. Use <code>flash.text.AntiAliasType</code>
     * constants for this property. You can control this setting only if the font is
     * embedded (with the <code>embedFonts</code> property set to <code>true</code>).
     * The default setting is <code>flash.text.AntiAliasType.NORMAL</code>.</p>
     *
     * <p>To set values for this property, use the following string values:</p>
     *
     * <table>
     * <tr><th>String value</th><th>Description</th></tr>
     * <tr>
     *   <td><code>flash.text.AntiAliasType.NORMAL</code></td>
     *   <td>Applies the regular text anti-aliasing. This value matches the type of anti-aliasing that
     *       Flash Player 7 and earlier versions used.</td></tr><tr><td><code>flash.text.AntiAliasType.ADVANCED</code></td><td>Applies advanced anti-aliasing, which makes text more legible. (This feature became
     *       available in Flash Player 8.) Advanced anti-aliasing allows for high-quality rendering
     *       of font faces at small sizes. It is best used with applications
     *       with a lot of small text. Advanced anti-aliasing is not recommended for
     *       fonts that are larger than 48 points.</td>
     * </tr>
     * </table>
     *
     * @see flash.text.AntiAliasType
     * @see flash.text.TextField.embedFonts
     */
    public var antiAliasType : String;

    /// Controls automatic sizing and alignment of text fields.
    public var autoSize : String;

    /// Specifies whether the text field has a background fill.
    public var background : Boolean;

    /// The color of the text field background.
    private var _backgroundColor : uint;

    public function get backgroundColor() : uint {
      return _backgroundColor;
    }

    public function set backgroundColor(val : uint) : void {
      _backgroundColor = val;
      updateElementProperty(getElement(), "style.backgroundColor", Graphics.toRGBA(val));
    }

    /// Specifies whether the text field has a border.
    private var _border : Boolean;

    public function get border():Boolean {
      return _border;
    }

    public function set border(val:Boolean):void {
      _border = val;
      updateElementProperty(getElement(), "style.borderWidth", val ? "1px" : "0");
    }

    /// The color of the text field border.
    private var _borderColor : uint;

    public function get borderColor():uint {
      return _borderColor;
    }

    public function set borderColor(val:uint):void {
      _borderColor = val;
      updateElementProperty(getElement(), "style.borderColor", Graphics.toRGBA(val));
    }

    /// An integer (1-based index) that indicates the bottommost line that is currently visible in the specified text field.
    public var bottomScrollV : int;

    /// The index of the insertion point (caret) position.
    public var caretIndex : int;

    /// A Boolean value that specifies whether extra white space (spaces, line breaks, and so on) in a text field with HTML text is removed.
    public var condenseWhite : Boolean;

    private var _textFormat : TextFormat = new TextFormat("Times New Roman", 12, 0, false, false, false, "", "", TextFormatAlign.LEFT, 0, 0, 0, 0);

    /// Specifies the format applied to newly inserted text, such as text inserted with the replaceSelectedText() method or text entered by a user.
    public function get defaultTextFormat() : TextFormat {
      return _textFormat;
    }

    private function asWebFont():String {
      var webFont:String = _textFormat.size + "px ";
      switch (_textFormat.font) {
        case "Times New Roman":
          webFont += "Times New Roman,serif"; break;
        case "Arial":
        case "Helvetica":
          webFont += "Helvetica,Arial,sans-serif"; break;
        case "system":
          // system font cannot be resized when drawing into canvas, so use console or monospace instead:
          webFont += "console,monospace"; break;
      }
      return webFont;
    }

    public function set defaultTextFormat(tf : TextFormat) : void {
      for (var property:String in tf) {
        if (tf.hasOwnProperty(property)) {
          var value:* = tf[property];
          if (typeof value !== "function" && value !== null && value !== "") {
            _textFormat[property] = tf[property];
          }
        }
      }
      if (hasElement()) {
        syncTextFormat(getElement());
      }
    }

    override protected function createElement():HTMLElement {
      var elem:HTMLElement = super.createElement();
      elem.style.padding = "2px";
      syncTextFormat(elem);
      return elem;
    }

    private function syncTextFormat(element : HTMLElement) : void {
      updateElementProperty(element, "style.font",       asWebFont());
      updateElementProperty(element, "style.color",      Graphics.toRGBA(uint(_textFormat.color)));
      updateElementProperty(element, "style.fontWeight", _textFormat.bold ? "bold" : "normal");
      updateElementProperty(element, "style.fontStyle",  _textFormat.italic ? "italic" : "normal");
      updateElementProperty(element, "style.textAlign",  _textFormat.align);
    }

    public function setTextFormat(format:TextFormat, beginIndex:int = -1, endIndex:int = -1):void {
      // TODO
      defaultTextFormat = format;
    }

    /// Specifies whether the text field is a password text field.
    public var displayAsPassword : Boolean;

    /// Specifies whether to render by using embedded font outlines.
    public var embedFonts : Boolean;

    /// The type of grid fitting used for this text field.
    public var gridFitType : String;

    private var _htmlText : String;

    /// Contains the HTML representation of the text field contents.
    public function get htmlText():String {
      return _htmlText;
    }

    /// Sets the HTML representation of the text field contents.
    public function set htmlText(val:String):void {
      _htmlText = val;
      updateElementProperty(getElement(), "innerHTML", val);
    }

    /// The number of characters in a text field.
    public var length : int;

    /// The maximum number of characters that the text field can contain, as entered by a user.
    public var maxChars : int;

    /// The maximum value of scrollH.
    public var maxScrollH : int;

    /// The maximum value of scrollV.
    public var maxScrollV : int;

    /// A Boolean value that indicates whether Flash Player automatically scrolls multiline text fields when the user clicks a text field and rolls the mouse wheel.
    public var mouseWheelEnabled : Boolean;

    /// Indicates whether field is a multiline text field.
    public var multiline : Boolean = false;

    /// Defines the number of text lines in a multiline text field.
    public function get numLines() : int {
      return _lines.length;
    }

    /// Indicates the set of characters that a user can enter into the text field.
    public var restrict : String;

    /// The current horizontal scrolling position.
    public var scrollH : int;

    /// The vertical position of text in a text field.
    public var scrollV : int;

    /// A Boolean value that indicates whether the text field is selectable.
    public var selectable : Boolean;

    public var selectedText : String;

    /// The zero-based character index value of the first character in the current selection.
    public var selectionBeginIndex : int;

    /// The zero-based character index value of the last character in the current selection.
    public var selectionEndIndex : int;

    /// The sharpness of the glyph edges in this text field.
    public var sharpness : Number;

    /// Attaches a style sheet to the text field.
    //public var styleSheet : StyleSheet;

    private var _lines : Array/*String*/;

    /// A string that is the current text in the text field.
    public function get text() : String {
      return _lines.join('\n');
    }

    public function set text(val:String) : void {
      _lines = val.split('\n');
      updateElementProperty(getElement(), "innerHTML", _lines.join('<br />'));
    }

    public function get textColor() : uint {
      return uint(_textFormat.color);
    }

    public function set textColor(val:uint) : void {
      _textFormat.color = val;
      if (hasElement()) {
        updateElementProperty(getElement(), "style.color", Graphics.toRGBA(val));
      }
    }

    /// The height of the text in pixels.
    public var textHeight : Number;

    /// The width of the text in pixels.
    public var textWidth : Number;

    /// The thickness of the glyph edges in this text field.
    public var thickness : Number;

    /// The type of the text field.
    public var type : String;

    /// Specifies whether to copy and paste the text formatting along with the text.
    public var useRichTextClipboard : Boolean;

    /// A Boolean value that indicates whether the text field has word wrap.
    public var wordWrap : Boolean;

    /// Returns a rectangle that is the bounding box of the character.
    //public function getCharBoundaries (charIndex:int) : Rectangle;

    /// Returns the zero-based index value of the character.
    //public function getCharIndexAtPoint (x:Number, y:Number) : int;

    /// The zero-based index value of the character.
    //public function getFirstCharInParagraph (charIndex:int) : int;

    /// Returns a DisplayObject reference for the given id, for an image or SWF file that has been added to an HTML-formatted text field by using an &lt;img&gt; tag.
    //public function getImageReference (id:String) : DisplayObject;

    /// The zero-based index value of the line at a specified point.
    //public function getLineIndexAtPoint (x:Number, y:Number) : int;

    /// The zero-based index value of the line containing the character that the the charIndex parameter specifies.
    //public function getLineIndexOfChar (charIndex:int) : int;

    /// Returns the number of characters in a specific text line.
    public function getLineLength (lineIndex:int) : int {
      return _lines[lineIndex].length;
    }

    /// The zero-based index value of the first character in the line.
    //public function getLineOffset (lineIndex:int) : int;

    /// The text string contained in the specified line.
    //public function getLineText (lineIndex:int) : String;

    /// The zero-based index value of the character.
    //public function getParagraphLength (charIndex:int) : int;

    //public function getRawText () : String;

    /// Returns a TextFormat object.
    //public function getTextFormat (beginIndex:int = -1, endIndex:int = -1) : TextFormat;

    //public function getTextRuns (beginIndex:int = 0, endIndex:int = 2147483647) : Array;

    //public function getXMLText (beginIndex:int = 0, endIndex:int = 2147483647) : String;

    //public function insertXMLText (beginIndex:int = null, endIndex:int = null, richText:String = null, pasting:Boolean = false) : void;

    /// Replaces the current selection with the contents of the value parameter.
    //public function replaceSelectedText (value:String) : void;

    /// Replaces a range of characters.
    //public function replaceText (beginIndex:int, endIndex:int, newText:String) : void;

    /// Sets a new text selection.
    //public function setSelection (beginIndex:int, endIndex:int) : void;

    /// Applies text formatting.
    //public function setTextFormat (format:TextFormat = null, beginIndex:int = -1, endIndex:int = -1) : void;

    override protected function getElementName():String {
      return "span";
    }

    private static function updateElementProperty(element : HTMLElement, propertyPath : String, value : Object) : void {
      var current : Object = element;
      var propertyPathArcs : Array = propertyPath.split(".");
      var lastIndex : uint = propertyPathArcs.length - 1;
      for (var i:uint=0; i<lastIndex; ++i) {
        current = current[propertyPathArcs[i]];
      }
      current[propertyPathArcs[lastIndex]] = value;
    }

    /**
     * Appends the string specified by the <code>newText</code> parameter to the end of the text
     of the text field. This method is more efficient than an addition assignment (<code>+=</code>) on
     a <code>text</code> property (such as <code>someTextField.text += moreText</code>),
     particularly for a text field that contains a significant amount of content.

@example
The following example displays the time if it's not the weekend or the text, "It's the weekend,"
if it is. It also counts the number of characters up to a certain position and the number of lines in the text field.

<p>The <code>outputText</code> text field is set to automatically fit the text and to resize as a
left-justified text using <code>autoSize</code> property. The <code>outputText.text</code> property writes the first
line of the content and the method <code>appendText()</code> appends the rest of the content. (It is not
necessary to start with the <code>text</code> property. The <code>appendText()</code> method could also be
used to append text from the outset.) Setting the <code>text</code> property a second time will overwrite
the original text. Use <code>+=</code> operator to append content with the <code>text</code> property.</p>


<p>The <code>if</code> statement checks if the date is Saturday (6) or Sunday (0). If it's not, the
<code>toLocaleTimeString()</code> method returns the local time, which is appended to the text field's content.</p>

<p>The text field's <code>length</code> property is used to read the number of characters until right
before the function is called, and the property <code>numLines</code> is used to count the number of lines
in the text field. Note that the empty lines are counted in the number of lines and the empty spaces and
line breaks (\n) are counted in determining the content length.</p>
 <pre>
 package {
 import flash.display.Sprite;
 import flash.text.TextField;
 import flash.text.TextFieldAutoSize;

 public class TextField_appendTextExample extends Sprite {

 public function TextField_appendTextExample() {
     var outputText:TextField = new TextField();
     var today:Date = new Date();

     outputText.x = 10;
     outputText.y = 10;
     outputText.background = true;
     outputText.autoSize = TextFieldAutoSize.LEFT;

     outputText.text = "WHAT TIME IS IT?" + "\n\n";

     if((today.day == 0) || (today.day == 6)) {
         outputText.appendText("It's the weekend.");
         outputText.appendText("\n\n");

     } else {
         outputText.appendText("The time is: ");
         outputText.appendText(today.toLocaleTimeString() + ".\n\n");
     }

     outputText.appendText("Number of characters including line breaks and spaces so far: ");
     outputText.appendText(outputText.length.toString() + "\n");
     outputText.appendText("Number of lines in the outputText: ");
     outputText.appendText(outputText.numLines.toString());

     this.addChild(outputText);
 }
 }
 }
 </pre>

     * @param newText The string to append to the existing text.
     */
    public function appendText(newText:String):void {
      text = text + newText;
    }

    /**
     * Returns metrics information about a given text line.

     <span class="usage"><a href="http://www.adobe.com/go/learn_as3_usingexamples_en"> How to use this example </a></span>)
 </span><br><br><div class="detailBody"> The following example displays some line metrics values for two differently formatted lines of text.

<p>The text appended is two lines from the <i>Song of Myself</i> by Walt Whitman. A new TextFormat object
(<code>newFormat</code>) is used to set the format of the second line. The first line holds the
default format. The <code>getLineMetrics()</code> method returns a <code>TextLineMetrics</code>
object for a specific line. (Line index begins with 0.) Using <code>metrics1</code> and <code>metrics2</code>
TextLineMetrics objects for the line one and two, respectively, the ascent, descent, height, and weight
value of the line are retrieved and displayed. The result numbers are converted to
string but not rounded. Note that this value is for the line and not a specific character. It
reflects the range of characters for a line. For example, if a line has different characters with
different height formats, the character with the highest height will determine the value. This also
means that if one of the character's format is changes, some of the metrics values could also change.</p>


 <div class="listing"><pre>package {
 import flash.display.Sprite;
 import flash.text.TextField;
 import flash.text.TextLineMetrics;
 import flash.text.TextFieldAutoSize;
 import flash.text.AntiAliasType;
 import flash.text.TextFormat;

 public class TextField_getLineMetricsExample extends Sprite {

 public function TextField_getLineMetricsExample() {
 var myTextField:TextField = new TextField();
 var newFormat:TextFormat = new TextFormat();

 myTextField.x = 10;
 myTextField.y = 10;
 myTextField.background = true;
 myTextField.wordWrap = false;
 myTextField.autoSize = TextFieldAutoSize.LEFT;

 myTextField.appendText("A child said What is the grass? fetching it to me with full hands;\n");
 myTextField.appendText("How could I answer the child? I do not know what it is any more than he.\n\n");

 newFormat.size = 14;
 newFormat.font = "Arial";
 newFormat.italic = true;
 myTextField.setTextFormat(newFormat, 67, 139);

 var metrics1:TextLineMetrics = myTextField.getLineMetrics(0);

 myTextField.appendText("Metrics ascent for the line 1 is: " + metrics1.ascent.toString() + "\n");
 myTextField.appendText("Metrics descent is: " + metrics1.descent.toString() + "\n");
 myTextField.appendText("Metrics height is: " + metrics1.height.toString() + "\n");
 myTextField.appendText("Metrics width is: " + metrics1.width.toString() + "\n\n");

 var metrics2:TextLineMetrics = myTextField.getLineMetrics(1);

 myTextField.appendText("Metrics ascent for the line 2 is: " + metrics2.ascent.toString() + "\n");
 myTextField.appendText("Metrics descent is: " + metrics2.descent.toString() + "\n");
 myTextField.appendText("Metrics height is: " + metrics2.height.toString() + "\n");
 myTextField.appendText("Metrics width is: " + metrics2.width.toString() + "\n");

 addChild(myTextField);
 }
 }
 }
 </pre>

     * @param lineIndex The line number for which you want metrics information.
     * @return A TextLineMetrics object.
     * @throws RangeError The line number specified is out of range.
     * @see flash.text.TextLineMetrics
     */
    public function getLineMetrics(lineIndex:int):TextLineMetrics {
      if (!lineMetricsContext) {
        lineMetricsContext = CanvasRenderingContext2D(HTMLCanvasElement(window.document.createElement("CANVAS")).getContext("2d"));
      }
      lineMetricsContext.font = asWebFont();
      var width:int = lineMetricsContext.measureText(_lines[lineIndex]).width;
      return new TextLineMetrics(0, width, int(_textFormat.size), 0, 0, 0);
    }

    private static var lineMetricsContext:CanvasRenderingContext2D;
  }
}
