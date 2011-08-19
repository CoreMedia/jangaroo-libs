package ext.list {
import ext.config.listcolumn;

/**
 * This class encapsulates column configuration data to be used in the initialization of a <a href="Ext.list.ListView.html">ListView</a>.
 <p>While subclasses are provided to render data in different ways, this class renders a passed data field unchanged and is usually used for textual columns.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'listcolumn' / the EXML element &lt;listcolumn>.</p>
 * @see ext.config.listcolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#cls-Ext.list.Column Ext JS source
 */
public class Column {

  /**
   * Create a new Column.
   *
   * @param config The config object
   * @see ext.config.listcolumn
   */
  public function Column(config:listcolumn = null) {
    super();
  }

  /**
   Set the CSS text-align property of the column. Defaults to <tt>'left'</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get align():String;

  /**
   This option can be used to add a CSS class to the cell of each row for this column.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cls():String;

  /**
   <b>Required</b>. The name of the field in the ListViews's <a href="Ext.data.Store.html">Ext.data.Store</a>'s <a href="Ext.data.Record.html">Ext.data.Record</a> definition from which to draw the column's value.

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dataIndex():String;

  /**
   The header text to be used as innerHTML (html tags are accepted) to display in the ListView. <b>Note</b>: to have a clickable header with no text displayed use <tt>' '</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get header():String;

  /**
   Used by ListView constructor method to avoid reprocessing a Column if <code>isColumn</code> is not set ListView will recreate a new Ext.list.Column Defaults to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get isColumn():Boolean;

  /**
   Specify a string to pass as the configuration string for <a href="Ext.XTemplate.html">Ext.XTemplate</a>. By default an <a href="Ext.XTemplate.html">Ext.XTemplate</a> will be implicitly created using the <tt>dataIndex</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tpl():String;

  /**
   Percentage of the container width this column should be allocated. Columns that have no width specified will be allocated with an equal percentage to fill 100% of the container width. To easily take advantage of the full container width, leave the width of at least one column undefined. Note that if you do not want to take up the full width of the container, the width of every column needs to be explicitly defined.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get width():Number;

}
}
    