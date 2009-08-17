package ext.menu {
import ext.DatePicker;

/**
 * A menu containing a <b class='link'>ext.DatePicker</b> Component.
 * @xtype datemenu
 */
    /** 
*/
public class DateMenu extends Menu {

  public function DateMenu(config:*) {
    super(config);
  }
    /**
     * @cfg {Boolean} enableScrolling
     * @hide 
     */
    //public var enableScrolling;
    /** 
     * @cfg {Boolean} hideOnClick
     * False to continue showing the menu after a date is selected, defaults to true.
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
     * @property picker
     * The <b class='link'>ext.DatePicker</b> instance for this DateMenu
     */
    public var picker : DatePicker;
    override protected native function initComponent() : void;
    public native function menuHide() : void;
    public native function onBeforeShow() : void;
    override protected native function onShow() : void;
}}
