package ext.data {
/**
 * <p>Data reader class to create an Array of <b class='link'>ext.data.Record</b> objects from an Array.
 * Each element of that Array represents a row of data fields. The
 * fields are pulled into a Record object using as a subscript, the <code>mapping</code> property
 * of the field definition if it exists, or the field's ordinal position in the definition.</p>
 * <p>Example code:</p>
 * <pre><code>
var Employee = ext.data.Record.create([
    {name: 'name', mapping: 1},         // "mapping" only needed if an "id" field is present which
    {name: 'occupation', mapping: 2}    // precludes using the ordinal position as the index.
]);
var myReader = new ext.data.ArrayReader({
    <b class='link' title='#idIndex'>idIndex</b>: 0
}, Employee);
</code></pre>
 * <p>This would consume an Array like this:</p>
 * <pre><code>
[ [1, 'Bill', 'Gardener'], [2, 'Ben', 'Horticulturalist'] ]
 * </code></pre>
*/
public class ArrayReader extends JsonReader {
/**
 * @constructor
 * Create a new ArrayReader
 * @param meta Metadata configuration options.
 * @param recordType
 * <p>Either an Array of <b class='link' title='ext.data.Field'>Field</b> definition objects (which
 * will be passed to <b class='link'>ext.data.Record#create</b>, or a <b class='link' title='ext.data.Record'>Record</b>
 * constructor created from <b class='link'>ext.data.Record#create</b>.</p>
 */
public function ArrayReader(meta : Object, recordType : *) {
  super(meta, recordType);
}
    /**
     * @cfg {String} successProperty
     * @hide
     */
    /**
     * @cfg {Number} id (optional) The subscript within row Array that provides an ID for the Record.
     * Deprecated. Use <b class='link' title='#idIndex'>idIndex</b> instead.
     */
    /**
     * @cfg {Number} idIndex (optional) The subscript within row Array that provides an ID for the Record.
     */
    /**
     * Create a data block containing ext.data.Records from an Array.
     * @param o An Array of row objects which represents the dataset.
     * @return data A data block which is used by an ext.data.Store object as
     * a cache of ext.data.Records.
     */
    override public native function readRecords(o : Object) : Object;
}}
