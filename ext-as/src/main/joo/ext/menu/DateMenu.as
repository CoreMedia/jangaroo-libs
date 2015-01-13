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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'datemenu' / the EXML element &lt;datemenu>.</p>
 * @see ext.config.datemenu
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.DateMenu Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "menu.DateMenu")]
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.DateMenu-property-picker Sencha Docs Ext JS 3.4
   */
  public native function get picker():DatePicker;

  /**
   * @private
   */
  public native function set picker(value:DatePicker):void;

  /**
   False to continue showing the menu after a date is selected, defaults to true.
   */
  public native function get hideOnClick():Boolean;

  /**
   An id to assign to the underlying date picker. Defaults to <tt>null</tt>.
   */
  public native function get pickerId():String;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.menu.DateMenu.html#Ext.menu.DateMenu-handler">handler</a></code> function will be called. Defaults to this DateMenu instance.
   */
  public native function get scope():Object;

}
}
    