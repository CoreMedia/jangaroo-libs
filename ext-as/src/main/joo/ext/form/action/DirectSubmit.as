package ext.form.action {
/**
 * Provides Ext.direct support for submitting form data.
 <p>This example illustrates usage of Ext.Direct to <b>submit</b> a form through Ext.Direct.</p><pre><code>var myFormPanel = new Ext.form.FormPanel({
 // configs for FormPanel
 title: 'Basic Information',
 renderTo: document.body,
 width: 300, height: 160,
 padding: 10,
 buttons:[{
 text: 'Submit',
 handler: function(){
 myFormPanel.getForm().submit({
 params: {
 foo: 'bar',
 uid: 34
 }
 });
 }
 }],

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
 </code></pre>The data packet sent to the server will resemble something like: <pre><code>{
 "action":"Profile","method":"updateBasicInfo","type":"rpc","tid":"6",
 "result":{
 "success":true,
 "id":{
 "extAction":"Profile","extMethod":"updateBasicInfo",
 "extType":"rpc","extTID":"6","extUpload":"false",
 "name":"Aaron Conran","email":"aaron&#64;extjs.com","company":"Ext JS, LLC"
 }
 }
 }
 </code></pre>The form will process a data packet returned by the server that is similar to the following: <pre><code>// sample success packet (batched requests)
 [
 {
 "action":"Profile","method":"updateBasicInfo","type":"rpc","tid":3,
 "result":{
 "success":true
 }
 }
 ]

 // sample failure packet (one request)
 {
 "action":"Profile","method":"updateBasicInfo","type":"rpc","tid":"6",
 "result":{
 "errors":{
 "email":"already taken"
 },
 "success":false,
 "foo":"bar"
 }
 }
 </code></pre>Also see the discussion in <a href="Ext.form.Action.DirectLoad.html">Ext.form.Action.DirectLoad</a>.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.directsubmit
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Action.DirectSubmit Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "form.Action.DirectSubmit")]
public class DirectSubmit extends Submit {

  /**
   *
   *
   * @see ext.config.directsubmit
   */
  public function DirectSubmit() {
    super();
  }

}
}
    