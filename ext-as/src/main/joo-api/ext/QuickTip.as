package ext {
import ext.config.quicktip;

/**
 * nullA specialized tooltip class for tooltips that can be specified in markup and automatically managed by the global <a href="Ext.QuickTips.html">Ext.QuickTips</a> instance. See the QuickTips class header for additional usage details and examples.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'quicktip' / the EXML element &lt;quicktip>.</p>
 * @see ext.config.quicktip
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.QuickTip Sencha Docs Ext JS 3.4
 */
public class QuickTip extends ToolTip {

  /**
   * Create a new Tip
   *
   * @param config The configuration options
   * @see ext.config.quicktip
   */
  public function QuickTip(config:quicktip) {
    super(config);
  }

  /**
   True to automatically use the element's DOM title value if available (defaults to false).
   */
  public native function get interceptTitles():Boolean;

  /**
   The target HTMLElement, Ext.Element or id to associate with this quicktip (defaults to the document).
   */
  override public native function get target():*;

  /**
   * Hides a visible tip or cancels an impending show for a particular element.
   *
   * @param el The element that is the target of the tip.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.QuickTip-method-cancelShow Sencha Docs Ext JS 3.4
   */
  public native function cancelShow(el:*):void;

  /**
   * Configures a new quick tip instance and assigns it to a target element. The following config values are supported (for example usage, see the <a href="Ext.QuickTips.html">Ext.QuickTips</a> class header): <div class="mdetail-params"><ul><li>autoHide</li><li>cls</li><li>dismissDelay (overrides the singleton value)</li><li>target (required)</li><li>text (required)</li><li>title</li><li>width</li></ul></div>
   *
   * @param config The config object
   * @see ext.QuickTips
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.QuickTip-method-register Sencha Docs Ext JS 3.4
   */
  public native function register(config:Object):void;

  /**
   * Removes this quick tip from its element and destroys it.
   *
   * @param el The element from which the quick tip is to be removed.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.QuickTip-method-unregister Sencha Docs Ext JS 3.4
   */
  public native function unregister(el:*):void;

}
}
    