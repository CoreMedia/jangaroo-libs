package ext.config {


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
 * <p>This class represents the xtype 'list' and serves as a
 * typed config object for constructor of class List.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.List
 */
[ExtConfig(target="ext.List", xtype="list")]
public class list extends dataview {

  public function list(config:Object = null) {

    super(config);
  }


  /**
   True to clear any selections on the list when the list is deactivated (defaults to true).
   */
  public native function get clearSelectionOnDeactivate():Boolean;

  /**
   * @private
   */
  public native function set clearSelectionOnDeactivate(value:Boolean):void;

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
   */
  public native function get grouped():Boolean;

  /**
   * @private
   */
  public native function set grouped(value:Boolean):void;

  /**
   True to render an alphabet IndexBar docked on the right. This can also be a config object that will be passed to <a href="Ext.IndexBar.html">Ext.IndexBar</a> (defaults to false)
   */
  public native function get indexBar():*;

  /**
   * @private
   */
  public native function set indexBar(value:*):void;

  /**
   An additional class that will be added to each item in the List. Defaults to ''.
   */
  public native function get itemCls():String;

  /**
   * @private
   */
  public native function set itemCls(value:String):void;

  /**
   The inner portion of the item template to be rendered. Follows an XTemplate structure and will be placed inside of a tpl for in the tpl configuration.
   */
  public native function get itemTpl():*;

  /**
   * @private
   */
  public native function set itemTpl(value:*):void;

  /**
   True to display a disclosure icon on each list item. This won't bind a listener to the tap event. The list will still fire the disclose event though. By setting this config to a function, it will automatically add a tap event listeners to the disclosure buttons which will fire your function. Finally you can specify an object with a 'scope' and 'handler' property defined. This will also be bound to the tap event listener and is useful when you want to change the scope of the handler.
   */
  public native function get onItemDisclosure():*;

  /**
   * @private
   */
  public native function set onItemDisclosure(value:*):void;

  /**
   Whether or not to pin headers on top of item groups while scrolling for an iPhone native list experience. Defaults to <tt>false</tt> on Android and Blackberry (for performance reasons) Defaults to <tt>true</tt> on other devices.
   */
  public native function get pinHeaders():Boolean;

  /**
   * @private
   */
  public native function set pinHeaders(value:Boolean):void;

  /**
   True to prevent the item selection when the user taps a disclose icon. Defaults to <tt>true</tt>
   */
  public native function get preventSelectionOnDisclose():Boolean;

  /**
   * @private
   */
  public native function set preventSelectionOnDisclose(value:Boolean):void;


}
}
    