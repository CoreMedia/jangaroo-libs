package ext.splitbar {
/**
 * Adapter that moves the splitter element to align with the resized sizing element. Used with an absolute positioned SplitBar.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.AbsoluteLayoutAdapter Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.AbsoluteLayoutAdapter-property-BOTTOM Sencha Docs Ext JS 3.4
   */
  public static const BOTTOM:Number;

  /**
   Orientation constant - Create a horizontal SplitBar
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.AbsoluteLayoutAdapter-property-HORIZONTAL Sencha Docs Ext JS 3.4
   */
  public static const HORIZONTAL:Number;

  /**
   Placement constant - The resizing element is to the left of the splitter element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.AbsoluteLayoutAdapter-property-LEFT Sencha Docs Ext JS 3.4
   */
  public static const LEFT:Number;

  /**
   Placement constant - The resizing element is to the right of the splitter element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.AbsoluteLayoutAdapter-property-RIGHT Sencha Docs Ext JS 3.4
   */
  public static const RIGHT:Number;

  /**
   Placement constant - The resizing element is positioned above the splitter element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.AbsoluteLayoutAdapter-property-TOP Sencha Docs Ext JS 3.4
   */
  public static const TOP:Number;

  /**
   Orientation constant - Create a vertical SplitBar
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.AbsoluteLayoutAdapter-property-VERTICAL Sencha Docs Ext JS 3.4
   */
  public static const VERTICAL:Number;

}
}
    