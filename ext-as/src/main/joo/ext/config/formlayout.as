package ext.config {

import ext.Template;

/**
 * This layout manager is specifically designed for rendering and managing child Components of <a href="Ext.form.FormPanel.html">forms</a>. It is responsible for rendering the labels of <a href="Ext.form.Field.html">Field</a>s.
 <p>This layout manager is used when a Container is configured with the <tt>layout:'form'</tt> <a href="output/Ext.Container.html#Ext.Container-layout">layout</a> config option, and should generally not need to be created directly via the new keyword. See <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a></b></tt> for additional details.</p><p>In an application, it will usually be preferable to use a <a href="Ext.form.FormPanel.html">FormPanel</a> (which is configured with FormLayout as its layout class by default) since it also provides built-in functionality for <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">loading, validating and submitting</a> the form.</p><p>A <a href="Ext.Container.html">Container</a> <i>using</i> the FormLayout layout manager (e.g. <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a> or specifying <tt>layout:'form'</tt>) can also accept the following layout-specific config properties:</p><div class="mdetail-params"><ul><li><b><tt><a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-hideLabels">hideLabels</a></tt></b></li><li><b><tt><a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-labelAlign">labelAlign</a></tt></b></li><li><b><tt><a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-labelPad">labelPad</a></tt></b></li><li><b><tt><a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-labelSeparator">labelSeparator</a></tt></b></li><li><b><tt><a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-labelWidth">labelWidth</a></tt></b></li></ul></div><br/><br/> <p>Any Component (including Fields) managed by FormLayout accepts the following as a config option:</p><div class="mdetail-params"><ul><li><b><tt><a href="output/Ext.Component.html#Ext.Component-anchor">anchor</a></tt></b></li></ul></div><br/><br/> <p>Any Component managed by FormLayout may be rendered as a form field (with an associated label) by configuring it with a non-null <b><tt><a href="output/Ext.Component.html#Ext.Component-fieldLabel">fieldLabel</a></tt></b>. Components configured in this way may be configured with the following options which affect the way the FormLayout renders them:</p><div class="mdetail-params"><ul><li><b><tt><a href="output/Ext.Component.html#Ext.Component-clearCls">clearCls</a></tt></b></li><li><b><tt><a href="output/Ext.Component.html#Ext.Component-fieldLabel">fieldLabel</a></tt></b></li><li><b><tt><a href="output/Ext.Component.html#Ext.Component-hideLabel">hideLabel</a></tt></b></li><li><b><tt><a href="output/Ext.Component.html#Ext.Component-itemCls">itemCls</a></tt></b></li><li><b><tt><a href="output/Ext.Component.html#Ext.Component-labelSeparator">labelSeparator</a></tt></b></li><li><b><tt><a href="output/Ext.Component.html#Ext.Component-labelStyle">labelStyle</a></tt></b></li></ul></div><br/><br/> <p>Example usage:</p><pre><code>// Required if showing validation messages
 Ext.QuickTips.init();

 // While you can create a basic Panel with layout:'form', practically
 // you should usually use a FormPanel to also get its form functionality
 // since it already creates a FormLayout internally.
 var form = new Ext.form.FormPanel({
 title: 'Form Layout',
 bodyStyle: 'padding:15px',
 width: 350,
 defaultType: 'textfield',
 defaults: {
 // applied to each contained item
 width: 230,
 msgTarget: 'side'
 },
 items: [{
 fieldLabel: 'First Name',
 name: 'first',
 allowBlank: false,
 <a href="output/Ext.Component.html#Ext.Component-labelSeparator">labelSeparator</a>: ':' // override labelSeparator layout config
 },{
 fieldLabel: 'Last Name',
 name: 'last'
 },{
 fieldLabel: 'Email',
 name: 'email',
 vtype:'email'
 }, {
 xtype: 'textarea',
 hideLabel: true,     // override hideLabels layout config
 name: 'msg',
 anchor: '100% -53'
 }
 ],
 buttons: [
 {text: 'Save'},
 {text: 'Cancel'}
 ],
 layoutConfig: {
 <a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelSeparator">labelSeparator</a>: '~' // superseded by assignment below
 },
 // config options applicable to container when layout='form':
 hideLabels: false,
 labelAlign: 'left',   // or 'right' or 'top'
 <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-labelSeparator">labelSeparator</a>: '&gt;&gt;', // takes precedence over layoutConfig value
 labelWidth: 65,       // defaults to 100
 labelPad: 8           // defaults to 5, must specify labelWidth to be honored
 });
 </code></pre>
 * <p>This class serves as a typed config object for constructor of class FormLayout.</p>
 *
 * @see ext.layout.FormLayout
 */
[ExtConfig(target="ext.layout.FormLayout", type="form")]
public class formlayout extends anchorlayout {

  public function formlayout(config:Object = null) {

    super(config);
  }


  /**
   A <a href="output/Ext.Template.html#Ext.Template-compile">compile</a>d <a href="Ext.Template.html">Ext.Template</a> for rendering the fully wrapped, labeled and styled form Field. Defaults to:<br/><br/><pre><code>new Ext.Template(
   '&lt;div class="x-form-item {itemCls}" tabIndex="-1"&gt;',
   '&lt;label for="{id}" style="{labelStyle}" class="x-form-item-label"&gt;{label}{labelSeparator}&lt;/label&gt;',
   '&lt;div class="x-form-element" id="x-form-el-{id}" style="{elementStyle}"&gt;',
   '&lt;/div&gt;&lt;div class="{clearCls}"&gt;&lt;/div&gt;',
   '&lt;/div&gt;'
   );
   </code></pre><p>This may be specified to produce a different DOM structure when rendering form Fields.</p><p>A description of the properties within the template follows:</p><div class="mdetail-params"><ul><li><b><tt>itemCls</tt></b> : String<div class="sub-desc">The CSS class applied to the outermost div wrapper that contains this field label and field element (the default class is <tt>'x-form-item'</tt> and <tt>itemCls</tt> will be added to that). If supplied, <tt>itemCls</tt> at the field level will override the default <tt>itemCls</tt> supplied at the container level.</div></li><li><b><tt>id</tt></b> : String<div class="sub-desc">The id of the Field</div></li><li><b><tt><a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelStyle">labelStyle</a></tt></b> : String<div class="sub-desc">A CSS style specification string to add to the field label for this field (defaults to <tt>''</tt> or the <a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelStyle">layout's value for <tt>labelStyle</tt></a>).</div></li><li><b><tt>label</tt></b> : String<div class="sub-desc">The text to display as the label for this field (defaults to <tt>''</tt>)</div></li><li><b><tt><a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelSeparator">labelSeparator</a></tt></b> : String<div class="sub-desc">The separator to display after the text of the label for this field (defaults to a colon <tt>':'</tt> or the <a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelSeparator">layout's value for labelSeparator</a>). To hide the separator use empty string ''.</div></li><li><b><tt>elementStyle</tt></b> : String<div class="sub-desc">The styles text for the input element's wrapper.</div></li><li><b><tt>clearCls</tt></b> : String<div class="sub-desc">The CSS class to apply to the special clearing div rendered directly after each form field wrapper (defaults to <tt>'x-form-clear-left'</tt>)</div></li></ul></div><p>Also see <tt><a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-getTemplateArgs">getTemplateArgs</a></tt></p>
   */
  public native function get fieldTpl():Template;

  /**
   * @private
   */
  public native function set fieldTpl(value:Template):void;

  /**
   See <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a>.<a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-labelSeparator">labelSeparator</a>. Configuration of this property at the <b>container</b> level takes precedence.
   */
  public native function get labelSeparator():String;

  /**
   * @private
   */
  public native function set labelSeparator(value:String):void;

  /**
   True to show/hide the field label when the field is hidden. Defaults to <tt>true</tt>.
   */
  public native function get trackLabels():Boolean;

  /**
   * @private
   */
  public native function set trackLabels(value:Boolean):void;


}
}
    