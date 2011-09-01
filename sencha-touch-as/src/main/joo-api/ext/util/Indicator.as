package ext.util {


/**
 * Represent the Scroll Indicator to be used in a <a href="Ext.util.ScrollView.html">ScrollView</a>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.indicator
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Scroller.html#cls-Ext.util.Indicator Ext JS source
 */
public class Indicator {

  /**
   *
   *
   * @see ext.config.indicator
   */
  public function Indicator() {
    super();
  }

  /**
   The type of this Indicator, valid values are 'vertical' or 'horizontal'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get type():String;

}
}
    