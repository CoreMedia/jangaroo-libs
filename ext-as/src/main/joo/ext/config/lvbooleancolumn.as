package ext.config {


/**
 * A Column definition class which renders boolean data fields. See the <a href="output/Ext.list.Column.html#Ext.list.Column-xtype">xtype</a> config option of <a href="Ext.list.Column.html">Ext.list.Column</a> for more details.

 *
 * <p>This class represents the xtype 'lvbooleancolumn' and serves as a
 * typed config object for constructor of class BooleanColumn.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.list.BooleanColumn
 */
[ExtConfig(target="ext.list.BooleanColumn", xtype="lvbooleancolumn")]
public class lvbooleancolumn extends lvcolumn {

  public function lvbooleancolumn(config:Object = null) {

    super(config);
  }


  /**
   The string returned by the renderer when the column value is falsey (but not undefined) (defaults to <tt>'false'</tt>).
   */
  public native function get falseText():String;

  /**
   * @private
   */
  public native function set falseText(value:String):void;

  /**
   The string returned by the renderer when the column value is not falsey (defaults to <tt>'true'</tt>).
   */
  public native function get trueText():String;

  /**
   * @private
   */
  public native function set trueText(value:String):void;

  /**
   The string returned by the renderer when the column value is undefined (defaults to <tt>'&amp;#160;'</tt>).
   */
  public native function get undefinedText():String;

  /**
   * @private
   */
  public native function set undefinedText(value:String):void;


}
}
    