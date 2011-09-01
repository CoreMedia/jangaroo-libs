package ext.config {


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
 * <p>This class represents the xtype 'tabpanel' and serves as a
 * typed config object for constructor of class TabPanel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.TabPanel
 */
[ExtConfig(target="ext.TabPanel", xtype="tabpanel")]
public class tabpanel extends panel {

  public function tabpanel(config:Object = null) {

    super(config);
  }


  /**
   Animation to be used during transitions of cards. Any valid value from Ext.anims can be used ('fade', 'slide', 'flip', 'cube', 'pop', 'wipe'), or false. Defaults to <tt>'slide'</tt>.
   */
  override public native function get cardSwitchAnimation():*;

  /**
   * @private
   */
  override public native function set cardSwitchAnimation(value:*):void;

  /**
   Enable sorting functionality for the TabBar.
   */
  public native function get sortable():Boolean;

  /**
   * @private
   */
  public native function set sortable(value:Boolean):void;

  /**
   An Ext.TabBar configuration
   */
  public native function get tabBar():Object;

  /**
   * @private
   */
  public native function set tabBar(value:Object):void;

  /**
   Where to dock the Ext.TabPanel. Valid values are 'top' and 'bottom'.
   */
  public native function get tabBarDock():String;

  /**
   * @private
   */
  public native function set tabBarDock(value:String):void;

  /**
   Defaults to 'dark'.
   */
  override public native function get ui():String;

  /**
   * @private
   */
  override public native function set ui(value:String):void;


}
}
    