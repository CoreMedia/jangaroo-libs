package ext.data {
/**
 * Ext.data.DataWriter facilitates create, update, and destroy actions between an Ext.data.Store and a server-side framework. A Writer enabled Store will automatically manage the Ajax requests to perform CRUD actions on a Store.
 <p>Ext.data.DataWriter is an abstract base class which is intended to be extended and should not be created directly. For existing implementations, see <a href="Ext.data.JsonWriter.html">Ext.data.JsonWriter</a>.</p><p>Creating a writer is simple:</p><pre><code>var writer = new Ext.data.JsonWriter({
 encode: false   // &lt;--- false causes data to be printed to jsonData config-property of Ext.Ajax#reqeust
 });
 </code></pre><p>Same old JsonReader as Ext-2.x:</p><pre><code>var reader = new Ext.data.JsonReader({idProperty: 'id'}, [{name: 'first'}, {name: 'last'}, {name: 'email'}]);
 </code></pre><p>The proxy for a writer enabled store can be configured with a simple <code>url</code>:</p><pre><code>// Create a standard HttpProxy instance.
 var proxy = new Ext.data.HttpProxy({
 url: 'app.php/users'    // &lt;--- Supports "provides"-type urls, such as '/users.json', '/products.xml' (Hello Rails/Merb)
 });
 </code></pre><p>For finer grained control, the proxy may also be configured with an <code>API</code>:</p><pre><code>// Maximum flexibility with the API-configuration
 var proxy = new Ext.data.HttpProxy({
 api: {
 read    : 'app.php/users/read',
 create  : 'app.php/users/create',
 update  : 'app.php/users/update',
 destroy : {  // &lt;--- Supports object-syntax as well
 url: 'app.php/users/destroy',
 method: "DELETE"
 }
 }
 });
 </code></pre><p>Pulling it all together into a Writer-enabled Store:</p><pre><code>var store = new Ext.data.Store({
 proxy: proxy,
 reader: reader,
 writer: writer,
 autoLoad: true,
 autoSave: true  // -- Cell-level updates.
 });
 </code></pre><p>Initiating write-actions <b>automatically</b>, using the existing Ext2.0 Store/Record API:</p><pre><code>var rec = store.getAt(0);
 rec.set('email', 'foo&#64;bar.com');  // &lt;--- Immediately initiates an UPDATE action through configured proxy.

 store.remove(rec);  // &lt;---- Immediately initiates a DESTROY action through configured proxy.
 </code></pre><p>For <b>record/batch</b> updates, use the Store-configuration <a href="output/Ext.data.Store.html#Ext.data.Store-autoSave">autoSave:false</a></p><pre><code>var store = new Ext.data.Store({
 proxy: proxy,
 reader: reader,
 writer: writer,
 autoLoad: true,
 autoSave: false  // -- disable cell-updates
 });

 var urec = store.getAt(0);
 urec.set('email', 'foo&#64;bar.com');

 var drec = store.getAt(1);
 store.remove(drec);

 // Push the button!
 store.save();
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.datawriter
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.DataWriter Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "data.DataWriter")]
public class DataWriter {

  /**
   * Create a new DataWriter
   *
   * @param meta Metadata configuration options (implementation-specific)
   * @param recordType Either an Array of field definition objects as specified in <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>, or an <a href="Ext.data.Record.html">Ext.data.Record</a> object created using <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>.
   * @see ext.config.datawriter
   */
  public function DataWriter(meta:Object, recordType:Object) {
    super();
  }

  /**
   <tt>false</tt> by default. Set <tt>true</tt> to have the DataWriter <b>always</b> write HTTP params as a list, even when acting upon a single record.
   */
  public native function get listful():Boolean;

  /**
   <tt>false</tt> by default. Set <tt>true</tt> to have DataWriter return ALL fields of a modified record -- not just those that changed. <tt>false</tt> to have DataWriter only request modified fields from a record.
   */
  public native function get writeAllFields():Boolean;

  /**
   * Compiles a Store recordset into a data-format defined by an extension such as <a href="Ext.data.JsonWriter.html">Ext.data.JsonWriter</a> or <a href="Ext.data.XmlWriter.html">Ext.data.XmlWriter</a> in preparation for a <a href="output/Ext.data.Api.html#Ext.data.Api-actions">server-write action</a>. The first two params are similar similar in nature to <a href="output/Ext.html#Ext-apply">Ext.apply</a>, Where the first parameter is the <i>receiver</i> of paramaters and the second, baseParams, <i>the source</i>.
   *
   * @param params The request-params receiver.
   * @param baseParams as defined by <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">Ext.data.Store.baseParams</a>. The baseParms must be encoded by the extending class, eg: <a href="Ext.data.JsonWriter.html">Ext.data.JsonWriter</a>, <a href="Ext.data.XmlWriter.html">Ext.data.XmlWriter</a>.
   * @param action [<a href="output/Ext.data.Api.html#Ext.data.Api-actions">create|update|destroy</a>]
   * @param rs The recordset to write, the subject(s) of the write action.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.DataWriter-method-apply Sencha Docs Ext JS 3.4
   */
  public native function apply(params:Object, baseParams:Object, action:String, rs:*):void;

  /**
   * Abstract method meant to be overridden by all DataWriter extensions. It's the extension's job to apply the "data" to the "params". The data-object provided to render is populated with data according to the meta-info defined in the user's DataReader config,
   *
   * @param baseParams as defined by <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">Ext.data.Store.baseParams</a>. The baseParms must be encoded by the extending class, eg: <a href="Ext.data.JsonWriter.html">Ext.data.JsonWriter</a>, <a href="Ext.data.XmlWriter.html">Ext.data.XmlWriter</a>.
   * @param params Http params to be sent to server.
   * @param data object populated according to DataReader meta-data.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.DataWriter-method-render Sencha Docs Ext JS 3.4
   */
  public native function render(baseParams:Object, params:Object, data:*):void;

  /**
   * Converts a <a href="output/Ext.data.DataWriter.html#Ext.data.DataWriter-toHash">Hashed</a> <a href="Ext.data.Record.html">Ext.data.Record</a> to fields-array array suitable for encoding to xml via XTemplate, eg: <pre><code>&lt;tpl for="."&gt;&lt;{name}&gt;{value}&lt;/{name}&lt;/tpl&gt;</code></pre>eg, <b>non-phantom</b>: <pre><code>{id: 1, first: 'foo', last: 'bar'} --&gt; [{name: 'id', value: 1}, {name: 'first', value: 'foo'}, {name: 'last', value: 'bar'}]</code></pre><a href="output/Ext.data.Record.html#Ext.data.Record-phantom">Phantom</a> records will have had their idProperty omitted in <a href="output/Ext.data.DataWriter.html#Ext.data.DataWriter-toHash">toHash</a> if determined to be auto-generated. Non AUTOINCREMENT pks should have been protected.
   *
   * @param data Hashed by Ext.data.DataWriter#toHash
   * @return Array of attribute-objects.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.DataWriter-method-toArray Sencha Docs Ext JS 3.4
   */
  protected native function toArray(data:Object):Array;

  /**
   * Converts a Record to a hash, taking into account the state of the Ext.data.Record along with configuration properties related to its rendering, such as <a href="output/Ext.data.DataWriter.html#Ext.data.DataWriter-writeAllFields">writeAllFields</a>, <a href="output/Ext.data.Record.html#Ext.data.Record-phantom">phantom</a>, <a href="output/Ext.data.Record.html#Ext.data.Record-getChanges">getChanges</a> and <a href="output/Ext.data.DataReader.html#Ext.data.DataReader-idProperty">idProperty</a>
   *
   * @param rec The Record from which to create a hash.
   * @param config <b>NOT YET IMPLEMENTED</b>. Will implement an exclude/only configuration for fine-control over which fields do/don't get rendered.
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.DataWriter-method-toHash Sencha Docs Ext JS 3.4
   */
  protected native function toHash(rec:Record, config:Object):Object;

}
}
    