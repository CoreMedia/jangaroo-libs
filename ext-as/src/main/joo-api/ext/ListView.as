package ext {
/**
 * ListView is a fast and light-weight implentation of a <b class='link' title='Ext.grid.GridPanel'>Grid</b> like view.
 * It has the following characteristics:
 * <ul>
 * <li>resizable columns</li>
 * <li>selectable</li>
 * <li>column widths are initially proportioned by percentage based on the container
 * width and number of columns</li>
 * <li>uses templates to render the data in any required format</li>
 * <li>no horizontal scrolling</li>
 * <li>no editing</li>
 * </ul>
 * <p>Example usage:</p>
 * <pre><code>
// consume JSON of this form:
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
var store = new ext.data.JsonStore({
    url: 'get-images.php',
    root: 'images',
    fields: [
        'name', 'url',
        {name:'size', type: 'float'},
        {name:'lastmod', type:'date', dateFormat:'timestamp'}
    ]
});
store.load();

var listView = new ext.ListView({
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
var panel = new ext.Panel({
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
 * </code></pre>
*/
public class ListView extends DataView {
/**
 * @constructor
 * @param config
 * @xtype listview
 */
public function ListView(config : Object) {
  super(config);
}
    /**
     * Set this property to <code>true</code> to disable the header click handler disabling sort
     * (defaults to <code>false</code>).
     * @property disableHeaders
     */
    /**
     * @cfg {Boolean} hideHeaders
     * <code>true</code> to hide the <b class='link' title='#internalTpl header'>row</b> (defaults to <code>false</code> so
     * the <b class='link' title='#internalTpl header'>row</b> will be shown).
     */
    /**
     * @cfg {String} itemSelector
     * Defaults to <code>'dl'</code> to work with the preconfigured <b><code><b class='link' title='ext.DataView#tpl'>tpl</b></code></b>.
     * This setting specifies the CSS selector (e.g. <code>div.some-class</code> or <code>span:first-child</code>)
     * that will be used to determine what nodes the ListView will be working with.   
     */
    public var itemSelector : String;
    /**
     * @cfg {String} selectedClass The CSS class applied to a selected row (defaults to
     * <code>'x-list-selected'</code>). An example overriding the default styling:
    <pre><code>
    .x-list-selected {background-color: yellow;}
    </code></pre>
     */
    //public var selectedClass : String;
    /**
     * @cfg {String} overClass The CSS class applied when over a row (defaults to
     * <code>'x-list-over'</code>). An example overriding the default styling:
    <pre><code>
    .x-list-over {background-color: orange;}
    </code></pre>
     */
    public var overClass : String;
    /**
     * @cfg {Boolean} reserveScrollOffset
     * By default will defer accounting for the configured <b><code><b class='link' title='#scrollOffset'>scrollOffset</b></code></b>
     * for 10 milliseconds.  Specify <code>true</code> to account for the configured
     * <b><code><b class='link' title='#scrollOffset'>scrollOffset</b></code></b> immediately.
     */
    /**
     * @cfg {Number} scrollOffset The amount of space to reserve for the scrollbar (defaults to
     * <code>19</code> pixels)
     */
    public var scrollOffset  : Number;
    /**
     * @cfg {Boolean/Object} columnResize
     * Specify <code>true</code> or specify a configuration object for <b class='link'>ext.listview.ColumnResizer</b>
     * to enable the columns to be resizable (defaults to <code>true</code>).
     */
    public var columnResize : *;
    /**
     * @cfg {Array} columns An array of column configuration objects, for example:
     * <pre><code>
{
    align: 'right',
    dataIndex: 'size',
    header: 'Size',
    tpl: '{size:fileSize}',
    width: .35
}
     * </code></pre> 
     * Acceptable properties for each column configuration object are:
     * <div class="mdetail-params"><ul>
     * <li><b><code>align</code></b> : String<div class="sub-desc">Set the CSS text-align property
     * of the column. Defaults to <code>'left'</code>.</div></li>
     * <li><b><code>dataIndex</code></b> : String<div class="sub-desc">See <b class='link'>Ext.grid.Column</b>.
     * <b class='link' title='Ext.grid.Column#dataIndex'>dataIndex</b> for details.</div></li>
     * <li><b><code>header</code></b> : String<div class="sub-desc">See <b class='link'>Ext.grid.Column</b>.
     * <b class='link' title='Ext.grid.Column#header'>header</b> for details.</div></li>
     * <li><b><code>tpl</code></b> : String<div class="sub-desc">Specify a string to pass as the
     * configuration string for <b class='link'>ext.XTemplate</b>.  By default an <b class='link'>ext.XTemplate</b>
     * will be implicitly created using the <code>dataIndex</code>.</div></li>
     * <li><b><code>width</code></b> : Number<div class="sub-desc">Percentage of the container width
     * this column should be allocated.  Columns that have no width specified will be
     * allocated with an equal percentage to fill 100% of the container width.  To easily take
     * advantage of the full container width, leave the width of at least one column undefined.
     * Note that if you do not want to take up the full width of the container, the width of
     * every column needs to be explicitly defined.</div></li>
     * </ul></div>
     */
    /**
     * @cfg {Boolean/Object} columnSort
     * Specify <code>true</code> or specify a configuration object for <b class='link'>ext.listview.Sorter</b>
     * to enable the columns to be sortable (defaults to <code>true</code>).
     */
    public var columnSort : *;
    /**
     * @cfg {String/Array} internalTpl
     * The template to be used for the header row.  See <b class='link' title='#tpl'>tpl</b> for more details.
     */
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    override public native function getTemplateTarget() : void;
    /**
     * <p>Function which can be overridden which returns the data object passed to this
     * view's <b class='link' title='#tpl'>template</b> to render the whole ListView. The returned object 
     * shall contain the following properties:</p>
     * <div class="mdetail-params"><ul>
     * <li><b>columns</b> : String<div class="sub-desc">See <code><b class='link' title='#columns'>columns</b></code></div></li>
     * <li><b>rows</b> : String<div class="sub-desc">See
     * <code><b class='link'>ext.DataView</b>.<b class='link' title='ext.DataView#collectData'>collectData</b></div></li>
     * </ul></div>
     * @param records An Array of <b class='link'>ext.data.Record</b>s to be rendered into the DataView.
     * @param startIndex the index number of the Record being prepared for rendering.
     * @return A data object containing properties to be processed by a repeating
     * XTemplate as described above.
     */
    override public native function collectData(records : Array, startIndex : Number) : Array;
    public native function verifyInternalSize() : void;
    override public native function onResize(w, h, rw, rh) : void;
    override protected native function updateIndexes(sI, eI) : void;
    public native function findHeaderIndex(hd) : void;
    public native function setHdWidths() : void;
}}
