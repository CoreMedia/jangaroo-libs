package ext.config {


/**
 * Data reader class to create an Array of <a href="Ext.data.Record.html">Ext.data.Record</a> objects from an XML document based on mappings in a provided <a href="Ext.data.Record.html">Ext.data.Record</a> constructor.
 <p><b>Note</b>: that in order for the browser to parse a returned XML document, the Content-Type header in the HTTP response must be set to "text/xml" or "application/xml".</p><p>Example code:</p><pre><code>var Employee = Ext.data.Record.create([
 {name: 'name', mapping: 'name'},     // "mapping" property not needed if it is the same as "name"
 {name: 'occupation'}                 // This field will use "occupation" as the mapping.
 ]);
 var myReader = new Ext.data.XmlReader({
 totalProperty: "results", // The element which contains the total dataset size (optional)
 record: "row",           // The repeated element which contains row information
 idProperty: "id"         // The element within the row that provides an ID for the record (optional)
 messageProperty: "msg"   // The element within the response that provides a user-feedback message (optional)
 }, Employee);
 </code></pre><p>This would consume an XML file like this:</p><pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
 &lt;dataset&gt;
 &lt;results&gt;2&lt;/results&gt;
 &lt;row&gt;
 &lt;id&gt;1&lt;/id&gt;
 &lt;name&gt;Bill&lt;/name&gt;
 &lt;occupation&gt;Gardener&lt;/occupation&gt;
 &lt;/row&gt;
 &lt;row&gt;
 &lt;id&gt;2&lt;/id&gt;
 &lt;name&gt;Ben&lt;/name&gt;
 &lt;occupation&gt;Horticulturalist&lt;/occupation&gt;
 &lt;/row&gt;
 &lt;/dataset&gt;
 </code></pre>
 * <p>This class serves as a typed config object for constructor of class XmlReader.</p>
 *
 * @see ext.data.XmlReader
 */
[ExtConfig(target="ext.data.XmlReader")]
public class xmlreader extends datareader {

  public function xmlreader(config:Object = null) {

    super(config);
  }


  /**
   The DomQuery path relative from the record element to the element that contains a record identifier value.
   */
  public native function get idPath():String;

  /**
   * @private
   */
  public native function set idPath(value:String):void;

  /**
   The DomQuery path to the repeated element which contains record information.
   */
  public native function get record():String;

  /**
   * @private
   */
  public native function set record(value:String):void;

  /**
   The DomQuery path to the success attribute used by forms.
   */
  public native function get successProperty():String;

  /**
   * @private
   */
  public native function set successProperty(value:String):void;

  /**
   The DomQuery path from which to retrieve the total number of records in the dataset. This is only needed if the whole dataset is not passed in one go, but is being paged from the remote server.
   */
  public native function get totalProperty():String;

  /**
   * @private
   */
  public native function set totalProperty(value:String):void;


}
}
    