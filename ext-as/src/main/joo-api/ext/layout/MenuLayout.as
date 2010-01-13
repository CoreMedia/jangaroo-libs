package ext.layout {

/**
 * <p>Layout manager used by <b class='link'>Ext.menu.Menu</b>. Generally this class should not need to be used directly.</p>
 */
public class MenuLayout extends ContainerLayout {
    override protected native function setContainer(ct) : void;
    override protected native function renderItem(c, position, target) : void;
    public native function getItemArgs(c) : void;
    override protected native function isValidParent(c, target) : void;
    override protected native function onLayout(ct, target) : void;
    public native function doAutoSize() : void;
}}
