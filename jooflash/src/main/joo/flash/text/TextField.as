package flash.text
{
  import js.Element;
  import flash.display.Graphics;
  import flash.display.InteractiveObject;
  //import flash.display.DisplayObject;
  //import flash.geom.Rectangle;
  //import flash.text.StyleSheet;
  //import flash.text.TextLineMetrics;

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
      defaultTextFormat = new TextFormat();
    }

    /// When set to true and the text field is not in focus, Flash Player highlights the selection in the text field in gray.
    public var alwaysShowSelection : Boolean;

    /// The type of anti-aliasing used for this text field.
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
      updateElementProperty("style.backgroundColor", Graphics.toRGBA(val));
    }

    /// Specifies whether the text field has a border.
    private var _border : Boolean;

    public function get border():Boolean {
      return _border;
    }

    public function set border(val:Boolean):void {
      _border = val;
      updateElementProperty("style.borderWidth", val ? "1px" : "0");
    }

    /// The color of the text field border.
    private var _borderColor : uint;

    public function get borderColor():uint {
      return _borderColor;
    }

    public function set borderColor(val:uint):void {
      _borderColor = val;
      updateElementProperty("style.borderColor", Graphics.toRGBA(val));
    }

    /// An integer (1-based index) that indicates the bottommost line that is currently visible in the specified text field.
    public var bottomScrollV : int;

    /// The index of the insertion point (caret) position.
    public var caretIndex : int;

    /// A Boolean value that specifies whether extra white space (spaces, line breaks, and so on) in a text field with HTML text is removed.
    public var condenseWhite : Boolean;

    /// Specifies the format applied to newly inserted text, such as text inserted with the replaceSelectedText() method or text entered by a user.
    private var _defaultTextFormat : TextFormat;

    public function get defaultTextFormat() : TextFormat {
      return _defaultTextFormat;
    }

    public function set defaultTextFormat(val : TextFormat) : void {
      _defaultTextFormat = val;
      updateElementProperty("style.fontFamily", val.font || "serif");
      updateElementProperty("style.fontSize",   val.size || "12px");
      updateElementProperty("style.color",      val.color ? Graphics.toRGBA(val.color as uint) : "black");
      updateElementProperty("style.fontWeight", val.bold ? "bold" : "normal");
      updateElementProperty("style.textAlign",  val.align || TextFormatAlign.LEFT);
      // TODO: listen to property changes of my defaultTextFormat object?
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
      updateElementProperty("innerHTML", val);
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
    public var multiline : Boolean;

    /// Defines the number of text lines in a multiline text field.
    public var numLines : int;

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

    /// A string that is the current text in the text field.
    private var _text : String;

    public function get text() : String {
      return _text;
    }

    public function set text(val:String) : void {
      _text = val;
      //updateElementProperty("firstChild.data", val); TODO: does not work if TextNode does not yet exit!
      updateElementProperty("innerHTML", val.replace(/\n/g, '<br />'));
    }

    /// The color of the text in a text field, in hexadecimal format.
    public var _textColor : uint;

    public function get textColor() : uint {
      return _textColor;
    }

    public function set textColor(val:uint) : void {
      _textColor = val;
      updateElementProperty("style.color", Graphics.toRGBA(val));
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

    /// Appends text to the end of the existing text of the TextField.
    //public function appendText (newText:String) : void;

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
    //public function getLineLength (lineIndex:int) : int;

    /// Returns metrics information about a given text line.
    //public function getLineMetrics (lineIndex:int) : TextLineMetrics;

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

    private function updateElementProperty(propertyPath : String, value : Object) : void {
      var element : Element = this.getElement();
      if (element) {
        var propertyPathArcs : Array = propertyPath.split(".");
        var lastIndex : uint = propertyPathArcs.length - 1;
        for (var i:uint=0; i<lastIndex; ++i) {
          element = element[propertyPathArcs[i]];
        }
        element[propertyPathArcs[lastIndex]] = value;
      }
    }

  }
}
