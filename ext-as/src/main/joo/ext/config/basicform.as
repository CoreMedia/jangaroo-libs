package ext.config {

import ext.data.DataReader;

/**
 * Encapsulates the DOM &lt;form&gt; element at the heart of the <a href="Ext.form.FormPanel.html">FormPanel</a> class, and provides input field management, validation, submission, and form loading services.
 <p>By default, Ext Forms are submitted through Ajax, using an instance of <a href="Ext.form.Action.Submit.html">Ext.form.Action.Submit</a>. To enable normal browser submission of an Ext Form, use the <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-standardSubmit">standardSubmit</a> config option.</p><p style="font-weight: bold"><u>File Uploads</u></p><p><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-fileUpload">File uploads</a> are not performed using Ajax submission, that is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the DOM <tt>&lt;form&gt;</tt> element temporarily modified to have its <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer to a dynamically generated, hidden <tt>&lt;iframe&gt;</tt> which is inserted into the document but removed after the return data has been gathered.</p><p>The server response is parsed by the browser to create the document for the IFRAME. If the server is using JSON to send the return object, then the <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p><p>Characters which are significant to an HTML parser must be sent as HTML entities, so encode "&lt;" as "&amp;lt;", "&amp;" as "&amp;amp;" etc.</p><p>The response text is retrieved from the document, and a fake XMLHttpRequest object is created containing a <tt>responseText</tt> property in order to conform to the requirements of event handlers and callbacks.</p><p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a> and some server technologies (notably JEE) may require some custom processing in order to retrieve parameter names and parameter values from the packet content.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class BasicForm.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.BasicForm
 */
[ExtConfig(target="ext.form.BasicForm")]
public class basicform extends observable {

  public function basicform(config:Object = null) {

    super(config);
  }


  /**
   If specified load and submit actions will be handled with <a href="Ext.form.Action.DirectLoad.html">Ext.form.Action.DirectLoad</a> and <a href="Ext.form.Action.DirectSubmit.html">Ext.form.Action.DirectSubmit</a>. Methods which have been imported by Ext.Direct can be specified here to load and submit forms. Such as the following:<pre><code>api: {
   load: App.ss.MyProfile.load,
   submit: App.ss.MyProfile.submit
   }
   </code></pre><p>Load actions can use <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-paramOrder">paramOrder</a></code> or <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-paramsAsHash">paramsAsHash</a></code> to customize how the load method is invoked. Submit actions will always use a standard form submit. The formHandler configuration must be set on the associated server-side method which has been imported by Ext.Direct</p>
   */
  public native function get api():Object;

  /**
   * @private
   */
  public native function set api(value:Object):void;

  /**
   Parameters to pass with all requests. e.g. baseParams: {id: '123', foo: 'bar'}.
   <p>Parameters are encoded as standard HTTP parameters using <a href="output/Ext.html#Ext-urlEncode">Ext.urlEncode</a>.</p>
   */
  public native function get baseParams():Object;

  /**
   * @private
   */
  public native function set baseParams(value:Object):void;

  /**
   An Ext.data.DataReader (e.g. <a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a>) to be used to read field error messages returned from 'submit' actions. This is optional as there is built-in support for processing JSON.
   <p>The Records which provide messages for the invalid Fields must use the Field name (or id) as the Record ID, and must contain a field called 'msg' which contains the error message.</p><p>The errorReader does not have to be a full-blown implementation of a DataReader. It simply needs to implement a <tt>read(xhr)</tt> function which returns an Array of Records in an object with the following structure:</p><pre><code>{
   records: recordArray
   }
   </code></pre>
   */
  public native function get errorReader():DataReader;

  /**
   * @private
   */
  public native function set errorReader(value:DataReader):void;

  /**
   Set to true if this form is a file upload. <p>File uploads are not performed using normal 'Ajax' techniques, that is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the DOM <tt>&lt;form&gt;</tt> element temporarily modified to have its <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer to a dynamically generated, hidden <tt>&lt;iframe&gt;</tt> which is inserted into the document but removed after the return data has been gathered.</p><p>The server response is parsed by the browser to create the document for the IFRAME. If the server is using JSON to send the return object, then the <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p><p>Characters which are significant to an HTML parser must be sent as HTML entities, so encode "&lt;" as "&amp;lt;", "&amp;" as "&amp;amp;" etc.</p><p>The response text is retrieved from the document, and a fake XMLHttpRequest object is created containing a <tt>responseText</tt> property in order to conform to the requirements of event handlers and callbacks.</p><p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a> and some server technologies (notably JEE) may require some custom processing in order to retrieve parameter names and parameter values from the packet content.</p>
   */
  public native function get fileUpload():Boolean;

  /**
   * @private
   */
  public native function set fileUpload(value:Boolean):void;

  /**
   The request method to use (GET or POST) for form actions if one isn't supplied in the action options.
   */
  public native function get method():String;

  /**
   * @private
   */
  public native function set method(value:String):void;

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
   * @private
   */
  public native function set paramOrder(value:*):void;

  /**
   Only used for the <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-api">api</a></code> <code>load</code> configuration. Send parameters as a collection of named arguments (defaults to <tt>false</tt>). Providing a <tt><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-paramOrder">paramOrder</a></tt> nullifies this configuration.
   */
  public native function get paramsAsHash():Boolean;

  /**
   * @private
   */
  public native function set paramsAsHash(value:Boolean):void;

  /**
   An Ext.data.DataReader (e.g. <a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a>) to be used to read data when executing 'load' actions. This is optional as there is built-in support for processing JSON. For additional information on using an XMLReader see the example provided in examples/form/xml-form.html.
   */
  public native function get reader():DataReader;

  /**
   * @private
   */
  public native function set reader(value:DataReader):void;

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
   * @private
   */
  public native function set standardSubmit(value:Boolean):void;

  /**
   Timeout for form actions in seconds (default is 30 seconds).
   */
  public native function get timeout():Number;

  /**
   * @private
   */
  public native function set timeout(value:Number):void;

  /**
   If set to <tt>true</tt>, <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-reset">reset</a>() resets to the last loaded or <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-setValues">setValues</a>() data instead of when the form was first created. Defaults to <tt>false</tt>.
   */
  public native function get trackResetOnLoad():Boolean;

  /**
   * @private
   */
  public native function set trackResetOnLoad(value:Boolean):void;

  /**
   The URL to use for form actions if one isn't supplied in the <code><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">doAction</a> options</code>.
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;

  /**
   The default title to show for the waiting message box (defaults to <tt>'Please Wait...'</tt>)
   */
  public native function get waitTitle():String;

  /**
   * @private
   */
  public native function set waitTitle(value:String):void;


}
}
    