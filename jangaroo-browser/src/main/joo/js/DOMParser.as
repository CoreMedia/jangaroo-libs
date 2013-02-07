package js {
import joo.getQualifiedObject;

[Native(global="DOMParser")]
public class DOMParser {

  public function DOMParser() {
  }

  private static const ActiveXObject:Class = getQualifiedObject('ActiveXObject');

  //noinspection JSMethodCanBeStatic
  public function parseFromString(xml:String, mimeType:String):Document {
    // this implementation is only used if the method is not already defined, so we assume IE:
    var document:Document = new ActiveXObject("Microsoft.XMLDOM");
    document['async'] = "false";
    document['loadXML'](xml);
    document['setProperty']('SelectionLanguage', 'XPath');
    return document;
  }

}
}