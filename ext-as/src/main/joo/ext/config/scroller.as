package ext.config {

import ext.Ext;

/**
 * Description
 * <p>This class serves as a typed config object for constructor of class Scroller.</p>
 *
 * @see ext.layout.boxoverflow.Scroller
 */
[ExtConfig(target="ext.layout.boxoverflow.Scroller")]
public class scroller {

  public function scroller(config:Object = null) {

    Ext.apply(this, config);
  }


  /**
   CSS class added to the afterCt element. This is the element that holds any special items such as scrollers, which must always be present at the rightmost edge of the Container
   */
  public native function get afterCls():String;

  /**
   * @private
   */
  public native function set afterCls(value:String):void;

  /**
   CSS class added to the right scroller element if enableScroll is used
   */
  public native function get afterScrollerCls():String;

  /**
   * @private
   */
  public native function set afterScrollerCls(value:String):void;

  /**
   True to animate the scrolling of items within the layout (defaults to true, ignored if enableScroll is false)
   */
  public native function get animateScroll():Boolean;

  /**
   * @private
   */
  public native function set animateScroll(value:Boolean):void;

  /**
   CSS class added to the beforeCt element. This is the element that holds any special items such as scrollers, which must always be present at the leftmost edge of the Container
   */
  public native function get beforeCls():String;

  /**
   * @private
   */
  public native function set beforeCls(value:String):void;

  /**
   CSS class added to the left scroller element if enableScroll is used
   */
  public native function get beforeScrollerCls():String;

  /**
   * @private
   */
  public native function set beforeScrollerCls(value:String):void;

  /**
   Number of seconds that each scroll animation lasts (defaults to 0.4)
   */
  public native function get scrollDuration():Number;

  /**
   * @private
   */
  public native function set scrollDuration(value:Number):void;

  /**
   The number of pixels to scroll by on scroller click (defaults to 100)
   */
  public native function get scrollIncrement():Number;

  /**
   * @private
   */
  public native function set scrollIncrement(value:Number):void;

  /**
   Number of milliseconds between each scroll while a scroller button is held down (defaults to 400)
   */
  public native function get scrollRepeatInterval():Number;

  /**
   * @private
   */
  public native function set scrollRepeatInterval(value:Number):void;

  /**
   CSS class added to both scroller elements if enableScroll is used
   */
  public native function get scrollerCls():String;

  /**
   * @private
   */
  public native function set scrollerCls(value:String):void;

  /**
   The number of pixels to increment on mouse wheel scrolling (defaults to <tt>3</tt>).
   */
  public native function get wheelIncrement():Number;

  /**
   * @private
   */
  public native function set wheelIncrement(value:Number):void;


}
}
    