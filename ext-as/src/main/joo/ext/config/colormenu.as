package ext.config {


/**
 * A menu containing a <a href="Ext.ColorPalette.html">Ext.ColorPalette</a> Component.
 <p>Notes:</p><div class="mdetail-params"><ul><li>Although not listed here, the <b>constructor</b> for this class accepts all of the configuration options of <b><a href="Ext.ColorPalette.html">Ext.ColorPalette</a></b>.</li><li>If subclassing ColorMenu, any configuration options for the ColorPalette must be applied to the <tt><b>initialConfig</b></tt> property of the ColorMenu. Applying <a href="Ext.ColorPalette.html">ColorPalette</a> configuration settings to <b><tt>this</tt></b> will <b>not</b> affect the ColorPalette's configuration.</li></ul></div>&#42;
 * <p>This class serves as a typed config object for constructor of class ColorMenu.</p>
 *
 * @see ext.menu.ColorMenu
 */
[ExtConfig(target="ext.menu.ColorMenu", xtype="colormenu")]
public class colormenu extends menu {

  public function colormenu(config:Object = null) {

    super(config);
  }


  /**
   A function that will handle the select event of this menu. The handler is passed the following parameters:<div class="mdetail-params"><ul><li><code>palette</code> : ColorPalette<div class="sub-desc">The <a href="output/Ext.menu.ColorMenu.html#Ext.menu.ColorMenu-palette">Ext.ColorPalette</a>.</div></li><li><code>color</code> : String<div class="sub-desc">The 6-digit color hex code (without the # symbol).</div></li></ul></div>
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   False to continue showing the menu after a color is selected, defaults to true.
   */
  public native function get hideOnClick():Boolean;

  /**
   * @private
   */
  public native function set hideOnClick(value:Boolean):void;

  /**
   An id to assign to the underlying color palette. Defaults to <tt>null</tt>.
   */
  public native function get paletteId():String;

  /**
   * @private
   */
  public native function set paletteId(value:String):void;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.menu.ColorMenu.html#Ext.menu.ColorMenu-handler">handler</a></code> function will be called. Defaults to this ColorMenu instance.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;


}
}
    