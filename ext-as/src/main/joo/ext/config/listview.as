package ext.config {

/**
 * Ext.list.ListView is a fast and light-weight implementation of a <a href="Ext.grid.GridPanel.html">Grid</a> like view. It has the following characteristics:
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
 * <p>This class represents the xtype 'listview' and serves as a
 * typed config object for constructor of class ListView.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.list.ListView
 */
[ExtConfig(target="ext.list.ListView", xtype="listview")]
public class listview extends dataview {

  public function listview(config:Object = null) {

    super(config);
  }


  /**
   Specify <tt>true</tt> or specify a configuration object for <a href="Ext.list.ListView.ColumnResizer.html">Ext.list.ListView.ColumnResizer</a> to enable the columns to be resizable (defaults to <tt>true</tt>).
   */
  public native function get columnResize():*;

  /**
   * @private
   */
  public native function set columnResize(value:*):void;

  /**
   Specify <tt>true</tt> or specify a configuration object for <a href="Ext.list.ListView.Sorter.html">Ext.list.ListView.Sorter</a> to enable the columns to be sortable (defaults to <tt>true</tt>).
   */
  public native function get columnSort():*;

  /**
   * @private
   */
  public native function set columnSort(value:*):void;

  /**
   An array of column configuration objects, for example: <pre><code>{
   align: 'right',
   dataIndex: 'size',
   header: 'Size',
   tpl: '{size:fileSize}',
   width: .35
   }
   </code></pre>Acceptable properties for each column configuration object are: <div class="mdetail-params"><ul><li><b><tt>align</tt></b> : String<div class="sub-desc">Set the CSS text-align property of the column. Defaults to <tt>'left'</tt>.</div></li><li><b><tt>dataIndex</tt></b> : String<div class="sub-desc">See <a href="Ext.grid.Column.html">Ext.grid.Column</a>. <a href="output/Ext.grid.Column.html#Ext.grid.Column-dataIndex">dataIndex</a> for details.</div></li><li><b><tt>header</tt></b> : String<div class="sub-desc">See <a href="Ext.grid.Column.html">Ext.grid.Column</a>. <a href="output/Ext.grid.Column.html#Ext.grid.Column-header">header</a> for details.</div></li><li><b><tt>tpl</tt></b> : String<div class="sub-desc">Specify a string to pass as the configuration string for <a href="Ext.XTemplate.html">Ext.XTemplate</a>. By default an <a href="Ext.XTemplate.html">Ext.XTemplate</a> will be implicitly created using the <tt>dataIndex</tt>.</div></li><li><b><tt>width</tt></b> : Number<div class="sub-desc">Percentage of the container width this column should be allocated. Columns that have no width specified will be allocated with an equal percentage to fill 100% of the container width. To easily take advantage of the full container width, leave the width of at least one column undefined. Note that if you do not want to take up the full width of the container, the width of every column needs to be explicitly defined.</div></li></ul></div>
   */
  public native function get columns():Array;

  /**
   * @private
   */
  public native function set columns(value:Array):void;

  /**
   <tt>true</tt> to hide the <a href="output/Ext.list.ListView.html#Ext.list.ListView-internalTpl">header row</a> (defaults to <tt>false</tt> so the <a href="output/Ext.list.ListView.html#Ext.list.ListView-internalTpl">header row</a> will be shown).
   */
  public native function get hideHeaders():Boolean;

  /**
   * @private
   */
  public native function set hideHeaders(value:Boolean):void;

  /**
   The template to be used for the header row. See <a href="output/Ext.list.ListView.html#Ext.list.ListView-tpl">tpl</a> for more details.
   */
  public native function get internalTpl():*;

  /**
   * @private
   */
  public native function set internalTpl(value:*):void;

  /**
   Defaults to <tt>'dl'</tt> to work with the preconfigured <b><tt><a href="output/Ext.DataView.html#Ext.DataView-tpl">tpl</a></tt></b>. This setting specifies the CSS selector (e.g. <tt>div.some-class</tt> or <tt>span:first-child</tt>) that will be used to determine what nodes the ListView will be working with.
   */
  override public native function get itemSelector():String;

  /**
   * @private
   */
  override public native function set itemSelector(value:String):void;

  /**
   The CSS class applied when over a row (defaults to <tt>'x-list-over'</tt>). An example overriding the default styling: <pre><code>   .x-list-over {background-color: orange;}
   </code></pre>
   */
  override public native function get overClass():String;

  /**
   * @private
   */
  override public native function set overClass(value:String):void;

  /**
   By default will defer accounting for the configured <b><tt><a href="output/Ext.list.ListView.html#Ext.list.ListView-scrollOffset">scrollOffset</a></tt></b> for 10 milliseconds. Specify <tt>true</tt> to account for the configured <b><tt><a href="output/Ext.list.ListView.html#Ext.list.ListView-scrollOffset">scrollOffset</a></tt></b> immediately.
   */
  public native function get reserveScrollOffset():Boolean;

  /**
   * @private
   */
  public native function set reserveScrollOffset(value:Boolean):void;

  /**
   The amount of space to reserve for the scrollbar (defaults to <tt>undefined</tt>). If an explicit value isn't specified, this will be automatically calculated.
   */
  public native function get scrollOffset():Number;

  /**
   * @private
   */
  public native function set scrollOffset(value:Number):void;

  /**
   The CSS class applied to a selected row (defaults to <tt>'x-list-selected'</tt>). An example overriding the default styling: <pre><code>   .x-list-selected {background-color: yellow;}
   </code></pre>
   */
  override public native function get selectedClass():String;

  /**
   * @private
   */
  override public native function set selectedClass(value:String):void;


}
}
    