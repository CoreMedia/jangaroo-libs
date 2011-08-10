package ext.menu {

import ext.DatePicker;
import ext.config.datemenu;

/**
 * Fires when a date is selected from the <a href="output/Ext.menu.DateMenu.html#Ext.menu.DateMenu-picker">Ext.DatePicker</a>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>picker:ext.DatePicker</code>
 The <a href="output/Ext.menu.DateMenu.html#Ext.menu.DateMenu-picker">Ext.DatePicker</a>
 *       </li>

 *       <li>
 *           <code>date:Date</code>
 The selected date
 *       </li>

 * </ul>
 */
[Event(name="select")]


/**
 * A menu containing an <a href="Ext.DatePicker.html">Ext.DatePicker</a> Component.
 <p>Notes:</p><div class="mdetail-params"><ul><li>Although not listed here, the <b>constructor</b> for this class accepts all of the configuration options of <b><a href="Ext.DatePicker.html">Ext.DatePicker</a></b>.</li><li>If subclassing DateMenu, any configuration options for the DatePicker must be applied to the <tt><b>initialConfig</b></tt> property of the DateMenu. Applying <a href="Ext.DatePicker.html">DatePicker</a> configuration settings to <b><tt>this</tt></b> will <b>not</b> affect the DatePicker's configuration.</li></ul></div>
 * <p>This component is created by the xtype 'datemenu' / the EXML element &lt;datemenu>.</p>
 * @see ext.config.datemenu
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DateMenu.html#cls-Ext.menu.DateMenu Ext JS source
 */
public class DateMenu extends Menu {

  /**
   * Create a new DateMenu.
   *
   * @param config The config object
   * @see ext.config.datemenu
   */
  public function DateMenu(config:datemenu = null) {
    super(null);
  }

  /**
   The <a href="Ext.DatePicker.html">Ext.DatePicker</a> instance for this DateMenu
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DateMenu.html#prop-Ext.menu.DateMenu-picker Ext JS source
   */
  public native function get picker():DatePicker;

  /**
   * @private
   */
  public native function set picker(value:DatePicker):void;

  /**
   False to continue showing the menu after a date is selected, defaults to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideOnClick():Boolean;

  /**
   An id to assign to the underlying date picker. Defaults to <tt>null</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pickerId():String;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.menu.DateMenu.html#Ext.menu.DateMenu-handler">handler</a></code> function will be called. Defaults to this DateMenu instance.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

}
}
    