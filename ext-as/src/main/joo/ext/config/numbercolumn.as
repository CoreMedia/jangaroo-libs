package ext.config {


/**
 * A Column definition class which renders a numeric data field according to a <a href="output/Ext.list.NumberColumn.html#Ext.list.NumberColumn-format">format</a> string. See the <a href="output/Ext.list.Column.html#Ext.list.Column-xtype">xtype</a> config option of <a href="Ext.list.Column.html">Ext.list.Column</a> for more details.

 *
 * <p>This class serves as a
 * typed config object for constructor of class NumberColumn.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.list.NumberColumn
 */
[ExtConfig(target="ext.list.NumberColumn")]
public class numbercolumn extends listcolumn {

  public function numbercolumn(config:Object = null) {

    super(config);
  }


  /**
   A formatting string as used by <a href="output/Ext.util.Format.html#Ext.util.Format-number">Ext.util.Format.number</a> to format a numeric value for this Column (defaults to <tt>'0,000.00'</tt>).
   */
  public native function get format():String;

  /**
   * @private
   */
  public native function set format(value:String):void;


}
}
    