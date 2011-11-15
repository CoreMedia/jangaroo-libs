package flashx.textLayout.conversion {
import flashx.textLayout.elements.IConfiguration;
import flashx.textLayout.elements.TextFlow;

/**
 * This is the gateway class for handling import and export. It serves as a unified access point to the conversion functionality in the Text Layout Framework.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/conversion/TextConverter.html#includeExamplesSummary">View the examples</a></p>
 */
public class TextConverter {
  /**
   * Exports a TextFlow to a specified format. Supported formats include FXG, HTML, plain text, and TextLayout Markup.
   * <p>Use one of the four static constants supplied with this class to specify the <code>format</code> parameter:</p>
   * <ul>
   * <li>TextConverter.TEXT_FIELD_HTML_FORMAT</li>
   * <li>TextConverter.PLAIN_TEXT_FORMAT</li>
   * <li>TextConverter.TEXT_LAYOUT_FORMAT</li></ul>
   * <p>Specify the type of the exported data in the <code>conversionType</code> parameter with one of the two static constants supplied by the ConversionType class:</p>
   * <ul>
   * <li>ConversionType.STRING_TYPE</li>
   * <li>ConversionType.XML_TYPE</li></ul> Returns a representation of the TextFlow in the specified format.
   * @param source Source content
   * @param format Output format
   * @param conversionType Type of exported data
   *
   * @return Object Exported form of the TextFlow
   *
   * @see #TEXT_FIELD_HTML_FORMAT
   * @see #PLAIN_TEXT_FORMAT
   * @see #TEXT_LAYOUT_FORMAT
   * @see ConversionType
   *
   */
  public static function export(source:TextFlow, format:String, conversionType:String):Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an export filter. Returns an export filter, which you can then use to export from a TextFlow to a source string or XML object. Use this function if you have many separate exports to perform. It is equivalent to calling <code>flashx.textLayout.conversion.TextConverter.export()</code>.
   * <p>Use one of the four static constants supplied with this class to specify the <code>format</code> parameter:</p>
   * <ul>
   * <li>TextConverter.TEXT_FIELD_HTML_FORMAT</li>
   * <li>TextConverter.PLAIN_TEXT_FORMAT</li>
   * <li>TextConverter.TEXT_LAYOUT_FORMAT</li></ul>
   * @param format Target format for exported data
   *
   * @return ITextExporter Text filter that can export in the specified format
   *
   * @see #TEXT_FIELD_HTML_FORMAT
   * @see #PLAIN_TEXT_FORMAT
   * @see #TEXT_LAYOUT_FORMAT
   *
   * @example
   * <p>This code snippet shows a use of the <code>getExporter</code> method to perform repeated exports of formatted text.</p>
   * <listing>
   * package flashx.textLayout.conversion.examples
   * {
   *     import flashx.textLayout.conversion.ConversionType;
   *     import flashx.textLayout.conversion.ITextExporter;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class getExporter_example
   *     {
   *         // Serialize the TextFlow into a String
   *         public function export(textFlow:TextFlow):String
   *         {
   *             var exporter:ITextExporter = TextConverter.getExporter(TextConverter.TEXT_LAYOUT_FORMAT);
   *             return exporter.export(textFlow, ConversionType.STRING_TYPE) as String;
   *         }
   *     }
   * }
   * </listing>
   */
  public static function getExporter(format:String):ITextExporter {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an import filter. Returns an import filter, which you can then use to import from a source string or XML object to a TextFlow. Use this function if you have many separate imports to perform, or if you want to handle errors during import. It is equivalent to calling <code>flashx.textLayout.conversion.TextConverter.importToFlow()</code>.
   * <p>Use one of the four static constants supplied with this class to specify the <code>format</code> parameter:</p>
   * <ul>
   * <li>TextConverter.TEXT_FIELD_HTML_FORMAT</li>
   * <li>TextConverter.PLAIN_TEXT_FORMAT</li>
   * <li>TextConverter.TEXT_LAYOUT_FORMAT</li></ul>
   * @param format Format of source content. Use constants from flashx.textLayout.conversion.TextConverter.TEXT_LAYOUT_FORMAT, PLAIN_TEXT_FORMAT, TEXT_FIELD_HTML_FORMAT etc.
   * @param config configuration to use during this import. null means take the current default.
   *
   * @return ITextImporter Text filter that can import the source data
   *
   * @see #TEXT_FIELD_HTML_FORMAT
   * @see #PLAIN_TEXT_FORMAT
   * @see #TEXT_LAYOUT_FORMAT
   *
   * @example
   * <p>This code snippet shows a use of the <code>getImporter</code> method to perform repeated imports of formatted text. Note that errors are cleared at the beginning of each call to <code>importToFlow</code>.</p>
   * <listing>
   * package flashx.textLayout.conversion.examples
   * {
   *     import flashx.textLayout.conversion.ITextImporter;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class getImporter_example
   *     {
   *         public function importAndCheckErrors():TextFlow
   *         {
   *             var markup:String = "<TextFlow xmlns='http://ns.adobe.com/textLayout/2008'><p><span>Hello, World</span></p></TextFlow>";
   *             var importer:ITextImporter = TextConverter.getImporter(TextConverter.TEXT_LAYOUT_FORMAT);
   *             importer.throwOnError = false;
   *             var textFlow:TextFlow = importer.importToFlow(markup);
   *             if (!textFlow)
   *             {
   *                 var errors:Vector.<String> = importer.errors;
   *                 //deal with import errors
   *             }
   *             return textFlow;
   *         }
   *     }
   * }
   * </listing>
   */
  public static function getImporter(format:String, config:IConfiguration = null):ITextImporter {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a TextFlow from source content in a specified format. Supported formats include HTML, plain text, and TextLayout Markup.
   * <p>Use one of the four static constants supplied with this class to specify the <code>format</code> parameter:</p>
   * <ul>
   * <li>TextConverter.TEXT_FIELD_HTML_FORMAT</li>
   * <li>TextConverter.PLAIN_TEXT_FORMAT</li>
   * <li>TextConverter.TEXT_LAYOUT_FORMAT</li></ul>
   * @param source Source content
   * @param format Format of source content
   * @param config IConfiguration to use when creating new TextFlows
   *
   * @return TextFlow that was created from the source.
   *
   * @see #TEXT_FIELD_HTML_FORMAT
   * @see #PLAIN_TEXT_FORMAT
   * @see #TEXT_LAYOUT_FORMAT
   *
   */
  public static function importToFlow(source:Object, format:String, config:IConfiguration = null):TextFlow {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Plain text format. Use this for creating a TextFlow from a simple, unformatted String, or for creating a simple, unformatted String from a TextFlow.
   */
  public static const PLAIN_TEXT_FORMAT:String = "plainTextFormat";
  /**
   * HTML format. Use this for importing from, or exporting to, a TextFlow using the HTML fomat. The Text Layout Framework HTML supports a subset of the tags and attributes supported by the TextField class in the <code>flash.text</code> package.
   * <p>The following table lists the HTML tags and attributes supported for the import and export process (tags and attributes supported by TextField, but not supported by the Text Layout Framework are specifically described as not supported):</p>
   * <table>
   * <tr><th>Tag</th><th>Description</th></tr>
   * <tr>
   * <td>Anchor tag</td>
   * <td>The <code><a></code> tag creates a hypertext link and supports the following attributes:
   * <ul>
   * <li><code>target</code>: Specifies the name of the target window where you load the page. Options include <code>_self</code>, <code>_blank</code>, <code>_parent</code>, and <code>_top</code>. The <code>_self</code> option specifies the current frame in the current window, <code>_blank</code> specifies a new window, <code>_parent</code> specifies the parent of the current frame, and <code>_top</code> specifies the top-level frame in the current window.</li>
   * <li><code>href</code>: Specifies a URL. The URL can be either absolute or relative to the location of the SWF file that is loading the page. An example of an absolute reference to a URL is <code>http://www.adobe.com</code>; an example of a relative reference is <code>/index.html</code>. Absolute URLs must be prefixed with http://; otherwise, Flash treats them as relative URLs. <b>Note: Unlike the TextField class,</b> ActionScript <code>link</code> events are not supported. Neither are <code>a:link</code>, <code>a:hover</code>, and <code>a:active</code> styles.</li></ul></td></tr>
   * <tr>
   * <td>Bold tag</td>
   * <td>The <code><b></code> tag renders text as bold. A bold typeface must be available for the font used.</td></tr>
   * <tr>
   * <td>Break tag</td>
   * <td>The <code><br></code> tag creates a line break in the text.</td></tr>
   * <tr>
   * <td>Font tag</td>
   * <td>The <code><font></code> tag specifies a font or list of fonts to display the text.The font tag supports the following attributes:
   * <ul>
   * <li><code>color</code>: Only hexadecimal color (<code>#FFFFFF</code>) values are supported.</li>
   * <li><code>face</code>: Specifies the name of the font to use. As shown in the following example, you can specify a list of comma-delimited font names, in which case Flash Player selects the first available font. If the specified font is not installed on the local computer system or isn't embedded in the SWF file, Flash Player selects a substitute font.</li>
   * <li><code>size</code>: Specifies the size of the font. You can use absolute pixel sizes, such as 16 or 18 or relative point sizes, such as +2 or -4.</li>
   * <li><code>letterspacing</code>: Specifies the tracking (manual kerning) in pixels to be applied to the right of each character.</li>
   * <li><code>kerning</code>: Specifies whether kerning is enabled or disabled. A non-zero value enables kerning, while zero disables it.</li></ul></td></tr>
   * <tr>
   * <td>Image tag</td>
   * <td>The <code><img></code> tag lets you embed external image files (JPEG, GIF, PNG), SWF files, and movie clips inside text.
   * <p>The <code><img></code> tag supports the following attributes:</p>
   * <ul>
   * <li><code>src</code>: Specifies the URL to an image or SWF file, or the linkage identifier for a movie clip symbol in the library. This attribute is required; all other attributes are optional. External files (JPEG, GIF, PNG, and SWF files) do not show until they are downloaded completely.</li>
   * <li><code>width</code>: The width of the image, SWF file, or movie clip being inserted, in pixels.</li>
   * <li><code>height</code>: The height of the image, SWF file, or movie clip being inserted, in pixels.</li></ul>
   * <p><b>Note:</b> Unlike the TextField class, the following attributes are not supported: <code>align</code>, <code>hspace</code>, <code>vspace</code>, <code>id</code>, and <code>checkPolicyFile</code>.</p></td></tr>
   * <tr>
   * <td>Italic tag</td>
   * <td>The <code><i></code> tag displays the tagged text in italics. An italic typeface must be available for the font used.</td></tr>
   * <tr>
   * <td><i>List item tag</i> </td>
   * <td><b>Note:</b> Unlike the TextField class, the List item tag is not supported.</td></tr>
   * <tr>
   * <td>Paragraph tag</td>
   * <td>The <code><p></code> tag creates a new paragraph. The <code><p></code> tag supports the following attributes:
   * <ul>
   * <li>align: Specifies alignment of text within the paragraph; valid values are <code>left</code>, <code>right</code>, <code>justify</code>, and <code>center</code>.</li>
   * <li>class: Specifies a class name that can be used for styling</li></ul></td></tr>
   * <tr>
   * <td>Span tag</td>
   * <td>The <code><span></code> tag supports the following attributes:
   * <ul>
   * <li>class: Specifies a class name that can be used for styling. While span tags are often used to set a style defined in a style sheet, TLFTextField instances do not support style sheets. The span tag is available for TLFTextField instances to refer to a class with style properties.</li>
   * <li>You can also put properties directly in the span tag: <code><span fontFamily="Arial">Hi there</span></code>. However, nested span tags are not supported.</li></ul></td></tr>
   * <tr>
   * <td>Text format tag</td>
   * <td>
   * <p>The <code><textformat></code> tag lets you use a subset of paragraph formatting properties of the TextFormat class within text fields, including line leading, indentation, margins, and tab stops. You can combine <code><textformat></code> tags with the built-in HTML tags.</p>
   * <p>The <code><textformat></code> tag has the following attributes:</p>
   * <ul>
   * <li><code>indent</code>: Specifies the indentation from the left margin to the first character in the paragraph; corresponds to <code>TextFormat.indent</code>. Both positive and negative numbers are acceptable.</li>
   * <li><code>blockindent</code>: Specifies the indentation applied to all lines of the paragraph.</li>
   * <li><code>leftmargin</code>: Specifies the left margin of the paragraph, in points; corresponds to <code>TextFormat.leftMargin</code>.</li>
   * <li><code>rightmargin</code>: Specifies the right margin of the paragraph, in points; corresponds to <code>TextFormat.rightMargin</code>.</li>
   * <li><code>leading</code>: Specifies the leading (line height) measured in pixels between a line's ascent and the previous line's descent</li>
   * <li><code>tabstops</code>: Specifies a comma-separated list of tab stop positions for the paragraph.</li></ul></td></tr>
   * <tr>
   * <td>Underline tag</td>
   * <td>The <code><u></code> tag underlines the tagged text.</td></tr></table>
   */
  public static const TEXT_FIELD_HTML_FORMAT:String = "textFieldHTMLFormat";
  /**
   * TextLayout Format. Use this for importing from, or exporting to, a TextFlow using the TextLayout markup format. Text Layout format will detect the following errors:
   * <ul>
   * <li>Unexpected namespace</li>
   * <li>Unknown element</li>
   * <li>Unknown attribute</li></ul>
   */
  public static const TEXT_LAYOUT_FORMAT:String = "textLayoutFormat";
}
}
