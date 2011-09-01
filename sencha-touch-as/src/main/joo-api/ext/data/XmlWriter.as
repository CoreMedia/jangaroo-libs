package ext.data {


/**
 * Writer that outputs model data in XML format

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.xmlwriter
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlWriter.html#cls-Ext.data.XmlWriter Ext JS source
 */
public class XmlWriter extends Writer {

  /**
   *
   *
   * @see ext.config.xmlwriter
   */
  public function XmlWriter() {
    super(null);
  }

  /**
   The name of the root element of the document. Defaults to <tt>'xmlData'</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get documentRoot():String;

  /**
   A header to use in the XML document (such as setting the encoding or version). Defaults to <tt>''</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get header():String;

  /**
   The name of the node to use for each record. Defaults to <tt>'record'</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get record():String;

}
}
    