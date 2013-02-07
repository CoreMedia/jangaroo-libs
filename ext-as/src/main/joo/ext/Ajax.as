package ext {


/**
 * The global Ajax request class that provides a simple way to make Ajax requests with maximum flexibility.
 <p>Since Ext.Ajax is a singleton, you can set common properties/events for it once and override them at the request function level only if necessary.</p><p>Common <b>Properties</b> you may want to set are:</p><div class="mdetail-params"><ul><li><b><tt><a href="output/Ext.Ajax.html#Ext.Ajax-method">method</a></tt></b></li><li><b><tt><a href="output/Ext.Ajax.html#Ext.Ajax-extraParams">extraParams</a></tt></b></li><li><b><tt><a href="output/Ext.Ajax.html#Ext.Ajax-url">url</a></tt></b></li></ul></div><pre><code>// Default headers to pass in every request
 Ext.Ajax.defaultHeaders = {
 'Powered-By': 'Ext'
 };
 </code></pre><br/><br/> <p>Common <b>Events</b> you may want to set are:</p><div class="mdetail-params"><ul><li><b><tt><a href="output/Ext.data.Connection.html#Ext.data.Connection-beforerequest">beforerequest</a></tt></b></li><li><b><tt><a href="output/Ext.data.Connection.html#Ext.data.Connection-requestcomplete">requestcomplete</a></tt></b></li><li><b><tt><a href="output/Ext.data.Connection.html#Ext.data.Connection-requestexception">requestexception</a></tt></b></li></ul></div><pre><code>// Example: show a spinner during all Ajax requests
 Ext.Ajax.on('beforerequest', this.showSpinner, this);
 Ext.Ajax.on('requestcomplete', this.hideSpinner, this);
 Ext.Ajax.on('requestexception', this.hideSpinner, this);
 </code></pre><br/><br/> <p>An example request:</p><pre><code>// Basic request
 Ext.Ajax.<a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a>({
 url: 'foo.php',
 success: someFn,
 failure: otherFn,
 headers: {
 'my-header': 'foo'
 },
 params: { foo: 'bar' }
 });

 // Simple ajax form submission
 Ext.Ajax.<a href="output/Ext.data.Connection.html#Ext.data.Connection-request">request</a>({
 form: 'some-form',
 params: 'foo=bar'
 });
 </code></pre><br/><br/>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *
 * @see ext.AjaxClass
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Ajax Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.Ajax")]
public const Ajax:AjaxClass;

}
