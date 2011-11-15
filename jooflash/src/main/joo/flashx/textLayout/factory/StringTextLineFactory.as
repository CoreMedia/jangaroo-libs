package flashx.textLayout.factory {
import flashx.textLayout.elements.IConfiguration;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The StringTextLineFactory class provides a simple way to create TextLines from a string.
 * <p>The text lines are static and are created using a single format and a single paragraph. The lines are created to fit in the specified bounding rectangle.</p>
 * <p>The StringTextLineFactory provides an efficient way to create TextLines, since it reuses single TextFlow, ParagraphElement, SpanElement, and ContainerController objects across many repeated invocations. You can create a single factory, and use it again and again. You can also reuse all the parts that are the same each time you call it; for instance, you can reuse the various formats and the bounds.</p>
 * <p><b>Note:</b> To create static lines that use multiple formats or paragraphs, or that include inline graphics, use a TextFlowTextLineFactory and a TextFlow object.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/factory/StringTextLineFactory.html#includeExamplesSummary">View the examples</a></p>
 * @see TextFlowTextLineFactory
 *
 */
public final class StringTextLineFactory extends TextLineFactoryBase {
  /**
   * The configuration used by the internal TextFlow object.
   */
  public function get configuration():IConfiguration {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The default configuration used by this factory if none is specified.
   */
  public static function get defaultConfiguration():IConfiguration {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The paragraph format.
   */
  public function get paragraphFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paragraphFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The character format.
   */
  public function get spanFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set spanFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The text to convert into TextLine objects.
   * <p>To produce TextLines, call <code>createTextLines()</code> after setting this <code>text</code> property and the desired formats.</p>
   */
  public function get text():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set text(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The text flow format.
   */
  public function get textFlowFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textFlowFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a StringTextLineFactory object.
   * @param configuration The configuration object used to set the properties of the internal TextFlow object used to compose lines produced by this factory.
   *
   */
  public function StringTextLineFactory(configuration:IConfiguration = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates TextLine objects using the text currently assigned to this factory object.
   * <p>The text lines are created using the currently assigned text and formats and are composed to fit the bounds assigned to the <code>compositionBounds</code> property. As each line is created, the factory calls the function specified in the <code>callback</code> parameter. This function is passed the TextLine object and is responsible for displaying the line.</p>
   * <p>To create a different set of lines, change any properties desired and call <code>createTextLines()</code> again.</p>
   * @param callback The callback function called for each TextLine object created.
   *
   */
  public function createTextLines(callback:Function):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
