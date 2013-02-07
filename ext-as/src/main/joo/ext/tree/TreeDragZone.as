package ext.tree {
import ext.config.treedragzone;
import ext.dd.DragZone;

/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.treedragzone
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeDragZone Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.tree.TreeDragZone")]
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeDragZone-property-tree Sencha Docs Ext JS 3.4
   */
  public native function get tree():TreePanel;

  /**
   * @private
   */
  public native function set tree(value:TreePanel):void;

}
}
    