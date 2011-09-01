package ext.config {

import ext.form.Number;

/**
 * A wrapper class around <a href="Ext.util.Scroller.html">Ext.util.Scroller</a> and <a href="Ext.util.Scroller.Indicator.html">Ext.util.Scroller.Indicator</a> that listens to scroll events and control the scroll indicators
 *
 * <p>This class serves as a
 * typed config object for constructor of class ScrollView.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.ScrollView
 */
[ExtConfig(target="ext.util.ScrollView")]
public class scrollview extends observable {

  public function scrollview(config:Object = null) {

    super(config);
  }


  /**
   A valid config object for <a href="Ext.util.Scroller.Indicator.html">Ext.util.Scroller.Indicator</a>
   */
  public native function get indicatorConfig():Object;

  /**
   * @private
   */
  public native function set indicatorConfig(value:Object):void;

  /**
   The margin value for the indicator relatively to the container. Defaults to <tt>4</tt>
   */
  public native function get indicatorMargin():ext.form.Number;

  /**
   * @private
   */
  public native function set indicatorMargin(value:ext.form.Number):void;

  /**
   Whether or not to use indicators. Can be either: <ul><li>{Boolean} true to display both directions, false otherwise</li><li>{String} 'vertical' or 'horizontal' to display for that specific direction only</li><li style="list-style: none">Defaults to true</li></ul>
   */
  public native function get useIndicators():*;

  /**
   * @private
   */
  public native function set useIndicators(value:*):void;


}
}
    