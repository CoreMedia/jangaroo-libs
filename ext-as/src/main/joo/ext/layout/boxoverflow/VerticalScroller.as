package ext.layout.boxoverflow {
/**
 * Description
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.verticalscroller
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.VerticalScroller Sencha Docs Ext JS 3.4
 */
[Native]
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.VerticalScroller-method-atExtremeAfter Sencha Docs Ext JS 3.4
   */
  public native function atExtremeAfter():Boolean;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.VerticalScroller-method-createInnerElements Sencha Docs Ext JS 3.4
   */
  public native function createInnerElements():void;

  /**
   *
   *
   * @return The max scroll value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.VerticalScroller-method-getMaxScrollBottom Sencha Docs Ext JS 3.4
   */
  public native function getMaxScrollBottom():Number;

  /**
   * Returns the current scroll position of the innerCt element
   *
   * @return The current scroll position
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.VerticalScroller-method-getScrollPosition Sencha Docs Ext JS 3.4
   */
  public native function getScrollPosition():Number;

  /**
   *
   *
   * @param position The position to scroll to. This is constrained.
   * @param animate True to animate. If undefined, falls back to value of this.animateScroll
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.VerticalScroller-method-scrollTo Sencha Docs Ext JS 3.4
   */
  public native function scrollTo(position:Number, animate:Boolean):void;

}
}
    