package ext.data {


/**
 * In-memory proxy. This proxy simply uses a local variable for data storage/retrieval, so its contents are lost on every page refresh.
 <p>Usually this Proxy isn't used directly, serving instead as a helper to a <a href="Ext.data.Store.html">Store</a> where a reader is required to load data. For example, say we have a Store for a User model and have some inline data we want to load, but this data isn't in quite the right format: we can use a MemoryProxy with a JsonReader to read it into our Store:</p><pre><code>//this is the model we will be using in the store
 Ext.regModel('User', {
 fields: [
 {name: 'id',    type: 'int'},
 {name: 'name',  type: 'string'},
 {name: 'phone', type: 'string', mapping: 'phoneNumber'}
 ]
 });

 //this data does not line up to our model fields - the phone field is called phoneNumber
 var data = {
 users: [
 {
 id: 1,
 name: 'Ed Spencer',
 phoneNumber: '555 1234'
 },
 {
 id: 2,
 name: 'Abe Elias',
 phoneNumber: '666 1234'
 }
 ]
 };

 //note how we set the 'root' in the reader to match the data structure above
 var store = new Ext.data.Store({
 autoLoad: true,
 model: 'User',
 data : data,
 proxy: {
 type: 'memory',
 reader: {
 type: 'json',
 root: 'users'
 }
 }
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.memoryproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MemoryProxy.html#cls-Ext.data.MemoryProxy Ext JS source
 */
[Native]
public class MemoryProxy extends ClientProxy {

  /**
   *
   *
   * @see ext.config.memoryproxy
   */
  public function MemoryProxy() {
    super();
  }

  /**
   Optional array of Records to load into the Proxy
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get data():Array;

  /**
   * Reads data from the configured <a href="output/Ext.data.MemoryProxy.html#Ext.data.MemoryProxy-data">data</a> object. Uses the Proxy's <a href="output/Ext.data.MemoryProxy.html#Ext.data.MemoryProxy-reader">reader</a>, if present
   *
   * @param operation The Operation to perform
   * @param callback Callback function to be called when the Operation has completed (whether successful or not)
   * @param scope Scope to execute the callback function in
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MemoryProxy.html#method-Ext.data.MemoryProxy-read Ext JS source
   */
  override public native function read(operation:Operation, callback:Function, scope:Object):void;

}
}
    