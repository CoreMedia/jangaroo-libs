package flashx.textLayout.conversion {


/**
 * Values for the format of exported text. The values <code>STRING_TYPE</code> and <code>XML_TYPE</code> can be used for the <code>conversionType</code> parameter for the export() method in the ITextExporter interface and the TextConverter class.
 * @see ITextExporter#export()
 * @see TextConverter#export()
 *
 */
public final class ConversionType {
  /**
   * Export as type String.
   */
  public static const STRING_TYPE:String = "stringType";
  /**
   * Export as type XML.
   */
  public static const XML_TYPE:String = "xmlType";
}
}
