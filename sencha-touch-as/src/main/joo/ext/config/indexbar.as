package ext.config {

import ext.data.Store;

import joo.JavaScriptObject;

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
 * <p>This class represents the xtype 'indexbar' and serves as a
 * typed config object for constructor of class IndexBar.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.IndexBar
 */
[ExtConfig(target="ext.IndexBar", xtype="indexbar")]
public class indexbar extends JavaScriptObject {

  public function indexbar(config:Object = null) {

    super(config);
  }


  /**
   true to use the <a href="output/Ext.IndexBar.html#Ext.IndexBar-letters">letters</a> property to show a list of the alphabet. Should <b>not</b> be used in conjunction with <a href="output/Ext.IndexBar.html#Ext.IndexBar-store">store</a>.
   */
  public native function get alphabet():Boolean;

  /**
   * @private
   */
  public native function set alphabet(value:Boolean):void;

  /**
   Base CSS class Defaults to <tt>'x-indexbar'</tt>
   */
  public native function get componentCls():String;

  /**
   * @private
   */
  public native function set componentCls(value:String):void;

  /**
   Layout direction, can be either 'vertical' or 'horizontal' Defaults to <tt>'vertical'</tt>
   */
  public native function get direction():String;

  /**
   * @private
   */
  public native function set direction(value:String):void;

  /**
   <b>Required</b>. A simple CSS selector (e.g. <tt>div.x-indexbar-item</tt> for items
   */
  public native function get itemSelector():String;

  /**
   * @private
   */
  public native function set itemSelector(value:String):void;

  /**
   The letters to show on the index bar. Defaults to the English alphabet, A-Z.
   */
  public native function get letters():Array;

  /**
   * @private
   */
  public native function set letters(value:Array):void;

  /**
   The prefix string to be appended at the beginning of the list. E.g: useful to add a "#" prefix before numbers
   */
  public native function get listPrefix():String;

  /**
   * @private
   */
  public native function set listPrefix(value:String):void;

  /**
   The store to be used for displaying data on the index bar. The store model must have a <tt>value</tt> field when using the default <a href="output/Ext.IndexBar.html#Ext.IndexBar-tpl">tpl</a>. If no <a href="output/Ext.IndexBar.html#Ext.IndexBar-store">store</a> is defined, it will create a store using the <tt>IndexBarModel</tt> model.
   */
  public native function get store():Store;

  /**
   * @private
   */
  public native function set store(value:Store):void;

  /**
   Template for items
   */
  public native function get tpl():String;

  /**
   * @private
   */
  public native function set tpl(value:String):void;


}
}
    