package ext.list {

import ext.config.lvdatecolumn;

/**
 * A Column definition class which renders a passed date according to the default locale, or a configured <a href="output/Ext.list.DateColumn.html#Ext.list.DateColumn-format">format</a>. See the <a href="output/Ext.list.Column.html#Ext.list.Column-xtype">xtype</a> config option of <a href="Ext.list.Column.html">Ext.list.Column</a> for more details.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'lvdatecolumn' / the EXML element &lt;lvdatecolumn>.</p>
 * @see ext.config.lvdatecolumn
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.list.DateColumn Sencha Docs Ext JS 3.4
 */
public class DateColumn extends Column {

  /**
   * Create a new DateColumn.
   *
   * @param config The config object
   * @see ext.config.lvdatecolumn
   */
  public function DateColumn(config:lvdatecolumn = null) {
    super(config);
  }

}
}
    