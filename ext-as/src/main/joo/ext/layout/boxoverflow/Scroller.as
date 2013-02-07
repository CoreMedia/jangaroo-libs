package ext.layout.boxoverflow {
import ext.Component;
import ext.Element;

/**
 * Description
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.scroller
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.layout.boxOverflow.Scroller")]
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-property-afterScroller Sencha Docs Ext JS 3.4
   */
  public native function get afterScroller():Element;

  /**
   * @private
   */
  public native function set afterScroller(value:Element):void;

  /**
   The left scroller element. Only created when needed.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-property-beforeScroller Sencha Docs Ext JS 3.4
   */
  public native function get beforeScroller():Element;

  /**
   * @private
   */
  public native function set beforeScroller(value:Element):void;

  /**
   CSS class added to the afterCt element. This is the element that holds any special items such as scrollers, which must always be present at the rightmost edge of the Container
   */
  public native function get afterCls():String;

  /**
   CSS class added to the right scroller element if enableScroll is used
   */
  public native function get afterScrollerCls():String;

  /**
   True to animate the scrolling of items within the layout (defaults to true, ignored if enableScroll is false)
   */
  public native function get animateScroll():Boolean;

  /**
   CSS class added to the beforeCt element. This is the element that holds any special items such as scrollers, which must always be present at the leftmost edge of the Container
   */
  public native function get beforeCls():String;

  /**
   CSS class added to the left scroller element if enableScroll is used
   */
  public native function get beforeScrollerCls():String;

  /**
   Number of seconds that each scroll animation lasts (defaults to 0.4)
   */
  public native function get scrollDuration():Number;

  /**
   The number of pixels to scroll by on scroller click (defaults to 100)
   */
  public native function get scrollIncrement():Number;

  /**
   Number of milliseconds between each scroll while a scroller button is held down (defaults to 400)
   */
  public native function get scrollRepeatInterval():Number;

  /**
   CSS class added to both scroller elements if enableScroll is used
   */
  public native function get scrollerCls():String;

  /**
   The number of pixels to increment on mouse wheel scrolling (defaults to <tt>3</tt>).
   */
  public native function get wheelIncrement():Number;

  /**
   *
   *
   * @return True if already at furthest left point
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-atExtremeBefore Sencha Docs Ext JS 3.4
   */
  public native function atExtremeBefore():Boolean;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-clearOverflow Sencha Docs Ext JS 3.4
   */
  public native function clearOverflow():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-createScrollers Sencha Docs Ext JS 3.4
   */
  public native function createScrollers():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-createWheelListener Sencha Docs Ext JS 3.4
   */
  public native function createWheelListener():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy():void;

  /**
   *
   *
   * @param item The item reference, id or index
   * @return The item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-getItem Sencha Docs Ext JS 3.4
   */
  public native function getItem(item:*):Component;

  /**
   *
   *
   * @param item The item
   * @return Values for fullyVisible, hiddenLeft and hiddenRight
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-getItemVisibility Sencha Docs Ext JS 3.4
   */
  public native function getItemVisibility(item:Component):Object;

  /**
   *
   *
   * @return Object passed to scrollTo when scrolling
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-getScrollAnim Sencha Docs Ext JS 3.4
   */
  public native function getScrollAnim():Object;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-handleOverflow Sencha Docs Ext JS 3.4
   */
  public native function handleOverflow():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-hideScrollers Sencha Docs Ext JS 3.4
   */
  public native function hideScrollers():void;

  /**
   *
   *
   * @param delta Number of pixels to scroll to the right by. Use a negative number to scroll left
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-scrollBy Sencha Docs Ext JS 3.4
   */
  public native function scrollBy(delta:Number):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-scrollLeft Sencha Docs Ext JS 3.4
   */
  public native function scrollLeft():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-scrollRight Sencha Docs Ext JS 3.4
   */
  public native function scrollRight():void;

  /**
   * Scrolls to the given component.
   *
   * @param item The item to scroll to. Can be a numerical index, component id or a reference to the component itself.
   * @param animate True to animate the scrolling
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-scrollToItem Sencha Docs Ext JS 3.4
   */
  public native function scrollToItem(item:*, animate:Boolean):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-showScrollers Sencha Docs Ext JS 3.4
   */
  public native function showScrollers():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Scroller-method-updateScrollButtons Sencha Docs Ext JS 3.4
   */
  public native function updateScrollButtons():void;

}
}
    