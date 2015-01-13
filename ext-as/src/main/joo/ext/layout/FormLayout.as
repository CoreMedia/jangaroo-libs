package ext.layout {
import ext.Component;
import ext.Element;
import ext.config.formlayout;
import ext.form.Field;

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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.formlayout
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.FormLayout Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "layout.FormLayout")]
public class FormLayout extends AnchorLayout {

  /**
   *
   *
   * @see ext.config.formlayout
   */
  public function FormLayout(config:formlayout = null) {
    super(config);
  }

  /**
   Read only. The CSS style specification string added to field labels in this layout if not otherwise <a href="output/Ext.Component.html#Ext.Component-labelStyle">specified by each contained field</a>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.FormLayout-property-labelStyle Sencha Docs Ext JS 3.4
   */
  public native function get labelStyle():String;

  /**
   * @private
   */
  public native function set labelStyle(value:String):void;

  /**
   See <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a>.<a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-labelSeparator">labelSeparator</a>. Configuration of this property at the <b>container</b> level takes precedence.
   */
  public native function get labelSeparator():String;

  /**
   True to show/hide the field label when the field is hidden. Defaults to <tt>true</tt>.
   */
  public native function get trackLabels():Boolean;

  /**
   * Provides template arguments for rendering the fully wrapped, labeled and styled form Field.
   <p>This method returns an object hash containing properties used by the layout's <a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-fieldTpl">fieldTpl</a> to create a correctly wrapped, labeled and styled form Field. This may be overridden to create custom layouts. The properties which must be returned are:</p><div class="mdetail-params"><ul><li><b><tt>itemCls</tt></b> : String<div class="sub-desc">The CSS class applied to the outermost div wrapper that contains this field label and field element (the default class is <tt>'x-form-item'</tt> and <tt>itemCls</tt> will be added to that). If supplied, <tt>itemCls</tt> at the field level will override the default <tt>itemCls</tt> supplied at the container level.</div></li><li><b><tt>id</tt></b> : String<div class="sub-desc">The id of the Field</div></li><li><b><tt><a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelStyle">labelStyle</a></tt></b> : String<div class="sub-desc">A CSS style specification string to add to the field label for this field (defaults to <tt>''</tt> or the <a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelStyle">layout's value for <tt>labelStyle</tt></a>).</div></li><li><b><tt>label</tt></b> : String<div class="sub-desc">The text to display as the label for this field (defaults to the field's configured fieldLabel property)</div></li><li><b><tt><a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelSeparator">labelSeparator</a></tt></b> : String<div class="sub-desc">The separator to display after the text of the label for this field (defaults to a colon <tt>':'</tt> or the <a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelSeparator">layout's value for labelSeparator</a>). To hide the separator use empty string ''.</div></li><li><b><tt>elementStyle</tt></b> : String<div class="sub-desc">The styles text for the input element's wrapper.</div></li><li><b><tt>clearCls</tt></b> : String<div class="sub-desc">The CSS class to apply to the special clearing div rendered directly after each form field wrapper (defaults to <tt>'x-form-clear-left'</tt>)</div></li></ul></div>
   *
   * @param field The <a href="Ext.form.Field.html">Field</a> being rendered.
   * @return An object hash containing the properties required to render the Field.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.FormLayout-method-getTemplateArgs Sencha Docs Ext JS 3.4
   */
  public native function getTemplateArgs(field:Field):Object;

  /**
   *
   *
   * @param c The Component to render
   * @param position The position within the target to render the item to
   * @param target The target Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.FormLayout-method-renderItem Sencha Docs Ext JS 3.4
   */
  override public native function renderItem(c:Component, position:Number, target:Element):void;

}
}
    