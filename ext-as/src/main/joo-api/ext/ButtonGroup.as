package ext {
/**
 * Container for a group of buttons. Example usage:
 * <pre><code>
var p = new ext.Panel({
    title&#58; 'Panel with Button Group',
    width&#58; 300,
    height&#58;200,
    renderTo&#58; document.body,
    html&#58; 'whatever',
    tbar&#58; [{
        xtype&#58; 'buttongroup',
        <b class='link' title='#columns'>columns</b>: 3,
        title&#58; 'Clipboard',
        items&#58; [{
            text&#58; 'Paste',
            scale&#58; 'large',
            rowspan&#58; 3, iconCls: 'add',
            iconAlign&#58; 'top',
            cls&#58; 'x-btn-as-arrow'
        },{
            xtype&#58;'splitbutton',
            text&#58; 'Menu Button',
            scale&#58; 'large',
            rowspan&#58; 3,
            iconCls&#58; 'add',
            iconAlign&#58; 'top',
            arrowAlign&#58;'bottom',
            menu&#58; [{text: 'Menu Item 1'}]
        },{
            xtype&#58;'splitbutton', text: 'Cut', iconCls: 'add16', menu: [{text: 'Cut Menu Item'}]
        },{
            text&#58; 'Copy', iconCls: 'add16'
        },{
            text&#58; 'Format', iconCls: 'add16'
        }]
    }]
});
 * </code></pre>
 * @xtype buttongroup
 */
public class ButtonGroup extends Panel {
    public function ButtonGroup(config : Object) {
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
