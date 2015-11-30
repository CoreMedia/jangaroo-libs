package ext.config {

/**
 * A specialized store implementation that provides for grouping records by one of the available fields. This is usually used in conjunction with an <a href="Ext.grid.GroupingView.html">Ext.grid.GroupingView</a> to provide the data model for a grouped GridPanel. Internally, GroupingStore is simply a normal Store with multi sorting enabled from the start. The grouping field and direction are always injected as the first sorter pair. GroupingView picks up on the configured groupField and builds grid rows appropriately.
 *
 * <p>This class serves as a typed config object for constructor of class GroupingStore.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.GroupingStore
 */
[ExtConfig(target="ext.data.GroupingStore", xtype="groupingstore")]
public class groupingstore extends store {

  public function groupingstore(config:Object = null) {

    super(config);
  }


  /**
   The direction to sort the groups. Defaults to <tt>'ASC'</tt>.
   */
  public native function get groupDir():String;

  /**
   * @private
   */
  public native function set groupDir(value:String):void;

  /**
   The field name by which to sort the store's data (defaults to '').
   */
  public native function get groupField():String;

  /**
   * @private
   */
  public native function set groupField(value:String):void;

  /**
   True to sort the data on the grouping field when a grouping operation occurs, false to sort based on the existing sort info (defaults to false).
   */
  public native function get groupOnSort():Boolean;

  /**
   * @private
   */
  public native function set groupOnSort(value:Boolean):void;

  /**
   True if the grouping should apply on the server side, false if it is local only (defaults to false). If the grouping is local, it can be applied immediately to the data. If it is remote, then it will simply act as a helper, automatically sending the grouping field name as the 'groupBy' param with each XHR call.
   */
  public native function get remoteGroup():Boolean;

  /**
   * @private
   */
  public native function set remoteGroup(value:Boolean):void;


}
}
    