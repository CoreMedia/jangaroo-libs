package ext.grid {
import ext.Editor;

/**
 * A custom column model for the <b class='link'>Ext.grid.PropertyGrid</b>.  Generally it should not need to be used directly.
*/
public class PropertyColumnModel extends ColumnModel {
/**
 * @constructor
 * @param grid The grid this store will be bound to
 * @param source The source data config object
 */
  public function PropertyColumnModel(grid : Grid, source : *) {
    super(source);
  }
        public var autoCreate;
        public native function getValue(grid : Grid, source : Object) : void;
    public var nameText ;
    public var valueText ;
    public var dateFormat ;
    protected native function renderDate(dateVal) : void;
    protected native function renderBool(bVal) : void;
    override public native function isCellEditable(colIndex : Number, rowIndex : Number) : Boolean;
    override public native function getRenderer(col : Number) : Function;
    protected native function renderProp(v) : void;
    protected native function renderCell(val) : void;
    protected native function getPropertyName(name) : void;
    override public native function getCellEditor(colIndex : Number, rowIndex : Number) : Editor;
    override public native function destroy() : void;
}}
