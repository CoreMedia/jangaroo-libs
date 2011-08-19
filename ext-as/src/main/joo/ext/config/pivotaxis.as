package ext.config {


/**
 * PivotAxis is a class that supports a <a href="Ext.grid.PivotGrid.html">Ext.grid.PivotGrid</a>. Each PivotGrid contains two PivotAxis instances - the left axis and the top axis. Each PivotAxis defines an ordered set of dimensions, each of which should correspond to a field in a Store's Record (see <a href="Ext.grid.PivotGrid.html">Ext.grid.PivotGrid</a> documentation for further explanation).
 <p>Developers should have little interaction with the PivotAxis instances directly as most of their management is performed by the PivotGrid. An exception is the dynamic reconfiguration of axes at run time - to achieve this we use PivotAxis's <a href="output/Ext.grid.PivotAxis.html#Ext.grid.PivotAxis-setDimensions">setDimensions</a> function and refresh the grid:</p><pre><code>var pivotGrid = new Ext.grid.PivotGrid({
 //some PivotGrid config here
 });

 //change the left axis dimensions
 pivotGrid.leftAxis.setDimensions([
 {
 dataIndex: 'person',
 direction: 'DESC',
 width    : 100
 },
 {
 dataIndex: 'product',
 direction: 'ASC',
 width    : 80
 }
 ]);

 pivotGrid.view.refresh(true);
 </code></pre>This clears the previous dimensions on the axis and redraws the grid with the new dimensions.
 *
 * <p>This class serves as a
 * typed config object for constructor of class PivotAxis.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.grid.PivotAxis
 */
[ExtConfig(target="ext.grid.PivotAxis")]
public class pivotaxis extends component {

  public function pivotaxis(config:Object = null) {

    super(config);
  }


  /**
   The width to render each row header that does not have a width specified via <a href="output/Ext.grid.PivotAxis.html#Ext.grid.PivotAxis-getRowGroupHeaders">getRowGroupHeaders</a>. Defaults to 80.
   */
  public native function get defaultHeaderWidth():Number;

  /**
   * @private
   */
  public native function set defaultHeaderWidth(value:Number):void;

  /**
   One of 'vertical' or 'horizontal'. Defaults to horizontal
   */
  public native function get orientation():String;

  /**
   * @private
   */
  public native function set orientation(value:String):void;

  /**
   The amount of padding used by each cell. TODO: From 4.x onwards this can be removed as it won't be needed. For now it is used to account for the differences between the content box and border box measurement models
   */
  public native function get paddingWidth():Number;

  /**
   * @private
   */
  public native function set paddingWidth(value:Number):void;


}
}
    