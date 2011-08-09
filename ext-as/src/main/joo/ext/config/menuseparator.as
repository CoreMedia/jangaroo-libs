package ext.config {


/**
 * Adds a separator bar to a menu, used to divide logical groups of menu items. Generally you will add one of these by using "-" in you call to add() or in your items config rather than creating one directly.
 * <p>This class serves as a typed config object for constructor of class Separator.</p>
 *
 * @see ext.menu.Separator
 */
[ExtConfig(target="ext.menu.Separator", xtype="menuseparator")]
public class menuseparator extends menubaseitem {

  public function menuseparator(config:Object = null) {

    super(config);
  }


  /**
   True to hide the containing menu after this item is clicked (defaults to false)
   */
  override public native function get hideOnClick():Boolean;

  /**
   * @private
   */
  override public native function set hideOnClick(value:Boolean):void;

  /**
   The default CSS class to use for separators (defaults to "x-menu-sep")
   */
  override public native function get itemCls():String;

  /**
   * @private
   */
  override public native function set itemCls(value:String):void;


}
}
    