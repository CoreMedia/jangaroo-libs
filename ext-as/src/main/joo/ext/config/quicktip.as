package ext.config {


/**
 * nullA specialized tooltip class for tooltips that can be specified in markup and automatically managed by the global <a href="Ext.QuickTips.html">Ext.QuickTips</a> instance. See the QuickTips class header for additional usage details and examples.
 * <p>This class serves as a typed config object for constructor of class QuickTip.</p>
 *
 * @see ext.QuickTip
 */
[ExtConfig(target="ext.QuickTip")]
public class quicktip extends tooltip {

  public function quicktip(config:Object = null) {

    super(config);
  }


  /**
   True to automatically use the element's DOM title value if available (defaults to false).
   */
  public native function get interceptTitles():Boolean;

  /**
   * @private
   */
  public native function set interceptTitles(value:Boolean):void;

  /**
   The target HTMLElement, Ext.Element or id to associate with this quicktip (defaults to the document).
   */
  override public native function get target():*;

  /**
   * @private
   */
  override public native function set target(value:*):void;


}
}
    