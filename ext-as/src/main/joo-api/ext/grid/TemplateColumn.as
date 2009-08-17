package ext.grid {
/**
 * <p>A Column definition class which renders a value by processing a <b class='link' title='ext.data.Record'>Record</b>'s
 * <b class='link' title='ext.data.Record#data'>data</b> using a <b class='link' title='#tpl'>configured</b> <b class='link' title='ext.XTemplate'>XTemplate</b>.
 * See the <b class='link' title='Ext.grid.ColumnModel#xtype'>xtype</b> config option of <b class='link'>Ext.grid.ColumnModel</b> for more
 * details.</p>
 */
    /**
*/
public class TemplateColumn extends Column {
/**
     * @cfg {String/XTemplate} tpl
     * An <b class='link' title='ext.XTemplate'>XTemplate</b>, or an XTemplate <i>definition string</i> to use to process a
     * <b class='link' title='ext.data.Record'>Record</b>'s <b class='link' title='ext.data.Record#data'>data</b> to produce a column's rendered value.
     */
    public native function constructor(cfg) : void;
    public var gridcolumn ;
    public var booleancolumn;
    public var numbercolumn;
    public var datecolumn;
    public var templatecolumn;
}}
