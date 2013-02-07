package ext.layout.boxoverflow {
/**
 * Description
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.horizontalscroller
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.HorizontalScroller Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.layout.boxOverflow.HorizontalScroller")]
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.HorizontalScroller-method-atExtremeAfter Sencha Docs Ext JS 3.4
   */
  public native function atExtremeAfter():Boolean;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.HorizontalScroller-method-createInnerElements Sencha Docs Ext JS 3.4
   */
  public native function createInnerElements():void;

  /**
   *
   *
   * @return The max scroll value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.HorizontalScroller-method-getMaxScrollRight Sencha Docs Ext JS 3.4
   */
  public native function getMaxScrollRight():Number;

  /**
   * Returns the current scroll position of the innerCt element
   *
   * @return The current scroll position
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.HorizontalScroller-method-getScrollPosition Sencha Docs Ext JS 3.4
   */
  public native function getScrollPosition():Number;

  /**
   *
   *
   * @param position The position to scroll to. This is constrained.
   * @param animate True to animate. If undefined, falls back to value of this.animateScroll
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.HorizontalScroller-method-scrollTo Sencha Docs Ext JS 3.4
   */
  public native function scrollTo(position:Number, animate:Boolean):void;

}
}
    