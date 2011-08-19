package ext.config {

import joo.JavaScriptObject;

/**
 * This is a utility class that can be passed into a <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a> as a column config that provides an automatic row numbering column. <br/>Usage:<br/> <pre><code>// This is a typical column config with the first column providing row numbers
 var colModel = new Ext.grid.ColumnModel([
 new Ext.grid.RowNumberer(),
 {header: "Name", width: 80, sortable: true},
 {header: "Code", width: 50, sortable: true},
 {header: "Description", width: 200, sortable: true}
 ]);
 </code></pre>
 *
 * <p>This class serves as a
 * typed config object for constructor of class RowNumberer.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.grid.RowNumberer
 */
[ExtConfig(target="ext.grid.RowNumberer")]
public class rownumberer extends JavaScriptObject {

  public function rownumberer(config:Object = null) {

    super(config);
  }


  /**
   Any valid text or HTML fragment to display in the header cell for the row number column (defaults to '').
   */
  public native function get header():String;

  /**
   * @private
   */
  public native function set header(value:String):void;

  /**
   The default width in pixels of the row number column (defaults to 23).
   */
  public native function get width():Number;

  /**
   * @private
   */
  public native function set width(value:Number):void;


}
}
    