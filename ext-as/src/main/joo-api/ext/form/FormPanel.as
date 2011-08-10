package ext.form {

import ext.Panel;
import ext.config.form;

/**
 * If the monitorValid config option is true, this event fires repetitively to notify of valid state
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.FormPanel</code>

 *       </li>

 *       <li>
 *           <code>valid:Boolean</code>
 true if the form has passed client-side validation
 *       </li>

 * </ul>
 */
[Event(name="clientvalidation")]


/**
 * Standard form container.
 <p style="font-weight: bold"><u>Layout</u></p><p>By default, FormPanel is configured with <tt>layout:'form'</tt> to use an <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a> layout manager, which styles and renders fields and labels correctly. When nesting additional Containers within a FormPanel, you should ensure that any descendant Containers which host input Fields use the <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a> layout manager.</p><p style="font-weight: bold"><u>BasicForm</u></p><p>Although <b>not listed</b> as configuration options of FormPanel, the FormPanel class accepts all of the config options required to configure its internal <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a> for:</p><div class="mdetail-params"><ul><li><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-fileUpload">file uploads</a></li><li>functionality for <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">loading, validating and submitting</a> the form</li></ul></div><p><b>Note</b>: If subclassing FormPanel, any configuration options for the BasicForm must be applied to the <tt><b>initialConfig</b></tt> property of the FormPanel. Applying <a href="Ext.form.BasicForm.html">BasicForm</a> configuration settings to <b><tt>this</tt></b> will <b>not</b> affect the BasicForm's configuration.</p><p style="font-weight: bold"><u>Form Validation</u></p><p>For information on form validation see the following:</p><div class="mdetail-params"><ul><li><a href="Ext.form.TextField.html">Ext.form.TextField</a></li><li><a href="Ext.form.VTypes.html">Ext.form.VTypes</a></li><li><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">BasicForm.doAction <b>clientValidation</b> notes</a></li><li><tt><a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-monitorValid">monitorValid</a></tt></li></ul></div><p style="font-weight: bold"><u>Form Submission</u></p><p>By default, Ext Forms are submitted through Ajax, using <a href="Ext.form.Action.html">Ext.form.Action</a>. To enable normal browser submission of the <a href="Ext.form.BasicForm.html">BasicForm</a> contained in this FormPanel, see the <tt><b><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-standardSubmit">standardSubmit</a></b></tt> option.</p>
 * <p>This component is created by the xtype 'form' / the EXML element &lt;form>.</p>
 * @see ext.config.form
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Form.html#cls-Ext.form.FormPanel Ext JS source
 */
public class FormPanel extends Panel {

  /**
   *
   *
   * @param config Configuration options
   * @see ext.config.form
   */
  public function FormPanel(config:form) {
    super(null);
  }

  /**
   The id of the FORM tag (defaults to an auto-generated id).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get formId():String;

  /**
   <tt>true</tt> to hide field labels by default (sets <tt>display:none</tt>). Defaults to <tt>false</tt>.
   <p>Also see <a href="Ext.Component.html">Ext.Component</a>.<tt><a href="output/Ext.Component.html#Ext.Component-hideLabel">hideLabel</a></tt>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideLabels():Boolean;

  /**
   The label alignment value used for the <tt>text-align</tt> specification for the <b>container</b>. Valid values are <tt>"left</tt>", <tt>"top"</tt> or <tt>"right"</tt> (defaults to <tt>"left"</tt>). This property cascades to child <b>containers</b> and can be overridden on any child <b>container</b> (e.g., a fieldset can specify a different <tt>labelAlign</tt> for its fields).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get labelAlign():String;

  /**
   The default padding in pixels for field labels (defaults to <tt>5</tt>). <tt>labelPad</tt> only applies if <tt><a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-labelWidth">labelWidth</a></tt> is also specified, otherwise it will be ignored.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get labelPad():Number;

  /**
   The width of labels in pixels. This property cascades to child containers and can be overridden on any child container (e.g., a fieldset can specify a different <tt>labelWidth</tt> for its fields) (defaults to <tt>100</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get labelWidth():Number;

  /**
   Minimum width of all buttons in pixels (defaults to <tt>75</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get minButtonWidth():Number;

  /**
   The milliseconds to poll valid state, ignored if monitorValid is not true (defaults to 200)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get monitorPoll():Number;

  /**
   If <tt>true</tt>, the form monitors its valid state <b>client-side</b> and regularly fires the <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-clientvalidation">clientvalidation</a> event passing that state.<br/><p>When monitoring valid state, the FormPanel enables/disables any of its configured <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-buttons">buttons</a> which have been configured with <code>formBind: true</code> depending on whether the <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-isValid">form is valid</a> or not. Defaults to <tt>false</tt></p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get monitorValid():Boolean;

  /**
   * Provides access to the <a href="Ext.form.BasicForm.html">Form</a> which this Panel contains.
   *
   * @return The <a href="Ext.form.BasicForm.html">Form</a> which this Panel contains.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Form.html#method-Ext.form.FormPanel-getForm Ext JS source
   */
  public native function getForm():BasicForm;

  /**
   * This is a proxy for the underlying BasicForm's <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-load">Ext.form.BasicForm.load</a> call.
   *
   * @param config A config object containing any of the following options: <pre><code>panel.load({
   url: 'your-url.php',
   params: {param1: 'foo', param2: 'bar'}, // or a URL encoded string
   callback: yourFunction,
   scope: yourObject, // optional scope for the callback
   discardUrl: false,
   nocache: false,
   text: 'Loading...',
   timeout: 30,
   scripts: false
   });
   </code></pre>The only required property is url. The optional properties nocache, text and scripts are shorthand for disableCaching, indicatorText and loadScripts and are used to set their associated property on this panel Updater instance.
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Form.html#method-Ext.form.FormPanel-load Ext JS source
   */
  override public native function load(config:*):Panel;

  /**
   * Starts monitoring of the valid state of this form. Usually this is done by passing the config option "monitorValid"
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Form.html#method-Ext.form.FormPanel-startMonitoring Ext JS source
   */
  public native function startMonitoring():void;

  /**
   * Stops monitoring of the valid state of this form
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Form.html#method-Ext.form.FormPanel-stopMonitoring Ext JS source
   */
  public native function stopMonitoring():void;

}
}
    