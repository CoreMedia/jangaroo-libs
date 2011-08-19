package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class ArrayReader.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.ArrayReader
 */
[ExtConfig(target="ext.data.ArrayReader")]
public class arrayreader extends jsonreader {

  public function arrayreader(config:Object = null) {

    super(config);
  }


  /**
   The subscript within row Array that provides an ID for the Record. Deprecated. Use <a href="output/Ext.data.ArrayReader.html#Ext.data.ArrayReader-idIndex">idIndex</a> instead.
   */
  public native function get id():Number;

  /**
   * @private
   */
  public native function set id(value:Number):void;

  /**
   The subscript within row Array that provides an ID for the Record.
   */
  public native function get idIndex():Number;

  /**
   * @private
   */
  public native function set idIndex(value:Number):void;


}
}
    