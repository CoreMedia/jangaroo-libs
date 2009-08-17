package ext.tree {
/**
 * This class provides the default UI implementation for <b>root</b> Ext TreeNodes.
 * The RootTreeNode UI implementation allows customizing the appearance of the root tree node.<br>
 * <p>
 * If you are customizing the Tree's user interface, you
 * may need to extend this class, but you should never need to instantiate this class.<br>
 */
public class RootTreeNodeUI {
    protected native function render() : void;
    public var collapse ;
    public var expand ;
}}
