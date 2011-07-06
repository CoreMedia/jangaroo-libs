package ext {


/**
 * nullA specialized tooltip class for tooltips that can be specified in markup and automatically managed by the global <a href="Ext.QuickTips.html">Ext.QuickTips</a> instance. See the QuickTips class header for additional usage details and examples.
 * <p>This component is created by the xtype 'quicktip' / the EXML element &lt;quicktip>.</p>
 * @see ext.config.quicktip
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/QuickTip.html#cls-Ext.QuickTip Ext JS source
 */
public class QuickTip extends ToolTip {

  /**
   * Create a new Tip
   *
   * @param config The configuration options
   * @see ext.config.quicktip
   */
  public function QuickTip(config:Object) {
    super(null);
  }

  /**
   True to automatically use the element's DOM title value if available (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get interceptTitles():Boolean;

  /**
   The target HTMLElement, Ext.Element or id to associate with this quicktip (defaults to the document).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get target():*;

  /**
   * Hides a visible tip or cancels an impending show for a particular element.
   *
   * @param el The element that is the target of the tip.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/QuickTip.html#method-Ext.QuickTip-cancelShow Ext JS source
   */
  public native function cancelShow(el:*):void;

  /**
   * Configures a new quick tip instance and assigns it to a target element. The following config values are supported (for example usage, see the <a href="Ext.QuickTips.html">Ext.QuickTips</a> class header): <div class="mdetail-params"><ul><li>autoHide</li><li>cls</li><li>dismissDelay (overrides the singleton value)</li><li>target (required)</li><li>text (required)</li><li>title</li><li>width</li></ul></div>
   *
   * @param config The config object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/QuickTip.html#method-Ext.QuickTip-register Ext JS source
   */
  public native function register(config:Object):void;

  /**
   * Removes this quick tip from its element and destroys it.
   *
   * @param el The element from which the quick tip is to be removed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/QuickTip.html#method-Ext.QuickTip-unregister Ext JS source
   */
  public native function unregister(el:*):void;

}
}
    