package ext.data {

import ext.config.groupingstore;

/**
 * Fired whenever a call to store.groupBy successfully changes the grouping on the store
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>store:ext.data.GroupingStore</code>
 The grouping store
 *       </li>

 *       <li>
 *           <code>groupField:String</code>
 The field that the store is now grouped by
 *       </li>

 * </ul>
 */
[Event(name="groupchange")]


/**
 * A specialized store implementation that provides for grouping records by one of the available fields. This is usually used in conjunction with an <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a> to provide the data model for a grouped GridPanel. Internally, GroupingStore is simply a normal Store with multi sorting enabled from the start. The grouping field and direction are always injected as the first sorter pair. GroupingView picks up on the configured groupField and builds grid rows appropriately.
 * <p>This component is created by the xtype 'groupingstore' / the EXML element &lt;groupingstore>.</p>
 * @see ext.config.groupingstore
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GroupingStore.html#cls-Ext.data.GroupingStore Ext JS source
 */
public class GroupingStore extends Store {

  /**
   * Creates a new GroupingStore.
   *
   * @param config A config object containing the objects needed for the Store to access data, and read the data into Records.
   * @see ext.config.groupingstore
   */
  public function GroupingStore(config:groupingstore) {
    super(null);
  }

  /**
   The direction to sort the groups. Defaults to <tt>'ASC'</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get groupDir():String;

  /**
   The field name by which to sort the store's data (defaults to '').
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get groupField():String;

  /**
   True to sort the data on the grouping field when a grouping operation occurs, false to sort based on the existing sort info (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get groupOnSort():Boolean;

  /**
   True if the grouping should apply on the server side, false if it is local only (defaults to false). If the grouping is local, it can be applied immediately to the data. If it is remote, then it will simply act as a helper, automatically sending the grouping field name as the 'groupBy' param with each XHR call.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get remoteGroup():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GroupingStore.html#method-Ext.data.GroupingStore-applyGroupField Ext JS source
   */
  public native function applyGroupField():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GroupingStore.html#method-Ext.data.GroupingStore-applyGrouping Ext JS source
   */
  public native function applyGrouping():void;

  /**
   * Clears any existing grouping and refreshes the data using the default sort.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GroupingStore.html#method-Ext.data.GroupingStore-clearGrouping Ext JS source
   */
  public native function clearGrouping():void;

  /**
   *
   *
   * @return The group field
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GroupingStore.html#method-Ext.data.GroupingStore-getGroupState Ext JS source
   */
  public native function getGroupState():String;

  /**
   * Groups the data by the specified field.
   *
   * @param field The field name by which to sort the store's data
   * @param forceRegroup True to force the group to be refreshed even if the field passed in is the same as the current grouping field, false to skip grouping on the same field (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GroupingStore.html#method-Ext.data.GroupingStore-groupBy Ext JS source
   */
  public native function groupBy(field:String, forceRegroup:Boolean = false):void;

}
}
    