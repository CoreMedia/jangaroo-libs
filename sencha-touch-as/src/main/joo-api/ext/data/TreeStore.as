package ext.data {

import ext.config.treestore;

/**
 * A store class that allows the representation of hierarchical data.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.treestore
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeStore.html#cls-Ext.data.TreeStore Ext JS source
 */
[Native]
public class TreeStore extends AbstractStore {

  /**
   *
   *
   * @param config Optional config object
   * @see ext.config.treestore
   */
  public function TreeStore(config:treestore) {
    super();
  }

  /**
   Default to true. Remove previously existing child nodes before loading.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get clearOnLoad():Boolean;

  /**
   The default root id. Defaults to 'root'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultRootId():String;

  /**
   The name of the parameter sent to the server which contains the identifier of the node. Defaults to <tt>'node'</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get nodeParam():String;

  /**
   * Returns the record node by id
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeStore.html#method-Ext.data.TreeStore-getNodeById Ext JS source
   */
  public native function getNodeById():ext.data.RecordNode;

  /**
   * Returns the root node for this tree.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeStore.html#method-Ext.data.TreeStore-getRootNode Ext JS source
   */
  public native function getRootNode():ext.data.RecordNode;

  /**
   * Returns a flat Ext.data.Store with the correct type of model.
   *
   * @param record
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeStore.html#method-Ext.data.TreeStore-getSubStore Ext JS source
   */
  public native function getSubStore(record:*):void;

}
}
    