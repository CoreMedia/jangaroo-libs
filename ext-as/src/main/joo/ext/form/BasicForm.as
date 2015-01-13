package ext.form {
import ext.Element;
import ext.config.basicform;
import ext.data.DataReader;
import ext.data.Record;
import ext.util.MixedCollection;
import ext.util.Observable;

/**
 * Fires when an action is completed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Form</code>

 *       </li>

 *       <li>
 *           <code>action:Action</code>
 The <a href="Ext.form.Action.html">Ext.form.Action</a> that completed
 *       </li>

 * </ul>
 */
[Event(name="actioncomplete")]

/**
 * Fires when an action fails.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Form</code>

 *       </li>

 *       <li>
 *           <code>action:Action</code>
 The <a href="Ext.form.Action.html">Ext.form.Action</a> that failed
 *       </li>

 * </ul>
 */
[Event(name="actionfailed")]

/**
 * Fires before any action is performed. Return false to cancel the action.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Form</code>

 *       </li>

 *       <li>
 *           <code>action:Action</code>
 The <a href="Ext.form.Action.html">Ext.form.Action</a> to be performed
 *       </li>

 * </ul>
 */
[Event(name="beforeaction")]


/**
 * Encapsulates the DOM &lt;form&gt; element at the heart of the <a href="Ext.form.FormPanel.html">FormPanel</a> class, and provides input field management, validation, submission, and form loading services.
 <p>By default, Ext Forms are submitted through Ajax, using an instance of <a href="Ext.form.Action.Submit.html">Ext.form.Action.Submit</a>. To enable normal browser submission of an Ext Form, use the <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-standardSubmit">standardSubmit</a> config option.</p><p style="font-weight: bold"><u>File Uploads</u></p><p><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-fileUpload">File uploads</a> are not performed using Ajax submission, that is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the DOM <tt>&lt;form&gt;</tt> element temporarily modified to have its <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer to a dynamically generated, hidden <tt>&lt;iframe&gt;</tt> which is inserted into the document but removed after the return data has been gathered.</p><p>The server response is parsed by the browser to create the document for the IFRAME. If the server is using JSON to send the return object, then the <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p><p>Characters which are significant to an HTML parser must be sent as HTML entities, so encode "&lt;" as "&amp;lt;", "&amp;" as "&amp;amp;" etc.</p><p>The response text is retrieved from the document, and a fake XMLHttpRequest object is created containing a <tt>responseText</tt> property in order to conform to the requirements of event handlers and callbacks.</p><p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a> and some server technologies (notably JEE) may require some custom processing in order to retrieve parameter names and parameter values from the packet content.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.basicform
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "form.BasicForm")]
public class BasicForm extends Observable {

  /**
   *
   *
   * @param el The form element or its id
   * @param config Configuration options
   * @see ext.config.basicform
   */
  public function BasicForm(el:*, config:basicform) {
    super();
  }

  /**
   A <a href="Ext.util.MixedCollection.html">MixedCollection</a> containing all the Ext.form.Fields in this form.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-property-items Sencha Docs Ext JS 3.4
   */
  public native function get items():MixedCollection;

  /**
   * @private
   */
  public native function set items(value:MixedCollection):void;

  /**
   By default wait messages are displayed with Ext.MessageBox.wait. You can target a specific element by passing it or its id or mask the form itself by passing in true.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-property-waitMsgTarget Sencha Docs Ext JS 3.4
   */
  public native function get waitMsgTarget():*;

  /**
   * @private
   */
  public native function set waitMsgTarget(value:*):void;

  /**
   If specified load and submit actions will be handled with <a href="Ext.form.Action.DirectLoad.html">Ext.form.Action.DirectLoad</a> and <a href="Ext.form.Action.DirectSubmit.html">Ext.form.Action.DirectSubmit</a>. Methods which have been imported by Ext.Direct can be specified here to load and submit forms. Such as the following:<pre><code>api: {
   load: App.ss.MyProfile.load,
   submit: App.ss.MyProfile.submit
   }
   </code></pre><p>Load actions can use <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-paramOrder">paramOrder</a></code> or <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-paramsAsHash">paramsAsHash</a></code> to customize how the load method is invoked. Submit actions will always use a standard form submit. The formHandler configuration must be set on the associated server-side method which has been imported by Ext.Direct</p>
   */
  public native function get api():Object;

  /**
   Parameters to pass with all requests. e.g. baseParams: {id: '123', foo: 'bar'}.
   <p>Parameters are encoded as standard HTTP parameters using <a href="output/Ext.html#Ext-urlEncode">Ext.urlEncode</a>.</p>
   */
  public native function get baseParams():Object;

  /**
   An Ext.data.DataReader (e.g. <a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a>) to be used to read field error messages returned from 'submit' actions. This is optional as there is built-in support for processing JSON.
   <p>The Records which provide messages for the invalid Fields must use the Field name (or id) as the Record ID, and must contain a field called 'msg' which contains the error message.</p><p>The errorReader does not have to be a full-blown implementation of a DataReader. It simply needs to implement a <tt>read(xhr)</tt> function which returns an Array of Records in an object with the following structure:</p><pre><code>{
   records: recordArray
   }
   </code></pre>
   */
  public native function get errorReader():DataReader;

  /**
   Set to true if this form is a file upload. <p>File uploads are not performed using normal 'Ajax' techniques, that is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the DOM <tt>&lt;form&gt;</tt> element temporarily modified to have its <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer to a dynamically generated, hidden <tt>&lt;iframe&gt;</tt> which is inserted into the document but removed after the return data has been gathered.</p><p>The server response is parsed by the browser to create the document for the IFRAME. If the server is using JSON to send the return object, then the <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p><p>Characters which are significant to an HTML parser must be sent as HTML entities, so encode "&lt;" as "&amp;lt;", "&amp;" as "&amp;amp;" etc.</p><p>The response text is retrieved from the document, and a fake XMLHttpRequest object is created containing a <tt>responseText</tt> property in order to conform to the requirements of event handlers and callbacks.</p><p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a> and some server technologies (notably JEE) may require some custom processing in order to retrieve parameter names and parameter values from the packet content.</p>
   */
  public native function get fileUpload():Boolean;

  /**
   The request method to use (GET or POST) for form actions if one isn't supplied in the action options.
   */
  public native function get method():String;

  /**
   A list of params to be executed server side. Defaults to <tt>undefined</tt>. Only used for the <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-api">api</a></code> <code>load</code> configuration.
   <br/><p>Specify the params in the order in which they must be executed on the server-side as either (1) an Array of String values, or (2) a String of params delimited by either whitespace, comma, or pipe. For example, any of the following would be acceptable:</p><pre><code>paramOrder: ['param1','param2','param3']
   paramOrder: 'param1 param2 param3'
   paramOrder: 'param1,param2,param3'
   paramOrder: 'param1|param2|param'
   </code></pre>
   */
  public native function get paramOrder():*;

  /**
   Only used for the <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-api">api</a></code> <code>load</code> configuration. Send parameters as a collection of named arguments (defaults to <tt>false</tt>). Providing a <tt><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-paramOrder">paramOrder</a></tt> nullifies this configuration.
   */
  public native function get paramsAsHash():Boolean;

  /**
   An Ext.data.DataReader (e.g. <a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a>) to be used to read data when executing 'load' actions. This is optional as there is built-in support for processing JSON. For additional information on using an XMLReader see the example provided in examples/form/xml-form.html.
   */
  public native function get reader():DataReader;

  /**
   If set to <tt>true</tt>, standard HTML form submits are used instead of XHR (Ajax) style form submissions. Defaults to <tt>false</tt>.
   <br/><p><b>Note:</b> When using <code>standardSubmit</code>, the <code>options</code> to <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-submit">submit</a></code> are ignored because Ext's Ajax infrastructure is bypassed. To pass extra parameters (e.g. <code>baseParams</code> and <code>params</code>), utilize hidden fields to submit extra data, for example:</p><pre><code>new Ext.FormPanel({
   standardSubmit: true,
   baseParams: {
   foo: 'bar'
   },
   <a href="url.html">url</a>: 'myProcess.php',
   items: [{
   xtype: 'textfield',
   name: 'userName'
   }],
   buttons: [{
   text: 'Save',
   handler: function(){
   var fp = this.ownerCt.ownerCt,
   form = fp.getForm();
   if (form.isValid()) {
   // check if there are baseParams and if
   // hidden items have been added already
   if (fp.baseParams &amp;&amp; !fp.paramsAdded) {
   // add hidden items for all baseParams
   for (i in fp.baseParams) {
   fp.add({
   xtype: 'hidden',
   name: i,
   value: fp.baseParams[i]
   });
   }
   fp.doLayout();
   // set a custom flag to prevent re-adding
   fp.paramsAdded = true;
   }
   form.<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-submit">submit</a>();
   }
   }
   }]
   });
   </code></pre>
   */
  public native function get standardSubmit():Boolean;

  /**
   Timeout for form actions in seconds (default is 30 seconds).
   */
  public native function get timeout():Number;

  /**
   If set to <tt>true</tt>, <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-reset">reset</a>() resets to the last loaded or <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-setValues">setValues</a>() data instead of when the form was first created. Defaults to <tt>false</tt>.
   */
  public native function get trackResetOnLoad():Boolean;

  /**
   The URL to use for form actions if one isn't supplied in the <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">doAction</a> options</code>.
   */
  public native function get url():String;

  /**
   The default title to show for the waiting message box (defaults to <tt>'Please Wait...'</tt>)
   */
  public native function get waitTitle():String;

  /**
   * Add Ext.form Components to this form's Collection. This does not result in rendering of the passed Component, it just enables the form to validate Fields, and distribute values to Fields. <p style="font-weight: bold">You will not usually call this function. In order to be rendered, a Field must be added to a <a href="Ext.Container.html">Container</a>, usually an <a href="Ext.form.FormPanel.html">FormPanel</a>. The FormPanel to which the field is added takes care of adding the Field to the BasicForm's collection.</p>
   *
   * @param field1
   * @param field2
   * @param etc
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-add Sencha Docs Ext JS 3.4
   */
  public native function add(field1:Field, field2:Field = null, etc:Field = null):BasicForm;

  /**
   * Calls <a href="output/Ext.html#Ext-applyIf">Ext.applyIf</a> for all field in this form with the passed object.
   *
   * @param values
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-applyIfToFields Sencha Docs Ext JS 3.4
   */
  public native function applyIfToFields(values:Object):BasicForm;

  /**
   * Calls <a href="output/Ext.html#Ext-apply">Ext.apply</a> for all fields in this form with the passed object.
   *
   * @param values
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-applyToFields Sencha Docs Ext JS 3.4
   */
  public native function applyToFields(values:Object):BasicForm;

  /**
   * Removes all fields from the collection that have been destroyed.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-cleanDestroyed Sencha Docs Ext JS 3.4
   */
  public native function cleanDestroyed():void;

  /**
   * Clears all invalid messages in this form.
   *
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-clearInvalid Sencha Docs Ext JS 3.4
   */
  public native function clearInvalid():BasicForm;

  /**
   * Destroys this object.
   *
   * @param bound true if the object is bound to a form panel. If this is the case the FormPanel will take care of destroying certain things, so we're just doubling up.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy(bound:Boolean):void;

  /**
   * Performs a predefined action (<a href="Ext.form.Action.Submit.html">Ext.form.Action.Submit</a> or <a href="Ext.form.Action.Load.html">Ext.form.Action.Load</a>) or a custom extension of <a href="Ext.form.Action.html">Ext.form.Action</a> to perform application-specific processing.
   *
   * @param actionName The name of the predefined action type, or instance of <a href="Ext.form.Action.html">Ext.form.Action</a> to perform.
   * @param options The options to pass to the <a href="Ext.form.Action.html">Ext.form.Action</a>. All of the config options listed below are supported by both the <a href="Ext.form.Action.Submit.html">submit</a> and <a href="Ext.form.Action.Load.html">load</a> actions unless otherwise noted (custom actions could also accept other config options):<ul><li><b>url</b> : String<div class="sub-desc">The url for the action (defaults to the form's <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-url">url</a>.)</div></li><li><b>method</b> : String<div class="sub-desc">The form method to use (defaults to the form's method, or POST if not defined)</div></li><li><b>params</b> : String/Object<div class="sub-desc"><p>The params to pass (defaults to the form's baseParams, or none if not defined)</p><p>Parameters are encoded as standard HTTP parameters using <a href="output/Ext.html#Ext-urlEncode">Ext.urlEncode</a>.</p></div></li><li><b>headers</b> : Object<div class="sub-desc">Request headers to set for the action (defaults to the form's default headers)</div></li><li><b>success</b> : Function<div class="sub-desc">The callback that will be invoked after a successful response (see top of <a href="Ext.form.Action.Submit.html">submit</a> and <a href="Ext.form.Action.Load.html">load</a> for a description of what constitutes a successful response). The function is passed the following parameters:<ul><li><tt>form</tt> : Ext.form.BasicForm<div class="sub-desc">The form that requested the action</div></li><li><tt>action</tt> : The <a href="Ext.form.Action.html">Action</a> object which performed the operation. <div class="sub-desc">The action object contains these properties of interest:<ul><li><tt><a href="output/Ext.form.Action.html#Ext.form.Action-response">response</a></tt></li><li><tt><a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a></tt> : interrogate for custom postprocessing</li><li><tt><a href="output/Ext.form.Action.html#Ext.form.Action-type">type</a></tt></li></ul></div></li></ul></div></li><li><b>failure</b> : Function<div class="sub-desc">The callback that will be invoked after a failed transaction attempt. The function is passed the following parameters:<ul><li><tt>form</tt> : The <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a> that requested the action.</li><li><tt>action</tt> : The <a href="Ext.form.Action.html">Action</a> object which performed the operation. <div class="sub-desc">The action object contains these properties of interest:<ul><li><tt><a href="output/Ext.form.Action.html#Ext.form.Action-failureType">failureType</a></tt></li><li><tt><a href="output/Ext.form.Action.html#Ext.form.Action-response">response</a></tt></li><li><tt><a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a></tt> : interrogate for custom postprocessing</li><li><tt><a href="output/Ext.form.Action.html#Ext.form.Action-type">type</a></tt></li></ul></div></li></ul></div></li><li><b>scope</b> : Object<div class="sub-desc">The scope in which to call the callback functions (The <tt>this</tt> reference for the callback functions).</div></li><li><b>clientValidation</b> : Boolean<div class="sub-desc">Submit Action only. Determines whether a Form's fields are validated in a final call to <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-isValid">isValid</a> prior to submission. Set to <tt>false</tt> to prevent this. If undefined, pre-submission field validation is performed.</div></li></ul>
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-doAction Sencha Docs Ext JS 3.4
   */
  public native function doAction(actionName:*, options:Object = null):BasicForm;

  /**
   * Find a <a href="Ext.form.Field.html">Ext.form.Field</a> in this form.
   *
   * @param id The value to search for (specify either a <a href="output/Ext.Component.html#Ext.Component-id">id</a>, <a href="output/Ext.grid.Column.html#Ext.grid.Column-dataIndex">dataIndex</a>, <a href="output/Ext.form.Field.html#Ext.form.Field-getName">name or hiddenName</a>).
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-findField Sencha Docs Ext JS 3.4
   */
  public native function findField(id:String):Field;

  /**
   * Get the HTML form Element
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-getEl Sencha Docs Ext JS 3.4
   */
  public native function getEl():Element;

  /**
   * Retrieves the fields in the form as a set of key/value pairs, using the <a href="output/Ext.form.Field.html#Ext.form.Field-getValue">getValue()</a> method. If multiple fields exist with the same name they are returned as an array.
   *
   * @param dirtyOnly True to return only fields that are dirty.
   * @return The values in the form
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-getFieldValues Sencha Docs Ext JS 3.4
   */
  public native function getFieldValues(dirtyOnly:Boolean = false):Object;

  /**
   * Returns the fields in this form as an object with key/value pairs as they would be submitted using a standard form submit. If multiple fields exist with the same name they are returned as an array.
   <p><b>Note:</b> The values are collected from all enabled HTML input elements within the form, <u>not</u> from the Ext Field objects. This means that all returned values are Strings (or Arrays of Strings) and that the value can potentially be the emptyText of a field.</p>
   *
   * @param asString Pass true to return the values as a string. (defaults to false, returning an Object)
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-getValues Sencha Docs Ext JS 3.4
   */
  public native function getValues(asString:Boolean = false):*;

  /**
   * Returns true if any fields in this form have changed from their original values.
   <p>Note that if this BasicForm was configured with <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-trackResetOnLoad">trackResetOnLoad</a> then the Fields' <i>original values</i> are updated when the values are loaded by <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-setValues">setValues</a> or <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-loadRecord">loadRecord</a>.</p>
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-isDirty Sencha Docs Ext JS 3.4
   */
  public native function isDirty():Boolean;

  /**
   * Returns true if client-side validation on the form is successful.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-isValid Sencha Docs Ext JS 3.4
   */
  public native function isValid():Boolean;

  /**
   * Shortcut to <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">do</a> a <a href="Ext.form.Action.Load.html">load action</a>.
   *
   * @param options The options to pass to the action (see <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">doAction</a> for details)
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-load Sencha Docs Ext JS 3.4
   */
  public native function load(options:Object):BasicForm;

  /**
   * Loads an <a href="Ext.data.Record.html">Ext.data.Record</a> into this form by calling <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-setValues">setValues</a> with the <a href="output/Ext.data.Record.html#Ext.data.Record-data">record data</a>. See also <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-trackResetOnLoad">trackResetOnLoad</a>.
   *
   * @param record The record to load
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-loadRecord Sencha Docs Ext JS 3.4
   */
  public native function loadRecord(record:Record):BasicForm;

  /**
   * Mark fields in this form invalid in bulk.
   *
   * @param errors Either an array in the form [{id:'fieldId', msg:'The message'},...] or an object hash of {id: msg, id2: msg2}
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-markInvalid Sencha Docs Ext JS 3.4
   */
  public native function markInvalid(errors:*):BasicForm;

  /**
   * Removes a field from the items collection (does NOT remove its markup).
   *
   * @param field
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-remove Sencha Docs Ext JS 3.4
   */
  public native function remove(field:Field):BasicForm;

  /**
   * Iterates through the <a href="Ext.form.Field.html">Field</a>s which have been <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-add">add</a>ed to this BasicForm, checks them for an id attribute, and calls <a href="output/Ext.form.Field.html#Ext.form.Field-applyToMarkup">Ext.form.Field.applyToMarkup</a> on the existing dom element with that id.
   *
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-render Sencha Docs Ext JS 3.4
   */
  public native function render():BasicForm;

  /**
   * Resets this form.
   *
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-reset Sencha Docs Ext JS 3.4
   */
  public native function reset():BasicForm;

  /**
   * Set values for fields in this form in bulk.
   *
   * @param values Either an array in the form:<pre><code>[{id:'clientName', value:'Fred. Olsen Lines'},
   {id:'portOfLoading', value:'FXT'},
   {id:'portOfDischarge', value:'OSL'} ]</code></pre>or an object hash of the form:<pre><code>{
   clientName: 'Fred. Olsen Lines',
   portOfLoading: 'FXT',
   portOfDischarge: 'OSL'
   }</code></pre>
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-setValues Sencha Docs Ext JS 3.4
   */
  public native function setValues(values:*):BasicForm;

  /**
   * Shortcut to <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">do</a> a <a href="Ext.form.Action.Submit.html">submit action</a>.
   *
   * @param options The options to pass to the action (see <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">doAction</a> for details).<br/><p><b>Note:</b> this is ignored when using the <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-standardSubmit">standardSubmit</a> option.</p><p>The following code:</p><pre><code>myFormPanel.getForm().submit({
   clientValidation: true,
   url: 'updateConsignment.php',
   params: {
   newStatus: 'delivered'
   },
   success: function(form, action) {
   Ext.Msg.alert('Success', action.result.msg);
   },
   failure: function(form, action) {
   switch (action.failureType) {
   case Ext.form.Action.CLIENT_INVALID:
   Ext.Msg.alert('Failure', 'Form fields may not be submitted with invalid values');
   break;
   case Ext.form.Action.CONNECT_FAILURE:
   Ext.Msg.alert('Failure', 'Ajax communication failed');
   break;
   case Ext.form.Action.SERVER_INVALID:
   Ext.Msg.alert('Failure', action.result.msg);
   }
   }
   });
   </code></pre>would process the following server response for a successful submission:<pre><code>{
   "success":true, // note this is Boolean, not string
   "msg":"Consignment updated"
   }
   </code></pre>and the following server response for a failed submission:<pre><code>{
   "success":false, // note this is Boolean, not string
   "msg":"You do not have permission to perform this operation"
   }
   </code></pre>
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-submit Sencha Docs Ext JS 3.4
   */
  public native function submit(options:Object):BasicForm;

  /**
   * Persists the values in this form into the passed <a href="Ext.data.Record.html">Ext.data.Record</a> object in a beginEdit/endEdit block.
   *
   * @param record The record to edit
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.BasicForm-method-updateRecord Sencha Docs Ext JS 3.4
   */
  public native function updateRecord(record:Record):BasicForm;

}
}
    