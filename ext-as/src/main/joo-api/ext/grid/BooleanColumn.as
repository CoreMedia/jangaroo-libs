package ext.grid {


/**
 * A Column definition class which renders boolean data fields. See the <a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a> config option of <a href="Ext.grid.Column.html">Ext.grid.Column</a> for more details.

 * @see ext.config.booleancolumn
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Column.html#cls-Ext.grid.BooleanColumn Ext JS source
 */
public class BooleanColumn extends Column {

  /**
   *
   *
   * @see ext.config.booleancolumn
   */
  public function BooleanColumn() {
    super(null);
  }

  /**
   The string returned by the renderer when the column value is falsy (but not undefined) (defaults to <tt>'false'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get falseText():String;

  /**
   The string returned by the renderer when the column value is not falsy (defaults to <tt>'true'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get trueText():String;

  /**
   The string returned by the renderer when the column value is undefined (defaults to <tt>'&amp;#160;'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get undefinedText():String;

}
}
    