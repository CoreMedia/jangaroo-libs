package ext.grid {

import ext.config.actioncolumn;

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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'actioncolumn' / the EXML element &lt;actioncolumn>.</p>
 * @see ext.config.actioncolumn
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.ActionColumn Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.grid.ActionColumn")]
public class ActionColumn extends Column {

  /**
   * Create a new ActionColumn.
   *
   * @param config The config object
   * @see ext.config.actioncolumn
   */
  public function ActionColumn(config:actioncolumn = null) {
    super(config);
  }

  /**
   The alt text to use for the image element. Defaults to <tt>''</tt>.
   */
  public native function get altText():String;

  /**
   The URL of an image to display as the clickable element in the column. Optional - defaults to <code><a href="output/Ext.html#Ext-BLANK_IMAGE_URL">Ext.BLANK_IMAGE_URL</a></code>.
   */
  public native function get icon():String;

  /**
   A CSS class to apply to the icon image. To determine the class dynamically, configure the Column with a <code><a href="output/Ext.grid.ActionColumn.html#Ext.grid.ActionColumn-getClass">getClass</a></code> function.
   */
  public native function get iconCls():String;

  /**
   An Array which may contain multiple icon definitions, each element of which may contain: <div class="mdetail-params"><ul><li><code>icon</code> : String<div class="sub-desc">The url of an image to display as the clickable element in the column.</div></li><li><code>iconCls</code> : String<div class="sub-desc">A CSS class to apply to the icon image. To determine the class dynamically, configure the item with a <code>getClass</code> function.</div></li><li><code>getClass</code> : Function<div class="sub-desc">A function which returns the CSS class to apply to the icon image. The function is passed the following parameters:<ul><li><b>v</b> : Object<p class="sub-desc">The value of the column's configured field (if any).</p></li><li><b>metadata</b> : Object<p class="sub-desc">An object in which you may set the following attributes:</p><ul><li><b>css</b> : String<p class="sub-desc">A CSS class name to add to the cell's TD element.</p></li><li><b>attr</b> : String<p class="sub-desc">An HTML attribute definition string to apply to the data container element <i>within</i> the table cell (e.g. 'style="color:red;"').</p></li></ul><br/><br/></li><li><b>r</b> : Ext.data.Record<p class="sub-desc">The Record providing the data.</p></li><li><b>rowIndex</b> : Number<p class="sub-desc">The row index..</p></li><li><b>colIndex</b> : Number<p class="sub-desc">The column index.</p></li><li><b>store</b> : Ext.data.Store<p class="sub-desc">The Store which is providing the data Model.</p></li></ul></div></li><li><code>handler</code> : Function<div class="sub-desc">A function called when the icon is clicked.</div></li><li><code>scope</code> : Scope<div class="sub-desc">The scope (<code><b>this</b></code> reference) in which the <code>handler</code> and <code>getClass</code> functions are executed. Fallback defaults are this Column's configured scope, then this Column.</div></li><li><code>tooltip</code> : String<div class="sub-desc">A tooltip message to be displayed on hover. <a href="output/Ext.QuickTips.html#Ext.QuickTips-init">Ext.QuickTips</a> must have been initialized.</div></li></ul></div>
   */
  public native function get items():Array;

  /**
   Defaults to <code>true</code>. Prevent grid <i>row</i> selection upon mousedown.
   */
  public native function get stopSelection():Boolean;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.ActionColumn-method-processEvent Sencha Docs Ext JS 3.4
   */
  override public native function processEvent():void;

}
}
    