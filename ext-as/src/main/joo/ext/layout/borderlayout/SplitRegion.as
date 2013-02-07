package ext.layout.borderlayout {
import ext.SplitBar;
import ext.config.splitregion;
import ext.layout.ContainerLayout;

/**
 * This is a specialized type of <a href="Ext.layout.BorderLayout.Region.html">BorderLayout region</a> that has a built-in <a href="Ext.SplitBar.html">Ext.SplitBar</a> for user resizing of regions. The movement of the split bar is configurable to move either <a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-tickSize">smooth or incrementally</a>.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.splitregion
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BorderLayout.SplitRegion Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.layout.BorderLayout.SplitRegion")]
public class SplitRegion extends Region {

  /**
   * Create a new SplitRegion.
   *
   * @param layout The <a href="Ext.layout.BorderLayout.html">BorderLayout</a> instance that is managing this Region.
   * @param config The configuration options
   * @param position The region position. Valid values are: north, south, east, west and center. Every BorderLayout must have a center region for the primary content -- all other regions are optional.
   * @see ext.config.splitregion
   */
  public function SplitRegion(layout:ContainerLayout, config:splitregion, position:String) {
    super(null, null, null);
  }

  /**
   The tooltip to display when the user hovers over a <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">collapsible</a> region's split bar (defaults to "Drag to resize. Double click to hide."). Only applies if <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-useSplitTips">useSplitTips</a> = true</tt>.
   */
  public native function get collapsibleSplitTip():String;

  /**
   The tooltip to display when the user hovers over a <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">non-collapsible</a> region's split bar (defaults to <tt>"Drag to resize."</tt>). Only applies if <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-useSplitTips">useSplitTips</a> = true</tt>.
   */
  public native function get splitTip():String;

  /**
   The increment, in pixels by which to move this Region's <a href="Ext.SplitBar.html">SplitBar</a>. By default, the <a href="Ext.SplitBar.html">SplitBar</a> moves smoothly.
   */
  public native function get tickSize():Number;

  /**
   <tt>true</tt> to display a tooltip when the user hovers over a region's split bar (defaults to <tt>false</tt>). The tooltip text will be the value of either <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-splitTip">splitTip</a></tt> or <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-collapsibleSplitTip">collapsibleSplitTip</a></tt> as appropriate.
   */
  public native function get useSplitTips():Boolean;

  /**
   * Returns a reference to the split bar in use by this region.
   *
   * @return The split bar
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BorderLayout.SplitRegion-method-getSplitBar Sencha Docs Ext JS 3.4
   */
  public native function getSplitBar():SplitBar;

}
}
    