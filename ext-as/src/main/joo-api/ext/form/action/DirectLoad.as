package ext.form.action {
/**
 * Provides Ext.direct support for loading form data.
 <p>This example illustrates usage of Ext.Direct to <b>load</b> a form through Ext.Direct.</p><pre><code>var myFormPanel = new Ext.form.FormPanel({
 // configs for FormPanel
 title: 'Basic Information',
 renderTo: document.body,
 width: 300, height: 160,
 padding: 10,

 // configs apply to child items
 defaults: {anchor: '100%'},
 defaultType: 'textfield',
 items: [{
 fieldLabel: 'Name',
 name: 'name'
 },{
 fieldLabel: 'Email',
 name: 'email'
 },{
 fieldLabel: 'Company',
 name: 'company'
 }],

 // configs for BasicForm
 api: {
 // The server-side method to call for load() requests
 load: Profile.getBasicInfo,
 // The server-side must mark the submit handler as a 'formHandler'
 submit: Profile.updateBasicInfo
 },
 // specify the order for the passed params
 paramOrder: ['uid', 'foo']
 });

 // load the form
 myFormPanel.getForm().load({
 // pass 2 arguments to server side getBasicInfo method (len=2)
 params: {
 foo: 'bar',
 uid: 34
 }
 });
 </code></pre>The data packet sent to the server will resemble something like: <pre><code>[
 {
 "action":"Profile","method":"getBasicInfo","type":"rpc","tid":2,
 "data":[34,"bar"] // note the order of the params
 }
 ]
 </code></pre>The form will process a data packet returned by the server that is similar to the following format: <pre><code>[
 {
 "action":"Profile","method":"getBasicInfo","type":"rpc","tid":2,
 "result":{
 "success":true,
 "data":{
 "name":"Fred Flintstone",
 "company":"Slate Rock and Gravel",
 "email":"fred.flintstone&#64;slaterg.com"
 }
 }
 }
 ]
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.directload
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#cls-Ext.form.Action.DirectLoad Ext JS source
 */
public class DirectLoad extends Load {

  /**
   *
   *
   * @see ext.config.directload
   */
  public function DirectLoad() {
    super();
  }

}
}
    