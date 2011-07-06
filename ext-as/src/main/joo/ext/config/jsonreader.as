package ext.config {


/**
 * Data reader class to create an Array of <a href="Ext.data.Record.html">Ext.data.Record</a> objects from a JSON packet based on mappings in a provided <a href="Ext.data.Record.html">Ext.data.Record</a> constructor.
 <p>Example code:</p><pre><code>var myReader = new Ext.data.JsonReader({
 // metadata configuration options:
 <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-idProperty">idProperty</a>: 'id'
 <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-root">root</a>: 'rows',
 <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-totalProperty">totalProperty</a>: 'results',
 <a href="output/Ext.data.DataReader.html#Ext.data.DataReader-messageProperty">Ext.data.DataReader.messageProperty</a>: "msg"  // The element within the response that provides a user-feedback message (optional)

 // the fields config option will internally create an <a href="Ext.data.Record.html">Ext.data.Record</a>
 // constructor that provides mapping for reading the record data objects
 <a href="output/Ext.data.DataReader.html#Ext.data.DataReader-fields">fields</a>: [
 // map Record's 'firstname' field to data object's key of same name
 {name: 'name', mapping: 'firstname'},
 // map Record's 'job' field to data object's 'occupation' key
 {name: 'job', mapping: 'occupation'}
 ]
 });
 </code></pre><p>This would consume a JSON data object of the form:</p><pre><code>{
 results: 2000, // Reader's configured <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-totalProperty">totalProperty</a>
 rows: [        // Reader's configured <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-root">root</a>
 // record data objects:
 { <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-idProperty">id</a>: 1, firstname: 'Bill', occupation: 'Gardener' },
 { <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-idProperty">id</a>: 2, firstname: 'Ben' , occupation: 'Horticulturalist' },
 ...
 ]
 }
 </code></pre><p style="font-weight: bold"><u>Automatic configuration using metaData</u></p><p>It is possible to change a JsonReader's metadata at any time by including a <b><tt>metaData</tt></b> property in the JSON data object. If the JSON data object has a <b><tt>metaData</tt></b> property, a <a href="Ext.data.Store.html">Store</a> object using this Reader will reconfigure itself to use the newly provided field definition and fire its <a href="output/Ext.data.Store.html#Ext.data.Store-metachange">metachange</a> event. The metachange event handler may interrogate the <b><tt>metaData</tt></b> property to perform any configuration required.</p><p>Note that reconfiguring a Store potentially invalidates objects which may refer to Fields or Records which no longer exist.</p><p>To use this facility you would create the JsonReader like this:</p><pre><code>var myReader = new Ext.data.JsonReader();
 </code></pre><p>The first data packet from the server would configure the reader by containing a <b><tt>metaData</tt></b> property <b>and</b> the data. For example, the JSON data object might take the form:</p><pre><code>{
 metaData: {
 "<a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-idProperty">idProperty</a>": "id",
 "<a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-root">root</a>": "rows",
 "<a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-totalProperty">totalProperty</a>": "results"
 "<a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-successProperty">successProperty</a>": "success",
 "<a href="output/Ext.data.DataReader.html#Ext.data.DataReader-fields">fields</a>": [
 {"name": "name"},
 {"name": "job", "mapping": "occupation"}
 ],
 // used by store to set its sortInfo
 "sortInfo":{
 "field": "name",
 "direction": "ASC"
 },
 // <a href="Ext.PagingToolbar.html">paging data</a> (if applicable)
 "start": 0,
 "limit": 2,
 // custom property
 "foo": "bar"
 },
 // Reader's configured <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-successProperty">successProperty</a>
 "success": true,
 // Reader's configured <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-totalProperty">totalProperty</a>
 "results": 2000,
 // Reader's configured <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-root">root</a>
 // (this data simulates 2 results <a href="Ext.PagingToolbar.html">per page</a>)
 "rows": [ // <b>&#42;Note:</b> this must be an Array
 { "id": 1, "name": "Bill", "occupation": "Gardener" },
 { "id": 2, "name":  "Ben", "occupation": "Horticulturalist" }
 ]
 }
 </code></pre><p>The <b><tt>metaData</tt></b> property in the JSON data object should contain:</p><div class="mdetail-params"><ul><li>any of the configuration options for this class</li><li>a <b><tt><a href="output/Ext.data.Record.html#Ext.data.Record-fields">fields</a></tt></b> property which the JsonReader will use as an argument to the <a href="output/Ext.data.Record.html#Ext.data.Record-create">data Record create method</a> in order to configure the layout of the Records it will produce.</li><li>a <b><tt><a href="output/Ext.data.Store.html#Ext.data.Store-sortInfo">sortInfo</a></tt></b> property which the JsonReader will use to set the <a href="Ext.data.Store.html">Ext.data.Store</a>'s <a href="output/Ext.data.Store.html#Ext.data.Store-sortInfo">sortInfo</a> property</li><li>any custom properties needed</li></ul></div>
 * <p>This class serves as a typed config object for constructor of class JsonReader.</p>
 *
 * @see ext.data.JsonReader
 */
[ExtConfig(target="ext.data.JsonReader")]
public class jsonreader extends datareader {

  public function jsonreader(config:Object = null) {

    super(config);
  }


  /**
   [id] Name of the property within a row object that contains a record identifier value. Defaults to <tt>id</tt>
   */
  public native function get idProperty():String;

  /**
   * @private
   */
  public native function set idProperty(value:String):void;

  /**
   [undefined] <b>Required</b>. The name of the property which contains the Array of row objects. Defaults to <tt>undefined</tt>. An exception will be thrown if the root property is undefined. The data packet value for this property should be an empty array to clear the data or show no data.
   */
  public native function get root():String;

  /**
   * @private
   */
  public native function set root(value:String):void;

  /**
   [success] Name of the property from which to retrieve the success attribute. Defaults to <tt>success</tt>. See <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a>.<a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-exception">exception</a> for additional information.
   */
  public native function get successProperty():String;

  /**
   * @private
   */
  public native function set successProperty(value:String):void;

  /**
   [total] Name of the property from which to retrieve the total number of records in the dataset. This is only needed if the whole dataset is not passed in one go, but is being paged from the remote server. Defaults to <tt>total</tt>.
   */
  public native function get totalProperty():String;

  /**
   * @private
   */
  public native function set totalProperty(value:String):void;


}
}
    