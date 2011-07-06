package ext.config {


/**
 * This is a specialized type of <a href="Ext.layout.BorderLayout.Region.html">BorderLayout region</a> that has a built-in <a href="Ext.SplitBar.html">Ext.SplitBar</a> for user resizing of regions. The movement of the split bar is configurable to move either <a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-tickSize">smooth or incrementally</a>.

 * <p>This class serves as a typed config object for constructor of class SplitRegion.</p>
 *
 * @see ext.layout.borderlayout.SplitRegion
 */
[ExtConfig(target="ext.layout.borderlayout.SplitRegion")]
public class splitregion extends region {

  public function splitregion(config:Object = null) {

    super(config);
  }


  /**
   The tooltip to display when the user hovers over a <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">collapsible</a> region's split bar (defaults to "Drag to resize. Double click to hide."). Only applies if <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-useSplitTips">useSplitTips</a> = true</tt>.
   */
  public native function get collapsibleSplitTip():String;

  /**
   * @private
   */
  public native function set collapsibleSplitTip(value:String):void;

  /**
   The tooltip to display when the user hovers over a <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">non-collapsible</a> region's split bar (defaults to <tt>"Drag to resize."</tt>). Only applies if <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-useSplitTips">useSplitTips</a> = true</tt>.
   */
  public native function get splitTip():String;

  /**
   * @private
   */
  public native function set splitTip(value:String):void;

  /**
   The increment, in pixels by which to move this Region's <a href="Ext.SplitBar.html">SplitBar</a>. By default, the <a href="Ext.SplitBar.html">SplitBar</a> moves smoothly.
   */
  public native function get tickSize():Number;

  /**
   * @private
   */
  public native function set tickSize(value:Number):void;

  /**
   <tt>true</tt> to display a tooltip when the user hovers over a region's split bar (defaults to <tt>false</tt>). The tooltip text will be the value of either <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-splitTip">splitTip</a></tt> or <tt><a href="output/Ext.layout.BorderLayout.SplitRegion.html#Ext.layout.BorderLayout.SplitRegion-collapsibleSplitTip">collapsibleSplitTip</a></tt> as appropriate.
   */
  public native function get useSplitTips():Boolean;

  /**
   * @private
   */
  public native function set useSplitTips(value:Boolean):void;


}
}
    