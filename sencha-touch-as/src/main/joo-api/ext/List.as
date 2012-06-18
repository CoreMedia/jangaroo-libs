package ext {

import ext.config.list;

/**
 * Fires when the user taps the disclosure icon on an item
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>record:ext.data.Record</code>
 The record associated with the item
 *       </li>

 *       <li>
 *           <code>node:ext.Element</code>
 The wrapping element of this node
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index of this list item
 *       </li>

 *       <li>
 *           <code>e:ext.util.Event</code>
 The tap event that caused this disclose to fire
 *       </li>

 * </ul>
 */
[Event(name="disclose")]

/**
 * Fires whenever the contents of the List is updated.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>list:ext.List</code>
 This list
 *       </li>

 * </ul>
 */
[Event(name="update")]


/**
 * A mechanism for displaying data using a list layout template. List uses an <a href="Ext.XTemplate.html">Ext.XTemplate</a> as its internal templating mechanism, and is bound to an <a href="Ext.data.Store.html">Ext.data.Store</a> so that as the data in the store changes the view is automatically updated to reflect the changes.
 <p>The view also provides built-in behavior for many common events that can occur for its contained items including itemtap, containertap, etc. as well as a built-in selection model. <b>In order to use these features, an <a href="output/Ext.List.html#Ext.List-itemSelector">itemSelector</a> config must be provided for the DataView to determine what nodes it will be working with.</b></p><h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.List.html#Ext.List-itemTpl">itemTpl</a></li><li><a href="output/Ext.List.html#Ext.List-store">store</a></li><li><a href="output/Ext.List.html#Ext.List-grouped">grouped</a></li><li><a href="output/Ext.List.html#Ext.List-indexBar">indexBar</a></li><li><a href="output/Ext.List.html#Ext.List-singleSelect">singleSelect</a></li><li><a href="output/Ext.List.html#Ext.List-multiSelect">multiSelect</a></li></ul><h2>Useful Methods</h2><ul class="list"><li><a href="output/Ext.List.html#Ext.List-bindStore">bindStore</a></li><li><a href="output/Ext.List.html#Ext.List-getRecord">getRecord</a></li><li><a href="output/Ext.List.html#Ext.List-getRecords">getRecords</a></li><li><a href="output/Ext.List.html#Ext.List-getSelectedRecords">getSelectedRecords</a></li><li><a href="output/Ext.List.html#Ext.List-getSelectedNodes">getSelectedNodes</a></li><li><a href="output/Ext.List.html#Ext.List-indexOf">indexOf</a></li></ul><h2>Useful Events</h2><ul class="list"><li><a href="output/Ext.List.html#Ext.List-itemtap">itemtap</a></li><li><a href="output/Ext.List.html#Ext.List-itemdoubletap">itemdoubletap</a></li><li><a href="output/Ext.List.html#Ext.List-itemswipe">itemswipe</a></li><li><a href="output/Ext.List.html#Ext.List-selectionchange">selectionchange</a></li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.List/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>Ext.regModel('Contact', {
 fields: ['firstName', 'lastName']
 });

 var store = new Ext.data.JsonStore({
 model  : 'Contact',
 sorters: 'lastName',

 getGroupString : function(record) {
 return record.get('lastName')[0];
 },

 data: [
 {firstName: 'Tommy',   lastName: 'Maintz'},
 {firstName: 'Rob',     lastName: 'Dougan'},
 {firstName: 'Ed',      lastName: 'Spencer'},
 {firstName: 'Jamie',   lastName: 'Avins'},
 {firstName: 'Aaron',   lastName: 'Conran'},
 {firstName: 'Dave',    lastName: 'Kaneda'},
 {firstName: 'Michael', lastName: 'Mullany'},
 {firstName: 'Abraham', lastName: 'Elias'},
 {firstName: 'Jay',     lastName: 'Robinson'}
 ]
 });

 var list = new Ext.List({
 fullscreen: true,

 itemTpl : '{firstName} {lastName}',
 grouped : true,
 indexBar: true,

 store: store
 });
 list.show();
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'list' / the EXML element &lt;list>.</p>
 * @see ext.config.list
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/List.html#cls-Ext.List Ext JS source
 */
[Native]
public class List extends DataView {

  /**
   * Create a new List
   *
   * @param config The config object
   * @see ext.config.list
   */
  public function List(config:list) {
    super(null);
  }

  /**
   True to clear any selections on the list when the list is deactivated (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get clearSelectionOnDeactivate():Boolean;

  /**
   True to group the list items together (defaults to false). When using grouping, you must specify a method getGroupString on the store so that grouping can be maintained. <pre><code>Ext.regModel('Contact', {
   fields: ['firstName', 'lastName']
   });

   var store = new Ext.data.JsonStore({
   model  : 'Contact',
   sorters: 'lastName',

   getGroupString : function(record) {
   // Group by the last name
   return record.get('lastName')[0];
   },

   data: [
   {firstName: 'Tommy',   lastName: 'Maintz'},
   {firstName: 'Rob',     lastName: 'Dougan'},
   {firstName: 'Ed',      lastName: 'Spencer'},
   {firstName: 'Jamie',   lastName: 'Avins'},
   {firstName: 'Aaron',   lastName: 'Conran'},
   {firstName: 'Dave',    lastName: 'Kaneda'},
   {firstName: 'Michael', lastName: 'Mullany'},
   {firstName: 'Abraham', lastName: 'Elias'},
   {firstName: 'Jay',     lastName: 'Robinson'},
   {firstName: 'Tommy',   lastName: 'Maintz'},
   {firstName: 'Rob',     lastName: 'Dougan'},
   {firstName: 'Ed',      lastName: 'Spencer'},
   {firstName: 'Jamie',   lastName: 'Avins'},
   {firstName: 'Aaron',   lastName: 'Conran'},
   {firstName: 'Dave',    lastName: 'Kaneda'},
   {firstName: 'Michael', lastName: 'Mullany'},
   {firstName: 'Abraham', lastName: 'Elias'},
   {firstName: 'Jay',     lastName: 'Robinson'}
   ]
   });
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get grouped():Boolean;

  /**
   True to render an alphabet IndexBar docked on the right. This can also be a config object that will be passed to <a href="Ext.IndexBar.html">Ext.IndexBar</a> (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get indexBar():*;

  /**
   An additional class that will be added to each item in the List. Defaults to ''.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get itemCls():String;

  /**
   The inner portion of the item template to be rendered. Follows an XTemplate structure and will be placed inside of a tpl for in the tpl configuration.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get itemTpl():*;

  /**
   True to display a disclosure icon on each list item. This won't bind a listener to the tap event. The list will still fire the disclose event though. By setting this config to a function, it will automatically add a tap event listeners to the disclosure buttons which will fire your function. Finally you can specify an object with a 'scope' and 'handler' property defined. This will also be bound to the tap event listener and is useful when you want to change the scope of the handler.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get onItemDisclosure():*;

  /**
   Whether or not to pin headers on top of item groups while scrolling for an iPhone native list experience. Defaults to <tt>false</tt> on Android and Blackberry (for performance reasons) Defaults to <tt>true</tt> on other devices.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pinHeaders():Boolean;

  /**
   True to prevent the item selection when the user taps a disclose icon. Defaults to <tt>true</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get preventSelectionOnDisclose():Boolean;

  /**
   * Set the current active group
   *
   * @param group The group to set active
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/List.html#method-Ext.List-setActiveGroup Ext JS source
   */
  public native function setActiveGroup(group:Object):void;

}
}
    