package ext.config {


/**
 * A Column definition class which renders a numeric data field according to a <a href="output/Ext.grid.NumberColumn.html#Ext.grid.NumberColumn-format">format</a> string. See the <a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a> config option of <a href="Ext.grid.Column.html">Ext.grid.Column</a> for more details.

 *
 * <p>This class represents the xtype 'numbercolumn' and serves as a
 * typed config object for constructor of class NumberColumn.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.grid.NumberColumn
 */
[ExtConfig(target="ext.grid.NumberColumn", xtype="numbercolumn")]
public class numbercolumn extends gridcolumn {

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
    