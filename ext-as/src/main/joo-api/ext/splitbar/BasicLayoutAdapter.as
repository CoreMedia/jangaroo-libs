package ext.splitbar {

import ext.SplitBar;

/**
 * Default Adapter. It assumes the splitter and resizing element are not positioned elements and only gets/sets the width of the element. Generally used for table based layouts.
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#cls-Ext.SplitBar.BasicLayoutAdapter Ext JS source
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar.BasicLayoutAdapter-getElementSize Ext JS source
   */
  public native function getElementSize(s:SplitBar):void;

  /**
   * Called after drag operations to set the size of the resizing element.
   *
   * @param s The SplitBar using this adapter
   * @param newSize The new size to set
   * @param onComplete A function to be invoked when resizing is complete
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitBar.html#method-Ext.SplitBar.BasicLayoutAdapter-setElementSize Ext JS source
   */
  public native function setElementSize(s:SplitBar, newSize:Number, onComplete:Function):void;

}
}
    