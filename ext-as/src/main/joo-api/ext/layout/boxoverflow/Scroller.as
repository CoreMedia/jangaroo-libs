package ext.layout.boxoverflow {

import ext.Component;
import ext.Element;

/**
 * Description
 * @see ext.config.scroller
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#cls-Ext.layout.boxOverflow.Scroller Ext JS source
 */
public class Scroller extends None {

  /**
   *
   *
   * @see ext.config.scroller
   */
  public function Scroller() {
    super();
  }

  /**
   The left scroller element. Only created when needed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#prop-Ext.layout.boxOverflow.Scroller-afterScroller Ext JS source
   */
  public native function get afterScroller():Element;

  /**
   * @private
   */
  public native function set afterScroller(value:Element):void;

  /**
   The left scroller element. Only created when needed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#prop-Ext.layout.boxOverflow.Scroller-beforeScroller Ext JS source
   */
  public native function get beforeScroller():Element;

  /**
   * @private
   */
  public native function set beforeScroller(value:Element):void;

  /**
   CSS class added to the afterCt element. This is the element that holds any special items such as scrollers, which must always be present at the rightmost edge of the Container
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get afterCls():String;

  /**
   CSS class added to the right scroller element if enableScroll is used
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get afterScrollerCls():String;

  /**
   True to animate the scrolling of items within the layout (defaults to true, ignored if enableScroll is false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get animateScroll():Boolean;

  /**
   CSS class added to the beforeCt element. This is the element that holds any special items such as scrollers, which must always be present at the leftmost edge of the Container
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get beforeCls():String;

  /**
   CSS class added to the left scroller element if enableScroll is used
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get beforeScrollerCls():String;

  /**
   Number of seconds that each scroll animation lasts (defaults to 0.4)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scrollDuration():Number;

  /**
   The number of pixels to scroll by on scroller click (defaults to 100)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scrollIncrement():Number;

  /**
   Number of milliseconds between each scroll while a scroller button is held down (defaults to 400)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scrollRepeatInterval():Number;

  /**
   CSS class added to both scroller elements if enableScroll is used
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scrollerCls():String;

  /**
   The number of pixels to increment on mouse wheel scrolling (defaults to <tt>3</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get wheelIncrement():Number;

  /**
   *
   *
   * @return True if already at furthest left point
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-atExtremeBefore Ext JS source
   */
  public native function atExtremeBefore():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-clearOverflow Ext JS source
   */
  public native function clearOverflow():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-createScrollers Ext JS source
   */
  public native function createScrollers():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-createWheelListener Ext JS source
   */
  public native function createWheelListener():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   *
   *
   * @param item The item reference, id or index
   * @return The item
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-getItem Ext JS source
   */
  public native function getItem(item:*):Component;

  /**
   *
   *
   * @param item The item
   * @return Values for fullyVisible, hiddenLeft and hiddenRight
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-getItemVisibility Ext JS source
   */
  public native function getItemVisibility(item:Component):Object;

  /**
   *
   *
   * @return Object passed to scrollTo when scrolling
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-getScrollAnim Ext JS source
   */
  public native function getScrollAnim():Object;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-handleOverflow Ext JS source
   */
  public native function handleOverflow():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-hideScrollers Ext JS source
   */
  public native function hideScrollers():void;

  /**
   *
   *
   * @param delta Number of pixels to scroll to the right by. Use a negative number to scroll left
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-scrollBy Ext JS source
   */
  public native function scrollBy(delta:Number):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-scrollLeft Ext JS source
   */
  public native function scrollLeft():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-scrollRight Ext JS source
   */
  public native function scrollRight():void;

  /**
   * Scrolls to the given component.
   *
   * @param item The item to scroll to. Can be a numerical index, component id or a reference to the component itself.
   * @param animate True to animate the scrolling
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-scrollToItem Ext JS source
   */
  public native function scrollToItem(item:*, animate:Boolean):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-showScrollers Ext JS source
   */
  public native function showScrollers():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollerOverflow.html#method-Ext.layout.boxOverflow.Scroller-updateScrollButtons Ext JS source
   */
  public native function updateScrollButtons():void;

}
}
    