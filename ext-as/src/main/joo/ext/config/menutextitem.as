package ext.config {


/**
 * Adds a static text string to a menu, usually used as either a heading or group separator.
 *
 * <p>This class represents the xtype 'menutextitem' and serves as a
 * typed config object for constructor of class TextItem.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.menu.TextItem
 */
[ExtConfig(target="ext.menu.TextItem", xtype="menutextitem")]
public class menutextitem extends menubaseitem {

  public function menutextitem(config:Object = null) {

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
   The default CSS class to use for text items (defaults to "x-menu-text")
   */
  override public native function get itemCls():String;

  /**
   * @private
   */
  override public native function set itemCls(value:String):void;

  /**
   The text to display for this item (defaults to '')
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;


}
}
    