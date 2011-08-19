package ext.layout.boxoverflow {
/**
 * Description
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.horizontalscroller
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#cls-Ext.layout.boxOverflow.HorizontalScroller Ext JS source
 */
public class HorizontalScroller extends Scroller {

  /**
   *
   *
   * @see ext.config.horizontalscroller
   */
  public function HorizontalScroller() {
    super();
  }

  /**
   *
   *
   * @return True if already at furthest right point
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.HorizontalScroller-atExtremeAfter Ext JS source
   */
  public native function atExtremeAfter():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.HorizontalScroller-createInnerElements Ext JS source
   */
  public native function createInnerElements():void;

  /**
   *
   *
   * @return The max scroll value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.HorizontalScroller-getMaxScrollRight Ext JS source
   */
  public native function getMaxScrollRight():Number;

  /**
   * Returns the current scroll position of the innerCt element
   *
   * @return The current scroll position
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.HorizontalScroller-getScrollPosition Ext JS source
   */
  public native function getScrollPosition():Number;

  /**
   *
   *
   * @param position The position to scroll to. This is constrained.
   * @param animate True to animate. If undefined, falls back to value of this.animateScroll
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.HorizontalScroller-scrollTo Ext JS source
   */
  public native function scrollTo(position:Number, animate:Boolean):void;

}
}
    