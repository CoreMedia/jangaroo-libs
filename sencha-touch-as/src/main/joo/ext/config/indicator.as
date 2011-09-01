package ext.config {

import joo.JavaScriptObject;

/**
 * Represent the Scroll Indicator to be used in a <a href="Ext.util.ScrollView.html">ScrollView</a>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Indicator.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.Indicator
 */
[ExtConfig(target="ext.util.Indicator")]
public class indicator extends JavaScriptObject {

  public function indicator(config:Object = null) {

    super(config);
  }


  /**
   The type of this Indicator, valid values are 'vertical' or 'horizontal'
   */
  public native function get type():String;

  /**
   * @private
   */
  public native function set type(value:String):void;


}
}
    