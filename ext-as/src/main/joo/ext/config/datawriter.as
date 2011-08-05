package ext.config {

import joo.JavaScriptObject;

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
 * <p>This class serves as a typed config object for constructor of class DataWriter.</p>
 *
 * @see ext.data.DataWriter
 */
[ExtConfig(target="ext.data.DataWriter")]
public class datawriter extends JavaScriptObject {

  public function datawriter(config:Object = null) {
    super(config);
  }


  /**
   Abstract method that should be implemented in all subclasses (e.g.: <a href="output/Ext.data.JsonWriter.html#Ext.data.JsonWriter-createRecord">JsonWriter.createRecord</a>)
   */
  public native function get createRecord():Function;

  /**
   * @private
   */
  public native function set createRecord(value:Function):void;

  /**
   Abstract method that should be implemented in all subclasses (e.g.: <a href="output/Ext.data.JsonWriter.html#Ext.data.JsonWriter-destroyRecord">JsonWriter.destroyRecord</a>)
   */
  public native function get destroyRecord():Function;

  /**
   * @private
   */
  public native function set destroyRecord(value:Function):void;

  /**
   <tt>false</tt> by default. Set <tt>true</tt> to have the DataWriter <b>always</b> write HTTP params as a list, even when acting upon a single record.
   */
  public native function get listful():Boolean;

  /**
   * @private
   */
  public native function set listful(value:Boolean):void;

  /**
   Abstract method that should be implemented in all subclasses (e.g.: <a href="output/Ext.data.JsonWriter.html#Ext.data.JsonWriter-updateRecord">JsonWriter.updateRecord</a>
   */
  public native function get updateRecord():Function;

  /**
   * @private
   */
  public native function set updateRecord(value:Function):void;

  /**
   <tt>false</tt> by default. Set <tt>true</tt> to have DataWriter return ALL fields of a modified record -- not just those that changed. <tt>false</tt> to have DataWriter only request modified fields from a record.
   */
  public native function get writeAllFields():Boolean;

  /**
   * @private
   */
  public native function set writeAllFields(value:Boolean):void;


}
}
    