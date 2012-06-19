package ext.grid {
import ext.config.rownumberer;

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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.rownumberer
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowNumberer Sencha Docs Ext JS 3.4
 */
[Native]
public class RowNumberer {

  /**
   *
   *
   * @param config The configuration options
   * @see ext.config.rownumberer
   */
  public function RowNumberer(config:rownumberer) {
    super();
  }

  /**
   Any valid text or HTML fragment to display in the header cell for the row number column (defaults to '').
   */
  public native function get header():String;

  /**
   The default width in pixels of the row number column (defaults to 23).
   */
  public native function get width():Number;

}
}
    