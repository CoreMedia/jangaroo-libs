package ext.layout.boxoverflow {


/**
 * Description
 * @see ext.config.verticalscroller
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#cls-Ext.layout.boxOverflow.VerticalScroller Ext JS source
 */
public class VerticalScroller extends Scroller {

  /**
   *
   *
   * @see ext.config.verticalscroller
   */
  public function VerticalScroller() {
    super();
  }

  /**
   *
   *
   * @return True if already at furthest right point
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.VerticalScroller-atExtremeAfter Ext JS source
   */
  public native function atExtremeAfter():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.VerticalScroller-createInnerElements Ext JS source
   */
  public native function createInnerElements():void;

  /**
   *
   *
   * @return The max scroll value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.VerticalScroller-getMaxScrollBottom Ext JS source
   */
  public native function getMaxScrollBottom():Number;

  /**
   * Returns the current scroll position of the innerCt element
   *
   * @return The current scroll position
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.VerticalScroller-getScrollPosition Ext JS source
   */
  public native function getScrollPosition():Number;

  /**
   *
   *
   * @param position The position to scroll to. This is constrained.
   * @param animate True to animate. If undefined, falls back to value of this.animateScroll
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.VerticalScroller-scrollTo Ext JS source
   */
  public native function scrollTo(position:Number, animate:Boolean):void;

}
}
    