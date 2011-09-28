package ext.list {

import ext.config.lvbooleancolumn;

/**
 * A Column definition class which renders boolean data fields. See the <a href="output/Ext.list.Column.html#Ext.list.Column-xtype">xtype</a> config option of <a href="Ext.list.Column.html">Ext.list.Column</a> for more details.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'lvbooleancolumn' / the EXML element &lt;lvbooleancolumn>.</p>
 * @see ext.config.lvbooleancolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column1.html#cls-Ext.list.BooleanColumn Ext JS source
 */
public class BooleanColumn extends Column {

  /**
   * Create a new BooleanColumn.
   *
   * @param config The config object
   * @see ext.config.lvbooleancolumn
   */
  public function BooleanColumn(config:lvbooleancolumn = null) {
    super(config);
  }

  /**
   The string returned by the renderer when the column value is falsey (but not undefined) (defaults to <tt>'false'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get falseText():String;

  /**
   The string returned by the renderer when the column value is not falsey (defaults to <tt>'true'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get trueText():String;

  /**
   The string returned by the renderer when the column value is undefined (defaults to <tt>' '</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get undefinedText():String;

}
}
    