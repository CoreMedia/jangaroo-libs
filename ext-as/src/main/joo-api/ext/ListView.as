package ext {
/**
 * <p>ext.ListView is a fast and light-weight implentation of a
 * <b class='link' title='Ext.grid.GridPanel'>Grid</b> like view with the following characteristics:</p>
 * <div class="mdetail-params"><ul>
 * <li>resizable columns</li>
 * <li>selectable</li>
 * <li>column widths are initially proportioned by percentage based on the container
 * width and number of columns</li>
 * <li>uses templates to render the data in any required format</li>
 * <li>no horizontal scrolling</li>
 * <li>no editing</li>
 * </ul></div>
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
     * Set this property to <tt>true</tt> to disable the header click handler disabling sort
     * (defaults to <tt>false</tt>).
     * @property disableHeaders
     */
    /**
     * @cfg {Boolean} hideHeaders
     * <tt>true</tt> to hide the <b class='link' title='#internalTpl header'>row</b> (defaults to <tt>false</tt> so
     * the <b class='link' title='#internalTpl header'>row</b> will be shown).
     */
    /**
     * @cfg {String} itemSelector
     * Defaults to <tt>'dl'</tt> to work with the preconfigured <b><tt><b class='link' title='ext.DataView#tpl'>tpl</b></tt></b>.
     * This setting specifies the CSS selector (e.g. <tt>div.some-class</tt> or <tt>span:first-child</tt>)
     * that will be used to determine what nodes the ListView will be working with.   
     */
    public var itemSelector : String;
    /**
     * @cfg {String} selectedClass The CSS class applied to a selected row (defaults to
     * <tt>'x-list-selected'</tt>). An example overriding the default styling:
    <pre><code>
    .x-list-selected {background-color: yellow;}
    </code></pre>
     */
    //public var selectedClass : String;
    /**
     * @cfg {String} overClass The CSS class applied when over a row (defaults to
     * <tt>'x-list-over'</tt>). An example overriding the default styling:
    <pre><code>
    .x-list-over {background-color: orange;}
    </code></pre>
     */
    public var overClass : String;
    /**
     * @cfg {Boolean} reserveScrollOffset
     * By default will defer accounting for the configured <b><tt><b class='link'>#scrollOffset</b></tt></b>
     * for 10 milliseconds.  Specify <tt>true</tt> to account for the configured
     * <b><tt><b class='link'>#scrollOffset</b></tt></b> immediately.
     */
    /**
     * @cfg {Number} scrollOffset The amount of space to reserve for the scrollbar (defaults to
     * <tt>19</tt> pixels)
     */
    public var scrollOffset  : Number;
    /**
     * @cfg {Boolean/Object} columnResize
     * Specify <tt>true</tt> or specify a configuration object for <b class='link'>ext.listview.ColumnResizer</b>
     * to enable the columns to be resizable (defaults to <tt>true</tt>).
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
     * <li><b><tt>align</tt></b> : String<div class="sub-desc">Set the CSS text-align property
     * of the column. Defaults to <tt>'left'</tt>.</div></li>
     * <li><b><tt>dataIndex</tt></b> : String<div class="sub-desc">See <b class='link'>Ext.grid.Column</b>.
     * <b class='link' title='Ext.grid.Column#dataIndex'>dataIndex</b> for details.</div></li>
     * <li><b><tt>header</tt></b> : String<div class="sub-desc">See <b class='link'>Ext.grid.Column</b>.
     * <b class='link' title='Ext.grid.Column#header'>header</b> for details.</div></li>
     * <li><b><tt>tpl</tt></b> : String<div class="sub-desc">Specify a string to pass as the
     * configuration string for <b class='link'>ext.XTemplate</b>.  By default an <b class='link'>ext.XTemplate</b>
     * will be implicitly created using the <tt>dataIndex</tt>.</div></li>
     * <li><b><tt>width</tt></b> : Number<div class="sub-desc">Percentage of the container width
     * this column should be allocated.  Columns that have no width specified will be
     * allocated with an equal percentage to fill 100% of the container width.  To easily take
     * advantage of the full container width, leave the width of at least one column undefined.
     * Note that if you do not want to take up the full width of the container, the width of
     * every column needs to be explicitly defined.</div></li>
     * </ul></div>
     */
    /**
     * @cfg {Boolean/Object} columnSort
     * Specify <tt>true</tt> or specify a configuration object for <b class='link'>ext.listview.Sorter</b>
     * to enable the columns to be sortable (defaults to <tt>true</tt>).
     */
    public var columnSort : *;
    /**
     * @cfg {String/Array} internalTpl
     * The template to be used for the header row.  See <b class='link'>#tpl</b> for more details.
     */
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    override public native function getTemplateTarget() : void;
    /**
     * <p>Function which can be overridden which returns the data object passed to this
     * view's <b class='link' title='#tpl'>template</b> to render the whole ListView. The returned object 
     * shall contain the following properties:</p>
     * <div class="mdetail-params"><ul>
     * <li><b>columns</b> : String<div class="sub-desc">See <tt><b class='link'>#columns</b></tt></div></li>
     * <li><b>rows</b> : String<div class="sub-desc">See
     * <tt><b class='link'>ext.DataView</b>.<b class='link' title='ext.DataView#collectData'>collectData</b></div></li>
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
