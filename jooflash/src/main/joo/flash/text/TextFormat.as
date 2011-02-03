package flash.text {

/**
 * The TextFormat class represents character formatting information. Use the TextFormat class to create specific text formatting for text fields. You can apply text formatting to both static and dynamic text fields. The properties of the TextFormat class apply to device and embedded fonts. However, for embedded fonts, bold and italic text actually require specific fonts. If you want to display bold or italic text with an embedded font, you need to embed the bold and italic variations of that font.
 * <p>You must use the constructor <code>new TextFormat()</code> to create a TextFormat object before setting its properties. When you apply a TextFormat object to a text field using the <code>TextField.defaultTextFormat</code> property or the <code>TextField.setTextFormat()</code> method, only its defined properties are applied. Use the <code>TextField.defaultTextFormat</code> property to apply formatting BEFORE you add text to the <code>TextField</code>, and the <code>setTextFormat()</code> method to add formatting AFTER you add text to the <code>TextField</code>. The TextFormat properties are <code>null</code> by default because if you don't provide values for the properties, Flash Player uses its own default formatting. The default formatting that Flash Player uses for each property (if property's value is <code>null</code>) is as follows:</p>
 * <table>
 * <tr>
 * <td>align = "left"</td></tr>
 * <tr>
 * <td>blockIndent = 0</td></tr>
 * <tr>
 * <td>bold = false</td></tr>
 * <tr>
 * <td>bullet = false</td></tr>
 * <tr>
 * <td>color = 0x000000</td></tr>
 * <tr>
 * <td>font = "Times New Roman" (default font is Times on Mac OS X)</td></tr>
 * <tr>
 * <td>indent = 0</td></tr>
 * <tr>
 * <td>italic = false</td></tr>
 * <tr>
 * <td>kerning = false</td></tr>
 * <tr>
 * <td>leading = 0</td></tr>
 * <tr>
 * <td>leftMargin = 0</td></tr>
 * <tr>
 * <td>letterSpacing = 0</td></tr>
 * <tr>
 * <td>rightMargin = 0</td></tr>
 * <tr>
 * <td>size = 12</td></tr>
 * <tr>
 * <td>tabStops = [] (empty array)</td></tr>
 * <tr>
 * <td>target = "" (empty string)</td></tr>
 * <tr>
 * <td>underline = false</td></tr>
 * <tr>
 * <td>url = "" (empty string)</td></tr></table>
 * <p>The default formatting for each property is also described in each property description.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#includeExamplesSummary">View the examples</a></p>
 * @see TextField#setTextFormat()
 * @see TextField#defaultTextFormat
 * @see TextField#getTextFormat()
 *
 */
public class TextFormat {
  /**
   * Indicates the alignment of the paragraph. Valid values are TextFormatAlign constants.
   * <p>The default value is <code>TextFormatAlign.LEFT.</code></p>
   * @throws ArgumentError The <code>align</code> specified is not a member of flash.text.TextFormatAlign.
   *
   * @see TextFormatAlign
   *
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get align():String {
    return _align;
  }

  /**
   * @private
   */
  public function set align(value:String):void {
    _align = value;
  }

  /**
   * Indicates the block indentation in pixels. Block indentation is applied to an entire block of text; that is, to all lines of the text. In contrast, normal indentation (<code>TextFormat.indent</code>) affects only the first line of each paragraph. If this property is <code>null</code>, the TextFormat object does not specify block indentation (block indentation is 0).
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get blockIndent():Object {
    return _blockIndent;
  }

  /**
   * @private
   */
  public function set blockIndent(value:Object):void {
    _blockIndent = value;
  }

  /**
   * Specifies whether the text is boldface. The default value is <code>null</code>, which means no boldface is used. If the value is <code>true</code>, then the text is boldface.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get bold():Object {
    return _bold;
  }

  /**
   * @private
   */
  public function set bold(value:Object):void {
    _bold = value;
  }

  /**
   * Indicates that the text is part of a bulleted list. In a bulleted list, each paragraph of text is indented. To the left of the first line of each paragraph, a bullet symbol is displayed. The default value is <code>null</code>, which means no bulleted list is used.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get bullet():Object {
    return _bullet;
  }

  /**
   * @private
   */
  public function set bullet(value:Object):void {
    _bullet = value;
  }

  /**
   * Indicates the color of the text. A number containing three 8-bit RGB components; for example, 0xFF0000 is red, and 0x00FF00 is green. The default value is <code>null</code>, which means that Flash Player uses the color black (0x000000).
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get color():Object {
    return _color;
  }

  /**
   * @private
   */
  public function set color(value:Object):void {
    _color = value;
  }

  /**
   * The name of the font for text in this text format, as a string. The default value is <code>null</code>, which means that Flash Player uses Times New Roman font for the text.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get font():String {
    return _font;
  }

  /**
   * @private
   */
  public function set font(value:String):void {
    _font = value;
  }

  /**
   * Indicates the indentation from the left margin to the first character in the paragraph. The default value is <code>null</code>, which indicates that no indentation is used.
   * @see #blockIndent
   *
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get indent():Object {
    return _indent;
  }

  /**
   * @private
   */
  public function set indent(value:Object):void {
    _indent = value;
  }

  /**
   * Indicates whether text in this text format is italicized. The default value is <code>null</code>, which means no italics are used.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get italic():Object {
    return _italic;
  }

  /**
   * @private
   */
  public function set italic(value:Object):void {
    _italic = value;
  }

  /**
   * A Boolean value that indicates whether kerning is enabled (<code>true</code>) or disabled (<code>false</code>). Kerning adjusts the pixels between certain character pairs to improve readability, and should be used only when necessary, such as with headings in large fonts. Kerning is supported for embedded fonts only.
   * <p>Certain fonts such as Verdana and monospaced fonts, such as Courier New, do not support kerning.</p>
   * <p>The default value is <code>null</code>, which means that kerning is not enabled.</p>
   */
  public function get kerning():Object {
    return _kerning;
  }

  /**
   * @private
   */
  public function set kerning(value:Object):void {
    _kerning = value;
  }

  /**
   * An integer representing the amount of vertical space (called <i>leading</i>) between lines. The default value is <code>null</code>, which indicates that the amount of leading used is 0.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get leading():Object {
    return _leading;
  }

  /**
   * @private
   */
  public function set leading(value:Object):void {
    _leading = value;
  }

  /**
   * The left margin of the paragraph, in pixels. The default value is <code>null</code>, which indicates that the left margin is 0 pixels.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get leftMargin():Object {
    return _leftMargin;
  }

  /**
   * @private
   */
  public function set leftMargin(value:Object):void {
    _leftMargin = value;
  }

  /**
   * A number representing the amount of space that is uniformly distributed between all characters. The value specifies the number of pixels that are added to the advance after each character. The default value is <code>null</code>, which means that 0 pixels of letter spacing is used. You can use decimal values such as <code>1.75</code>.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get letterSpacing():Object {
    return _letterSpacing;
  }

  /**
   * @private
   */
  public function set letterSpacing(value:Object):void {
    _letterSpacing = value;
  }

  /**
   * The right margin of the paragraph, in pixels. The default value is <code>null</code>, which indicates that the right margin is 0 pixels.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get rightMargin():Object {
    return _rightMargin;
  }

  /**
   * @private
   */
  public function set rightMargin(value:Object):void {
    _rightMargin = value;
  }

  /**
   * The size in pixels of text in this text format. The default value is <code>null</code>, which means that a size of 12 is used.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get size():Object {
    return _size;
  }

  /**
   * @private
   */
  public function set size(value:Object):void {
    _size = value;
  }

  /**
   * Specifies custom tab stops as an array of non-negative integers. Each tab stop is specified in pixels. If custom tab stops are not specified (<code>null</code>), the default tab stop is 4 (average character width).
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get tabStops():Array {
    return _tabStops;
  }

  /**
   * @private
   */
  public function set tabStops(value:Array):void {
    _tabStops = value;
  }

  /**
   * Indicates the target window where the hyperlink is displayed. If the target window is an empty string, the text is displayed in the default target window <code>_self</code>. You can choose a custom name or one of the following four names: <code>_self</code> specifies the current frame in the current window, <code>_blank</code> specifies a new window, <code>_parent</code> specifies the parent of the current frame, and <code>_top</code> specifies the top-level frame in the current window. If the <code>TextFormat.url</code> property is an empty string or <code>null</code>, you can get or set this property, but the property will have no effect.
   * @see #url
   *
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get target():String {
    return _target;
  }

  /**
   * @private
   */
  public function set target(value:String):void {
    _target = value;
  }

  /**
   * Indicates whether the text that uses this text format is underlined (<code>true</code>) or not (<code>false</code>). This underlining is similar to that produced by the <code><U></code> tag, but the latter is not true underlining, because it does not skip descenders correctly. The default value is <code>null</code>, which indicates that underlining is not used.
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get underline():Object {
    return _underline;
  }

  /**
   * @private
   */
  public function set underline(value:Object):void {
    _underline = value;
  }

  /**
   * Indicates the target URL for the text in this text format. If the <code>url</code> property is an empty string, the text does not have a hyperlink. The default value is <code>null</code>, which indicates that the text does not have a hyperlink.
   * <p><b>Note:</b> The text with the assigned text format must be set with the <code>htmlText</code> property for the hyperlink to work.</p>
   * @see TextField#htmlText
   *
   * @example <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html#TextFormat()">TextFormat() constructor</a> example for an illustration of how to use this property.
   */
  public function get url():String {
    return _url;
  }

  /**
   * @private
   */
  public function set url(value:String):void {
    _url = value;
  }

  /**
   * Creates a TextFormat object with the specified properties. You can then change the properties of the TextFormat object to change the formatting of text fields.
   * <p>Any parameter may be set to <code>null</code> to indicate that it is not defined. All of the parameters are optional; any omitted parameters are treated as <code>null</code>.</p>
   * @param font The name of a font for text as a string.
   * @param size An integer that indicates the size in pixels.
   * @param color The color of text using this text format. A number containing three 8-bit RGB components; for example, 0xFF0000 is red, and 0x00FF00 is green.
   * @param bold A Boolean value that indicates whether the text is boldface.
   * @param italic A Boolean value that indicates whether the text is italicized.
   * @param underline A Boolean value that indicates whether the text is underlined.
   * @param url The URL to which the text in this text format hyperlinks. If <code>url</code> is an empty string, the text does not have a hyperlink.
   * @param target The target window where the hyperlink is displayed. If the target window is an empty string, the text is displayed in the default target window <code>_self</code>. If the <code>url</code> parameter is set to an empty string or to the value <code>null</code>, you can get or set this property, but the property will have no effect.
   * @param align The alignment of the paragraph, as a TextFormatAlign value.
   * @param leftMargin Indicates the left margin of the paragraph, in pixels.
   * @param rightMargin Indicates the right margin of the paragraph, in pixels.
   * @param indent An integer that indicates the indentation from the left margin to the first character in the paragraph.
   * @param leading A number that indicates the amount of leading vertical space between lines.
   *
   * @example In the following example, a user can select different text formatting options from a list that is applied to the content of another text field. If the user clicks on the text field's content, the formatting reverts to the default (original) format.
   * <p>The <code>formatTextField</code> text field lists all the TextField class property options (with the exception of <code>kerning</code>) in a separate line. When a user clicks a line in the <code>formatTextField</code> text field, the <code>formatTextFieldClickHandler()</code> method is triggered.</p>
   * <p>The <code>formatTextFieldClickHandler()</code> method calls the <code>TextField.getLineIndexAtPoint()</code> method to get the index of the line that was clicked, and then calls the <code>TextField.getLineText()</code> method to get the content of the line. The switch statement checks the content of the line and sets a property of the <code>newformat</code> TextFormat object accordingly. The <code>setTextFormat()</code> method then sets the text format of the <code>contentTextField</code> text field to the new format. By clicking different <code>formatTextField</code> lines, a user can apply a different formatting to the <code>contentTextField</code> text field. (The tab setting is an array that defines a separate tab stop for each tab in the line.) If the <code>url</code> or <code>target</code> line is selected, the user must click the <code>contentTextField</code> text field to activate the link and display the content of the target URL (Flex home page). The default value of the <code>target</code> property is "_self", which means that the content is displayed in the current window if the user selects the <code>url</code> line. For the <code>target</code> property to work, a URL must be set already in the <code>url</code> property.</p>
   * <p>If a user clicks the <code>contentTextField</code> text field, the <code>contentTextFieldClickHandler()</code> method is triggered, which sets the field's format and the <code>newFormat</code> TextFormat object to the default (original) format of the text field. This clears all the formatting changes that the user made.</p>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.text.TextField;
   *     import flash.text.TextFormat;
   *     import flash.text.TextFieldAutoSize;
   *     import flash.events.MouseEvent;
   *     import flash.text.TextFormatAlign;
   *
   *     public class TextFormat_constructorExample extends Sprite {
   *         private var contentTextField:TextField = new TextField();
   *         private var formatTextField:TextField = new TextField();
   *         private var newFormat:TextFormat = new TextFormat();
   *
   *         public function TextFormat_constructorExample() {
   *             contentTextField.x = 10;
   *             contentTextField.y = 10;
   *             contentTextField.background = true;
   *             contentTextField.border = true;
   *             contentTextField.multiline = true;
   *             contentTextField.wordWrap = true;
   *             contentTextField.selectable = false;
   *             contentTextField.width = 250;
   *             contentTextField.height = 120;
   *
   *             contentTextField.htmlText = "<p>The TextFormat class represents character formatting "
   *                 + "information. Use the TextFormat class to create specific text formatting "
   *                 + "for text fields." +
   *                 " </p><br>" + "\tTab One" + "\tTab Two<br>";
   *
   *             formatTextField.x = 10;
   *             formatTextField.y = 140;
   *             formatTextField.background = true;
   *             formatTextField.border = true;
   *             formatTextField.autoSize = TextFieldAutoSize.LEFT;
   *
   *             formatTextField.text = "align: right\n" + "blockIndent: 10 pixels\n" + "bold:\n" + "bullet:\n" + "color: red\n"
   *                                 + "font: Arial\n" + "indent: 20 pixels\n" + "italic:\n" + "leading: 5 spaces\n"
   *                                 + "leftMargin: 20 pixels\n" + "letterSpacing: 4 pixels\n" + "rightMargin: 20 pixels\n"
   *                                 + "size: 16 point\n" + "target: new window\n" + "tabStops: 50 and 150 pixel\n"
   *                                 + "underline:\n" + "url: Adobe Flex page\n";
   *
   *             formatTextField.addEventListener(MouseEvent.CLICK, formatTextFieldClickHandler);
   *
   *             contentTextField.addEventListener(MouseEvent.CLICK, contentTextFieldClickHandler);
   *
   *             this.addChild(contentTextField);
   *             this.addChild(formatTextField);
   *         }
   *
   *         private function formatTextFieldClickHandler(e:MouseEvent):void {
   *                 var value:String= "";
   *                 var i:uint = 0;
   *                 var index:int = formatTextField.getLineIndexAtPoint(e.localX, e.localY);
   *                 var line:String = formatTextField.getLineText(index);;
   *
   *                 line = line.substr(0, (line.indexOf(":")));
   *
   *                 switch(line) {
   *                     case "align":
   *                         newFormat.align = TextFormatAlign.RIGHT;
   *                         break;
   *                     case "blockIndent":
   *                         newFormat.blockIndent = 10;
   *                         break;
   *                     case "bold":
   *                         newFormat.bold = true;
   *                         break;
   *                     case "bullet":
   *                         newFormat.bullet = true;
   *                         break;
   *                     case "color":
   *                         newFormat.color = 0xFF0000;
   *                         break;
   *                     case "font":
   *                         newFormat.font = "Arial";
   *                         break;
   *                     case "indent":
   *                         newFormat.indent = 20;
   *                         break;
   *                     case "italic":
   *                         newFormat.italic = true;
   *                         break;
   *                     case "leading":
   *                         newFormat.leading = 5;
   *                         break;
   *                     case "leftMargin":
   *                         newFormat.leftMargin = 20;
   *                         break;
   *                     case "letterSpacing":
   *                         newFormat.letterSpacing = 4;
   *                         break;
   *                     case "rightMargin":
   *                         newFormat.rightMargin = 20;
   *                         break;
   *                     case "size":
   *                         newFormat.size = 16;
   *                         break;
   *                     case "tabStops":
   *                         newFormat.tabStops = [50, 150];
   *                         break;
   *                     case "target":
   *                         newFormat.url = "http://www.adobe.com/products/flex/";
   *                         newFormat.target = "_blank";
   *                         break;
   *                     case "underline":
   *                         newFormat.underline = true;
   *                         break;
   *                     case "url":
   *                         newFormat.url = "http://www.adobe.com/products/flex/";
   *                         break;
   *                 }
   *
   *                 contentTextField.setTextFormat(newFormat);
   *         }
   *
   *         private function contentTextFieldClickHandler(e:MouseEvent):void {
   *             contentTextField.setTextFormat(contentTextField.defaultTextFormat);
   *             newFormat = contentTextField.defaultTextFormat;
   *         }
   *     }
   * }
   * </listing>
   */
  public function TextFormat(font:String = null, size:Object = null, color:Object = null, bold:Object = null,
                             italic:Object = null, underline:Object = null, url:String = null, target:String = null,
                             align:String = null, leftMargin:Object = null, rightMargin:Object = null,
                             indent:Object = null, leading:Object = null) {
    this._font = font;
    this._size = size;
    this._color = color;
    this._bold = bold;
    this._italic = italic;
    this._underline = underline;
    this._url = url;
    this._target = target;
    this._align = align;
    this._leftMargin = leftMargin;
    this._rightMargin = rightMargin;
    this._indent = indent;
    this._leading = leading;
  }

  private var _align : String;
  private var _blockIndent : Object;
  private var _bold : Object;
  private var _bullet : Object;
  private var _color : Object;
  private var _font : String;
  private var _indent : Object;
  private var _italic : Object;
  private var _kerning : Object;
  private var _leading : Object;
  private var _leftMargin : Object;
  private var _letterSpacing : Object;
  private var _rightMargin : Object;
  private var _size : Object;
  private var _tabStops : Array;
  private var _target : String;
  private var _underline : Object;
  private var _url : String;

}
}
