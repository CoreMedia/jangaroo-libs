package ext.config {

import joo.JavaScriptObject;

/**
 * Writer that outputs model data in XML format

 *
 * <p>This class serves as a
 * typed config object for constructor of class XmlWriter.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.XmlWriter
 */
[ExtConfig(target="ext.data.XmlWriter")]
public class xmlwriter extends JavaScriptObject {

  public function xmlwriter(config:Object = null) {

    super(config);
  }


  /**
   The name of the root element of the document. Defaults to <tt>'xmlData'</tt>.
   */
  public native function get documentRoot():String;

  /**
   * @private
   */
  public native function set documentRoot(value:String):void;

  /**
   A header to use in the XML document (such as setting the encoding or version). Defaults to <tt>''</tt>.
   */
  public native function get header():String;

  /**
   * @private
   */
  public native function set header(value:String):void;

  /**
   The name of the node to use for each record. Defaults to <tt>'record'</tt>.
   */
  public native function get record():String;

  /**
   * @private
   */
  public native function set record(value:String):void;


}
}
    