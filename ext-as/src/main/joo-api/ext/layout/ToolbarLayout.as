package ext.layout {

/**
 * Layout manager implicitly used by ext.Toolbar.
 */
public class ToolbarLayout extends ContainerLayout {
  public var triggerWidth ;
  public var lastOverflow ;
  public var noItemsMenuText ;
    override protected native function onLayout(ct, target) : void;
    public native function cleanup(row) : void;
    public native function insertCell(c, side, pos) : void;
    public native function hideItem(item) : void;
    public native function unhideItem(item) : void;
    public native function getItemWidth(c) : void;
    public native function fitToSize(t) : void;
    public native function createMenuConfig(c, hideOnClick) : void;
    protected native function addComponentToMenu(m, c) : void;
    public native function clearMenu() : void;
    protected native function beforeMoreShow(m) : void;
    public native function initMore() : void;
    override public native function destroy() : void;
    /**
     * @property activeItem
     * @hide
     */
/**
*/
}}
