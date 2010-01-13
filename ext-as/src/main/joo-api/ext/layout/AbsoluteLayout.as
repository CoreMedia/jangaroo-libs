package ext.layout {

/**
 * <p>This is a layout that inherits the anchoring of <b class='link'>Ext.layout.AnchorLayout</b> and adds the
 * ability for x/y positioning using the standard x and y component config options.</p>
 * <p>This class is intended to be extended or created via the <code><b class='link' title='ext.Container#layout'>layout</b></code>
 * configuration property.  See <code><b class='link'>ext.Container#layout</b></code> for additional details.</p>
 * <p>Example usage:</p>
 * <pre><code>
var form = new ext.form.FormPanel({
    title&#58; 'Absolute Layout',
    layout&#58;'absolute',
    layoutConfig&#58; {
        &#47;/ layout-specific configs go here
        extraCls&#58; 'x-abs-layout-item',
    },
    baseCls&#58; 'x-plain',
    url&#58;'save-form.php',
    defaultType&#58; 'textfield',
    items&#58; [{
        x&#58; 0,
        y&#58; 5,
        xtype&#58;'label',
        text&#58; 'Send To:'
    },{
        x&#58; 60,
        y&#58; 0,
        name&#58; 'to',
        anchor&#58;'100%'  // anchor width by percentage
    },{
        x&#58; 0,
        y&#58; 35,
        xtype&#58;'label',
        text&#58; 'Subject:'
    },{
        x&#58; 60,
        y&#58; 30,
        name&#58; 'subject',
        anchor&#58; '100%'  // anchor width by percentage
    },{
        x&#58;0,
        y&#58; 60,
        xtype&#58; 'textarea',
        name&#58; 'msg',
        anchor&#58; '100% 100%'  // anchor width and height
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
