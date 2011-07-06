package ext {

import ext.data.Record;
import ext.data.Store;

import js.HTMLElement;

/**
 * Fires before a click is processed. Returns false to cancel the default action.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the target node
 *       </li>

 *       <li>
 *           <code>node:js.HTMLElement</code>
 The target node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The raw event object
 *       </li>

 * </ul>
 */
[Event(name="beforeclick")]

/**
 * Fires before a selection is made. If any handlers return false, the selection is cancelled.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>node:js.HTMLElement</code>
 The node to be selected
 *       </li>

 *       <li>
 *           <code>selections:Array</code>
 Array of currently selected nodes
 *       </li>

 * </ul>
 */
[Event(name="beforeselect")]

/**
 * Fires when a template node is clicked.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the target node
 *       </li>

 *       <li>
 *           <code>node:js.HTMLElement</code>
 The target node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The raw event object
 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * Fires when a click occurs and it is not on a template node.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The raw event object
 *       </li>

 * </ul>
 */
[Event(name="containerclick")]

/**
 * Fires when a right click occurs that is not on a template node.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The raw event object
 *       </li>

 * </ul>
 */
[Event(name="containercontextmenu")]

/**
 * Fires when a template node is right clicked.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the target node
 *       </li>

 *       <li>
 *           <code>node:js.HTMLElement</code>
 The target node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The raw event object
 *       </li>

 * </ul>
 */
[Event(name="contextmenu")]

/**
 * Fires when a template node is double clicked.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the target node
 *       </li>

 *       <li>
 *           <code>node:js.HTMLElement</code>
 The target node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The raw event object
 *       </li>

 * </ul>
 */
[Event(name="dblclick")]

/**
 * Fires when the mouse enters a template node. trackOver:true or an overClass must be set to enable this event.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the target node
 *       </li>

 *       <li>
 *           <code>node:js.HTMLElement</code>
 The target node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The raw event object
 *       </li>

 * </ul>
 */
[Event(name="mouseenter")]

/**
 * Fires when the mouse leaves a template node. trackOver:true or an overClass must be set to enable this event.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the target node
 *       </li>

 *       <li>
 *           <code>node:js.HTMLElement</code>
 The target node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The raw event object
 *       </li>

 * </ul>
 */
[Event(name="mouseleave")]

/**
 * Fires when the selected nodes change.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.DataView</code>

 *       </li>

 *       <li>
 *           <code>selections:Array</code>
 Array of the selected nodes
 *       </li>

 * </ul>
 */
[Event(name="selectionchange")]


/**
 * A mechanism for displaying data using custom layout templates and formatting. DataView uses an <a href="Ext.XTemplate.html">Ext.XTemplate</a> as its internal templating mechanism, and is bound to an <a href="Ext.data.Store.html">Ext.data.Store</a> so that as the data in the store changes the view is automatically updated to reflect the changes. The view also provides built-in behavior for many common events that can occur for its contained items including click, doubleclick, mouseover, mouseout, etc. as well as a built-in selection model. <b>In order to use these features, an <a href="output/Ext.DataView.html#Ext.DataView-itemSelector">itemSelector</a> config must be provided for the DataView to determine what nodes it will be working with.</b> <p>The example below binds a DataView to a <a href="Ext.data.Store.html">Ext.data.Store</a> and renders it into an <a href="Ext.Panel.html">Ext.Panel</a>.</p><pre><code>var store = new Ext.data.JsonStore({
 url: 'get-images.php',
 root: 'images',
 fields: [
 'name', 'url',
 {name:'size', type: 'float'},
 {name:'lastmod', type:'date', dateFormat:'timestamp'}
 ]
 });
 store.load();

 var tpl = new Ext.XTemplate(
 '&lt;tpl for="."&gt;',
 '&lt;div class="thumb-wrap" id="{name}"&gt;',
 '&lt;div class="thumb"&gt;&lt;img src="{url}" title="{name}"&gt;&lt;/div&gt;',
 '&lt;span class="x-editable"&gt;{shortName}&lt;/span&gt;&lt;/div&gt;',
 '&lt;/tpl&gt;',
 '&lt;div class="x-clear"&gt;&lt;/div&gt;'
 );

 var panel = new Ext.Panel({
 id:'images-view',
 frame:true,
 width:535,
 autoHeight:true,
 collapsible:true,
 layout:'fit',
 title:'Simple DataView',

 items: new Ext.DataView({
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
 * <p>This component is created by the xtype 'dataview' / the EXML element &lt;dataview>.</p>
 * @see ext.config.dataview
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#cls-Ext.DataView Ext JS source
 */
public class DataView extends BoxComponent {

  /**
   * Create a new DataView
   *
   * @param config The config object
   * @see ext.config.dataview
   */
  public function DataView(config:Object) {
    super(null);
  }

  /**
   Set this to true to ignore datachanged events on the bound store. This is useful if you wish to provide custom transition animations via a plugin (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get blockRefresh():Boolean;

  /**
   True to defer emptyText being applied until the store's first load
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get deferEmptyText():Boolean;

  /**
   The text to display in the view when there is no data to display (defaults to '').
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get emptyText():String;

  /**
   <b>This is a required setting</b>. A simple CSS selector (e.g. <tt>div.some-class</tt> or <tt>span:first-child</tt>) that will be used to determine what nodes this DataView will be working with.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get itemSelector():String;

  /**
   A string to display during data load operations (defaults to undefined). If specified, this text will be displayed in a loading div and the view's contents will be cleared while loading, otherwise the view's contents will continue to display normally until the new data is loaded and the contents are replaced.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get loadingText():String;

  /**
   True to allow selection of more than one item at a time, false to allow selection of only a single item at a time or no selection at all, depending on the value of <a href="output/Ext.DataView.html#Ext.DataView-singleSelect">singleSelect</a> (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get multiSelect():Boolean;

  /**
   A CSS class to apply to each item in the view on mouseover (defaults to undefined).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get overClass():String;

  /**
   A CSS class to apply to each selected item in the view (defaults to 'x-view-selected').
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get selectedClass():String;

  /**
   True to enable multiselection by clicking on multiple items without requiring the user to hold Shift or Ctrl, false to force the user to hold Ctrl or Shift to select more than on item (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get simpleSelect():Boolean;

  /**
   True to allow selection of exactly one item at a time, false to allow no selection at all (defaults to false). Note that if <a href="output/Ext.DataView.html#Ext.DataView-multiSelect">multiSelect</a> = true, this value will be ignored.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get singleSelect():Boolean;

  /**
   True to enable mouseenter and mouseleave events
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get trackOver():Boolean;

  /**
   * Changes the data store bound to this view and refreshes it.
   *
   * @param store The store to bind to this view
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-bindStore Ext JS source
   */
  public native function bindStore(store:Store):void;

  /**
   * Clears all selections.
   *
   * @param suppressEvent True to skip firing of the selectionchange event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-clearSelections Ext JS source
   */
  public native function clearSelections(suppressEvent:Boolean = false):void;

  /**
   * Function which can be overridden which returns the data object passed to this DataView's <a href="output/Ext.DataView.html#Ext.DataView-tpl">template</a> to render the whole DataView.
   <p>This is usually an Array of data objects, each element of which is processed by an <a href="Ext.XTemplate.html">XTemplate</a> which uses <tt>'&lt;tpl for="."&gt;'</tt> to iterate over its supplied data object as an Array. However, <i>named</i> properties may be placed into the data object to provide non-repeating data such as headings, totals etc.</p>
   *
   * @param records An Array of <a href="Ext.data.Record.html">Ext.data.Record</a>s to be rendered into the DataView.
   * @param startIndex the index number of the Record being prepared for rendering.
   * @return An Array of data objects to be processed by a repeating XTemplate. May also contain <i>named</i> properties.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-collectData Ext JS source
   */
  public native function collectData(records:Array, startIndex:Number):Array;

  /**
   * Deselects a node.
   *
   * @param node The node, node index or record to deselect
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-deselect Ext JS source
   */
  public native function deselect(node:*):void;

  /**
   * Returns the template node the passed child belongs to, or null if it doesn't belong to one.
   *
   * @param node
   * @return The template node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-findItemFromChild Ext JS source
   */
  public native function findItemFromChild(node:HTMLElement):HTMLElement;

  /**
   * Gets a template node.
   *
   * @param nodeInfo An HTMLElement template node, index of a template node, the id of a template node or the record associated with the node.
   * @return The node or null if it wasn't found
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-getNode Ext JS source
   */
  public native function getNode(nodeInfo:*):HTMLElement;

  /**
   * Gets a range nodes.
   *
   * @param start The index of the first node in the range
   * @param end The index of the last node in the range
   * @return An array of nodes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-getNodes Ext JS source
   */
  public native function getNodes(start:Number = undefined, end:Number = undefined):Array;

  /**
   * Gets a record from a node
   *
   * @param node The node to evaluate
   * @return record The <a href="Ext.data.Record.html">Ext.data.Record</a> object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-getRecord Ext JS source
   */
  public native function getRecord(node:HTMLElement):Record;

  /**
   * Gets an array of the records from an array of nodes
   *
   * @param nodes The nodes to evaluate
   * @return records The <a href="Ext.data.Record.html">Ext.data.Record</a> objects
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-getRecords Ext JS source
   */
  public native function getRecords(nodes:Array):Array;

  /**
   * Gets the indexes of the selected nodes.
   *
   * @return An array of numeric indexes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-getSelectedIndexes Ext JS source
   */
  public native function getSelectedIndexes():Array;

  /**
   * Gets the currently selected nodes.
   *
   * @return An array of HTMLElements
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-getSelectedNodes Ext JS source
   */
  public native function getSelectedNodes():Array;

  /**
   * Gets an array of the selected records
   *
   * @return An array of <a href="Ext.data.Record.html">Ext.data.Record</a> objects
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-getSelectedRecords Ext JS source
   */
  public native function getSelectedRecords():Array;

  /**
   * Gets the number of selected nodes.
   *
   * @return The node count
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-getSelectionCount Ext JS source
   */
  public native function getSelectionCount():Number;

  /**
   * Returns the store associated with this DataView.
   *
   * @return The store
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-getStore Ext JS source
   */
  public native function getStore():Store;

  /**
   * Finds the index of the passed node.
   *
   * @param nodeInfo An HTMLElement template node, index of a template node, the id of a template node or a record associated with a node.
   * @return The index of the node or -1
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-indexOf Ext JS source
   */
  public native function indexOf(nodeInfo:*):Number;

  /**
   * Returns true if the passed node is selected, else false.
   *
   * @param node The node, node index or record to check
   * @return True if selected, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-isSelected Ext JS source
   */
  public native function isSelected(node:*):Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-onDataChanged Ext JS source
   */
  public native function onDataChanged():void;

  /**
   * Function which can be overridden to provide custom formatting for each Record that is used by this DataView's <a href="output/Ext.DataView.html#Ext.DataView-tpl">template</a> to render each node.
   *
   * @param data The raw data object that was used to create the Record.
   * @param recordIndex the index number of the Record being prepared for rendering.
   * @param record The Record being prepared for rendering.
   * @return The formatted data in a format expected by the internal <a href="output/Ext.DataView.html#Ext.DataView-tpl">template</a>'s overwrite() method. (either an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'}))
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-prepareData Ext JS source
   */
  public native function prepareData(data:*, recordIndex:Number, record:Record):*;

  /**
   * Refreshes the view by reloading the data from the store and re-rendering the template.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-refresh Ext JS source
   */
  public native function refresh():void;

  /**
   * Refreshes an individual node's data from the store.
   *
   * @param index The item's data index in the store
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-refreshNode Ext JS source
   */
  public native function refreshNode(index:Number):void;

  /**
   * Selects a set of nodes.
   *
   * @param nodeInfo An HTMLElement template node, index of a template node, id of a template node, record associated with a node or an array of any of those to select
   * @param keepExisting true to keep existing selections
   * @param suppressEvent true to skip firing of the selectionchange vent
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-select Ext JS source
   */
  public native function select(nodeInfo:*, keepExisting:Boolean = false, suppressEvent:Boolean = false):void;

  /**
   * Selects a range of nodes. All nodes between start and end are selected.
   *
   * @param start The index of the first node in the range
   * @param end The index of the last node in the range
   * @param keepExisting True to retain existing selections
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-selectRange Ext JS source
   */
  public native function selectRange(start:Number, end:Number, keepExisting:Boolean = false):void;

  /**
   * Changes the data store bound to this view and refreshes it. (deprecated in favor of bindStore)
   *
   * @param store The store to bind to this view
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataView.html#method-Ext.DataView-setStore Ext JS source
   */
  public native function setStore(store:Store):void;

}
}
    