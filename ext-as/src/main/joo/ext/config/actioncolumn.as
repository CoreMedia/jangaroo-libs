package ext.config {


/**
 * A Grid column type which renders an icon, or a series of icons in a grid cell, and offers a scoped click handler for each icon. Example usage:
 <pre><code>new Ext.grid.GridPanel({
 store: myStore,
 columns: [
 {
 xtype: 'actioncolumn',
 width: 50,
 items: [
 {
 icon   : 'sell.gif',                // Use a URL in the icon config
 tooltip: 'Sell stock',
 handler: function(grid, rowIndex, colIndex) {
 var rec = store.getAt(rowIndex);
 alert("Sell " + rec.get('company'));
 }
 },
 {
 getClass: function(v, meta, rec) {  // Or return a class from a function
 if (rec.get('change') &lt; 0) {
 this.items[1].tooltip = 'Do not buy!';
 return 'alert-col';
 } else {
 this.items[1].tooltip = 'Buy stock';
 return 'buy-col';
 }
 },
 handler: function(grid, rowIndex, colIndex) {
 var rec = store.getAt(rowIndex);
 alert("Buy " + rec.get('company'));
 }
 }
 ]
 }
 //any other columns here
 ]
 });
 </code></pre><p>The action column can be at any index in the columns array, and a grid can have any number of action columns.</p>
 * <p>This class serves as a typed config object for constructor of class ActionColumn.</p>
 *
 * @see ext.grid.ActionColumn
 */
[ExtConfig(target="ext.grid.ActionColumn")]
public class actioncolumn extends column {

  public function actioncolumn(config:Object = null) {

    super(config);
  }


  /**
   The alt text to use for the image element. Defaults to <tt>''</tt>.
   */
  public native function get altText():String;

  /**
   * @private
   */
  public native function set altText(value:String):void;

  /**
   A function which returns the CSS class to apply to the icon image. The function is passed the following parameters:<div class="mdetail-params"><ul><li><b>v</b> : Object<p class="sub-desc">The value of the column's configured field (if any).</p></li><li><b>metadata</b> : Object<p class="sub-desc">An object in which you may set the following attributes:</p><ul><li><b>css</b> : String<p class="sub-desc">A CSS class name to add to the cell's TD element.</p></li><li><b>attr</b> : String<p class="sub-desc">An HTML attribute definition string to apply to the data container element <i>within</i> the table cell (e.g. 'style="color:red;"').</p></li></ul><br/><br/></li><li><b>r</b> : Ext.data.Record<p class="sub-desc">The Record providing the data.</p></li><li><b>rowIndex</b> : Number<p class="sub-desc">The row index..</p></li><li><b>colIndex</b> : Number<p class="sub-desc">The column index.</p></li><li><b>store</b> : Ext.data.Store<p class="sub-desc">The Store which is providing the data Model.</p></li></ul></div>
   */
  public native function get getClass():Function;

  /**
   * @private
   */
  public native function set getClass(value:Function):void;

  /**
   A function called when the icon is clicked. The handler is passed the following parameters:<div class="mdetail-params"><ul><li><code>grid</code> : GridPanel<div class="sub-desc">The owning GridPanel.</div></li><li><code>rowIndex</code> : Number<div class="sub-desc">The row index clicked on.</div></li><li><code>colIndex</code> : Number<div class="sub-desc">The column index clicked on.</div></li><li><code>item</code> : Object<div class="sub-desc">The clicked item (or this Column if multiple <a href="output/Ext.grid.ActionColumn.html#Ext.grid.ActionColumn-items">items</a> were not configured).</div></li><li><code>e</code> : Event<div class="sub-desc">The click event.</div></li></ul></div>
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   The URL of an image to display as the clickable element in the column. Optional - defaults to <code><a href="output/Ext.html#Ext-BLANK_IMAGE_URL">Ext.BLANK_IMAGE_URL</a></code>.
   */
  public native function get icon():String;

  /**
   * @private
   */
  public native function set icon(value:String):void;

  /**
   A CSS class to apply to the icon image. To determine the class dynamically, configure the Column with a <code><a href="output/Ext.grid.ActionColumn.html#Ext.grid.ActionColumn-getClass">getClass</a></code> function.
   */
  public native function get iconCls():String;

  /**
   * @private
   */
  public native function set iconCls(value:String):void;

  /**
   An Array which may contain multiple icon definitions, each element of which may contain: <div class="mdetail-params"><ul><li><code>icon</code> : String<div class="sub-desc">The url of an image to display as the clickable element in the column.</div></li><li><code>iconCls</code> : String<div class="sub-desc">A CSS class to apply to the icon image. To determine the class dynamically, configure the item with a <code>getClass</code> function.</div></li><li><code>getClass</code> : Function<div class="sub-desc">A function which returns the CSS class to apply to the icon image. The function is passed the following parameters:<ul><li><b>v</b> : Object<p class="sub-desc">The value of the column's configured field (if any).</p></li><li><b>metadata</b> : Object<p class="sub-desc">An object in which you may set the following attributes:</p><ul><li><b>css</b> : String<p class="sub-desc">A CSS class name to add to the cell's TD element.</p></li><li><b>attr</b> : String<p class="sub-desc">An HTML attribute definition string to apply to the data container element <i>within</i> the table cell (e.g. 'style="color:red;"').</p></li></ul><br/><br/></li><li><b>r</b> : Ext.data.Record<p class="sub-desc">The Record providing the data.</p></li><li><b>rowIndex</b> : Number<p class="sub-desc">The row index..</p></li><li><b>colIndex</b> : Number<p class="sub-desc">The column index.</p></li><li><b>store</b> : Ext.data.Store<p class="sub-desc">The Store which is providing the data Model.</p></li></ul></div></li><li><code>handler</code> : Function<div class="sub-desc">A function called when the icon is clicked.</div></li><li><code>scope</code> : Scope<div class="sub-desc">The scope (<code><b>this</b></code> reference) in which the <code>handler</code> and <code>getClass</code> functions are executed. Fallback defaults are this Column's configured scope, then this Column.</div></li><li><code>tooltip</code> : String<div class="sub-desc">A tooltip message to be displayed on hover. <a href="output/Ext.QuickTips.html#Ext.QuickTips-init">Ext.QuickTips</a> must have been initialized.</div></li></ul></div>
   */
  public native function get items():Array;

  /**
   * @private
   */
  public native function set items(value:Array):void;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.grid.ActionColumn.html#Ext.grid.ActionColumn-handler">handler</a></code> and <code><a href="output/Ext.grid.ActionColumn.html#Ext.grid.ActionColumn-getClass">getClass</a></code> fuctions are executed. Defaults to this Column.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   Defaults to <code>true</code>. Prevent grid <i>row</i> selection upon mousedown.
   */
  public native function get stopSelection():Boolean;

  /**
   * @private
   */
  public native function set stopSelection(value:Boolean):void;

  /**
   A tooltip message to be displayed on hover. <a href="output/Ext.QuickTips.html#Ext.QuickTips-init">Ext.QuickTips</a> must have been initialized.
   */
  public native function get tooltip():String;

  /**
   * @private
   */
  public native function set tooltip(value:String):void;


}
}
    