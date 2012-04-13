package ext.splitbar {
import ext.SplitBar;

/**
 * Default Adapter. It assumes the splitter and resizing element are not positioned elements and only gets/sets the width of the element. Generally used for table based layouts.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.BasicLayoutAdapter Sencha Docs Ext JS 3.4
 */
public class BasicLayoutAdapter {

  /**
   *
   *
   */
  public function BasicLayoutAdapter() {
    super();
  }

  /**
   * Called before drag operations to get the current size of the resizing element.
   *
   * @param s The SplitBar using this adapter
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.BasicLayoutAdapter-method-getElementSize Sencha Docs Ext JS 3.4
   */
  public native function getElementSize(s:SplitBar):void;

  /**
   * Called after drag operations to set the size of the resizing element.
   *
   * @param s The SplitBar using this adapter
   * @param newSize The new size to set
   * @param onComplete A function to be invoked when resizing is complete
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar.BasicLayoutAdapter-method-setElementSize Sencha Docs Ext JS 3.4
   */
  public native function setElementSize(s:SplitBar, newSize:Number, onComplete:Function):void;

}
}
    