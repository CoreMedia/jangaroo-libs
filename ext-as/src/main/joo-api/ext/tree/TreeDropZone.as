package ext.tree {

import ext.config.treedropzone;
import ext.dd.DropZone;

/**
 *
 * @see ext.config.treedropzone
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeDropZone.html#cls-Ext.tree.TreeDropZone Ext JS source
 */
public class TreeDropZone extends DropZone {

  /**
   *
   *
   * @param tree The <a href="Ext.tree.TreePanel.html">Ext.tree.TreePanel</a> for which to enable dropping
   * @param config
   * @see ext.config.treedropzone
   */
  public function TreeDropZone(tree:*, config:treedropzone) {
    super(null, null);
  }

  /**
   Arbitrary data that can be associated with this tree and will be included in the event object that gets passed to any nodedragover event handler (defaults to {})
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeDropZone.html#prop-Ext.tree.TreeDropZone-dragOverData Ext JS source
   */
  public native function get dragOverData():TreePanel;

  /**
   * @private
   */
  public native function set dragOverData(value:TreePanel):void;

  /**
   The TreePanel for this drop zone
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeDropZone.html#prop-Ext.tree.TreeDropZone-tree Ext JS source
   */
  public native function get tree():TreePanel;

  /**
   * @private
   */
  public native function set tree(value:TreePanel):void;

  /**
   True if drops on the tree container (outside of a specific tree node) are allowed (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowContainerDrop():String;

  /**
   Allow inserting a dragged node between an expanded parent node and its first child that will become a sibling of the parent when dropped (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowParentInsert():Boolean;

  /**
   True if the tree should only allow append drops (use for trees which are sorted, defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get appendOnly():String;

  /**
   The delay in milliseconds to wait before expanding a target tree node while dragging a droppable node over the target (defaults to 1000)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get expandDelay():String;

}
}
    