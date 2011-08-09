package ext.config {


/**
 * nullThis is the base class for <a href="Ext.QuickTip.html">Ext.QuickTip</a> and <a href="Ext.Tooltip.html">Ext.Tooltip</a> that provides the basic layout and positioning that all tip-based classes require. This class can be used directly for simple, statically-positioned tips that are displayed programmatically, or it can be extended to provide custom tip implementations.
 * <p>This class serves as a typed config object for constructor of class Tip.</p>
 *
 * @see ext.Tip
 */
[ExtConfig(target="ext.Tip", xtype="tip")]
public class tip extends panel {

  public function tip(config:Object = null) {

    super(config);
  }


  /**
   True to render a close tool button into the tooltip header (defaults to false).
   */
  override public native function get closable():Boolean;

  /**
   * @private
   */
  override public native function set closable(value:Boolean):void;

  /**
   <b>Experimental</b>. The default <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> anchor position value for this tip relative to its element of origin (defaults to "tl-bl?").
   */
  public native function get defaultAlign():String;

  /**
   * @private
   */
  public native function set defaultAlign(value:String):void;

  /**
   The maximum width of the tip in pixels (defaults to 300). The maximum supported value is 500.
   */
  public native function get maxWidth():Number;

  /**
   * @private
   */
  public native function set maxWidth(value:Number):void;

  /**
   The minimum width of the tip in pixels (defaults to 40).
   */
  public native function get minWidth():Number;

  /**
   * @private
   */
  public native function set minWidth(value:Number):void;

  /**
   True or "sides" for the default effect, "frame" for 4-way shadow, and "drop" for bottom-right shadow (defaults to "sides").
   */
  override public native function get shadow():*;

  /**
   * @private
   */
  override public native function set shadow(value:*):void;

  /**
   Width in pixels of the tip (defaults to auto). Width will be ignored if it exceeds the bounds of <a href="output/Ext.Tip.html#Ext.Tip-minWidth">minWidth</a> or <a href="output/Ext.Tip.html#Ext.Tip-maxWidth">maxWidth</a>. The maximum supported value is 500.
   */
  override public native function get width():*;

  /**
   * @private
   */
  override public native function set width(value:*):void;


}
}
    