package ext.config {


/**
 * Used in the <a href="Ext.TabBar.html">Ext.TabBar</a> component. This shouldn't be used directly, instead use <a href="Ext.TabBar.html">Ext.TabBar</a> or <a href="Ext.TabPanel.html">Ext.TabPanel</a>.

 *
 * <p>This class represents the xtype 'tab' and serves as a
 * typed config object for constructor of class Tab.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Tab
 */
[ExtConfig(target="ext.Tab", xtype="tab")]
public class tab extends button {

  public function tab(config:Object = null) {

    super(config);
  }


  /**
   The CSS class to be applied to a Tab when it is active. Defaults to 'x-tab-active'. Providing your own CSS for this class enables you to customize the active state.
   */
  public native function get activeCls():String;

  /**
   * @private
   */
  public native function set activeCls(value:String):void;

  /**
   The CSS class to be applied to a Tab when it is pressed. Defaults to 'x-tab-pressed'. Providing your own CSS for this class enables you to customize the pressed state.
   */
  override public native function get pressedCls():String;

  /**
   * @private
   */
  override public native function set pressedCls(value:String):void;


}
}
    