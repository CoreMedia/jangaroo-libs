package ext.config {

import ext.form.Number;

/**
 * Used in the <a href="Ext.TabPanel.html">Ext.TabPanel</a> component to display <a href="Ext.Tab.html">Ext.Tab</a> components.
 <h2>Screenshot:</h2><p><img src="doc_resources/Ext.TabBar/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var bar = new Ext.TabBar({
 dock : 'top',
 ui   : 'dark',
 items: [
 {
 text: '1st Button'
 },
 {
 text: '2nd Button'
 }
 ]
 });

 var myPanel = new Ext.Panel({
 dockedItems: [bar],
 fullscreen : true,
 html       : 'Test Panel'
 });
 </code></pre>
 *
 * <p>This class represents the xtype 'tabbar' and serves as a
 * typed config object for constructor of class TabBar.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.TabBar
 */
[ExtConfig(target="ext.TabBar", xtype="tabbar")]
public class tabbar extends panel {

  public function tabbar(config:Object = null) {

    super(config);
  }


  /**
   Duration in milliseconds that a user must hold a tab before dragging. The sortable configuration must be set for this setting to be used.
   */
  public native function get sortHoldThreshold():ext.form.Number;

  /**
   * @private
   */
  public native function set sortHoldThreshold(value:ext.form.Number):void;

  /**
   Enable sorting functionality for the TabBar.
   */
  public native function get sortable():Boolean;

  /**
   * @private
   */
  public native function set sortable(value:Boolean):void;


}
}
    