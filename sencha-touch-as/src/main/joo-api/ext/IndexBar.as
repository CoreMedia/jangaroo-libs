package ext {

import ext.config.indexbar;
import ext.data.Store;

/**
 * Fires when an item in the index bar display has been tapped
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>record:ext.data.Model</code>
 The record tapped on the indexbar
 *       </li>

 *       <li>
 *           <code>target:js.HTMLElement</code>
 The node on the indexbar that has been tapped
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index of the record tapped on the indexbar
 *       </li>

 * </ul>
 */
[Event(name="index")]


/**
 * IndexBar is a component used to display a list of data (primarily an <a href="output/Ext.IndexBar.html#Ext.IndexBar-alphabet">alphabet</a>) which can then be used to quickly navigate through a list (see <a href="Ext.List.html">Ext.List</a>) of data. When a user taps on an item in the <a href="Ext.IndexBar.html">Ext.IndexBar</a>, it will fire the <tt><a href="output/Ext.IndexBar.html#Ext.IndexBar-index">index</a></tt> event.
 <h2>Screenshot:</h2><p><img src="doc_resources/Ext.IndexBar/screenshot.png" alt=""/></p><h2>Example code:</h2><p>Here is an example of the usage in a <a href="Ext.List.html">Ext.List</a>:</p><pre><code>Ext.regModel('Contact', {
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

 var list = new Ext.List({
 tpl: '&lt;tpl for="."&gt;&lt;div class="contact"&gt;{firstName} &lt;strong&gt;{lastName}&lt;/strong&gt;&lt;/div&gt;&lt;/tpl&gt;',

 itemSelector: 'div.contact',
 singleSelect: true,
 grouped     : true,
 indexBar    : true,

 store: store,

 floating     : true,
 width        : 350,
 height       : 370,
 centered     : true,
 modal        : true,
 hideOnMaskTap: false
 });
 list.show();
 </code></pre><p>Alternatively you can initate the <a href="Ext.IndexBar.html">Ext.IndexBar</a> component manually in a custom component by using something similar to the following example:</p><pre><code>var indexBar = new Ext.IndexBar({
 dock    : 'right',
 overlay : true,
 alphabet: true
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'indexbar' / the EXML element &lt;indexbar>.</p>
 * @see ext.config.indexbar
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/IndexBar.html#cls-Ext.IndexBar Ext JS source
 */
public class IndexBar extends ext.DataPanel {

  /**
   * Create a new IndexBar
   *
   * @param config The config object
   * @see ext.config.indexbar
   */
  public function IndexBar(config:indexbar) {
    super();
  }

  /**
   true to use the <a href="output/Ext.IndexBar.html#Ext.IndexBar-letters">letters</a> property to show a list of the alphabet. Should <b>not</b> be used in conjunction with <a href="output/Ext.IndexBar.html#Ext.IndexBar-store">store</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get alphabet():Boolean;

  /**
   Base CSS class Defaults to <tt>'x-indexbar'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get componentCls():String;

  /**
   Layout direction, can be either 'vertical' or 'horizontal' Defaults to <tt>'vertical'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get direction():String;

  /**
   <b>Required</b>. A simple CSS selector (e.g. <tt>div.x-indexbar-item</tt> for items
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get itemSelector():String;

  /**
   The letters to show on the index bar. Defaults to the English alphabet, A-Z.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get letters():Array;

  /**
   The prefix string to be appended at the beginning of the list. E.g: useful to add a "#" prefix before numbers
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get listPrefix():String;

  /**
   The store to be used for displaying data on the index bar. The store model must have a <tt>value</tt> field when using the default <a href="output/Ext.IndexBar.html#Ext.IndexBar-tpl">tpl</a>. If no <a href="output/Ext.IndexBar.html#Ext.IndexBar-store">store</a> is defined, it will create a store using the <tt>IndexBarModel</tt> model.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get store():Store;

  /**
   Template for items
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tpl():String;

  /**
   * Method to determine whether this Sortable is currently sorting.
   *
   * @return the sorting state of this Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/IndexBar.html#method-Ext.IndexBar-isHorizontal Ext JS source
   */
  public native function isHorizontal():Boolean;

  /**
   * Method to determine whether this Sortable is currently disabled.
   *
   * @return the disabled state of this Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/IndexBar.html#method-Ext.IndexBar-isVertical Ext JS source
   */
  public native function isVertical():Boolean;

  /**
   * Refreshes the view by reloading the data from the store and re-rendering the template.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/IndexBar.html#method-Ext.IndexBar-refresh Ext JS source
   */
  public native function refresh():void;

}
}
    