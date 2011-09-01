package ext {

import ext.config.tabpanel;

/**
 * TabPanel is a Container which can hold other components to be accessed in a tabbed interface. It uses a <a href="Ext.TabBar.html">Ext.TabBar</a> to display a <a href="Ext.Tab.html">Ext.Tab</a> for each item defined. <h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.TabPanel.html#Ext.TabPanel-ui">ui</a></li><li><a href="output/Ext.TabPanel.html#Ext.TabPanel-tabBarDock">tabBarDock</a></li><li><a href="output/Ext.TabPanel.html#Ext.TabPanel-cardSwitchAnimation">cardSwitchAnimation</a></li><li><a href="output/Ext.TabPanel.html#Ext.TabPanel-sortable">sortable</a></li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.TabPanel/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>new Ext.TabPanel({
 fullscreen: true,
 ui        : 'dark',
 sortable  : true,
 items: [
 {
 title: 'Tab 1',
 html : '1',
 cls  : 'card1'
 },
 {
 title: 'Tab 2',
 html : '2',
 cls  : 'card2'
 },
 {
 title: 'Tab 3',
 html : '3',
 cls  : 'card3'
 }
 ]
 });</code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'tabpanel' / the EXML element &lt;tabpanel>.</p>
 * @see ext.config.tabpanel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#cls-Ext.TabPanel Ext JS source
 */
public class TabPanel extends Panel {

  /**
   * Create a new TabPanel.
   *
   * @param config The config object
   * @see ext.config.tabpanel
   */
  public function TabPanel(config:tabpanel = null) {
    super(null);
  }

  /**
   Enable sorting functionality for the TabBar.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sortable():Boolean;

  /**
   Where to dock the Ext.TabPanel. Valid values are 'top' and 'bottom'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tabBarDock():String;

  /**
   * Retrieves a reference to the Ext.TabBar associated with the TabPanel.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-getTabBar Ext JS source
   */
  public native function getTabBar():void;

}
}
    