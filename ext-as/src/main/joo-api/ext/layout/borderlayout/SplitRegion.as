package ext.layout.borderlayout {
import ext.SplitBar;
import ext.layout.BorderLayout;

/**
 * <p>This is a specialized type of <b class='link' title='Ext.layout.borderlayout.Region BorderLayout'>region</b> that
 * has a built-in <b class='link'>ext.SplitBar</b> for user resizing of regions.  The movement of the split bar
 * is configurable to move either <b class='link' title='#tickSize smooth or'>incrementally</b>.</p>
*/
public class SplitRegion extends Region {
/**
 * @constructor
 * Create a new SplitRegion.
 * @param layout The <b class='link' title='Ext.layout.BorderLayout'>BorderLayout</b> instance that is managing this Region.
 * @param config The configuration options
 * @param position The region position.  Valid values are: north, south, east, west and center.  Every
 * BorderLayout must have a center region for the primary content -- all other regions are optional.
 */
public function SplitRegion(layout : BorderLayout, config : Object, position : String) {
  super(layout, config, position);
}
    /**
     * @cfg {Number} tickSize
     * The increment, in pixels by which to move this Region's <b class='link' title='ext.SplitBar'>SplitBar</b>.
     * By default, the <b class='link' title='ext.SplitBar'>SplitBar</b> moves smoothly.
     */
    /**
     * @cfg {String} splitTip
     * The tooltip to display when the user hovers over a
     * <b class='link' title='Ext.layout.borderlayout.Region#collapsible'>non-collapsible</b> region's split bar
     * (defaults to <tt>"Drag to resize."</tt>).  Only applies if
     * <tt><b class='link'>#useSplitTips</b> = true</tt>.
     */
    public var splitTip  : String;
    /**
     * @cfg {String} collapsibleSplitTip
     * The tooltip to display when the user hovers over a
     * <b class='link' title='Ext.layout.borderlayout.Region#collapsible'>collapsible</b> region's split bar
     * (defaults to "Drag to resize. Double click to hide."). Only applies if
     * <tt><b class='link'>#useSplitTips</b> = true</tt>.
     */
    public var collapsibleSplitTip  : String;
    /**
     * @cfg {Boolean} useSplitTips
     * <tt>true</tt> to display a tooltip when the user hovers over a region's split bar
     * (defaults to <tt>false</tt>).  The tooltip text will be the value of either
     * <tt><b class='link'>#splitTip</b></tt> or <tt><b class='link'>#collapsibleSplitTip</b></tt> as appropriate.
     */
    public var useSplitTips  : Boolean;
    protected var splitSettings ;
    protected var applyFns ;
    override protected native function render(ct, p) : void;
    override public native function getSize() : Object;
    protected native function getHMaxSize() : void;
    protected native function getVMaxSize() : void;
    protected native function onSplitMove(split, newSize) : void;
    /**
     * Returns a reference to the split bar in use by this region.
     * @return The split bar
     */
    public native function getSplitBar() : SplitBar;
    override public native function destroy() : void;
}}
