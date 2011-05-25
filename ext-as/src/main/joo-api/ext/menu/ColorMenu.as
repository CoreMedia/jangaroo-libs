package ext.menu {
/**
 * A menu containing a <b class='link'>ext.ColorPalette</b> Component.
 * @xtype colormenu
 */
    public class ColorMenu extends Menu {
  public function ColorMenu(config:Object = null) {
    super(config);
  }
    /**
     * @cfg {Boolean} enableScrolling
     * @hide 
     */
    //public var enableScrolling;
    /** 
     * @cfg {Boolean} hideOnClick
     * False to continue showing the menu after a color is selected, defaults to true.
     */
    public var hideOnClick : Boolean;
    /** 
     * @cfg {Number} maxHeight
     * @hide 
     */
    /** 
     * @cfg {Number} scrollIncrement
     * @hide 
     */
    /**
     * @property palette
     * The <b class='link'>ext.ColorPalette</b> instance for this ColorMenu
     */
    /**
     * @event click
     * @hide
     */
    /**
     * @event itemclick
     * @hide
     */
    override protected native function initComponent() : void;
    public native function menuHide() : void;
}}
