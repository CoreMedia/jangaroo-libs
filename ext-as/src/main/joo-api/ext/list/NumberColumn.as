package ext.list {

import ext.config.lvnumbercolumn;

/**
 * A Column definition class which renders a numeric data field according to a <a href="output/Ext.list.NumberColumn.html#Ext.list.NumberColumn-format">format</a> string. See the <a href="output/Ext.list.Column.html#Ext.list.Column-xtype">xtype</a> config option of <a href="Ext.list.Column.html">Ext.list.Column</a> for more details.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'lvnumbercolumn' / the EXML element &lt;lvnumbercolumn>.</p>
 * @see ext.config.lvnumbercolumn
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.list.NumberColumn Sencha Docs Ext JS 3.4
 */
public class NumberColumn extends Column {

  /**
   * Create a new NumberColumn.
   *
   * @param config The config object
   * @see ext.config.lvnumbercolumn
   */
  public function NumberColumn(config:lvnumbercolumn = null) {
    super(config);
  }

  /**
   A formatting string as used by <a href="output/Ext.util.Format.html#Ext.util.Format-number">Ext.util.Format.number</a> to format a numeric value for this Column (defaults to <tt>'0,000.00'</tt>).
   */
  public native function get format():String;

}
}
    