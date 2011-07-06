package ext.splitbar {


/**
 * Adapter that moves the splitter element to align with the resized sizing element. Used with an absolute positioned SplitBar.
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#cls-Ext.SplitBar.AbsoluteLayoutAdapter Ext JS source
 */
public class AbsoluteLayoutAdapter extends BasicLayoutAdapter {

  /**
   *
   *
   */
  public function AbsoluteLayoutAdapter() {
    super();
  }

  /**
   Placement constant - The resizing element is positioned under splitter element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar.AbsoluteLayoutAdapter-BOTTOM Ext JS source
   */
  public static const BOTTOM:Number;

  /**
   Orientation constant - Create a horizontal SplitBar
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar.AbsoluteLayoutAdapter-HORIZONTAL Ext JS source
   */
  public static const HORIZONTAL:Number;

  /**
   Placement constant - The resizing element is to the left of the splitter element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar.AbsoluteLayoutAdapter-LEFT Ext JS source
   */
  public static const LEFT:Number;

  /**
   Placement constant - The resizing element is to the right of the splitter element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar.AbsoluteLayoutAdapter-RIGHT Ext JS source
   */
  public static const RIGHT:Number;

  /**
   Placement constant - The resizing element is positioned above the splitter element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar.AbsoluteLayoutAdapter-TOP Ext JS source
   */
  public static const TOP:Number;

  /**
   Orientation constant - Create a vertical SplitBar
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#prop-Ext.SplitBar.AbsoluteLayoutAdapter-VERTICAL Ext JS source
   */
  public static const VERTICAL:Number;

}
}
    