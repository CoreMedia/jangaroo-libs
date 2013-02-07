package ext.grid {

import ext.config.templatecolumn;

/**
 * A Column definition class which renders a value by processing a <a href="Ext.data.Record.html">Record</a>'s <a href="output/Ext.data.Record.html#Ext.data.Record-data">data</a> using a <a href="output/Ext.grid.TemplateColumn.html#Ext.grid.TemplateColumn-tpl">configured</a> <a href="Ext.XTemplate.html">XTemplate</a>. See the <a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a> config option of <a href="Ext.grid.Column.html">Ext.grid.Column</a> for more details.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'templatecolumn' / the EXML element &lt;templatecolumn>.</p>
 * @see ext.config.templatecolumn
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.TemplateColumn Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.grid.TemplateColumn")]
public class TemplateColumn extends Column {

  /**
   * Create a new TemplateColumn.
   *
   * @param config The config object
   * @see ext.config.templatecolumn
   */
  public function TemplateColumn(config:templatecolumn = null) {
    super(config);
  }

  /**
   An <a href="Ext.XTemplate.html">XTemplate</a>, or an XTemplate <i>definition string</i> to use to process a <a href="Ext.data.Record.html">Record</a>'s <a href="output/Ext.data.Record.html#Ext.data.Record-data">data</a> to produce a column's rendered value.
   */
  public native function get tpl():*;

}
}
    