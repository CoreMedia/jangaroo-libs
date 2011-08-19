package ext.list {

import ext.config.datecolumn;

/**
 * A Column definition class which renders a passed date according to the default locale, or a configured <a href="output/Ext.list.DateColumn.html#Ext.list.DateColumn-format">format</a>. See the <a href="output/Ext.list.Column.html#Ext.list.Column-xtype">xtype</a> config option of <a href="Ext.list.Column.html">Ext.list.Column</a> for more details.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.datecolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#cls-Ext.list.DateColumn Ext JS source
 */
public class DateColumn extends Column {

  /**
   *
   *
   * @see ext.config.datecolumn
   */
  public function DateColumn(config:datecolumn) {
    super(null);
  }

}
}
    