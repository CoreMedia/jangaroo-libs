package ext.data {
/**
 * A specialized store implementation that provides for grouping records by one of the available fields. This
 * is usually used in conjunction with an <b class='link'>Ext.grid.GroupingView</b> to proved the data model for
 * a grouped GridPanel.
*/
public class GroupingStore extends Store {
/**
 * @constructor
 * Creates a new GroupingStore.
 * @param config A config object containing the objects needed for the Store to access data,
 * and read the data into Records.
 * @xtype groupingstore
 */
    public function GroupingStore(config : Object) : void {
      super(config);
    }
    /**
     * @cfg {String} groupField
     * The field name by which to sort the store's data (defaults to '').
     */
    /**
     * @cfg {Boolean} remoteGroup
     * True if the grouping should apply on the server side, false if it is local only (defaults to false).  If the
     * grouping is local, it can be applied immediately to the data.  If it is remote, then it will simply act as a
     * helper, automatically sending the grouping field name as the 'groupBy' param with each XHR call.
     */
    public var remoteGroup  : Boolean;
    /**
     * @cfg {Boolean} groupOnSort
     * True to sort the data on the grouping field when a grouping operation occurs, false to sort based on the
     * existing sort info (defaults to false).
     */
    public var groupOnSort : Boolean;
	public var groupDir ;
    /**
     * Clears any existing grouping and refreshes the data using the default sort.
     */
    public native function clearGrouping() : void;
    /**
     * Groups the data by the specified field.
     * @param field The field name by which to sort the store's data
     * @param forceRegroup True to force the group to be refreshed even if the field passed
     * in is the same as the current grouping field, false to skip grouping on the same field (defaults to false)
     */
    public native function groupBy(field : String, forceRegroup : Boolean = undefined, direction = undefined) : void;
    protected native function applyGroupField() : void;
    override protected native function applySort() : void;
    protected native function applyGrouping(alwaysFireChange) : void;
    protected native function getGroupState() : void;
}}
