package ext.form {

import ext.Panel;
import ext.config.form;
import ext.data.Connection;
import ext.data.Model;

/**
 * Fires immediately preceding any Form submit action. Implementations may adjust submitted form values or options prior to execution. A return value of <tt>false</tt> from this listener will abort the submission attempt (regardless of standardSubmit configuration)
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.FormPanel</code>
 This FormPanel
 *       </li>

 *       <li>
 *           <code>values:Object</code>
 A hash collection of the qualified form values about to be submitted
 *       </li>

 *       <li>
 *           <code>options:Object</code>
 Submission options hash (only available when standardSubmit is false)
 *       </li>

 * </ul>
 */
[Event(name="beforesubmit")]

/**
 * Fires when either the Ajax HTTP request reports a failure OR the server returns a success:false response in the result payload.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.FormPanel</code>
 This FormPanel
 *       </li>

 *       <li>
 *           <code>result:Object</code>
 Either a failed Ext.data.Connection request object or a failed (logical) server response payload.
 *       </li>

 * </ul>
 */
[Event(name="exception")]

/**
 * Fires upon successful (Ajax-based) form submission
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.FormPanel</code>
 This FormPanel
 *       </li>

 *       <li>
 *           <code>result:Object</code>
 The result object as returned by the server
 *       </li>

 * </ul>
 */
[Event(name="submit")]


/**
 * Simple form panel which enables easy getting and setting of field values. Can load model instances. Example usage:
 <pre><code>var form = new Ext.form.FormPanel({
 items: [
 {
 xtype: 'textfield',
 name : 'first',
 label: 'First name'
 },
 {
 xtype: 'textfield',
 name : 'last',
 label: 'Last name'
 },
 {
 xtype: 'numberfield',
 name : 'age',
 label: 'Age'
 },
 {
 xtype: 'urlfield',
 name : 'url',
 label: 'Website'
 }
 ]
 });
 </code></pre><p>Loading model instances:</p><pre><code>Ext.regModel('User', {
 fields: [
 {name: 'first', type: 'string'},
 {name: 'last',  type: 'string'},
 {name: 'age',   type: 'int'},
 {name: 'url',   type: 'string'}
 ]
 });

 var user = Ext.ModelMgr.create({
 first: 'Ed',
 last : 'Spencer',
 age  : 24,
 url  : 'http://extjs.com'
 }, 'User');

 form.load(user);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'form' / the EXML element &lt;form>.</p>
 * @see ext.config.form
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#cls-Ext.form.FormPanel Ext JS source
 */
public class FormPanel extends Panel {

  /**
   * Create a new FormPanel.
   *
   * @param config The config object
   * @see ext.config.form
   */
  public function FormPanel(config:form = null) {
    super(null);
  }

  /**
   The Model instance currently loaded into this form (if any). Read only
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#prop-Ext.form.FormPanel-record Ext JS source
   */
  public native function get record():Model;

  /**
   * @private
   */
  public native function set record(value:Model):void;

  /**
   Optional hash of params to be sent (when standardSubmit configuration is false) on every submit.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get baseParams():Object;

  /**
   Wether or not we want to perform a standard form submit. Defaults to false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get standardSubmit():Boolean;

  /**
   When this is set to true, the form will automatically submit itself whenever the 'action' event fires on a field in this form. The action event usually fires whenever you press go or enter inside a textfield.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get submitOnAction():Object;

  /**
   The default Url for submit actions
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get url():String;

  /**
   The defined <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-waitMsg">waitMsg</a> template. Used for precise control over the masking agent used to mask the FormPanel (or other Element) during form Ajax/submission actions. For more options, see <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-showMask">showMask</a> method.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get waitTpl():Object;

  /**
   * A convenient method to disable all fields in this forms
   *
   * @param silent Passing true, will supress the 'disable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-disable Ext JS source
   */
  override public native function disable(silent:Boolean):void;

  /**
   * A convenient method to enable all fields in this forms
   *
   * @param silent Passing false will supress the 'enable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-enable Ext JS source
   */
  override public native function enable(silent:Boolean):void;

  /**
   *
   *
   * @param byName only fields that match the given name, otherwise return all fields.
   * @return All field instances, mapped by field name; or an array if byName is passed
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-getFields Ext JS source
   */
  public native function getFields(byName:*):*;

  /**
   * Returns the Model instance currently loaded into this form (if any)
   *
   * @return The Model instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-getRecord Ext JS source
   */
  public native function getRecord():Model;

  /**
   * Returns an object containing the value of each field in the form, keyed to the field's name. For groups of checkbox fields with the same name, it will be arrays of values. For examples: <pre><code>    {
   name: "Jacky Nguyen", // From a TextField
   favorites: [
   'pizza',
   'noodle',
   'cake'
   ]
   }
   </code></pre>
   *
   * @param enabled <tt>true</tt> to return only enabled fields
   * @return Object mapping field name to its value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-getValues Ext JS source
   */
  public native function getValues(enabled:Boolean):Object;

  /**
   * Hides a previously shown wait mask (See <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-showMask">showMask</a>)
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-hideMask Ext JS source
   */
  public native function hideMask():FormPanel;

  /**
   * (Shortcut to <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-loadRecord">loadRecord</a> method) Loads matching fields from a model instance into this form
   *
   * @param instance The model instance
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-load Ext JS source
   */
  public native function load(instance:Model):FormPanel;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-loadModel Ext JS source
   */
  public native function loadModel():void;

  /**
   * Loads matching fields from a model instance into this form
   *
   * @param instance The model instance
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-loadRecord Ext JS source
   */
  public native function loadRecord(instance:Model):FormPanel;

  /**
   * Resets all fields in the form back to their original values
   *
   * @return this This form
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-reset Ext JS source
   */
  public native function reset():FormPanel;

  /**
   * Sets the values of form fields in bulk. Example usage: <pre><code>myForm.setValues({
   name: 'Ed',
   crazy: true,
   username: 'edspencer'
   });
   </code></pre>If there groups of checkbox fields with the same name, pass their values in an array. For example: <pre><code>myForm.setValues({
   name: 'Jacky',
   crazy: false,
   hobbies: [
   'reading',
   'cooking',
   'gaming'
   ]
   });
   </code></pre>
   *
   * @param values field name =&gt; value mapping object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-setValues Ext JS source
   */
  public native function setValues(values:Object):FormPanel;

  /**
   * Shows a generic/custom mask over a designated Element.
   *
   * @param cfg Either a string message or a configuration object supporting the following options: <pre><code>   {        
   message : 'Please Wait',
   transparent : false,
   target  : Ext.getBody(),  //optional target Element
   cls : 'form-mask',
   customImageUrl : 'trident.jpg'
   }
   </code></pre>This object is passed to the <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-waitTpl">waitTpl</a> for use with a custom masking implementation.
   * @param target The target Element instance or Element id to use as the masking agent for the operation (defaults the container Element of the component)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-showMask Ext JS source
   */
  public native function showMask(cfg:*, target:*):FormPanel;

  /**
   * Performs a Ajax-based submission of form values (if standardSubmit is false) or otherwise executes a standard HTML Form submit action.
   *
   * @param options Unless otherwise noted, options may include the following: <ul><li><b>url</b> : String <div class="sub-desc">The url for the action (defaults to the form's <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-url">url</a>.)</div></li><li><b>method</b> : String <div class="sub-desc">The form method to use (defaults to the form's method, or POST if not defined)</div></li><li><b>params</b> : String/Object <div class="sub-desc">The params to pass (defaults to the FormPanel's baseParams, or none if not defined) Parameters are encoded as standard HTTP parameters using <a href="output/Ext.html#Ext-urlEncode">Ext.urlEncode</a>.</div></li><li><b>headers</b> : Object <div class="sub-desc">Request headers to set for the action (defaults to the form's default headers)</div></li><li><b>autoAbort</b> : Boolean <div class="sub-desc"><tt>true</tt> to abort any pending Ajax request prior to submission (defaults to false) Note: Has no effect when standardSubmit is enabled.</div></li><li><b>submitDisabled</b> : Boolean <div class="sub-desc"><tt>true</tt> to submit all fields regardless of disabled state (defaults to false) Note: Has no effect when standardSubmit is enabled.</div></li><li><b>waitMsg</b> : String/Config <div class="sub-desc">If specified, the value is applied to the <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-waitTpl">waitTpl</a> if defined, and rendered to the <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-waitMsgTarget">waitMsgTarget</a> prior to a Form submit action.</div></li><li><b>success</b> : Function <div class="sub-desc">The callback that will be invoked after a successful response. A response is successful if a response is received from the server and is a JSON object where the success property is set to true, {"success": true} The function is passed the following parameters: <ul><li>form : Ext.FormPanel The form that requested the action</li><li>result : The result object returned by the server as a result of the submit request.</li></ul></div></li><li><b>failure</b> : Function <div class="sub-desc">The callback that will be invoked after a failed transaction attempt. The function is passed the following parameters: <ul><li>form : The Ext.FormPanel that requested the submit.</li><li>result : The failed response or result object returned by the server which performed the operation.</li></ul></div></li><li><b>scope</b> : Object <div class="sub-desc">The scope in which to call the callback functions (The this reference for the callback functions).</div></li></ul>
   * @return request Object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-submit Ext JS source
   */
  public native function submit(options:Object):Connection;

  /**
   * Updates a model instance with the current values of this form
   *
   * @param instance The model instance
   * @param enabled <tt>true</tt> to update the Model with values from enabled fields only
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FormPanel.html#method-Ext.form.FormPanel-updateRecord Ext JS source
   */
  public native function updateRecord(instance:Model, enabled:Boolean):FormPanel;

}
}
    