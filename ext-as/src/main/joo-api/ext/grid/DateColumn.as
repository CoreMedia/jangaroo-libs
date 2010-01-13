package ext.grid {
/**
 * <p>A Column definition class which renders a passed date according to the default locale, or a configured
 * <b class='link' title='#format'>format</b>. See the <b class='link' title='Ext.grid.ColumnModel#xtype'>xtype</b> config option of <b class='link'>Ext.grid.ColumnModel</b>
 * for more details.</p>
 */
    public class DateColumn extends Column {
/**
     * @cfg {String} format
     * A formatting string as used by <b class='link'>Date#format</b> to format a Date for this Column
     * (defaults to <code>'m/d/Y'</code>).
     */
    public var format ;
    public native function constructor(cfg) : void;
}}
