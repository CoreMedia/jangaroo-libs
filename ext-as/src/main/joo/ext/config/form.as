package ext.config {


/**
 * Standard form container.
 <p style="font-weight: bold"><u>Layout</u></p><p>By default, FormPanel is configured with <tt>layout:'form'</tt> to use an <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a> layout manager, which styles and renders fields and labels correctly. When nesting additional Containers within a FormPanel, you should ensure that any descendant Containers which host input Fields use the <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a> layout manager.</p><p style="font-weight: bold"><u>BasicForm</u></p><p>Although <b>not listed</b> as configuration options of FormPanel, the FormPanel class accepts all of the config options required to configure its internal <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a> for:</p><div class="mdetail-params"><ul><li><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-fileUpload">file uploads</a></li><li>functionality for <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">loading, validating and submitting</a> the form</li></ul></div><p><b>Note</b>: If subclassing FormPanel, any configuration options for the BasicForm must be applied to the <tt><b>initialConfig</b></tt> property of the FormPanel. Applying <a href="Ext.form.BasicForm.html">BasicForm</a> configuration settings to <b><tt>this</tt></b> will <b>not</b> affect the BasicForm's configuration.</p><p style="font-weight: bold"><u>Form Validation</u></p><p>For information on form validation see the following:</p><div class="mdetail-params"><ul><li><a href="Ext.form.TextField.html">Ext.form.TextField</a></li><li><a href="Ext.form.VTypes.html">Ext.form.VTypes</a></li><li><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">BasicForm.doAction <b>clientValidation</b> notes</a></li><li><tt><a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-monitorValid">monitorValid</a></tt></li></ul></div><p style="font-weight: bold"><u>Form Submission</u></p><p>By default, Ext Forms are submitted through Ajax, using <a href="Ext.form.Action.html">Ext.form.Action</a>. To enable normal browser submission of the <a href="Ext.form.BasicForm.html">BasicForm</a> contained in this FormPanel, see the <tt><b><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-standardSubmit">standardSubmit</a></b></tt> option.</p>
 * <p>This class serves as a typed config object for constructor of class FormPanel.</p>
 *
 * @see ext.form.FormPanel
 */
[ExtConfig(target="ext.form.FormPanel")]
public class form extends panel {

  public function form(config:Object = null) {

    super(config);
  }


  /**
   An array of <a href="Ext.Button.html">Ext.Button</a>s or <a href="Ext.Button.html">Ext.Button</a> configs used to add buttons to the footer of this FormPanel.<br/><p>Buttons in the footer of a FormPanel may be configured with the option <tt>formBind: true</tt>. This causes the form's <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-monitorValid">valid state monitor task</a> to enable/disable those Buttons depending on the form's valid/invalid state.</p>
   */
  override public native function get buttons():Array;

  /**
   * @private
   */
  override public native function set buttons(value:Array):void;

  /**
   The id of the FORM tag (defaults to an auto-generated id).
   */
  public native function get formId():String;

  /**
   * @private
   */
  public native function set formId(value:String):void;

  /**
   <tt>true</tt> to hide field labels by default (sets <tt>display:none</tt>). Defaults to <tt>false</tt>.
   <p>Also see <a href="Ext.Component.html">Ext.Component</a>.<tt><a href="output/Ext.Component.html#Ext.Component-hideLabel">hideLabel</a></tt>.</p>
   */
  public native function get hideLabels():Boolean;

  /**
   * @private
   */
  public native function set hideLabels(value:Boolean):void;

  /**
   A css class to apply to the x-form-item of fields. This property cascades to child containers.
   */
  override public native function get itemCls():String;

  /**
   * @private
   */
  override public native function set itemCls(value:String):void;

  /**
   The label alignment value used for the <tt>text-align</tt> specification for the <b>container</b>. Valid values are <tt>"left</tt>", <tt>"top"</tt> or <tt>"right"</tt> (defaults to <tt>"left"</tt>). This property cascades to child <b>containers</b> and can be overridden on any child <b>container</b> (e.g., a fieldset can specify a different <tt>labelAlign</tt> for its fields).
   */
  public native function get labelAlign():String;

  /**
   * @private
   */
  public native function set labelAlign(value:String):void;

  /**
   The default padding in pixels for field labels (defaults to <tt>5</tt>). <tt>labelPad</tt> only applies if <tt><a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-labelWidth">labelWidth</a></tt> is also specified, otherwise it will be ignored.
   */
  public native function get labelPad():Number;

  /**
   * @private
   */
  public native function set labelPad(value:Number):void;

  /**
   See <a href="Ext.Component.html">Ext.Component</a>.<tt><a href="output/Ext.Component.html#Ext.Component-labelSeparator">labelSeparator</a></tt>
   */
  override public native function get labelSeparator():String;

  /**
   * @private
   */
  override public native function set labelSeparator(value:String):void;

  /**
   The width of labels in pixels. This property cascades to child containers and can be overridden on any child container (e.g., a fieldset can specify a different <tt>labelWidth</tt> for its fields) (defaults to <tt>100</tt>).
   */
  public native function get labelWidth():Number;

  /**
   * @private
   */
  public native function set labelWidth(value:Number):void;

  /**
   Defaults to <tt>'form'</tt>. Normally this configuration property should not be altered. For additional details see <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a> and <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a>.
   */
  override public native function get layout():*;

  /**
   * @private
   */
  override public native function set layout(value:*):void;

  /**
   Minimum width of all buttons in pixels (defaults to <tt>75</tt>).
   */
  override public native function get minButtonWidth():Number;

  /**
   * @private
   */
  override public native function set minButtonWidth(value:Number):void;

  /**
   The milliseconds to poll valid state, ignored if monitorValid is not true (defaults to 200)
   */
  public native function get monitorPoll():Number;

  /**
   * @private
   */
  public native function set monitorPoll(value:Number):void;

  /**
   If <tt>true</tt>, the form monitors its valid state <b>client-side</b> and regularly fires the <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-clientvalidation">clientvalidation</a> event passing that state.<br/><p>When monitoring valid state, the FormPanel enables/disables any of its configured <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-buttons">buttons</a> which have been configured with <code>formBind: true</code> depending on whether the <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-isValid">form is valid</a> or not. Defaults to <tt>false</tt></p>
   */
  public native function get monitorValid():Boolean;

  /**
   * @private
   */
  public native function set monitorValid(value:Boolean):void;


}
}
    