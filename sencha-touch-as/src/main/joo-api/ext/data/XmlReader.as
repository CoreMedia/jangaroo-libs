package ext.data {


/**
 * The XML Reader is used by a Proxy to read a server response that is sent back in XML format. This usually happens as a result of loading a Store - for example we might create something like this:
 <pre><code>Ext.regModel('User', {
 fields: ['id', 'name', 'email']
 });

 var store = new Ext.data.Store({
 model: 'User',
 proxy: {
 type: 'ajax',
 url : 'users.xml',
 reader: {
 type: 'xml',
 record: 'user'
 }
 }
 });
 </code></pre><p>The example above creates a 'User' model. Models are explained in the <a href="Ext.data.Model.html">Model</a> docs if you're not already familiar with them.</p><p>We created the simplest type of XML Reader possible by simply telling our <a href="Ext.data.Store.html">Store</a>'s <a href="Ext.data.Proxy.html">Proxy</a> that we want a XML Reader. The Store automatically passes the configured model to the Store, so it is as if we passed this instead:</p><pre><code>reader: {
 type : 'xml',
 model: 'User',
 record: 'user'
 }
 </code></pre><p>The reader we set up is ready to read data from our server - at the moment it will accept a response like this:</p><pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
 &lt;user&gt;
 &lt;id&gt;1&lt;/id&gt;
 &lt;name&gt;Ed Spencer&lt;/name&gt;
 &lt;email&gt;ed&#64;sencha.com&lt;/email&gt;
 &lt;/user&gt;
 &lt;user&gt;
 &lt;id&gt;2&lt;/id&gt;
 &lt;name&gt;Abe Elias&lt;/name&gt;
 &lt;email&gt;abe&#64;sencha.com&lt;/email&gt;
 &lt;/user&gt;
 </code></pre><p>The XML Reader uses the configured <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-record">record</a> option to pull out the data for each record - in this case we set record to 'user', so each &lt;user&gt; above will be converted into a User model.</p><p><u>Reading other XML formats</u></p><p>If you already have your XML format defined and it doesn't look quite like what we have above, you can usually pass XmlReader a couple of configuration options to make it parse your format. For example, we can use the <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-root">root</a> configuration to parse data that comes back like this:</p><pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
 &lt;users&gt;
 &lt;user&gt;
 &lt;id&gt;1&lt;/id&gt;
 &lt;name&gt;Ed Spencer&lt;/name&gt;
 &lt;email&gt;ed&#64;sencha.com&lt;/email&gt;
 &lt;/user&gt;
 &lt;user&gt;
 &lt;id&gt;2&lt;/id&gt;
 &lt;name&gt;Abe Elias&lt;/name&gt;
 &lt;email&gt;abe&#64;sencha.com&lt;/email&gt;
 &lt;/user&gt;
 &lt;/users&gt;
 </code></pre><p>To parse this we just pass in a <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-root">root</a> configuration that matches the 'users' above:</p><pre><code>reader: {
 type  : 'xml',
 root  : 'users',
 record: 'user'
 }
 </code></pre><p>Note that XmlReader doesn't care whether your <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-root">root</a> and <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-record">record</a> elements are nested deep inside a larger structure, so a response like this will still work:</p><pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
 &lt;deeply&gt;
 &lt;nested&gt;
 &lt;xml&gt;
 &lt;users&gt;
 &lt;user&gt;
 &lt;id&gt;1&lt;/id&gt;
 &lt;name&gt;Ed Spencer&lt;/name&gt;
 &lt;email&gt;ed&#64;sencha.com&lt;/email&gt;
 &lt;/user&gt;
 &lt;user&gt;
 &lt;id&gt;2&lt;/id&gt;
 &lt;name&gt;Abe Elias&lt;/name&gt;
 &lt;email&gt;abe&#64;sencha.com&lt;/email&gt;
 &lt;/user&gt;
 &lt;/users&gt;
 &lt;/xml&gt;
 &lt;/nested&gt;
 &lt;/deeply&gt;
 </code></pre><p><u>Response metadata</u></p><p>The server can return additional data in its response, such as the <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-totalProperty">total number of records</a> and the <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-successProperty">success status of the response</a>. These are typically included in the XML response like this:</p><pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
 &lt;total&gt;100&lt;/total&gt;
 &lt;success&gt;true&lt;/success&gt;
 &lt;users&gt;
 &lt;user&gt;
 &lt;id&gt;1&lt;/id&gt;
 &lt;name&gt;Ed Spencer&lt;/name&gt;
 &lt;email&gt;ed&#64;sencha.com&lt;/email&gt;
 &lt;/user&gt;
 &lt;user&gt;
 &lt;id&gt;2&lt;/id&gt;
 &lt;name&gt;Abe Elias&lt;/name&gt;
 &lt;email&gt;abe&#64;sencha.com&lt;/email&gt;
 &lt;/user&gt;
 &lt;/users&gt;
 </code></pre><p>If these properties are present in the XML response they can be parsed out by the XmlReader and used by the Store that loaded it. We can set up the names of these properties by specifying a final pair of configuration options:</p><pre><code>reader: {
 type: 'xml',
 root: 'users',
 totalProperty  : 'total',
 successProperty: 'success'
 }
 </code></pre><p>These final options are not necessary to make the Reader work, but can be useful when the server needs to report an error or if it needs to indicate that there is a lot of data available of which only a subset is currently being returned.</p><p><u>Response format</u></p><p><b>Note:</b> in order for the browser to parse a returned XML document, the Content-Type header in the HTTP response must be set to "text/xml" or "application/xml". This is very important - the XmlReader will not work correctly otherwise.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.xmlreader
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlReader.html#cls-Ext.data.XmlReader Ext JS source
 */
public class XmlReader extends Reader {

  /**
   *
   *
   * @see ext.config.xmlreader
   */
  public function XmlReader() {
    super(null);
  }

  /**
   DEPRECATED - will be removed in Ext JS 5.0. This is just a copy of this.rawData - use that instead
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlReader.html#prop-Ext.data.XmlReader-xmlData Ext JS source
   */
  public native function get xmlData():Object;

  /**
   * @private
   */
  public native function set xmlData(value:Object):void;

  /**
   DEPRECATED - this will be removed in Ext JS 5.0. Please use idProperty instead
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get id():String;

  /**
   DEPRECATED - this will be removed in Ext JS 5.0. Please use idProperty instead
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get idPath():String;

  /**
   The DomQuery path to the repeated element which contains record information. <b>This is an alias for the <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-root">root</a> config option.</b>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get record():String;

  /**
   DEPRECATED - this will be removed in Ext JS 5.0. Please use successProperty instead
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get success():String;

  /**
   *
   *
   * @param dataRoot data-root from server response
   * @param returnRecords [false] Set true to return instances of Ext.data.Record
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlReader.html#method-Ext.data.XmlReader-extractData Ext JS source
   */
  override public native function extractData(dataRoot:*, returnRecords:Boolean):void;

  /**
   *
   *
   * @param data The raw data object
   * @param associationName The name of the association to get data for (uses associationKey if present)
   * @return The root
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlReader.html#method-Ext.data.XmlReader-getAssociatedDataRoot Ext JS source
   */
  override public native function getAssociatedDataRoot(data:*, associationName:String):*;

  /**
   * Normalizes the data object
   *
   * @param data The data object
   * @return Returns the documentElement property of the data object if present, or the same object if not
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlReader.html#method-Ext.data.XmlReader-getData Ext JS source
   */
  override public native function getData(data:Object):Object;

  /**
   *
   *
   * @param data The data object
   * @return The root node element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlReader.html#method-Ext.data.XmlReader-getRoot Ext JS source
   */
  override public native function getRoot(data:*):*;

  /**
   * Parses an XML document and returns a ResultSet containing the model instances
   *
   * @param data The raw data object
   * @return The parsed result set
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlReader.html#method-Ext.data.XmlReader-readRecords Ext JS source
   */
  override public native function readRecords(data:*):ResultSet;

}
}
    