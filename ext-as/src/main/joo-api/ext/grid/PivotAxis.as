package ext.grid {
import ext.Component;
import ext.Element;

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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.pivotaxis
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PivotAxis.html#cls-Ext.grid.PivotAxis Ext JS source
 */
public class PivotAxis extends Component {

  /**
   *
   *
   * @see ext.config.pivotaxis
   */
  public function PivotAxis() {
    super(null);
  }

  /**
   The width to render each row header that does not have a width specified via <a href="output/Ext.grid.PivotAxis.html#Ext.grid.PivotAxis-getRowGroupHeaders">getRowGroupHeaders</a>. Defaults to 80.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultHeaderWidth():Number;

  /**
   One of 'vertical' or 'horizontal'. Defaults to horizontal
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get orientation():String;

  /**
   The amount of padding used by each cell. TODO: From 4.x onwards this can be removed as it won't be needed. For now it is used to account for the differences between the content box and border box measurement models
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get paddingWidth():Number;

  /**
   *
   *
   * @return The headers
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PivotAxis.html#method-Ext.grid.PivotAxis-buildHeaders Ext JS source
   */
  public native function buildHeaders():Array;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PivotAxis.html#method-Ext.grid.PivotAxis-getRecordInfo Ext JS source
   */
  public native function getRecordInfo():void;

  /**
   *
   *
   * @return All unique tuples
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PivotAxis.html#method-Ext.grid.PivotAxis-getTuples Ext JS source
   */
  public native function getTuples():Array;

  /**
   *
   *
   * @param ct container
   * @param position reference child element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PivotAxis.html#method-Ext.grid.PivotAxis-onRender Ext JS source
   */
  override protected native function onRender(ct:Element, position:Element):void;

  /**
   *
   *
   * @return The HTML Domspec for a horizontal oriented axis
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PivotAxis.html#method-Ext.grid.PivotAxis-renderHorizontalRows Ext JS source
   */
  public native function renderHorizontalRows():Object;

  /**
   *
   *
   * @return The HTML Domspec for a vertical oriented axis
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PivotAxis.html#method-Ext.grid.PivotAxis-renderVerticalRows Ext JS source
   */
  public native function renderVerticalRows():Object;

  /**
   * Updates the dimensions used by this axis
   *
   * @param dimensions The new dimensions
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PivotAxis.html#method-Ext.grid.PivotAxis-setDimensions Ext JS source
   */
  public native function setDimensions(dimensions:Array):void;

}
}
    