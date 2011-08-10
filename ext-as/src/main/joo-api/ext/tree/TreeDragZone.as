package ext.tree {

import ext.config.treedragzone;
import ext.dd.DragZone;

/**
 *
 * @see ext.config.treedragzone
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeDragZone.html#cls-Ext.tree.TreeDragZone Ext JS source
 */
public class TreeDragZone extends DragZone {

  /**
   *
   *
   * @param tree The <a href="Ext.tree.TreePanel.html">Ext.tree.TreePanel</a> for which to enable dragging
   * @param config
   * @see ext.config.treedragzone
   */
  public function TreeDragZone(tree:*, config:treedragzone) {
    super(null, null);
  }

  /**
   The TreePanel for this drag zone
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeDragZone.html#prop-Ext.tree.TreeDragZone-tree Ext JS source
   */
  public native function get tree():TreePanel;

  /**
   * @private
   */
  public native function set tree(value:TreePanel):void;

}
}
    