package ext.menu {
import ext.ColorPalette;
import ext.config.colormenu;

/**
 * Fires when a color is selected from the <a href="output/Ext.menu.ColorMenu.html#Ext.menu.ColorMenu-palette">Ext.ColorPalette</a>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>palette:ext.ColorPalette</code>
 The <a href="output/Ext.menu.ColorMenu.html#Ext.menu.ColorMenu-palette">Ext.ColorPalette</a>
 *       </li>

 *       <li>
 *           <code>color:String</code>
 The 6-digit color hex code (without the # symbol)
 *       </li>

 * </ul>
 */
[Event(name="select")]


/**
 * A menu containing a <a href="Ext.ColorPalette.html">Ext.ColorPalette</a> Component.
 <p>Notes:</p><div class="mdetail-params"><ul><li>Although not listed here, the <b>constructor</b> for this class accepts all of the configuration options of <b><a href="Ext.ColorPalette.html">Ext.ColorPalette</a></b>.</li><li>If subclassing ColorMenu, any configuration options for the ColorPalette must be applied to the <tt><b>initialConfig</b></tt> property of the ColorMenu. Applying <a href="Ext.ColorPalette.html">ColorPalette</a> configuration settings to <b><tt>this</tt></b> will <b>not</b> affect the ColorPalette's configuration.</li></ul></div>&#42;
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'colormenu' / the EXML element &lt;colormenu>.</p>
 * @see ext.config.colormenu
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.ColorMenu Sencha Docs Ext JS 3.4
 */
public class ColorMenu extends Menu {

  /**
   * Create a new ColorMenu.
   *
   * @param config The config object
   * @see ext.config.colormenu
   */
  public function ColorMenu(config:colormenu = null) {
    super(null);
  }

  /**
   The <a href="Ext.ColorPalette.html">Ext.ColorPalette</a> instance for this ColorMenu
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.ColorMenu-property-palette Sencha Docs Ext JS 3.4
   */
  public native function get palette():ColorPalette;

  /**
   * @private
   */
  public native function set palette(value:ColorPalette):void;

  /**
   False to continue showing the menu after a color is selected, defaults to true.
   */
  public native function get hideOnClick():Boolean;

  /**
   An id to assign to the underlying color palette. Defaults to <tt>null</tt>.
   */
  public native function get paletteId():String;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.menu.ColorMenu.html#Ext.menu.ColorMenu-handler">handler</a></code> function will be called. Defaults to this ColorMenu instance.
   */
  public native function get scope():Object;

}
}
    