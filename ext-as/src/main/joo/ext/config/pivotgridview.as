package ext.config {


/**
 * Specialised GridView for rendering Pivot Grid components. Config can be passed to the PivotGridView via the PivotGrid constructor's viewConfig option: <pre><code>new Ext.grid.PivotGrid({
 viewConfig: {
 title: 'My Pivot Grid',
 getCellCls: function(value) {
 return value &gt; 10 'red' : 'green';
 }
 }
 });
 </code></pre><p>Currently <a href="output/Ext.grid.PivotGridView.html#Ext.grid.PivotGridView-title">title</a> and <a href="output/Ext.grid.PivotGridView.html#Ext.grid.PivotGridView-getCellCls">getCellCls</a> are the only configuration options accepted by PivotGridView. All other interaction is performed via the <a href="Ext.grid.PivotGrid.html">PivotGrid</a> class.</p>
 * <p>This class serves as a typed config object for constructor of class PivotGridView.</p>
 *
 * @see ext.grid.PivotGridView
 */
[ExtConfig(target="ext.grid.PivotGridView")]
public class pivotgridview extends gridview {

  public function pivotgridview(config:Object = null) {

    super(config);
  }


  /**
   Optional function which should return a CSS class name for each cell value. This is useful when color coding cells based on their value. Defaults to undefined.
   */
  public native function get getCellCls():Function;

  /**
   * @private
   */
  public native function set getCellCls(value:Function):void;

  /**
   Optional title to be placed in the top left corner of the PivotGrid. Defaults to an empty string.
   */
  public native function get title():String;

  /**
   * @private
   */
  public native function set title(value:String):void;


}
}
    