package ext.layout.borderlayout {

import ext.SplitBar;
import ext.layout.ContainerLayout;

/**
 * This is a specialized type of <a href="Ext.layout.BorderLayout.Region.html">BorderLayout region</a> that has a built-in <a href="Ext.SplitBar.html">Ext.SplitBar</a> for user resizing of regions. The movement of the split bar is configurable to move either <a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-tickSize">smooth or incrementally</a>.

 * @see ext.config.splitregion
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#cls-Ext.layout.BorderLayout.SplitRegion Ext JS source
 */
public class SplitRegion extends Region {

  /**
   * Create a new SplitRegion.
   *
   * @param layout The <a href="Ext.layout.BorderLayout.html">BorderLayout</a> instance that is managing this Region.
   * @param config The configuration options
   * @param position The region position. Valid values are: north, south, east, west and center. Every BorderLayout must have a center region for the primary content -- all other regions are optional.
   * @see ext.config.splitregion
   */
  public function SplitRegion(layout:ContainerLayout, config:Object, position:String) {
    super(null, null, null);
  }

  /**
   The tooltip to display when the user hovers over a <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">collapsible</a> region's split bar (defaults to "Drag to resize. Double click to hide."). Only applies if <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-useSplitTips">useSplitTips</a> = true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get collapsibleSplitTip():String;

  /**
   The tooltip to display when the user hovers over a <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">non-collapsible</a> region's split bar (defaults to <tt>"Drag to resize."</tt>). Only applies if <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-useSplitTips">useSplitTips</a> = true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get splitTip():String;

  /**
   The increment, in pixels by which to move this Region's <a href="Ext.SplitBar.html">SplitBar</a>. By default, the <a href="Ext.SplitBar.html">SplitBar</a> moves smoothly.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tickSize():Number;

  /**
   <tt>true</tt> to display a tooltip when the user hovers over a region's split bar (defaults to <tt>false</tt>). The tooltip text will be the value of either <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-splitTip">splitTip</a></tt> or <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-collapsibleSplitTip">collapsibleSplitTip</a></tt> as appropriate.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useSplitTips():Boolean;

  /**
   * Returns a reference to the split bar in use by this region.
   *
   * @return The split bar
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#method-Ext.layout.BorderLayout.SplitRegion-getSplitBar Ext JS source
   */
  public native function getSplitBar():SplitBar;

}
}
    