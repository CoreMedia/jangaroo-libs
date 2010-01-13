package ext.layout {

/**
 * <p>This is a layout that enables anchoring of contained elements relative to the container's dimensions.
 * If the container is resized, all anchored items are automatically rerendered according to their
 * <b><code><b class='link' title='#anchor'>anchor</b></code></b> rules.</p>
 * <p>This class is intended to be extended or created via the layout:'anchor' <b class='link'>ext.Container#layout</b>
 * config, and should generally not need to be created directly via the new keyword.</p>
 * <p>AnchorLayout does not have any direct config options (other than inherited ones). By default,
 * AnchorLayout will calculate anchor measurements based on the size of the container itself. However, the
 * container using the AnchorLayout can supply an anchoring-specific config property of <b>anchorSize</b>.
 * If anchorSize is specifed, the layout will use it as a virtual container for the purposes of calculating
 * anchor measurements based on it instead, allowing the container to be sized independently of the anchoring
 * logic if necessary.  For example:</p>
 * <pre><code>
var viewport = new ext.Viewport({
    layout&#58;'anchor',
    anchorSize&#58; {width:800, height:600},
    items&#58;[{
        title&#58;'Item 1',
        html&#58;'Content 1',
        width&#58;800,
        anchor&#58;'right 20%'
    },{
        title&#58;'Item 2',
        html&#58;'Content 2',
        width&#58;300,
        anchor&#58;'50% 30%'
    },{
        title&#58;'Item 3',
        html&#58;'Content 3',
        width&#58;600,
        anchor&#58;'-100 50%'
    }]
});
 * </code></pre>
 */
    public class AnchorLayout extends ContainerLayout {
/**
     * @cfg {String} anchor
     * <p>This configuation option is to be applied to <b>child <code>items</code></b> of a container managed by
     * this layout (ie. configured with <code>layout:'anchor'</code>).</p><br/>
     * 
     * <p>This value is what tells the layout how an item should be anchored to the container. <code>items</code>
     * added to an AnchorLayout accept an anchoring-specific config property of <b>anchor</b> which is a string
     * containing two values: the horizontal anchor value and the vertical anchor value (for example, '100% 50%').
     * The following types of anchor values are supported:<div class="mdetail-params"><ul>
     * 
     * <li><b>Percentage</b> : Any value between 1 and 100, expressed as a percentage.<div class="sub-desc">
     * The first anchor is the percentage width that the item should take up within the container, and the
     * second is the percentage height.  For example:<pre><code>
&#47;/ two values specified
anchor&#58; '100% 50%' // render item complete width of the container and
                   &#47;/ 1/2 height of the container
&#47;/ one value specified
anchor&#58; '100%'     // the width value; the height will default to auto
     * </code></pre></div></li>
     * 
     * <li><b>Offsets</b> : Any positive or negative integer value.<div class="sub-desc">
     * This is a raw adjustment where the first anchor is the offset from the right edge of the container,
     * and the second is the offset from the bottom edge. For example:<pre><code>
&#47;/ two values specified
anchor&#58; '-50 -100' // render item the complete width of the container
                   &#47;/ minus 50 pixels and
                   &#47;/ the complete height minus 100 pixels.
&#47;/ one value specified
anchor&#58; '-50'      // anchor value is assumed to be the right offset value
                   &#47;/ bottom offset will default to 0
     * </code></pre></div></li>
     * 
     * <li><b>Sides</b> : Valid values are <code>'right'</code> (or <code>'r'</code>) and <code>'bottom'</code>
     * (or <code>'b'</code>).<div class="sub-desc">
     * Either the container must have a fixed size or an anchorSize config value defined at render time in
     * order for these to have any effect.</div></li>
     *
     * <li><b>Mixed</b> : <div class="sub-desc">
     * Anchor values can also be mixed as needed.  For example, to render the width offset from the container
     * right edge by 50 pixels and 75% of the container's height use:
     * <pre><code>
anchor&#58; '-50 75%' 
     * </code></pre></div></li>
     * 
     * 
     * </ul></div>
     */
    protected native function getAnchorViewSize(ct, target) : void;
    override protected native function onLayout(ct, target) : void;
    protected native function parseAnchor(a, start, cstart) : void;
    protected native function adjustWidthAnchor(value, comp) : void;
    protected native function adjustHeightAnchor(value, comp) : void;
    /**
     * @property activeItem
     * @hide
     */
}}
