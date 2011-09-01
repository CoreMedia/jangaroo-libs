package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class XmlReader.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.XmlReader
 */
[ExtConfig(target="ext.data.XmlReader")]
public class xmlreader extends reader {

  public function xmlreader(config:Object = null) {

    super(config);
  }


  /**
   DEPRECATED - this will be removed in Ext JS 5.0. Please use idProperty instead
   */
  public native function get id():String;

  /**
   * @private
   */
  public native function set id(value:String):void;

  /**
   DEPRECATED - this will be removed in Ext JS 5.0. Please use idProperty instead
   */
  public native function get idPath():String;

  /**
   * @private
   */
  public native function set idPath(value:String):void;

  /**
   The DomQuery path to the repeated element which contains record information. <b>This is an alias for the <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-root">root</a> config option.</b>
   */
  public native function get record():String;

  /**
   * @private
   */
  public native function set record(value:String):void;

  /**
   DEPRECATED - this will be removed in Ext JS 5.0. Please use successProperty instead
   */
  public native function get success():String;

  /**
   * @private
   */
  public native function set success(value:String):void;


}
}
    