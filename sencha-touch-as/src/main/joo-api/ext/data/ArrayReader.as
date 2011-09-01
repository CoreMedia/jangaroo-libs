package ext.data {


/**
 * Data reader class to create an Array of <a href="Ext.data.Model.html">Ext.data.Model</a> objects from an Array. Each element of that Array represents a row of data fields. The fields are pulled into a Record object using as a subscript, the <code>mapping</code> property of the field definition if it exists, or the field's ordinal position in the definition.
 <p><u>Example code:</u></p><pre><code>var Employee = Ext.regModel('Employee', {
 fields: [
 'id',
 {name: 'name', mapping: 1},         // "mapping" only needed if an "id" field is present which
 {name: 'occupation', mapping: 2}    // precludes using the ordinal position as the index.
 ]
 });

 var myReader = new Ext.data.ArrayReader({
 model: 'Employee'
 }, Employee);
 </code></pre><p>This would consume an Array like this:</p><pre><code>[ [1, 'Bill', 'Gardener'], [2, 'Ben', 'Horticulturalist'] ]
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.arrayreader
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ArrayReader.html#cls-Ext.data.ArrayReader Ext JS source
 */
public class ArrayReader extends JsonReader {

  /**
   * Create a new ArrayReader
   *
   * @param meta Metadata configuration options.
   * @see ext.config.arrayreader
   */
  public function ArrayReader(meta:Object) {
    super();
  }

  /**
   *
   *
   * @param force True to automatically remove existing extractor functions first (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ArrayReader.html#method-Ext.data.ArrayReader-buildExtractors Ext JS source
   */
  override public native function buildExtractors(force:Boolean):void;

}
}
    