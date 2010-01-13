package ext.grid {
/**
 * <p>A Column definition class which renders boolean data fields.  See the <b class='link' title='Ext.grid.ColumnModel#xtype'>xtype</b>
 * config option of <b class='link'>Ext.grid.ColumnModel</b> for more details.</p>
 */
    public class BooleanColumn extends Column {
/**
     * @cfg {String} trueText
     * The string returned by the renderer when the column value is not falsey (defaults to <code>'true'</code>).
     */
    public var trueText : Function;
    /**
     * @cfg {String} falseText
     * The string returned by the renderer when the column value is falsey (but not undefined) (defaults to
     * <code>'false'</code>).
     */
    public var falseText : String;
    /**
     * @cfg {String} undefinedText
     * The string returned by the renderer when the column value is undefined (defaults to <code>'&#160;'</code>).
     */
    public var undefinedText : String;
    public native function constructor(cfg) : void;
}}
