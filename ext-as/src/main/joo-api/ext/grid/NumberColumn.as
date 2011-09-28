package ext.grid {

import ext.config.numbercolumn;

/**
 * A Column definition class which renders a numeric data field according to a <a href="output/Ext.grid.NumberColumn.html#Ext.grid.NumberColumn-format">format</a> string. See the <a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a> config option of <a href="Ext.grid.Column.html">Ext.grid.Column</a> for more details.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'numbercolumn' / the EXML element &lt;numbercolumn>.</p>
 * @see ext.config.numbercolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#cls-Ext.grid.NumberColumn Ext JS source
 */
public class NumberColumn extends Column {

  /**
   * Create a new NumberColumn.
   *
   * @param config The config object
   * @see ext.config.numbercolumn
   */
  public function NumberColumn(config:numbercolumn = null) {
    super(config);
  }

  /**
   A formatting string as used by <a href="output/Ext.util.Format.html#Ext.util.Format-number">Ext.util.Format.number</a> to format a numeric value for this Column (defaults to <tt>'0,000.00'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get format():String;

}
}
    