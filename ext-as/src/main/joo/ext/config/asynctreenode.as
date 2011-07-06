package ext.config {

import ext.tree.TreeLoader;

/**
 *
 * <p>This class serves as a typed config object for constructor of class AsyncTreeNode.</p>
 *
 * @see ext.tree.AsyncTreeNode
 */
[ExtConfig(target="ext.tree.AsyncTreeNode")]
public class asynctreenode extends treenode {

  public function asynctreenode(config:Object = null) {

    super(config);
  }


  /**
   A TreeLoader to be used by this node (defaults to the loader defined on the tree)
   */
  public native function get loader():TreeLoader;

  /**
   * @private
   */
  public native function set loader(value:TreeLoader):void;


}
}
    