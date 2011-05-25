package ext {

import ext.data.Record;
import ext.data.Store;
import js.HTMLElement;

/**
 * A mechanism for displaying data using custom layout templates and formatting. DataView uses an <b class='link'>ext.XTemplate</b>
 * as its internal templating mechanism, and is bound to an <b class='link'>ext.data.Store</b>
 * so that as the data in the store changes the view is automatically updated to reflect the changes.  The view also
 * provides built-in behavior for many common events that can occur for its contained items including click, doubleclick,
 * mouseover, mouseout, etc. as well as a built-in selection model. <b>In order to use these features, an <b class='link' title='#itemSelector'>itemSelector</b>
 * config must be provided for the DataView to determine what nodes it will be working with.</b>
 *
 * <p>The example below binds a DataView to a <b class='link'>ext.data.Store</b> and renders it into an <b class='link'>ext.Panel</b>.</p>
 * <pre><code>
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

var tpl = new ext.XTemplate(
    '&lt;tpl for="."&gt;',
        '&lt;div class="thumb-wrap" id="{name}"&gt;',
        '&lt;div class="thumb"&gt;&lt;img src="{url}" title="{name}"&gt;&lt;/div&gt;',
        '&lt;span class="x-editable"&gt;{shortName}&lt;/span&gt;&lt;/div&gt;',
    '&lt;/tpl&gt;',
    '&lt;div class="x-clear"&gt;&lt;/div&gt;'
);

var panel = new ext.Panel({
    id:'images-view',
    frame:true,
    width:535,
    autoHeight:true,
    collapsible:true,
    layout:'fit',
    title:'Simple DataView',

    items: new ext.DataView({
        store: store,
        tpl: tpl,
        autoHeight:true,
        multiSelect: true,
        overClass:'x-view-over',
        itemSelector:'div.thumb-wrap',
        emptyText: 'No images to display'
    })
});
panel.render(document.body);
</code></pre>
*/
public class DataView extends BoxComponent {
/**
 * @constructor
 * Create a new DataView
 * @param config The config object
 * @xtype dataview
 */
public function DataView(config:Object = null) {
  super(config);
}
    /**
     * @cfg {String/Array} tpl
     * The HTML fragment or an array of fragments that will make up the template used by this DataView.  This should
     * be specified in the same format expected by the constructor of <b class='link'>ext.XTemplate</b>.
     */
    /**
     * @cfg {ext.data.Store} store
     * The <b class='link'>ext.data.Store</b> to bind this DataView to.
     */
    /**
     * @cfg {String} itemSelector
     * <b>This is a required setting</b>. A simple CSS selector (e.g. <code>div.some-class</code> or 
     * <code>span:first-child</code>) that will be used to determine what nodes this DataView will be
     * working with.
     */
    /**
     * @cfg {Boolean} multiSelect
     * True to allow selection of more than one item at a time, false to allow selection of only a single item
     * at a time or no selection at all, depending on the value of <b class='link' title='#singleSelect'>singleSelect</b> (defaults to false).
     */
    /**
     * @cfg {Boolean} singleSelect
     * True to allow selection of exactly one item at a time, false to allow no selection at all (defaults to false).
     * Note that if <b class='link' title='#multiSelect'>multiSelect</b> = true, this value will be ignored.
     */
    /**
     * @cfg {Boolean} simpleSelect
     * True to enable multiselection by clicking on multiple items without requiring the user to hold Shift or Ctrl,
     * false to force the user to hold Ctrl or Shift to select more than on item (defaults to false).
     */
    /**
     * @cfg {String} overClass
     * A CSS class to apply to each item in the view on mouseover (defaults to undefined).
     */
    /**
     * @cfg {String} loadingText
     * A string to display during data load operations (defaults to undefined).  If specified, this text will be
     * displayed in a loading div and the view's contents will be cleared while loading, otherwise the view's
     * contents will continue to display normally until the new data is loaded and the contents are replaced.
     */
    /**
     * @cfg {String} selectedClass
     * A CSS class to apply to each selected item in the view (defaults to 'x-view-selected').
     */
    public var selectedClass  : String;
    /**
     * @cfg {String} emptyText
     * The text to display in the view when there is no data to display (defaults to '').
     */
    public var emptyText  : String;
    /**
     * @cfg {Boolean} deferEmptyText True to defer emptyText being applied until the store's first load
     */
    public var deferEmptyText : Boolean;
    /**
     * @cfg {Boolean} trackOver True to enable mouseenter and mouseleave events
     */
    public var trackOver : Boolean;
    protected var last;
    override protected native function initComponent() : void;
    override protected native function afterRender() : void;
    /**
     * Refreshes the view by reloading the data from the store and re-rendering the template.
     */
    public native function refresh() : void;
    public native function getTemplateTarget() : void;
    /**
     * Function which can be overridden to provide custom formatting for each Record that is used by this
     * DataView's <b class='link' title='#tpl'>template</b> to render each node.
     * @param data The raw data object that was used to create the Record.
     * @param recordIndex the index number of the Record being prepared for rendering.
     * @param record The Record being prepared for rendering.
     * @return The formatted data in a format expected by the internal <b class='link' title='#tpl'>template</b>'s overwrite() method.
     * (either an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'}))
     */
    public native function prepareData(data : *, recordIndex : Number, record : Record) : *;
    /**
     * <p>Function which can be overridden which returns the data object passed to this
     * DataView's <b class='link' title='#tpl'>template</b> to render the whole DataView.</p>
     * <p>This is usually an Array of data objects, each element of which is processed by an
     * <b class='link' title='ext.XTemplate'>XTemplate</b> which uses <code>'&lt;tpl for="."&gt;'</code> to iterate over its supplied
     * data object as an Array. However, <i>named</i> properties may be placed into the data object to
     * provide non-repeating data such as headings, totals etc.</p>
     * @param records An Array of <b class='link'>ext.data.Record</b>s to be rendered into the DataView.
     * @param startIndex the index number of the Record being prepared for rendering.
     * @return An Array of data objects to be processed by a repeating XTemplate. May also
     * contain <i>named</i> properties.
     */
    public native function collectData(records : Array, startIndex : Number) : Array;
    protected native function bufferRender(records) : void;
    protected native function onUpdate(ds, record) : void;
    protected native function onAdd(ds, records, index) : void;
    protected native function onRemove(ds, record, index) : void;
    public var store : Store;
    /**
     * Refreshes an individual node's data from the store.
     * @param index The item's data index in the store
     */
    public native function refreshNode(index : Number) : void;
    protected native function updateIndexes(startIndex, endIndex) : void;
    /**
     * Returns the store associated with this DataView.
     * @return The store
     */
    public native function getStore() : Store;
    /**
     * Changes the data store bound to this view and refreshes it.
     * @param store The store to bind to this view
     */
    public native function bindStore(store : Store, initial:Boolean = false) : void;
    /**
     * Returns the template node the passed child belongs to, or null if it doesn't belong to one.
     * @param node
     * @return The template node
     */
    public native function findItemFromChild(node : HTMLElement) : HTMLElement;
    protected native function onClick(e) : void;
    public native function onContainerClick(e) : void;
    protected native function onContextMenu(e) : void;
    protected native function onDblClick(e) : void;
    protected native function onMouseOver(e) : void;
    protected native function onMouseOut(e) : void;
    protected native function onItemClick(item, index, e) : void;
    protected native function doSingleSelection(item, index, e) : void;
    protected native function doMultiSelection(item, index, e) : void;
    /**
     * Gets the number of selected nodes.
     * @return The node count
     */
    public native function getSelectionCount() : Number;
    /**
     * Gets the currently selected nodes.
     * @return An array of HTMLElements
     */
    public native function getSelectedNodes() : Array;
    /**
     * Gets the indexes of the selected nodes.
     * @return An array of numeric indexes
     */
    public native function getSelectedIndexes() : Array;
    /**
     * Gets an array of the selected records
     * @return An array of <b class='link'>ext.data.Record</b> objects
     */
    public native function getSelectedRecords() : Array;
    /**
     * Gets an array of the records from an array of nodes
     * @param nodes The nodes to evaluate
     * @return records The <b class='link'>ext.data.Record</b> objects
     */
    public native function getRecords(nodes : Array) : Array;
    /**
     * Gets a record from a node
     * @param node The node to evaluate
     * @return record The <b class='link'>ext.data.Record</b> object
     */
    public native function getRecord(node : HTMLElement) : Record;
    /**
     * Clears all selections.
     * @param suppressEvent True to skip firing of the selectionchange event
     */
    public native function clearSelections(suppressEvent : Boolean = undefined, skipUpdate = undefined) : void;
    /**
     * Returns true if the passed node is selected, else false.
     * @param node The node or node index to check
     * @return True if selected, else false
     */
    public native function isSelected(node : *) : Boolean;
    /**
     * Deselects a node.
     * @param node The node to deselect
     */
    public native function deselect(node : *) : void;
    /**
     * Selects a set of nodes.
     * @param nodeInfo An HTMLElement template node, index of a template node,
     * id of a template node or an array of any of those to select
     * @param keepExisting true to keep existing selections
     * @param suppressEvent true to skip firing of the selectionchange vent
     */
    public native function select(nodeInfo : *, keepExisting : Boolean = undefined, suppressEvent : Boolean = undefined) : void;
    /**
     * Selects a range of nodes. All nodes between start and end are selected.
     * @param start The index of the first node in the range
     * @param end The index of the last node in the range
     * @param keepExisting True to retain existing selections
     */
    public native function selectRange(start : Number, end : Number, keepExisting : Boolean = undefined) : void;
    /**
     * Gets a template node.
     * @param nodeInfo An HTMLElement template node, index of a template node or the id of a template node
     * @return The node or null if it wasn't found
     */
    public native function getNode(nodeInfo : *) : HTMLElement;
    /**
     * Gets a range nodes.
     * @param start The index of the first node in the range
     * @param end The index of the last node in the range
     * @return An array of nodes
     */
    public native function getNodes(start : Number = undefined, end : Number = undefined) : Array;
    /**
     * Finds the index of the passed node.
     * @param nodeInfo An HTMLElement template node, index of a template node or the id of a template node
     * @return The index of the node or -1
     */
    public native function indexOf(nodeInfo : *) : Number;
    protected native function onBeforeLoad() : void;
    override protected native function onDestroy() : void;
/**
 * Changes the data store bound to this view and refreshes it. (deprecated in favor of bindStore)
 * @param store The store to bind to this view
 */
  public native function setStore(store : Store, initial) : void;
}}
