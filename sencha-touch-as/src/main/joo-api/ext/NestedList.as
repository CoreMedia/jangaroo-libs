package ext {

import ext.config.nestedlist;
import ext.form.Number;

import js.HTMLElement;

/**
 * Fires before a selection is made. If any handlers return false, the selection is cancelled.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>list:ext.List</code>
 The Ext.List that is currently active
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
 * Fires when a tap occurs and it is not on a template node.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>list:ext.List</code>
 The Ext.List that is currently active
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The raw event object
 *       </li>

 * </ul>
 */
[Event(name="containertap")]

/**
 * Fires when a node is double tapped on
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>list:ext.List</code>
 The Ext.List that is currently active
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index of the item that was tapped
 *       </li>

 *       <li>
 *           <code>item:ext.Element</code>
 The item element
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="itemdoubletap")]

/**
 * Fires when a node is tapped on
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>list:ext.List</code>
 The Ext.List that is currently active
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index of the item that was tapped
 *       </li>

 *       <li>
 *           <code>item:ext.Element</code>
 The item element
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="itemtap")]

/**
 * Fires when the user taps a leaf list item
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>subList:ext.List</code>
 The subList the item is on
 *       </li>

 *       <li>
 *           <code>subIdx:ext.form.Number</code>
 The id of the item tapped
 *       </li>

 *       <li>
 *           <code>el:ext.Element</code>
 The element of the item tapped
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event
 *       </li>

 *       <li>
 *           <code>card:ext.Panel</code>
 The next card to be shown
 *       </li>

 * </ul>
 */
[Event(name="leafitemtap")]

/**
 * Fires when the user taps a list item
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.NestedList</code>

 *       </li>

 *       <li>
 *           <code>listitem:Object</code>

 *       </li>

 * </ul>
 */
[Event(name="listchange")]

/**
 * Fires when the selected nodes change.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>list:ext.List</code>
 The Ext.List that is currently active
 *       </li>

 *       <li>
 *           <code>selections:Array</code>
 Array of the selected nodes
 *       </li>

 * </ul>
 */
[Event(name="selectionchange")]


/**
 * NestedList provides a miller column interface to navigate between nested sets and provide a clean interface with limited screen real-estate.
 <pre><code>// store with data
 var data = {
 text: 'Groceries',
 items: [{
 text: 'Drinks',
 items: [{
 text: 'Water',
 items: [{
 text: 'Sparkling',
 leaf: true
 },{
 text: 'Still',
 leaf: true
 }]
 },{
 text: 'Coffee',
 leaf: true
 },{
 text: 'Espresso',
 leaf: true
 },{
 text: 'Redbull',
 leaf: true
 },{
 text: 'Coke',
 leaf: true
 },{
 text: 'Diet Coke',
 leaf: true
 }]
 },{
 text: 'Fruit',
 items: [{
 text: 'Bananas',
 leaf: true
 },{
 text: 'Lemon',
 leaf: true
 }]
 },{
 text: 'Snacks',
 items: [{
 text: 'Nuts',
 leaf: true
 },{
 text: 'Pretzels',
 leaf: true
 },{
 text: 'Wasabi Peas',
 leaf: true
 }]
 },{
 text: 'Empty Category',
 items: []
 }]
 };
 Ext.regModel('ListItem', {
 fields: [{name: 'text', type: 'string'}]
 });
 var store = new Ext.data.TreeStore({
 model: 'ListItem',
 root: data,
 proxy: {
 type: 'ajax',
 reader: {
 type: 'tree',
 root: 'items'
 }
 }
 });
 var nestedList = new Ext.NestedList({
 fullscreen: true,
 title: 'Groceries',
 displayField: 'text',
 store: store
 });</code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'nestedlist' / the EXML element &lt;nestedlist>.</p>
 * @see ext.config.nestedlist
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#cls-Ext.NestedList Ext JS source
 */
[Native]
public class NestedList extends Panel {

  /**
   * Create a new NestedList.
   *
   * @param config The config object
   * @see ext.config.nestedlist
   */
  public function NestedList(config:nestedlist = null) {
    super(null);
  }

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#prop-Ext.NestedList-backButton Ext JS source
   */
  public native function get backButton():Button;

  /**
   * @private
   */
  public native function set backButton(value:Button):void;

  /**
   Ext.data.TreeStore
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#prop-Ext.NestedList-store Ext JS source
   */
  public native function get store():Object;

  /**
   * @private
   */
  public native function set store(value:Object):void;

  /**
   Ext.Toolbar shared across each of the lists. This will only exist when useToolbar is true which is the default.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#prop-Ext.NestedList-toolbar Ext JS source
   */
  public native function get toolbar():Object;

  /**
   * @private
   */
  public native function set toolbar(value:Object):void;

  /**
   Set to true to alow the user to deselect leaf items via interaction. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowDeselect():Boolean;

  /**
   The label to display for the back button. Defaults to "Back".
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get backText():String;

  /**
   Number of milliseconds to show the highlight when going back in a list. (Defaults to 200). Passing false will keep the prior list selection.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get clearSelectionDelay():*;

  /**
   Display field to use when setting item text and title. This configuration is ignored when overriding getItemTextTpl or getTitleTextTpl for the item text or title. (Defaults to 'text')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get displayField():String;

  /**
   Empty text to display when a subtree is empty.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get emptyText():String;

  /**
   Loading text to display when a subtree is loading.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get loadingText():String;

  /**
   Maps to the Ext.List onItemDisclosure configuration for individual lists. (Defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get onItemDisclosure():*;

  /**
   Update the title with the currently selected category. Defaults to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get updateTitleText():Boolean;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useTitleAsBackText():Boolean;

  /**
   True to show the header toolbar. Defaults to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useToolbar():Boolean;

  /**
   * Implement getDetailCard to provide a final card for leaf nodes when useDetailCard is enabled. getDetailCard will be passed the currentRecord and the parentRecord. The default implementation will return false
   *
   * @param record
   * @param parentRecord
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#method-Ext.NestedList-getDetailCard Ext JS source
   */
  public native function getDetailCard(record:ext.data.Record, parentRecord:ext.data.Record):void;

  /**
   * Override this method to provide custom template rendering of individual nodes. The template will receive all data within the Record and will also receive whether or not it is a leaf node.
   *
   * @param node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#method-Ext.NestedList-getItemTextTpl Ext JS source
   */
  public native function getItemTextTpl(node:ext.data.Record):void;

  /**
   *
   *
   * @param node The node for the list config
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#method-Ext.NestedList-getListConfig Ext JS source
   */
  public native function getListConfig(node:HTMLElement):void;

  /**
   * Returns the subList for a specified node
   *
   * @param node The node for the subList
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#method-Ext.NestedList-getSubList Ext JS source
   */
  public native function getSubList(node:HTMLElement):void;

  /**
   * Override this method to provide custom template rendering of titles/back buttons when useTitleAsBackText is enabled.
   *
   * @param node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#method-Ext.NestedList-getTitleTextTpl Ext JS source
   */
  public native function getTitleTextTpl(node:ext.data.Record):void;

  /**
   * Called when the <a href="output/Ext.NestedList.html#Ext.NestedList-backButton">backButton</a> has been tapped
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#method-Ext.NestedList-onBackTap Ext JS source
   */
  public native function onBackTap():void;

  /**
   * Called when an list item has been tapped
   *
   * @param subList The subList the item is on
   * @param subIdx The id of the item tapped
   * @param el The element of the item tapped
   * @param e The event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/NestedList.html#method-Ext.NestedList-onItemTap Ext JS source
   */
  public native function onItemTap(subList:List, subIdx:ext.form.Number, el:Element, e:IEventObject):void;

}
}
    