package ext.layout.borderlayout {
import ext.Panel;
import ext.layout.BorderLayout;
import ext.layout.ContainerLayout;

/**
 * <p>This is a region of a <b class='link' title='Ext.layout.BorderLayout'>BorderLayout</b> that acts as a subcontainer
 * within the layout.  Each region has its own <b class='link' title='Ext.layout.ContainerLayout'>layout</b> that is
 * independent of other regions and the containing BorderLayout, and can be any of the
 * <b class='link' title='Ext.layout.ContainerLayout valid Ext layout'>types</b>.</p>
 * <p>Region size is managed automatically and cannot be changed by the user -- for
 * <b class='link' title='#split resizable'>regions</b>, see <b class='link'>Ext.layout.borderlayout.SplitRegion</b>.</p>
*/
public class Region extends ContainerLayout {
/**
 * @constructor
 * Create a new Region.
 * @param layout The <b class='link' title='Ext.layout.BorderLayout'>BorderLayout</b> instance that is managing this Region.
 * @param config The configuration options
 * @param position The region position.  Valid values are: <tt>north</tt>, <tt>south</tt>,
 * <tt>east</tt>, <tt>west</tt> and <tt>center</tt>.  Every <b class='link' title='Ext.layout.BorderLayout'>BorderLayout</b>
 * <b>must have a center region</b> for the primary content -- all other regions are optional.
 */
public function Region(layout : BorderLayout, config : Object, position : String) {
  super();
  layout++;
  config++;
  position++;
}
    /**
     * @cfg {Boolean} animFloat
     * When a collapsed region's bar is clicked, the region's panel will be displayed as a floated
     * panel that will close again once the user mouses out of that panel (or clicks out if
     * <tt><b class='link'>#autoHide</b> = false</tt>).  Setting <tt><b class='link'>#animFloat</b> = false</tt> will
     * prevent the open and close of these floated panels from being animated (defaults to <tt>true</tt>).
     */
    /**
     * @cfg {Boolean} autoHide
     * When a collapsed region's bar is clicked, the region's panel will be displayed as a floated
     * panel.  If <tt>autoHide = true</tt>, the panel will automatically hide after the user mouses
     * out of the panel.  If <tt>autoHide = false</tt>, the panel will continue to display until the
     * user clicks outside of the panel (defaults to <tt>true</tt>).
     */
    /**
     * @cfg {String} collapseMode
     * <tt>collapseMode</tt> supports two configuration values:<div class="mdetail-params"><ul>
     * <li><b><tt>undefined</tt></b> (default)<div class="sub-desc">By default, <b class='link'>#collapsible</b>
     * regions are collapsed by clicking the expand/collapse tool button that renders into the region's
     * title bar.</div></li>
     * <li><b><tt>'mini'</tt></b><div class="sub-desc">Optionally, when <tt>collapseMode</tt> is set to
     * <tt>'mini'</tt> the region's split bar will also display a small collapse button in the center of
     * the bar. In <tt>'mini'</tt> mode the region will collapse to a thinner bar than in normal mode.
     * </div></li>
     * </ul></div></p>
     * <p><b>Note</b>: if a collapsible region does not have a title bar, then set <tt>collapseMode =
     * 'mini'</tt> and <tt><b class='link'>#split</b> = true</tt> in order for the region to be <b class='link'>#collapsible</b>
     * by the user as the expand/collapse tool button (that would go in the title bar) will not be rendered.</p>
     * <p>See also <tt><b class='link'>#cmargins</b></tt>.</p>
     */
    /**
     * @cfg {Object} margins
     * An object containing margins to apply to the region when in the expanded state in the
     * format:<pre><code>
{
    top: (top margin),
    right: (right margin),
    bottom: (bottom margin),
    left: (left margin)
}</code></pre>
     * <p>May also be a string containing space-separated, numeric margin values. The order of the
     * sides associated with each value matches the way CSS processes margin values:</p>
     * <p><div class="mdetail-params"><ul>
     * <li>If there is only one value, it applies to all sides.</li>
     * <li>If there are two values, the top and bottom borders are set to the first value and the
     * right and left are set to the second.</li>
     * <li>If there are three values, the top is set to the first value, the left and right are set
     * to the second, and the bottom is set to the third.</li>
     * <li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li>
     * </ul></div></p>
     * <p>Defaults to:</p><pre><code>
     * {top:0, right:0, bottom:0, left:0}
     * </code></pre>
     */
    /**
     * @cfg {Object} cmargins
     * An object containing margins to apply to the region when in the collapsed state in the
     * format:<pre><code>
{
    top: (top margin),
    right: (right margin),
    bottom: (bottom margin),
    left: (left margin)
}</code></pre>
     * <p>May also be a string containing space-separated, numeric margin values. The order of the
     * sides associated with each value matches the way CSS processes margin values.</p>
     * <p><ul>
     * <li>If there is only one value, it applies to all sides.</li>
     * <li>If there are two values, the top and bottom borders are set to the first value and the
     * right and left are set to the second.</li>
     * <li>If there are three values, the top is set to the first value, the left and right are set
     * to the second, and the bottom is set to the third.</li>
     * <li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li>
     * </ul></p>
     */
    /**
     * @cfg {Boolean} collapsible
     * <p><tt>true</tt> to allow the user to collapse this region (defaults to <tt>false</tt>).  If
     * <tt>true</tt>, an expand/collapse tool button will automatically be rendered into the title
     * bar of the region, otherwise the button will not be shown.</p>
     * <p><b>Note</b>: that a title bar is required to display the collapse/expand toggle button -- if
     * no <tt>title</tt> is specified for the region's panel, the region will only be collapsible if
     * <tt><b class='link'>#collapseMode</b> = 'mini'</tt> and <tt><b class='link'>#split</b> = true</tt>.
     */
    public var collapsible  : Boolean;
    /**
     * @cfg {Boolean} split
     * <p><tt>true</tt> to create a <b class='link' title='Ext.layout.borderlayout.SplitRegion'>SplitRegion</b> and 
     * display a 5px wide <b class='link'>ext.SplitBar</b> between this region and its neighbor, allowing the user to
     * resize the regions dynamically.  Defaults to <tt>false</tt> creating a
     * <b class='link' title='Ext.layout.borderlayout.Region'>Region</b>.</p><br>
     * <p><b>Notes</b>:</p><div class="mdetail-params"><ul>
     * <li>this configuration option is ignored if <tt>region='center'</tt></li> 
     * <li>when <tt>split == true</tt>, it is common to specify a
     * <tt><b class='link' title='ext.SplitBar#minSize'>minSize</b></tt> and <tt><b class='link' title='ext.SplitBar#maxSize'>maxSize</b></tt>
     * for the <b class='link' title='ext.BoxComponent'>BoxComponent</b> representing the region. These are not native
     * configs of <b class='link' title='ext.BoxComponent'>BoxComponent</b>, and are used only by this class.</li>
     * <li>if <tt><b class='link'>#collapseMode</b> = 'mini'</tt> requires <tt>split = true</tt> to reserve space
     * for the collapse tool</tt></li> 
     * </ul></div> 
     */
    public var split : Boolean;
    /**
     * @cfg {Boolean} floatable
     * <tt>true</tt> to allow clicking a collapsed region's bar to display the region's panel floated
     * above the layout, <tt>false</tt> to force the user to fully expand a collapsed region by
     * clicking the expand button to see it again (defaults to <tt>true</tt>).
     */
    public var floatable : Boolean;
    /**
     * @cfg {Number} minWidth
     * <p>The minimum allowable width in pixels for this region (defaults to <tt>50</tt>).
     * <tt>maxWidth</tt> may also be specified.</p><br>
     * <p><b>Note</b>: setting the <tt><b class='link' title='ext.SplitBar#minSize'>minSize</b></tt> / 
     * <tt><b class='link' title='ext.SplitBar#maxSize'>maxSize</b></tt> supersedes any specified 
     * <tt>minWidth</tt> / <tt>maxWidth</tt>.</p>
     */
    public var minWidth : Number;
    /**
     * @cfg {Number} minHeight
     * The minimum allowable height in pixels for this region (defaults to <tt>50</tt>)
     * <tt>maxHeight</tt> may also be specified.</p><br>
     * <p><b>Note</b>: setting the <tt><b class='link' title='ext.SplitBar#minSize'>minSize</b></tt> / 
     * <tt><b class='link' title='ext.SplitBar#maxSize'>maxSize</b></tt> supersedes any specified 
     * <tt>minHeight</tt> / <tt>maxHeight</tt>.</p>
     */
    public var minHeight : Number;
    protected var defaultMargins ;
    protected var defaultNSCMargins ;
    protected var defaultEWCMargins ;
    public var floatingZIndex;
    /**
     * True if this region is collapsed. Read-only.
     * @property
     */
    public var isCollapsed  : Boolean;
    /**
     * This region's panel.  Read-only.
     * @property panel
     */
    /**
     * This region's layout.  Read-only.
     * @property layout
     */
    /**
     * This region's layout position (north, south, east, west or center).  Read-only.
     * @property position
     */
    protected native function render(ct, p) : void;
    protected native function getCollapsedEl() : void;
    protected native function onExpandClick(e) : void;
    protected native function onCollapseClick(e) : void;
    protected native function beforeCollapse(p, animate) : void;
    protected native function onCollapse(animate) : void;
    protected native function beforeExpand(animate) : void;
    protected native function onExpand() : void;
    protected native function collapseClick(e) : void;
    protected native function onHide() : void;
    protected native function onShow() : void;
    /**
     * True if this region is currently visible, else false.
     * @return 
     */
    public native function isVisible() : Boolean;
    /**
     * Returns the current margins for this region.  If the region is collapsed, the
     * <b class='link'>#cmargins</b> (collapsed margins) value will be returned, otherwise the
     * <b class='link'>#margins</b> value will be returned.
     * @return An object containing the element's margins: <tt>{left: (left
     * margin), top: (top margin), right: (right margin), bottom: (bottom margin)}</tt>
     */
    public native function getMargins() : Object;
    /**
     * Returns the current size of this region.  If the region is collapsed, the size of the
     * collapsedEl will be returned, otherwise the size of the region's panel will be returned.
     * @return An object containing the element's size: <tt>{width: (element width),
     * height: (element height)}</tt>
     */
    public native function getSize() : Object;
    /**
     * Sets the specified panel as the container element for this region.
     * @param panel The new panel
     */
    public native function setPanel(panel : Panel) : void;
    /**
     * Returns the minimum allowable width for this region.
     * @return The minimum width
     */
    public native function getMinWidth() : Number;
    /**
     * Returns the minimum allowable height for this region.
     * @return The minimum height
     */
    public native function getMinHeight() : Number;
    protected native function applyLayoutCollapsed(box) : void;
    protected native function applyLayout(box) : void;
    protected native function beforeSlide() : void;
    protected native function afterSlide() : void;
    protected native function initAutoHide() : void;
    protected native function clearAutoHide() : void;
    protected native function clearMonitor() : void;
    /**
     * If this Region is <b class='link'>#floatable</b>, this method slides this Region into full visibility <i>over the top
     * of the center Region</i> where it floats until either <b class='link'>#slideIn</b> is called, or other regions of the layout
     * are clicked, or the mouse exits the Region.
     */
    public native function slideOut() : void;
    protected native function afterSlideIn() : void;
    /**
     * If this Region is <b class='link'>#floatable</b>, and this Region has been slid into floating visibility, then this method slides
     * this region back into its collapsed state.
     */
    public native function slideIn(cb) : void;
    protected native function slideInIf(e) : void;
    protected var anchors  : String;
    protected var sanchors ;
    protected var canchors ;
    protected native function getAnchor() : void;
    protected native function getCollapseAnchor() : void;
    protected native function getSlideAnchor() : void;
    protected native function getAlignAdj() : void;
    protected native function getExpandAdj() : void;
/**
*/
}}
