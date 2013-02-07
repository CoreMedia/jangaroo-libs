package ext.data {
import ext.config.arrayreader;

/**
 * Data reader class to create an Array of <a href="Ext.data.Record.html">Ext.data.Record</a> objects from an Array. Each element of that Array represents a row of data fields. The fields are pulled into a Record object using as a subscript, the <code>mapping</code> property of the field definition if it exists, or the field's ordinal position in the definition.
 <p>Example code:</p><pre><code>var Employee = Ext.data.Record.create([
 {name: 'name', mapping: 1},         // "mapping" only needed if an "id" field is present which
 {name: 'occupation', mapping: 2}    // precludes using the ordinal position as the index.
 ]);
 var myReader = new Ext.data.ArrayReader({
 <a href="output/Ext.data.ArrayReader.html#Ext.data.ArrayReader-idIndex">idIndex</a>: 0
 }, Employee);
 </code></pre><p>This would consume an Array like this:</p><pre><code>[ [1, 'Bill', 'Gardener'], [2, 'Ben', 'Horticulturalist'] ]
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.arrayreader
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.ArrayReader Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.data.ArrayReader")]
public class ArrayReader extends JsonReader {

  /**
   * Create a new ArrayReader
   *
   * @param meta Metadata configuration options.
   * @param recordType Either an Array of <a href="Ext.data.Field.html">Field</a> definition objects (which will be passed to <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>, or a <a href="Ext.data.Record.html">Record</a> constructor created from <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>.

   * @see ext.config.arrayreader
   */
  public function ArrayReader(meta:arrayreader, recordType:Object = null) {
    super(meta, recordType);
  }

  /**
   The subscript within row Array that provides an ID for the Record.
   */
  public native function get idIndex():Number;

  /**
   * Create a data block containing Ext.data.Records from an Array.
   *
   * @param o An object which contains an Array of row objects in the property specified in the config as 'root, and optionally a property, specified in the config as 'totalProperty' which contains the total size of the dataset.
   * @return data A data block which is used by an Ext.data.Store object as a cache of Ext.data.Records.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.ArrayReader-method-readRecords Sencha Docs Ext JS 3.4
   */
  override public native function readRecords(o:Object):Object;

}
}
    