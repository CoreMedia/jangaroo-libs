package ext.config {


/**
 * A menu containing an <a href="Ext.DatePicker.html">Ext.DatePicker</a> Component.
 <p>Notes:</p><div class="mdetail-params"><ul><li>Although not listed here, the <b>constructor</b> for this class accepts all of the configuration options of <b><a href="Ext.DatePicker.html">Ext.DatePicker</a></b>.</li><li>If subclassing DateMenu, any configuration options for the DatePicker must be applied to the <tt><b>initialConfig</b></tt> property of the DateMenu. Applying <a href="Ext.DatePicker.html">DatePicker</a> configuration settings to <b><tt>this</tt></b> will <b>not</b> affect the DatePicker's configuration.</li></ul></div>
 * <p>This class serves as a typed config object for constructor of class DateMenu.</p>
 *
 * @see ext.menu.DateMenu
 */
[ExtConfig(target="ext.menu.DateMenu", xtype="datemenu")]
public class datemenu extends menu {

  public function datemenu(config:Object = null) {

    super(config);
  }


  /**
   A function that will handle the select event of this menu. The handler is passed the following parameters:<div class="mdetail-params"><ul><li><code>picker</code> : DatePicker<div class="sub-desc">The Ext.DatePicker.</div></li><li><code>date</code> : Date<div class="sub-desc">The selected date.</div></li></ul></div>
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   False to continue showing the menu after a date is selected, defaults to true.
   */
  public native function get hideOnClick():Boolean;

  /**
   * @private
   */
  public native function set hideOnClick(value:Boolean):void;

  /**
   An id to assign to the underlying date picker. Defaults to <tt>null</tt>.
   */
  public native function get pickerId():String;

  /**
   * @private
   */
  public native function set pickerId(value:String):void;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.menu.DateMenu.html#Ext.menu.DateMenu-handler">handler</a></code> function will be called. Defaults to this DateMenu instance.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;


}
}
    