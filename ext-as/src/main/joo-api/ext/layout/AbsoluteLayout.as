package ext.layout {

/**
 * <p>This is a layout that inherits the anchoring of <b class='link'>Ext.layout.AnchorLayout</b> and adds the
 * ability for x/y positioning using the standard x and y component config options.</p>
 * <p>This class is intended to be extended or created via the <tt><b class='link' title='ext.Container#layout'>layout</b></tt>
 * configuration property.  See <tt><b class='link'>ext.Container#layout</b></tt> for additional details.</p>
 * <p>Example usage:</p>
 * <pre><code>
var form = new ext.form.FormPanel({
    title: 'Absolute Layout',
    layout:'absolute',
    layoutConfig: {
        // layout-specific configs go here
        extraCls: 'x-abs-layout-item',
    },
    baseCls: 'x-plain',
    url:'save-form.php',
    defaultType: 'textfield',
    items: [{
        x: 0,
        y: 5,
        xtype:'label',
        text: 'Send To:'
    },{
        x: 60,
        y: 0,
        name: 'to',
        anchor:'100%'  // anchor width by percentage
    },{
        x: 0,
        y: 35,
        xtype:'label',
        text: 'Subject:'
    },{
        x: 60,
        y: 30,
        name: 'subject',
        anchor: '100%'  // anchor width by percentage
    },{
        x:0,
        y: 60,
        xtype: 'textarea',
        name: 'msg',
        anchor: '100% 100%'  // anchor width and height
    }]
});
</code></pre>
 */
public class AbsoluteLayout extends AnchorLayout {
  public var extraCls;
    override protected native function onLayout(ct, target) : void;
    override protected native function adjustWidthAnchor(value, comp) : void;
    override protected native function adjustHeightAnchor(value, comp) : void;
    /**
     * @property activeItem
     * @hide
     */
}}
