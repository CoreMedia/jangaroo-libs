package ext.config {

/**
 * A Column definition class which renders a value by processing a <a href="Ext.data.Record.html">Record</a>'s <a href="output/Ext.data.Record.html#Ext.data.Record-data">data</a> using a <a href="output/Ext.grid.TemplateColumn.html#Ext.grid.TemplateColumn-tpl">configured</a> <a href="Ext.XTemplate.html">XTemplate</a>. See the <a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a> config option of <a href="Ext.grid.Column.html">Ext.grid.Column</a> for more details.

 *
 * <p>This class serves as a
 * typed config object for constructor of class TemplateColumn.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.grid.TemplateColumn
 */
[ExtConfig(target="ext.grid.TemplateColumn")]
public class templatecolumn extends gridcolumn {

  public function templatecolumn(config:Object = null) {

    super(config);
  }


  /**
   An <a href="Ext.XTemplate.html">XTemplate</a>, or an XTemplate <i>definition string</i> to use to process a <a href="Ext.data.Record.html">Record</a>'s <a href="output/Ext.data.Record.html#Ext.data.Record-data">data</a> to produce a column's rendered value.
   */
  public native function get tpl():*;

  /**
   * @private
   */
  public native function set tpl(value:*):void;


}
}
    