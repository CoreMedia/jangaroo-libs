package ext.form {
import ext.Panel;
import ext.config.fieldset;

/**
 * Standard container used for grouping items within a <a href="Ext.form.FormPanel.html">form</a>. <pre><code>var form = new Ext.FormPanel({
 title: 'Simple Form with FieldSets',
 labelWidth: 75, // label settings here cascade unless overridden
 url: 'save-form.php',
 frame:true,
 bodyStyle:'padding:5px 5px 0',
 width: 700,
 renderTo: document.body,
 layout:'column', // arrange items in columns
 defaults: {      // defaults applied to items
 layout: 'form',
 border: false,
 bodyStyle: 'padding:4px'
 },
 items: [{
 // Fieldset in Column 1
 xtype:'fieldset',
 columnWidth: 0.5,
 title: 'Fieldset 1',
 collapsible: true,
 autoHeight:true,
 defaults: {
 anchor: '-20' // leave room for error icon
 },
 defaultType: 'textfield',
 items :[{
 fieldLabel: 'Field 1'
 }, {
 fieldLabel: 'Field 2'
 }, {
 fieldLabel: 'Field 3'
 }
 ]
 },{
 // Fieldset in Column 2 - Panel inside
 xtype:'fieldset',
 title: 'Show Panel', // title, header, or checkboxToggle creates fieldset header
 autoHeight:true,
 columnWidth: 0.5,
 checkboxToggle: true,
 collapsed: true, // fieldset initially collapsed
 layout:'anchor',
 items :[{
 xtype: 'panel',
 anchor: '100%',
 title: 'Panel inside a fieldset',
 frame: true,
 height: 100
 }]
 }]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'fieldset' / the EXML element &lt;fieldset>.</p>
 * @see ext.config.fieldset
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.FieldSet Sencha Docs Ext JS 3.4
 */
[Native]
public class FieldSet extends Panel {

  /**
   *
   *
   * @param config Configuration options
   * @see ext.config.fieldset
   */
  public function FieldSet(config:fieldset) {
    super(null);
  }

  /**
   <tt>true</tt> to animate the transition when the panel is collapsed, <tt>false</tt> to skip the animation (defaults to <tt>false</tt>).
   */
  override public native function get animCollapse():Boolean;

  /**
   The base CSS class applied to the fieldset (defaults to <tt>'x-fieldset'</tt>).
   */
  override public native function get baseCls():String;

  /**
   The name to assign to the fieldset's checkbox if <tt><a href="output/Ext.form.FieldSet.html#Ext.form.FieldSet-checkboxToggle">checkboxToggle</a> = true</tt> (defaults to <tt>'[checkbox id]-checkbox'</tt>).
   */
  public native function get checkboxName():String;

  /**
   <tt>true</tt> to render a checkbox into the fieldset frame just in front of the legend to expand/collapse the fieldset when the checkbox is toggled. (defaults to <tt>false</tt>). <p>A <a href="Ext.DomHelper.html">DomHelper</a> element spec may also be specified to create the checkbox. If <tt>true</tt> is specified, the default DomHelper config object used to create the element is:</p><pre><code>{tag: 'input', type: 'checkbox', name: this.checkboxName || this.id+'-checkbox'}
   </code></pre>
   */
  public native function get checkboxToggle():*;

  /**
   <tt>true</tt> to make the fieldset collapsible and have the expand/collapse toggle button automatically rendered into the legend element, <tt>false</tt> to keep the fieldset statically sized with no collapse button (defaults to <tt>false</tt>). Another option is to configure <tt><a href="output/Ext.form.FieldSet.html#Ext.form.FieldSet-checkboxToggle">checkboxToggle</a></tt>.
   */
  override public native function get collapsible():Boolean;

  /**
   The width of labels. This property cascades to child containers.
   */
  public native function get labelWidth():Number;

  /**
   * This function is called by the fieldset's checkbox when it is toggled (only applies when checkboxToggle = true). This method should never be called externally, but can be overridden to provide custom behavior when the checkbox is toggled if needed.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.FieldSet-method-onCheckClick Sencha Docs Ext JS 3.4
   */
  public native function onCheckClick():void;

}
}
    