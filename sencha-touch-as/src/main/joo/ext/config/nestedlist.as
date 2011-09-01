package ext.config {

import ext.data.TreeStore;

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
 * <p>This class represents the xtype 'nestedlist' and serves as a
 * typed config object for constructor of class NestedList.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.NestedList
 */
[ExtConfig(target="ext.NestedList", xtype="nestedlist")]
public class nestedlist extends panel {

  public function nestedlist(config:Object = null) {

    super(config);
  }


  /**
   Set to true to alow the user to deselect leaf items via interaction. Defaults to false.
   */
  public native function get allowDeselect():Boolean;

  /**
   * @private
   */
  public native function set allowDeselect(value:Boolean):void;

  /**
   The label to display for the back button. Defaults to "Back".
   */
  public native function get backText():String;

  /**
   * @private
   */
  public native function set backText(value:String):void;

  /**
   Animation to be used during transitions of cards. Any valid value from Ext.anims can be used ('fade', 'slide', 'flip', 'cube', 'pop', 'wipe'). Defaults to 'slide'.
   */
  override public native function get cardSwitchAnimation():*;

  /**
   * @private
   */
  override public native function set cardSwitchAnimation(value:*):void;

  /**
   Number of milliseconds to show the highlight when going back in a list. (Defaults to 200). Passing false will keep the prior list selection.
   */
  public native function get clearSelectionDelay():*;

  /**
   * @private
   */
  public native function set clearSelectionDelay(value:*):void;

  /**
   Display field to use when setting item text and title. This configuration is ignored when overriding getItemTextTpl or getTitleTextTpl for the item text or title. (Defaults to 'text')
   */
  public native function get displayField():String;

  /**
   * @private
   */
  public native function set displayField(value:String):void;

  /**
   Empty text to display when a subtree is empty.
   */
  public native function get emptyText():String;

  /**
   * @private
   */
  public native function set emptyText(value:String):void;

  /**
   Loading text to display when a subtree is loading.
   */
  public native function get loadingText():String;

  /**
   * @private
   */
  public native function set loadingText(value:String):void;

  /**
   Maps to the Ext.List onItemDisclosure configuration for individual lists. (Defaults to false)
   */
  public native function get onItemDisclosure():*;

  /**
   * @private
   */
  public native function set onItemDisclosure(value:*):void;

  /**
   The <a href="Ext.data.TreeStore.html">Ext.data.TreeStore</a> to bind this NestedList to.
   */
  public native function get store():TreeStore;

  /**
   * @private
   */
  public native function set store(value:TreeStore):void;

  /**
   Configuration for the Ext.Toolbar that is created within the Ext.NestedList.
   */
  public native function get toolbar():Object;

  /**
   * @private
   */
  public native function set toolbar(value:Object):void;

  /**
   Update the title with the currently selected category. Defaults to true.
   */
  public native function get updateTitleText():Boolean;

  /**
   * @private
   */
  public native function set updateTitleText(value:Boolean):void;

  /**

   */
  public native function get useTitleAsBackText():Boolean;

  /**
   * @private
   */
  public native function set useTitleAsBackText(value:Boolean):void;

  /**
   True to show the header toolbar. Defaults to true.
   */
  public native function get useToolbar():Boolean;

  /**
   * @private
   */
  public native function set useToolbar(value:Boolean):void;


}
}
    