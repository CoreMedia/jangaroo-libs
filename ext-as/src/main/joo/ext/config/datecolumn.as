package ext.config {


/**
 * A Column definition class which renders a passed date according to the default locale, or a configured <a href="output/Ext.grid.DateColumn.html#Ext.grid.DateColumn-format">format</a>. See the <a href="output/Ext.grid.Column.html#Ext.grid.Column-xtype">xtype</a> config option of <a href="Ext.grid.Column.html">Ext.grid.Column</a> for more details.

 *
 * <p>This class represents the xtype 'datecolumn' and serves as a
 * typed config object for constructor of class DateColumn.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.grid.DateColumn
 */
[ExtConfig(target="ext.grid.DateColumn", xtype="datecolumn")]
public class datecolumn extends gridcolumn {

  public function datecolumn(config:Object = null) {

    super(config);
  }


  /**
   A formatting string as used by <a href="output/Date.html#Date-format">Date.format</a> to format a Date for this Column (defaults to <tt>'m/d/Y'</tt>).
   */
  public native function get format():String;

  /**
   * @private
   */
  public native function set format(value:String):void;


}
}
    