package flashx.textLayout.conversion {
import flashx.textLayout.elements.TextFlow;

/**
 * Export filter for plain text format. This class provides an alternative to the <code>TextConverter.export()</code> static method for exporting plain text, useful if you need to customize the export by changing the paragraphSeparator or stripDiscretionaryHyphens options. The PlainTextExporter class's <code>export()</code> method results in the same output string as the <code>TextConverter.export()</code> static method if the two properties of the PlainTextExporter class, the <code>paragraphSeparator</code> and the <code>stripDiscretionaryHyphens</code> properties, contain their default values of <code>"\n"</code> and <code>true</code>, respectively.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/conversion/PlainTextExporter.html#includeExamplesSummary">View the examples</a></p>
 */
public class PlainTextExporter implements ITextExporter {
  /**
   * Specifies the character sequence used (in a text flow's plain-text equivalent) to separate paragraphs. The paragraph separator is not added after the last paragraph. The default value is "\n".
   */
  public function get paragraphSeparator():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paragraphSeparator(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * This flag indicates whether discretionary hyphens in the text should be stripped during the export process. Discretionary hyphens, also known as "soft hyphens", indicate where to break a word in case the word must be split between two lines. The Unicode character for discretionary hyphens is <code>\u00AD</code>.
   * <p>If the <code>stripDiscretionaryHyphens</code> property is set to <code>true</code>, discretionary hyphens that are in the original text will not be in the exported text, even if they are part of the original text. If <code>false</code>, discretionary hyphens will be in the exported text, The default value is <code>true</code>.</p>
   */
  public function get stripDiscretionaryHyphens():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set stripDiscretionaryHyphens(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor
   */
  public function PlainTextExporter() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Export the contents of a TextFlow object to plain text. The values of the <code>paragraphSeparator</code> and the <code>stripDiscretionaryHyphens</code> properties affect the output produced by this method.
   * @param source the text flow object to export
   * @param conversionType The type to return (STRING_TYPE). This parameter accepts only one value: <code>ConversionType.STRING_TYPE</code>, but is necessary because this class implements the ITextExporter interface. The interface method, <code>ITextExporter.export()</code>, requires this parameter.
   *
   * @return Object the exported content
   *
   * @see #paragraphSeparator
   * @see #stripDiscretionaryHyphens
   * @see ConversionType#STRING_TYPE
   *
   */
  public function export(source:TextFlow, conversionType:String):Object {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
