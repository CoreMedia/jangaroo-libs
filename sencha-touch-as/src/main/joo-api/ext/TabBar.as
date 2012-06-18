package ext {

import ext.config.tabbar;
import ext.form.Number;

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.TabBar</code>

 *       </li>

 *       <li>
 *           <code>tab:ext.Tab</code>
 The Tab button
 *       </li>

 *       <li>
 *           <code>card:ext.Component</code>
 The component that has been activated
 *       </li>

 * </ul>
 */
[Event(name="change")]


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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'tabbar' / the EXML element &lt;tabbar>.</p>
 * @see ext.config.tabbar
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabBar.html#cls-Ext.TabBar Ext JS source
 */
[Native]
public class TabBar extends Panel {

  /**
   * Create a new TabBar.
   *
   * @param config The config object
   * @see ext.config.tabbar
   */
  public function TabBar(config:tabbar = null) {
    super(null);
  }

  /**
   Read-only property of the currently active tab.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabBar.html#prop-Ext.TabBar-activeTab Ext JS source
   */
  public native function get activeTab():Tab;

  /**
   * @private
   */
  public native function set activeTab(value:Tab):void;

  /**
   Duration in milliseconds that a user must hold a tab before dragging. The sortable configuration must be set for this setting to be used.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sortHoldThreshold():ext.form.Number;

  /**
   Enable sorting functionality for the TabBar.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sortable():Boolean;

  /**
   * Returns a reference to the TabPanel's layout that wraps around the TabBar.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabBar.html#method-Ext.TabBar-getCardLayout Ext JS source
   */
  public native function getCardLayout():void;

}
}
    