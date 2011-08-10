package ext.list {

import ext.config.numbercolumn;

/**
 * A Column definition class which renders a numeric data field according to a <a href="output/Ext.list.NumberColumn.html#Ext.list.NumberColumn-format">format</a> string. See the <a href="output/Ext.list.Column.html#Ext.list.Column-xtype">xtype</a> config option of <a href="Ext.list.Column.html">Ext.list.Column</a> for more details.

 * @see ext.config.numbercolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column1.html#cls-Ext.list.NumberColumn Ext JS source
 */
public class NumberColumn extends Column {

  /**
   *
   *
   * @see ext.config.numbercolumn
   */
  public function NumberColumn(config:numbercolumn) {
    super(null);
  }

  /**
   A formatting string as used by <a href="output/Ext.util.Format.html#Ext.util.Format-number">Ext.util.Format.number</a> to format a numeric value for this Column (defaults to <tt>'0,000.00'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get format():String;

}
}
    