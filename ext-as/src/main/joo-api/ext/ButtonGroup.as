package ext {
/**
 * Container for a group of buttons. Example usage:
 * <pre><code>
var p = new ext.Panel({
    title: 'Panel with Button Group',
    width: 300,
    height:200,
    renderTo: document.body,
    html: 'whatever',
    tbar: [{
        xtype: 'buttongroup',
        <b class='link' title='#columns'>columns</b>: 3,
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
 * </code></pre>
 * @xtype buttongroup
 */
public class ButtonGroup extends Panel {
    public function ButtonGroup(config:Object = null) {
    super(config);
  }
    /**
     * @cfg {Number} columns The <code>columns</code> configuration property passed to the
     * <b class='link' title='#layout configured layout'>manager</b>. See <b class='link'>Ext.layout.TableLayout#columns</b>.
     */
    /**
     * @cfg {String} baseCls  Defaults to <code>'x-btn-group'</code>.  See <b class='link'>ext.Panel#baseCls</b>.
     */
    //public var baseCls : String;
    /**
     * @cfg {String} layout  Defaults to <code>'table'</code>.  See <b class='link'>ext.Container#layout</b>.
     */
    public var layout : String;
    //public var defaultType;
    /**
     * @cfg {Boolean} frame  Defaults to <code>true</code>.  See <b class='link'>ext.Panel#frame</b>.
     */
    public var frame : Boolean;
    public var internalDefaults;
    override protected native function initComponent() : void;
    override protected native function applyDefaults(c) : void;
    public native function onAfterLayout() : void;
    /**
     * @cfg {Array} tools  @hide
     */
}}
