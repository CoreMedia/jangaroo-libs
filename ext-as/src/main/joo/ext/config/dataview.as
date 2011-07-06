package ext.config {

import ext.data.Store;

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
 * <p>This class serves as a typed config object for constructor of class DataView.</p>
 *
 * @see ext.DataView
 */
[ExtConfig(target="ext.DataView")]
public class dataview extends box {

  public function dataview(config:Object = null) {

    super(config);
  }


  /**
   Set this to true to ignore datachanged events on the bound store. This is useful if you wish to provide custom transition animations via a plugin (defaults to false)
   */
  public native function get blockRefresh():Boolean;

  /**
   * @private
   */
  public native function set blockRefresh(value:Boolean):void;

  /**
   True to defer emptyText being applied until the store's first load
   */
  public native function get deferEmptyText():Boolean;

  /**
   * @private
   */
  public native function set deferEmptyText(value:Boolean):void;

  /**
   The text to display in the view when there is no data to display (defaults to '').
   */
  public native function get emptyText():String;

  /**
   * @private
   */
  public native function set emptyText(value:String):void;

  /**
   <b>This is a required setting</b>. A simple CSS selector (e.g. <tt>div.some-class</tt> or <tt>span:first-child</tt>) that will be used to determine what nodes this DataView will be working with.
   */
  public native function get itemSelector():String;

  /**
   * @private
   */
  public native function set itemSelector(value:String):void;

  /**
   A string to display during data load operations (defaults to undefined). If specified, this text will be displayed in a loading div and the view's contents will be cleared while loading, otherwise the view's contents will continue to display normally until the new data is loaded and the contents are replaced.
   */
  public native function get loadingText():String;

  /**
   * @private
   */
  public native function set loadingText(value:String):void;

  /**
   True to allow selection of more than one item at a time, false to allow selection of only a single item at a time or no selection at all, depending on the value of <a href="output/Ext.DataView.html#Ext.DataView-singleSelect">singleSelect</a> (defaults to false).
   */
  public native function get multiSelect():Boolean;

  /**
   * @private
   */
  public native function set multiSelect(value:Boolean):void;

  /**
   A CSS class to apply to each item in the view on mouseover (defaults to undefined).
   */
  public native function get overClass():String;

  /**
   * @private
   */
  public native function set overClass(value:String):void;

  /**
   A CSS class to apply to each selected item in the view (defaults to 'x-view-selected').
   */
  public native function get selectedClass():String;

  /**
   * @private
   */
  public native function set selectedClass(value:String):void;

  /**
   True to enable multiselection by clicking on multiple items without requiring the user to hold Shift or Ctrl, false to force the user to hold Ctrl or Shift to select more than on item (defaults to false).
   */
  public native function get simpleSelect():Boolean;

  /**
   * @private
   */
  public native function set simpleSelect(value:Boolean):void;

  /**
   True to allow selection of exactly one item at a time, false to allow no selection at all (defaults to false). Note that if <a href="output/Ext.DataView.html#Ext.DataView-multiSelect">multiSelect</a> = true, this value will be ignored.
   */
  public native function get singleSelect():Boolean;

  /**
   * @private
   */
  public native function set singleSelect(value:Boolean):void;

  /**
   The <a href="Ext.data.Store.html">Ext.data.Store</a> to bind this DataView to.
   */
  public native function get store():Store;

  /**
   * @private
   */
  public native function set store(value:Store):void;

  /**
   The HTML fragment or an array of fragments that will make up the template used by this DataView. This should be specified in the same format expected by the constructor of <a href="Ext.XTemplate.html">Ext.XTemplate</a>.
   */
  override public native function get tpl():*;

  /**
   * @private
   */
  override public native function set tpl(value:*):void;

  /**
   True to enable mouseenter and mouseleave events
   */
  public native function get trackOver():Boolean;

  /**
   * @private
   */
  public native function set trackOver(value:Boolean):void;


}
}
    