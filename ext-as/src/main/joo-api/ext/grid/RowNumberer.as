package ext.grid {
/**
 * This is a utility class that can be passed into a <b class='link'>Ext.grid.ColumnModel</b> as a column config that provides
 * an automatic row numbering column.
 * <br>Usage:<br>
 <pre><code>
 // This is a typical column config with the first column providing row numbers
 var colModel = new Ext.grid.ColumnModel([
    new Ext.grid.RowNumberer(),
    {header: "Name", width: 80, sortable: true},
    {header: "Code", width: 50, sortable: true},
    {header: "Description", width: 200, sortable: true}
 ]);
 </code></pre>
*/
public class RowNumberer {
/**
 * @constructor
 * @param config The configuration options
 */
public native function RowNumberer(config : Object);
    /**
     * @cfg {String} header Any valid text or HTML fragment to display in the header cell for the row
     * number column (defaults to '').
     */
    public var header : String;
    /**
     * @cfg {Number} width The default width in pixels of the row number column (defaults to 23).
     */
    public var width : Number;
    /**
     * @cfg {Boolean} sortable True if the row number column is sortable (defaults to false).
     * @hide
     */
    public var sortable : Boolean;
    protected var fixed;
    public var menuDisabled;
    public var dataIndex;
    public var id;
    public var rowspan;
    protected native function renderer(v, p, record, rowIndex) : void;
}}
