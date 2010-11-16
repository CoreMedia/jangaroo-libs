package ext.data {
import js.Document;

/**
 * <p>Data reader class to create an Array of <b class='link'>ext.data.Record</b> objects from an XML document
 * based on mappings in a provided <b class='link'>ext.data.Record</b> constructor.</p>
 * <p><b>Note</b>: that in order for the browser to parse a returned XML document, the Content-Type
 * header in the HTTP response must be set to "text/xml" or "application/xml".</p>
 * <p>Example code:</p>
 * <pre><code>
var Employee = ext.data.Record.create([
   {name: 'name', mapping: 'name'},     // "mapping" property not needed if it is the same as "name"
   {name: 'occupation'}                 // This field will use "occupation" as the mapping.
]);
var myReader = new ext.data.XmlReader({
   totalRecords: "results", // The element which contains the total dataset size (optional)
   record: "row",           // The repeated element which contains row information
   id: "id"                 // The element within the row that provides an ID for the record (optional)
}, Employee);
</code></pre>
 * <p>
 * This would consume an XML file like this:
 * <pre><code>
&lt;?xml version="1.0" encoding="UTF-8"?>
&lt;dataset>
 &lt;results>2&lt;/results>
 &lt;row>
   &lt;id>1&lt;/id>
   &lt;name>Bill&lt;/name>
   &lt;occupation>Gardener&lt;/occupation>
 &lt;/row>
 &lt;row>
   &lt;id>2&lt;/id>
   &lt;name>Ben&lt;/name>
   &lt;occupation>Horticulturalist&lt;/occupation>
 &lt;/row>
&lt;/dataset>
</code></pre>
*/
public class XmlReader extends DataReader {
/**
 * @cfg {String} totalRecords The DomQuery path from which to retrieve the total number of records
 * in the dataset. This is only needed if the whole dataset is not passed in one go, but is being
 * paged from the remote server.
 * @cfg {String} record The DomQuery path to the repeated element which contains record information.
 * @cfg {String} success The DomQuery path to the success attribute used by forms.
 * @cfg {String} idPath The DomQuery path relative from the record element to the element that contains
 * a record identifier value.
 * @constructor
 * Create a new XmlReader.
 * @param meta Metadata configuration options
 * @param recordType Either an Array of field definition objects as passed to
 * <b class='link'>ext.data.Record#create</b>, or a Record constructor object created using <b class='link'>ext.data.Record#create</b>.
 */
public function XmlReader(meta : Object, recordType : Object) {
  super(meta, recordType);
}
    /**
     * This method is only used by a DataProxy which has retrieved data from a remote server.
     * @param response The XHR object which contains the parsed XML document.  The response is expected
     * to contain a property called <code>responseXML</code> which refers to an XML document object.
     * @return records A data block which is used by an <b class='link'>ext.data.Store</b> as
     * a cache of ext.data.Records.
     */
    public native function read(response : Object) : Object;
    /**
     * Create a data block containing ext.data.Records from an XML document.
     * @param doc A parsed XML document.
     * @return records A data block which is used by an <b class='link'>ext.data.Store</b> as
     * a cache of ext.data.Records.
     */
    public native function readRecords(doc : Object) : Object;
        /**
         * After any data loads/reads, the raw XML Document is available for further custom processing.
         */
    public var readResponse  : Document;
}}
