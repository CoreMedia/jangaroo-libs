package ext {

import ext.config.buttongroup;

/**
 * Container for a group of buttons. Example usage: <pre><code>var p = new Ext.Panel({
 title: 'Panel with Button Group',
 width: 300,
 height:200,
 renderTo: document.body,
 html: 'whatever',
 tbar: [{
 xtype: 'buttongroup',
 <a href="output/Ext.ButtonGroup.html#Ext.ButtonGroup-columns">columns</a>: 3,
 title: 'Clipboard',
 items: [{
 text: 'Paste',
 scale: 'large',
 rowspan: 3, iconCls: 'add',
 iconAlign: 'top',
 cls: 'x-btn-as-arrow'
 },{
 xtype:'splitbutton',
 text: 'Menu Button',
 scale: 'large',
 rowspan: 3,
 iconCls: 'add',
 iconAlign: 'top',
 arrowAlign:'bottom',
 menu: [{text: 'Menu Item 1'}]
 },{
 xtype:'splitbutton', text: 'Cut', iconCls: 'add16', menu: [{text: 'Cut Menu Item'}]
 },{
 text: 'Copy', iconCls: 'add16'
 },{
 text: 'Format', iconCls: 'add16'
 }]
 }]
 });
 </code></pre>
 * <p>This component is created by the xtype 'buttongroup' / the EXML element &lt;buttongroup>.</p>
 * @see ext.config.buttongroup
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ButtonGroup.html#cls-Ext.ButtonGroup Ext JS source
 */
public class ButtonGroup extends Panel {

  /**
   * Create a new ButtonGroup.
   *
   * @param config The config object
   * @see ext.config.buttongroup
   */
  public function ButtonGroup(config:buttongroup) {
    super(null);
  }

  /**
   Defaults to <tt>'x-btn-group'</tt>. See <a href="output/Ext.Panel.html#Ext.Panel-baseCls">Ext.Panel.baseCls</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get baseCls():String;

  /**
   The <tt>columns</tt> configuration property passed to the <a href="output/Ext.ButtonGroup.html#Ext.ButtonGroup-layout">configured layout manager</a>. See <a href="output/Ext.layout.TableLayout.html#Ext.layout.TableLayout-columns">Ext.layout.TableLayout.columns</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get columns():Number;

  /**
   Defaults to <tt>true</tt>. See <a href="output/Ext.Panel.html#Ext.Panel-frame">Ext.Panel.frame</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get frame():Boolean;

}
}
    