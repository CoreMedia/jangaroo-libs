package ext.grid {


/**
 * A Column definition class which renders a numeric data field according to a <a href="output/Ext.grid.NumberColumn.html#Ext.grid.NumberColumn-format">format</a> string. See the <a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a> config option of <a href="Ext.grid.Column.html">Ext.grid.Column</a> for more details.

 * @see ext.config.numbercolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#cls-Ext.grid.NumberColumn Ext JS source
 */
public class NumberColumn extends Column {

  /**
   *
   *
   * @see ext.config.numbercolumn
   */
  public function NumberColumn() {
    super();
  }

  /**
   A formatting string as used by <a href="output/Ext.util.Format.html#Ext.util.Format-number">Ext.util.Format.number</a> to format a numeric value for this Column (defaults to <tt>'0,000.00'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get format():String;

}
}
    