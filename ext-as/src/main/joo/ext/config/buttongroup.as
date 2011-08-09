package ext.config {


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
 * <p>This class serves as a typed config object for constructor of class ButtonGroup.</p>
 *
 * @see ext.ButtonGroup
 */
[ExtConfig(target="ext.ButtonGroup", xtype="buttongroup")]
public class buttongroup extends panel {

  public function buttongroup(config:Object = null) {

    super(config);
  }


  /**
   Defaults to <tt>'x-btn-group'</tt>. See <a href="output/Ext.Panel.html#Ext.Panel-baseCls">Ext.Panel.baseCls</a>.
   */
  override public native function get baseCls():String;

  /**
   * @private
   */
  override public native function set baseCls(value:String):void;

  /**
   The <tt>columns</tt> configuration property passed to the <a href="output/Ext.ButtonGroup.html#Ext.ButtonGroup-layout">configured layout manager</a>. See <a href="output/Ext.layout.TableLayout.html#Ext.layout.TableLayout-columns">Ext.layout.TableLayout.columns</a>.
   */
  public native function get columns():Number;

  /**
   * @private
   */
  public native function set columns(value:Number):void;

  /**
   Defaults to <tt>true</tt>. See <a href="output/Ext.Panel.html#Ext.Panel-frame">Ext.Panel.frame</a>.
   */
  override public native function get frame():Boolean;

  /**
   * @private
   */
  override public native function set frame(value:Boolean):void;

  /**
   Defaults to <tt>'table'</tt>. See <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a>.
   */
  override public native function get layout():*;

  /**
   * @private
   */
  override public native function set layout(value:*):void;


}
}
    