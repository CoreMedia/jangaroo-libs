package ext.list {

import ext.config.booleancolumn;

/**
 * A Column definition class which renders boolean data fields. See the <a href="output/Ext.list.Column.html#Ext.list.Column-xtype">xtype</a> config option of <a href="Ext.list.Column.html">Ext.list.Column</a> for more details.

 * @see ext.config.booleancolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column1.html#cls-Ext.list.BooleanColumn Ext JS source
 */
public class BooleanColumn extends Column {

  /**
   *
   *
   * @see ext.config.booleancolumn
   */
  public function BooleanColumn(config:booleancolumn) {
    super(null);
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
    