package ext.form {


/**
 * The subclasses of this class provide actions to perform upon <a href="Ext.form.BasicForm.html">Form</a>s.
 <p>Instances of this class are only created by a <a href="Ext.form.BasicForm.html">Form</a> when the Form needs to perform an action such as submit or load. The Configuration options listed for this class are set through the Form's action methods: <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-submit">submit</a>, <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-load">load</a> and <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">doAction</a></p><p>The instance of Action which performed the action is passed to the success and failure callbacks of the Form's action methods (<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-submit">submit</a>, <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-load">load</a> and <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">doAction</a>), and to the <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-actioncomplete">actioncomplete</a> and <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-actionfailed">actionfailed</a> event handlers.</p>
 * <p>This component is created by the xtype 'formaction' / the EXML element &lt;formaction>.</p>
 * @see ext.config.formaction
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#cls-Ext.form.Action Ext JS source
 */
public class Action {

  /**
   * Create a new Action.
   *
   * @param config The config object
   * @see ext.config.formaction
   */
  public function Action(config:Object = null) {
    super();
  }

  /**
   Failure type returned when client side validation of the Form fails thus aborting a submit action. Client side validation is performed unless <a href="output/Ext.form.Action.html#Ext.form.Action-clientValidation">clientValidation</a> is explicitly set to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#prop-Ext.form.Action-CLIENT_INVALID Ext JS source
   */
  public static const CLIENT_INVALID:String;

  /**
   Failure type returned when a communication error happens when attempting to send a request to the remote server. The <a href="output/Ext.form.Action.html#Ext.form.Action-response">response</a> may be examined to provide further information.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#prop-Ext.form.Action-CONNECT_FAILURE Ext JS source
   */
  public static const CONNECT_FAILURE:String;

  /**
   Failure type returned when the response's <tt style="font-weight:bold">success</tt> property is set to <tt>false</tt>, or no field values are returned in the response's <tt style="font-weight:bold">data</tt> property.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#prop-Ext.form.Action-LOAD_FAILURE Ext JS source
   */
  public static const LOAD_FAILURE:String;

  /**
   Failure type returned when server side processing fails and the <a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a>'s <tt style="font-weight:bold">success</tt> property is set to <tt>false</tt>.
   <p>In the case of a form submission, field-specific error messages may be returned in the <a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a>'s <tt style="font-weight:bold">errors</tt> property.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#prop-Ext.form.Action-SERVER_INVALID Ext JS source
   */
  public static const SERVER_INVALID:String;

  /**
   The type of failure detected will be one of these: <a href="output/Ext.form.Action.html#Ext.form.Action-CLIENT_INVALID">CLIENT_INVALID</a>, <a href="output/Ext.form.Action.html#Ext.form.Action-SERVER_INVALID">SERVER_INVALID</a>, <a href="output/Ext.form.Action.html#Ext.form.Action-CONNECT_FAILURE">CONNECT_FAILURE</a>, or <a href="output/Ext.form.Action.html#Ext.form.Action-LOAD_FAILURE">LOAD_FAILURE</a>. Usage: <pre><code>var fp = new Ext.form.FormPanel({
   ...
   buttons: [{
   text: 'Save',
   formBind: true,
   handler: function(){
   if(fp.getForm().isValid()){
   fp.getForm().submit({
   url: 'form-submit.php',
   waitMsg: 'Submitting your data...',
   success: function(form, action){
   // server responded with success = true
   var result = action.<a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a>;
   },
   failure: function(form, action){
   if (action.<a href="output/Ext.form.Action.html#Ext.form.Action-failureType">failureType</a> === Ext.form.Action.<a href="output/Ext.form.Action.html#Ext.form.Action-CONNECT_FAILURE">CONNECT_FAILURE</a>) {
   Ext.Msg.alert('Error',
   'Status:'+action.<a href="output/Ext.form.Action.html#Ext.form.Action-response">response</a>.status+': '+
   action.<a href="output/Ext.form.Action.html#Ext.form.Action-response">response</a>.statusText);
   }
   if (action.failureType === Ext.form.Action.<a href="output/Ext.form.Action.html#Ext.form.Action-SERVER_INVALID">SERVER_INVALID</a>){
   // server responded with success = false
   Ext.Msg.alert('Invalid', action.<a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a>.errormsg);
   }
   }
   });
   }
   }
   },{
   text: 'Reset',
   handler: function(){
   fp.getForm().reset();
   }
   }]
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#prop-Ext.form.Action-failureType Ext JS source
   */
  public native function get failureType():String;

  /**
   * @private
   */
  public native function set failureType(value:String):void;

  /**
   The XMLHttpRequest object used to perform the action.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#prop-Ext.form.Action-response Ext JS source
   */
  public native function get response():Object;

  /**
   * @private
   */
  public native function set response(value:Object):void;

  /**
   The decoded response object containing a boolean <tt style="font-weight:bold">success</tt> property and other, action-specific properties.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#prop-Ext.form.Action-result Ext JS source
   */
  public native function get result():Object;

  /**
   * @private
   */
  public native function set result(value:Object):void;

  /**
   The type of action this Action instance performs. Currently only "submit" and "load" are supported.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#prop-Ext.form.Action-type Ext JS source
   */
  public native function get type():String;

  /**
   * @private
   */
  public native function set type(value:String):void;

  /**
   The HTTP method to use to access the requested URL. Defaults to the <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>'s method, or if that is not specified, the underlying DOM form's method.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get method():String;

  /**
   Extra parameter values to pass. These are added to the Form's <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-baseParams">Ext.form.BasicForm.baseParams</a> and passed to the specified URL along with the Form's input fields.
   <p>Parameters are encoded as standard HTTP parameters using <a href="output/Ext.html#Ext-urlEncode">Ext.urlEncode</a>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get params():*;

  /**
   When set to <tt><b>true</b></tt>, causes the Form to be <a href="Ext.form.BasicForm.reset.html">reset</a> on Action success. If specified, this happens <b>before</b> the <a href="output/Ext.form.Action.html#Ext.form.Action-success">success</a> callback is called and before the Form's <a href="Ext.form.BasicForm.actioncomplete.html">actioncomplete</a> event fires.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get reset():Boolean;

  /**
   The scope in which to call the callback functions (The <tt>this</tt> reference for the callback functions).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

  /**
   If set to <tt>true</tt>, the emptyText value will be sent with the form when it is submitted. Defaults to <tt>true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get submitEmptyText():Boolean;

  /**
   The number of seconds to wait for a server response before failing with the <a href="output/Ext.form.Action.html#Ext.form.Action-failureType">failureType</a> as <a href="output/Ext.form.Action.html#Ext.form.Action-Action.CONNECT_FAILURE">Action.CONNECT_FAILURE</a>. If not specified, defaults to the configured <tt><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-timeout">timeout</a></tt> of the <a href="Ext.form.BasicForm.html">form</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get timeout():Number;

  /**
   The URL that the Action is to invoke.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get url():String;

  /**
   The message to be displayed by a call to <a href="output/Ext.MessageBox.html#Ext.MessageBox-wait">Ext.MessageBox.wait</a> during the time the action is being processed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get waitMsg():String;

  /**
   The title to be displayed by a call to <a href="output/Ext.MessageBox.html#Ext.MessageBox-wait">Ext.MessageBox.wait</a> during the time the action is being processed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get waitTitle():String;

}
}
    