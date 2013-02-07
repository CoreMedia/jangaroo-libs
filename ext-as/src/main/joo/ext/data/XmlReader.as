package ext.data {
import ext.config.xmlreader;

import js.Document;

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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.xmlreader
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.XmlReader Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.data.XmlReader")]
public class XmlReader extends DataReader {

  /**
   * Create a new XmlReader.
   *
   * @param meta Metadata configuration options
   * @param recordType Either an Array of field definition objects as passed to <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>, or a Record constructor object created using <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>.
   * @see ext.config.xmlreader
   */
  public function XmlReader(meta:xmlreader, recordType:Object = null) {
    super(meta, recordType);
  }

  /**
   After any data loads/reads, the raw XML Document is available for further custom processing.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.XmlReader-property-xmlData Sencha Docs Ext JS 3.4
   */
  public native function get xmlData():Document;

  /**
   * @private
   */
  public native function set xmlData(value:Document):void;

  /**
   The DomQuery path relative from the record element to the element that contains a record identifier value.
   */
  public native function get idPath():String;

  /**
   The DomQuery path to the repeated element which contains record information.
   */
  public native function get record():String;

  /**
   The DomQuery path to the success attribute used by forms.
   */
  public native function get successProperty():String;

  /**
   The DomQuery path from which to retrieve the total number of records in the dataset. This is only needed if the whole dataset is not passed in one go, but is being paged from the remote server.
   */
  public native function get totalProperty():String;

  /**
   * This method is only used by a DataProxy which has retrieved data from a remote server.
   *
   * @param response The XHR object which contains the parsed XML document. The response is expected to contain a property called <tt>responseXML</tt> which refers to an XML document object.
   * @return records A data block which is used by an <a href="Ext.data.Store.html">Ext.data.Store</a> as a cache of Ext.data.Records.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.XmlReader-method-read Sencha Docs Ext JS 3.4
   */
  public native function read(response:Object):Object;

  /**
   * Create a data block containing Ext.data.Records from an XML document.
   *
   * @param doc A parsed XML document.
   * @return records A data block which is used by an <a href="Ext.data.Store.html">Ext.data.Store</a> as a cache of Ext.data.Records.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.XmlReader-method-readRecords Sencha Docs Ext JS 3.4
   */
  public native function readRecords(doc:Object):Object;

  /**
   * Decode an XML response from server.
   *
   * @param action [<a href="output/Ext.data.Api.html#Ext.data.Api-actions">Ext.data.Api.actions</a> create|read|update|destroy]
   * @param response HTTP Response object from browser.
   * @return An instance of <a href="Ext.data.Response.html">Ext.data.Response</a>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.XmlReader-method-readResponse Sencha Docs Ext JS 3.4
   */
  public native function readResponse(action:String, response:Object):Response;

}
}
    