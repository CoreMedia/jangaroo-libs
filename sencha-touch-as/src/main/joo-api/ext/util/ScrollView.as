package ext.util {

import ext.form.Number;

/**
 * A wrapper class around <a href="Ext.util.Scroller.html">Ext.util.Scroller</a> and <a href="Ext.util.Scroller.Indicator.html">Ext.util.Scroller.Indicator</a> that listens to scroll events and control the scroll indicators
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.scrollview
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Scroller.html#cls-Ext.util.ScrollView Ext JS source
 */
[Native]
public class ScrollView extends Observable {

  /**
   *
   *
   * @see ext.config.scrollview
   */
  public function ScrollView() {
    super();
  }

  /**
   A valid config object for <a href="Ext.util.Scroller.Indicator.html">Ext.util.Scroller.Indicator</a>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get indicatorConfig():Object;

  /**
   The margin value for the indicator relatively to the container. Defaults to <tt>4</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get indicatorMargin():ext.form.Number;

  /**
   Whether or not to use indicators. Can be either: <ul><li>{Boolean} true to display both directions, false otherwise</li><li>{String} 'vertical' or 'horizontal' to display for that specific direction only</li><li style="list-style: none">Defaults to true</li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useIndicators():*;

}
}
    