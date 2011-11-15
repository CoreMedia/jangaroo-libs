package flashx.textLayout.conversion {
import flashx.textLayout.elements.TextFlow;

/**
 * Interface for exporting text content from a TextFlow instance to either String or XML format.
 */
public interface ITextExporter {
  /**
   * Export text content from a TextFlow instance in String or XML format.
   * <p>Set the <code>conversionType</code> parameter to either of the following values:</p>
   * <ul>
   * <li><code>flashx.textLayout.conversion.ConversionType.STRING_TYPE</code>;</li>
   * <li><code>flashx.textLayout.conversion.ConversionType.XML_TYPE</code>.</li></ul>
   * @param source The TextFlow to export
   * @param conversionType Return a String (STRING_TYPE) or XML (XML_TYPE).
   *
   * @return Object The exported content
   *
   * @see ConversionType
   *
   * @example
   * <p>This code snippet shows a use of the <code>export</code> method to perform repeated exports of formatted text.</p>
   * <listing>
   * package flashx.textLayout.conversion.examples
   * {
   *     import flashx.textLayout.conversion.ConversionType;
   *     import flashx.textLayout.conversion.ITextExporter;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class ITextExporterExample
   *     {
   *         // Serialize the TextFlow into a String
   *         static public function export(textFlow:TextFlow):String
   *         {
   *             var exporter:ITextExporter = TextConverter.getExporter(TextConverter.TEXT_LAYOUT_FORMAT);
   *             return exporter.export(textFlow, ConversionType.STRING_TYPE) as String;
   *         }
   *     }
   * }
   * </listing>
   */
  function export(source:TextFlow, conversionType:String):Object;
}
}
