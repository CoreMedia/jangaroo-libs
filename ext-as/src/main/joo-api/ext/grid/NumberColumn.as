package ext.grid {
/**
 * <p>A Column definition class which renders a numeric data field according to a <b class='link'>#format</b> string.  See the
 * <b class='link' title='Ext.grid.ColumnModel#xtype'>xtype</b> config option of <b class='link'>Ext.grid.ColumnModel</b> for more details.</p>
 */
    /**
*/
public class NumberColumn extends Column {
/**
     * @cfg {String} format
     * A formatting string as used by <b class='link'>Ext.util.Format#number</b> to format a numeric value for this Column
     * (defaults to <tt>'0,000.00'</tt>).
     */
    public var format ;
    public native function constructor(cfg) : void;
/**
*/
}}
