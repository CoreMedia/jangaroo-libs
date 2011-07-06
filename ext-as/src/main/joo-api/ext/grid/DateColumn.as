package ext.grid {


/**
 * A Column definition class which renders a passed date according to the default locale, or a configured <a href="output/Ext.grid.DateColumn.html#Ext.grid.DateColumn-format">format</a>. See the <a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a> config option of <a href="Ext.grid.Column.html">Ext.grid.Column</a> for more details.

 * @see ext.config.datecolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#cls-Ext.grid.DateColumn Ext JS source
 */
public class DateColumn extends Column {

  /**
   *
   *
   * @see ext.config.datecolumn
   */
  public function DateColumn() {
    super();
  }

  /**
   A formatting string as used by <a href="output/Date.html#Date-format">Date.format</a> to format a Date for this Column (defaults to <tt>'m/d/Y'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get format():String;

}
}
    