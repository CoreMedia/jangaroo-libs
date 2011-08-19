package ext.list {
import ext.DataView;
import ext.config.listview;

/**
 * Ext.list.ListView is a fast and light-weight implementation of a <a href="Ext.grid.GridPanel.html">Grid</a> like view with the following characteristics:
 <div class="mdetail-params"><ul><li>resizable columns</li><li>selectable</li><li>column widths are initially proportioned by percentage based on the container width and number of columns</li><li>uses templates to render the data in any required format</li><li>no horizontal scrolling</li><li>no editing</li></ul></div><p>Example usage:</p><pre><code>// consume JSON of this form:
 {
 "images":[
 {
 "name":"dance_fever.jpg",
 "size":2067,
 "lastmod":1236974993000,
 "url":"images\/thumbs\/dance_fever.jpg"
 },
 {
 "name":"zack_sink.jpg",
 "size":2303,
 "lastmod":1236974993000,
 "url":"images\/thumbs\/zack_sink.jpg"
 }
 ]
 }
 var store = new Ext.data.JsonStore({
 url: 'get-images.php',
 root: 'images',
 fields: [
 'name', 'url',
 {name:'size', type: 'float'},
 {name:'lastmod', type:'date', dateFormat:'timestamp'}
 ]
 });
 store.load();

 var listView = new Ext.list.ListView({
 store: store,
 multiSelect: true,
 emptyText: 'No images to display',
 reserveScrollOffset: true,
 columns: [{
 header: 'File',
 width: .5,
 dataIndex: 'name'
 },{
 header: 'Last Modified',
 width: .35,
 dataIndex: 'lastmod',
 tpl: '{lastmod:date("m-d h:i a")}'
 },{
 header: 'Size',
 dataIndex: 'size',
 tpl: '{size:fileSize}', // format using Ext.util.Format.fileSize()
 align: 'right'
 }]
 });

 // put it in a Panel so it looks pretty
 var panel = new Ext.Panel({
 id:'images-view',
 width:425,
 height:250,
 collapsible:true,
 layout:'fit',
 title:'Simple ListView <i>(0 items selected)</i>',
 items: listView
 });
 panel.render(document.body);

 // little bit of feedback
 listView.on('selectionchange', function(view, nodes){
 var l = nodes.length;
 var s = l != 1 ? 's' : '';
 panel.setTitle('Simple ListView <i>('+l+' item'+s+' selected)</i>');
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'listview' / the EXML element &lt;listview>.</p>
 * @see ext.config.listview
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ListView.html#cls-Ext.list.ListView Ext JS source
 */
public class ListView extends DataView {

  /**
   *
   *
   * @param config
   * @see ext.config.listview
   */
  public function ListView(config:listview) {
    super(null);
  }

  /**
   Set this property to <tt>true</tt> to disable the header click handler disabling sort (defaults to <tt>false</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ListView.html#prop-Ext.list.ListView-disableHeaders Ext JS source
   */
  public native function get disableHeaders():Boolean;

  /**
   * @private
   */
  public native function set disableHeaders(value:Boolean):void;

  /**
   Specify <tt>true</tt> or specify a configuration object for <a href="Ext.list.ListView.ColumnResizer.html">Ext.list.ListView.ColumnResizer</a> to enable the columns to be resizable (defaults to <tt>true</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get columnResize():*;

  /**
   Specify <tt>true</tt> or specify a configuration object for <a href="Ext.list.ListView.Sorter.html">Ext.list.ListView.Sorter</a> to enable the columns to be sortable (defaults to <tt>true</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get columnSort():*;

  /**
   An array of column configuration objects, for example: <pre><code>{
   align: 'right',
   dataIndex: 'size',
   header: 'Size',
   tpl: '{size:fileSize}',
   width: .35
   }
   </code></pre>Acceptable properties for each column configuration object are: <div class="mdetail-params"><ul><li><b><tt>align</tt></b> : String<div class="sub-desc">Set the CSS text-align property of the column. Defaults to <tt>'left'</tt>.</div></li><li><b><tt>dataIndex</tt></b> : String<div class="sub-desc">See <a href="Ext.grid.Column.html">Ext.grid.Column</a>. <a href="output/Ext.grid.Column.html#Ext.grid.Column-dataIndex">dataIndex</a> for details.</div></li><li><b><tt>header</tt></b> : String<div class="sub-desc">See <a href="Ext.grid.Column.html">Ext.grid.Column</a>. <a href="output/Ext.grid.Column.html#Ext.grid.Column-header">header</a> for details.</div></li><li><b><tt>tpl</tt></b> : String<div class="sub-desc">Specify a string to pass as the configuration string for <a href="Ext.XTemplate.html">Ext.XTemplate</a>. By default an <a href="Ext.XTemplate.html">Ext.XTemplate</a> will be implicitly created using the <tt>dataIndex</tt>.</div></li><li><b><tt>width</tt></b> : Number<div class="sub-desc">Percentage of the container width this column should be allocated. Columns that have no width specified will be allocated with an equal percentage to fill 100% of the container width. To easily take advantage of the full container width, leave the width of at least one column undefined. Note that if you do not want to take up the full width of the container, the width of every column needs to be explicitly defined.</div></li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get columns():Array;

  /**
   <tt>true</tt> to hide the <a href="output/Ext.list.ListView.html#Ext.list.ListView-internalTpl">header row</a> (defaults to <tt>false</tt> so the <a href="output/Ext.list.ListView.html#Ext.list.ListView-internalTpl">header row</a> will be shown).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideHeaders():Boolean;

  /**
   The template to be used for the header row. See <a href="output/Ext.list.ListView.html#Ext.list.ListView-tpl">tpl</a> for more details.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get internalTpl():*;

  /**
   By default will defer accounting for the configured <b><tt><a href="output/Ext.list.ListView.html#Ext.list.ListView-scrollOffset">scrollOffset</a></tt></b> for 10 milliseconds. Specify <tt>true</tt> to account for the configured <b><tt><a href="output/Ext.list.ListView.html#Ext.list.ListView-scrollOffset">scrollOffset</a></tt></b> immediately.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get reserveScrollOffset():Boolean;

  /**
   The amount of space to reserve for the scrollbar (defaults to <tt>undefined</tt>). If an explicit value isn't specified, this will be automatically calculated.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scrollOffset():Number;

  /**
   * Function which can be overridden which returns the data object passed to this view's <a href="output/Ext.list.ListView.html#Ext.list.ListView-tpl">template</a> to render the whole ListView. The returned object shall contain the following properties:
   <div class="mdetail-params"><ul><li><b>columns</b> : String<div class="sub-desc">See <tt><a href="output/Ext.list.ListView.html#Ext.list.ListView-columns">columns</a></tt></div></li><li><b>rows</b> : String<div class="sub-desc">See <tt><a href="Ext.DataView.html">Ext.DataView</a>.<a href="output/Ext.DataView.html#Ext.DataView-collectData">collectData</a></tt></div></li></ul></div>
   *
   * @param records An Array of <a href="Ext.data.Record.html">Ext.data.Record</a>s to be rendered into the DataView.
   * @param startIndex the index number of the Record being prepared for rendering.
   * @return A data object containing properties to be processed by a repeating XTemplate as described above.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ListView.html#method-Ext.list.ListView-collectData Ext JS source
   */
  override public native function collectData(records:Array, startIndex:Number):Array;

}
}
    