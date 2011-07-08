package ext.grid {


/**
 * A Column definition class which renders a value by processing a <a href="Ext.data.Record.html">Record</a>'s <a href="output/Ext.data.Record.html#Ext.data.Record-data">data</a> using a <a href="output/Ext.grid.TemplateColumn.html#Ext.grid.TemplateColumn-tpl">configured</a> <a href="Ext.XTemplate.html">XTemplate</a>. See the <a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a> config option of <a href="Ext.grid.Column.html">Ext.grid.Column</a> for more details.

 * @see ext.config.templatecolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#cls-Ext.grid.TemplateColumn Ext JS source
 */
public class TemplateColumn extends Column {

  /**
   *
   *
   * @see ext.config.templatecolumn
   */
  public function TemplateColumn() {
    super(null);
  }

  /**
   An <a href="Ext.XTemplate.html">XTemplate</a>, or an XTemplate <i>definition string</i> to use to process a <a href="Ext.data.Record.html">Record</a>'s <a href="output/Ext.data.Record.html#Ext.data.Record-data">data</a> to produce a column's rendered value.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tpl():*;

}
}
    