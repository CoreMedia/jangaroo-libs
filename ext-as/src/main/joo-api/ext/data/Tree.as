package ext.data {
import ext.util.Observable;

/**
 * Represents a tree data structure and bubbles all the events for its nodes. The nodes
 * in the tree have most standard DOM functionality.
*/
public class Tree extends Observable {
/**
 * @constructor
 * @param root The root node
 */
public native function Tree(root : Node = undefined);
   /**
    * The root node for this tree
    */
    /**
     * @cfg {String} pathSeparator
     * The token used to separate paths in node ids (defaults to '/').
     */
    public var pathSeparator : String;
    protected native function proxyNodeEvent() : void;
    /**
     * Returns the root node for this tree.
     * @return 
     */
    public native function getRootNode() : Node;
    /**
     * Sets the root node for this tree.
     * @param node
     * @return 
     */
    public native function setRootNode(node : Node) : Node;
    /**
     * Gets a node in this tree by its id.
     * @param id
     * @return 
     */
    public native function getNodeById(id : String) : Node;
    protected native function registerNode(node) : void;
    protected native function unregisterNode(node) : void;
    public native function toString() : void;
}}
