package ext {

import ext.config.tab;

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Tab</code>

 *       </li>

 * </ul>
 */
[Event(name="activate")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Tab</code>

 *       </li>

 * </ul>
 */
[Event(name="deactivate")]


/**
 * Used in the <a href="Ext.TabBar.html">Ext.TabBar</a> component. This shouldn't be used directly, instead use <a href="Ext.TabBar.html">Ext.TabBar</a> or <a href="Ext.TabPanel.html">Ext.TabPanel</a>.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'tab' / the EXML element &lt;tab>.</p>
 * @see ext.config.tab
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Tab.html#cls-Ext.Tab Ext JS source
 */
[Native]
public class Tab extends Button {

  /**
   * Create a new Tab.
   *
   * @param config The config object
   * @see ext.config.tab
   */
  public function Tab(config:tab = null) {
    super();
  }

  /**
   Read-only property indicating that this tab is currently active. This is NOT a public configuration.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Tab.html#prop-Ext.Tab-Boolean Ext JS source
   */
  public native function get Boolean():Object;

  /**
   * @private
   */
  public native function set Boolean(value:Object):void;

  /**
   The CSS class to be applied to a Tab when it is active. Defaults to 'x-tab-active'. Providing your own CSS for this class enables you to customize the active state.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get activeCls():String;

  /**
   * Retrieves a reference to the card associated with this tab
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Tab.html#method-Ext.Tab-getCard Ext JS source
   */
  public native function getCard():void;

  /**
   * Sets the card associated with this tab
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Tab.html#method-Ext.Tab-setCard Ext JS source
   */
  public native function setCard():void;

}
}
    