package ext.config {


/**
 * Supporting Class for Ext.list.ListView

 * <p>This class serves as a typed config object for constructor of class ColumnResizer.</p>
 *
 * @see ext.list.ColumnResizer
 */
[ExtConfig(target="ext.list.ColumnResizer")]
public class columnresizer extends observable {

  public function columnresizer(config:Object = null) {

    super(config);
  }


  /**
   The minimum percentage to allot for any column (defaults to <tt>.05</tt>)
   */
  public native function get minPct():Number;

  /**
   * @private
   */
  public native function set minPct(value:Number):void;


}
}
    