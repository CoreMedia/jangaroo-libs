package ext.config {


/**
 * The PivotGrid component enables rapid summarization of large data sets. It provides a way to reduce a large set of data down into a format where trends and insights become more apparent. A classic example is in sales data; a company will often have a record of all sales it makes for a given period - this will often encompass thousands of rows of data. The PivotGrid allows you to see how well each salesperson performed, which cities generate the most revenue, how products perform between cities and so on.
 <p>A PivotGrid is composed of two axes (left and top), one <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-measure">measure</a> and one <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-aggregator">aggregation</a> function. Each axis can contain one or more <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-dimension">dimension</a>, which are ordered into a hierarchy. Dimensions on the left axis can also specify a width. Each dimension in each axis can specify its sort ordering, defaulting to "ASC", and must specify one of the fields in the <a href="Ext.data.Record.html">Record</a> used by the PivotGrid's <a href="Ext.data.Store.html">Store</a>.</p><pre><code>// This is the record representing a single sale
 var SaleRecord = Ext.data.Record.create([
 {name: 'person',   type: 'string'},
 {name: 'product',  type: 'string'},
 {name: 'city',     type: 'string'},
 {name: 'state',    type: 'string'},
 {name: 'year',     type: 'int'},
 {name: 'value',    type: 'int'}
 ]);

 // A simple store that loads SaleRecord data from a url
 var myStore = new Ext.data.Store({
 url: 'data.json',
 autoLoad: true,
 reader: new Ext.data.JsonReader({
 root: 'rows',
 idProperty: 'id'
 }, SaleRecord)
 });

 // Create the PivotGrid itself, referencing the store
 var pivot = new Ext.grid.PivotGrid({
 store     : myStore,
 aggregator: 'sum',
 measure   : 'value',

 leftAxis: [
 {
 width: 60,
 dataIndex: 'product'
 },
 {
 width: 120,
 dataIndex: 'person',
 direction: 'DESC'
 }
 ],

 topAxis: [
 {
 dataIndex: 'year'
 }
 ]
 });
 </code></pre><p>The specified <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-measure">measure</a> is the field from SaleRecord that is extracted from each combination of product and person (on the left axis) and year on the top axis. There may be several SaleRecords in the data set that share this combination, so an array of measure fields is produced. This array is then aggregated using the <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-aggregator">aggregator</a> function.</p><p>The default aggregator function is sum, which simply adds up all of the extracted measure values. Other built-in aggregator functions are count, avg, min and max. In addition, you can specify your own function. In this example we show the code used to sum the measures, but you can return any value you like. See <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-aggregator">aggregator</a> for more details.</p><pre><code>new Ext.grid.PivotGrid({
 aggregator: function(records, measure) {
 var length = records.length,
 total  = 0,
 i;

 for (i = 0; i &lt; length; i++) {
 total += records[i].get(measure);
 }

 return total;
 },

 renderer: function(value) {
 return Math.round(value);
 },

 //your normal config here
 });
 </code></pre><p><u>Renderers</u></p><p>PivotGrid optionally accepts a <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-renderer">renderer</a> function which can modify the data in each cell before it is rendered. The renderer is passed the value that would usually be placed in the cell and is expected to return the new value. For example let's imagine we had height data expressed as a decimal - here's how we might use a renderer to display the data in feet and inches notation:</p><pre><code>new Ext.grid.PivotGrid({
 //in each case the value is a decimal number of feet
 renderer  : function(value) {
 var feet   = Math.floor(value),
 inches = Math.round((value - feet) &#42; 12);

 return String.format("{0}' {1}\"", feet, inches);
 },
 //normal config here
 });
 </code></pre><p><u>Reconfiguring</u></p><p>All aspects PivotGrid's configuration can be updated at runtime. It is easy to change the <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-setMeasure">measure</a>, <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-setAggregator">aggregation function</a>, <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-setLeftAxis">left</a> and <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-setTopAxis">top</a> axes and refresh the grid.</p><p>In this case we reconfigure the PivotGrid to have city and year as the top axis dimensions, rendering the average sale value into the cells:</p><pre><code>//the left axis can also be changed
 pivot.topAxis.setDimensions([
 {dataIndex: 'city', direction: 'DESC'},
 {dataIndex: 'year', direction: 'ASC'}
 ]);

 pivot.setMeasure('value');
 pivot.setAggregator('avg');

 pivot.view.refresh(true);
 </code></pre><p>See the <a href="Ext.grid.PivotAxis.html">PivotAxis</a> documentation for further detail on reconfiguring axes.</p>
 * <p>This class serves as a typed config object for constructor of class PivotGrid.</p>
 *
 * @see ext.grid.PivotGrid
 */
[ExtConfig(target="ext.grid.PivotGrid")]
public class pivotgrid extends grid {

  public function pivotgrid(config:Object = null) {

    super(config);
  }


  /**
   The aggregation function to use to combine the measures extracted for each dimension combination. Can be any of the built-in aggregators (sum, count, avg, min, max). Can also be a function which accepts two arguments (an array of Records to aggregate, and the measure to aggregate them on) and should return a String.
   */
  public native function get aggregator():*;

  /**
   * @private
   */
  public native function set aggregator(value:*):void;

  /**
   Either and array of <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-dimension">dimension</a> to use on the left axis, or a <a href="Ext.grid.PivotAxis.html">Ext.grid.PivotAxis</a> instance. If an array is passed, it is turned into a PivotAxis internally.
   */
  public native function get leftAxis():*;

  /**
   * @private
   */
  public native function set leftAxis(value:*):void;

  /**
   The field to extract from each Record when pivoting around the two axes. See the class introduction docs for usage
   */
  public native function get measure():String;

  /**
   * @private
   */
  public native function set measure(value:String):void;

  /**
   Optional renderer to pass values through before they are rendered to the dom. This gives an opportunity to modify cell contents after the value has been computed.
   */
  public native function get renderer():Function;

  /**
   * @private
   */
  public native function set renderer(value:Function):void;

  /**
   Either and array of <a href="output/Ext.grid.PivotGrid.html#Ext.grid.PivotGrid-dimension">dimension</a> to use on the top axis, or a <a href="Ext.grid.PivotAxis.html">Ext.grid.PivotAxis</a> instance. If an array is passed, it is turned into a PivotAxis internally.
   */
  public native function get topAxis():*;

  /**
   * @private
   */
  public native function set topAxis(value:*):void;


}
}
    