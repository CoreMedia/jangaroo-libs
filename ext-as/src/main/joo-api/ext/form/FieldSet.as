package ext.form {
import ext.Element;
import ext.Panel;

/**
 * Standard container used for grouping items within a <b class='link' title='ext.form.FormPanel'>form</b>.
 * <pre><code>
var form = new ext.FormPanel({
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
 * </code></pre>
*/
public class FieldSet extends Panel {
/**
 * @constructor
 * @param config Configuration options
 * @xtype fieldset
 */
public function FieldSet(config : Object) {
  super(config);
}
    /**
     * @cfg {Mixed} checkboxToggle <tt>true</tt> to render a checkbox into the fieldset frame just
     * in front of the legend to expand/collapse the fieldset when the checkbox is toggled. (defaults
     * to <tt>false</tt>).
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element spec may also be specified to create the checkbox.
     * If <tt>true</tt> is specified, the default DomHelper config object used to create the element
     * is:</p><pre><code>
     * {tag: 'input', type: 'checkbox', name: this.checkboxName || this.id+'-checkbox'}
     * </code></pre>   
     */
    /**
     * @cfg {String} checkboxName The name to assign to the fieldset's checkbox if <tt><b class='link'>#checkboxToggle</b> = true</tt>
     * (defaults to <tt>'[checkbox id]-checkbox'</tt>).
     */
    /**
     * @cfg {Boolean} collapsible
     * <tt>true</tt> to make the fieldset collapsible and have the expand/collapse toggle button automatically
     * rendered into the legend element, <tt>false</tt> to keep the fieldset statically sized with no collapse
     * button (defaults to <tt>false</tt>). Another option is to configure <tt><b class='link'>#checkboxToggle</b></tt>.
     */
    /**
     * @cfg {Number} labelWidth The width of labels. This property cascades to child containers.
     */
    /**
     * @cfg {String} itemCls A css class to apply to the <tt>x-form-item</tt> of fields (see 
     * <b class='link'>Ext.layout.FormLayout</b>.<b class='link' title='Ext.layout.FormLayout#fieldTpl'>fieldTpl</b> for details).
     * This property cascades to child containers.
     */
    /**
     * @cfg {String} baseCls The base CSS class applied to the fieldset (defaults to <tt>'x-fieldset'</tt>).
     */
    //public var baseCls  : String;
    /**
     * @cfg {String} layout The <b class='link'>ext.Container#layout</b> to use inside the fieldset (defaults to <tt>'form'</tt>).
     */
    public var layout  : String;
    /**
     * @cfg {Boolean} animCollapse
     * <tt>true</tt> to animate the transition when the panel is collapsed, <tt>false</tt> to skip the
     * animation (defaults to <tt>false</tt>).
     */
    //public var animCollapse  : Boolean;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function onCollapse(doAnim, animArg) : void;
    override protected native function onExpand(doAnim, animArg) : void;
    /**
     * This function is called by the fieldset's checkbox when it is toggled (only applies when
     * checkboxToggle = true).  This method should never be called externally, but can be
     * overridden to provide custom behavior when the checkbox is toggled if needed.
     */
    public native function onCheckClick() : void;
    /**
     * @cfg {String/Number} activeItem
     * @hide
     */
    /**
     * @cfg {Mixed} applyTo
     * @hide
     */
    /**
     * @cfg {Boolean} bodyBorder
     * @hide
     */
    /**
     * @cfg {Boolean} border
     * @hide
     */
    /**
     * @cfg {Boolean/Number} bufferResize
     * @hide
     */
    /**
     * @cfg {Boolean} collapseFirst
     * @hide
     */
    /**
     * @cfg {String} defaultType
     * @hide
     */
    /**
     * @cfg {String} disabledClass
     * @hide
     */
    /**
     * @cfg {String} elements
     * @hide
     */
    /**
     * @cfg {Boolean} floating
     * @hide
     */
    /**
     * @cfg {Boolean} footer
     * @hide
     */
    /**
     * @cfg {Boolean} frame
     * @hide
     */
    /**
     * @cfg {Boolean} header
     * @hide
     */
    /**
     * @cfg {Boolean} headerAsText
     * @hide
     */
    /**
     * @cfg {Boolean} hideCollapseTool
     * @hide
     */
    /**
     * @cfg {String} iconCls
     * @hide
     */
    /**
     * @cfg {Boolean/String} shadow
     * @hide
     */
    /**
     * @cfg {Number} shadowOffset
     * @hide
     */
    /**
     * @cfg {Boolean} shim
     * @hide
     */
    /**
     * @cfg {Object/Array} tbar
     * @hide
     */
    /**
     * @cfg {String} tabTip
     * @hide
     */
    /**
     * @cfg {Boolean} titleCollapse
     * @hide
     */
    /**
     * @cfg {Array} tools
     * @hide
     */
    /**
     * @cfg {ext.Template/ext.XTemplate} toolTemplate
     * @hide
     */
    /**
     * @cfg {String} xtype
     * @hide
     */
    /**
     * @property header
     * @hide
     */
    /**
     * @property footer
     * @hide
     */
    /**
     * @method focus
     * @hide
     */
    /**
     * @method getBottomToolbar
     * @hide
     */
    /**
     * @method getTopToolbar
     * @hide
     */
    /**
     * @method setIconClass
     * @hide
     */
    /**
     * @event activate
     * @hide
     */
    /**
     * @event beforeclose
     * @hide
     */
    /**
     * @event bodyresize
     * @hide
     */
    /**
     * @event close
     * @hide
     */
    /**
     * @event deactivate
     * @hide
     */
}}
