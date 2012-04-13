package ext {
import ext.config.toolbar;
import ext.form.Field;
import ext.toolbar.Item;
import ext.toolbar.Spacer;

/**
 * Fires after the overflow state has changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>c:Object</code>
 The Container
 *       </li>

 *       <li>
 *           <code>lastOverflow:Boolean</code>
 overflow state
 *       </li>

 * </ul>
 */
[Event(name="overflowchange")]


/**
 * Basic Toolbar class. Although the <tt><a href="output/Ext.Container.html#Ext.Container-defaultType">defaultType</a></tt> for Toolbar is <tt><a href="Ext.Button.html">button</a></tt>, Toolbar elements (child items for the Toolbar container) may be virtually any type of Component. Toolbar elements can be created explicitly via their constructors, or implicitly via their xtypes, and can be <tt><a href="output/Ext.Toolbar.html#Ext.Toolbar-add">add</a></tt>ed dynamically.
 <p>Some items have shortcut strings for creation:</p><pre><u>Shortcut</u>  <u>xtype</u>          <u>Class</u>                  <u>Description</u>
 '-&gt;'      'tbfill'       <a href="Ext.Toolbar.Fill.html">Ext.Toolbar.Fill</a>       begin using the right-justified button container
 '-'       'tbseparator'  <a href="Ext.Toolbar.Separator.html">Ext.Toolbar.Separator</a>  add a vertical separator bar between toolbar items
 ' '       'tbspacer'     <a href="Ext.Toolbar.Spacer.html">Ext.Toolbar.Spacer</a>     add horiztonal space between elements
 </pre>Example usage of various elements: <pre><code>var tb = new Ext.Toolbar({
 renderTo: document.body,
 width: 600,
 height: 100,
 items: [
 {
 // xtype: 'button', // default for Toolbars, same as 'tbbutton'
 text: 'Button'
 },
 {
 xtype: 'splitbutton', // same as 'tbsplitbutton'
 text: 'Split Button'
 },
 // begin using the right-justified button container
 '-&gt;', // same as {xtype: 'tbfill'}, // Ext.Toolbar.Fill
 {
 xtype: 'textfield',
 name: 'field1',
 emptyText: 'enter search term'
 },
 // add a vertical separator bar between toolbar items
 '-', // same as {xtype: 'tbseparator'} to create Ext.Toolbar.Separator
 'text 1', // same as {xtype: 'tbtext', text: 'text1'} to create Ext.Toolbar.TextItem
 {xtype: 'tbspacer'},// same as ' ' to create Ext.Toolbar.Spacer
 'text 2',
 {xtype: 'tbspacer', width: 50}, // add a 50px space
 'text 3'
 ]
 });
 </code></pre>Example adding a ComboBox within a menu of a button: <pre><code>// ComboBox creation
 var combo = new Ext.form.ComboBox({
 store: new Ext.data.ArrayStore({
 autoDestroy: true,
 fields: ['initials', 'fullname'],
 data : [
 ['FF', 'Fred Flintstone'],
 ['BR', 'Barney Rubble']
 ]
 }),
 displayField: 'fullname',
 typeAhead: true,
 mode: 'local',
 forceSelection: true,
 triggerAction: 'all',
 emptyText: 'Select a name...',
 selectOnFocus: true,
 width: 135,
 getListParent: function() {
 return this.el.up('.x-menu');
 },
 iconCls: 'no-icon' //use iconCls if placing within menu to shift to right side of menu
 });

 // put ComboBox in a Menu
 var menu = new Ext.menu.Menu({
 id: 'mainMenu',
 items: [
 combo // A Field in a Menu
 ]
 });

 // add a Button with the menu
 tb.add({
 text:'Button w/ Menu',
 menu: menu  // assign menu by instance
 });
 tb.doLayout();
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'toolbar' / the EXML element &lt;toolbar>.</p>
 * @see ext.config.toolbar
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar Sencha Docs Ext JS 3.4
 */
public class Toolbar extends Container {

  /**
   * Creates a new Toolbar
   *
   * @param config A config object or an array of buttons to <tt><a href="output/Ext.Toolbar.html#Ext.Toolbar-add">add</a></tt>
   * @see ext.config.toolbar
   */
  public function Toolbar(config:toolbar) {
    super(null);
  }

  /**
   The default position at which to align child items. Defaults to <code>"left"</code>
   <p>May be specified as <code>"center"</code> to cause items added before a Fill (A <code>"-&gt;"</code>) item to be centered in the Toolbar. Items added after a Fill are still right-aligned.</p><p>Specify as <code>"right"</code> to right align all child items.</p>
   */
  public native function get buttonAlign():String;

  /**
   Defaults to false. Configure <tt>true</tt> to make the toolbar provide a button which activates a dropdown Menu to show items which overflow the Toolbar's width.
   */
  public native function get enableOverflow():Boolean;

  /**
   * Adds element(s) to the toolbar -- this function takes a variable number of arguments of mixed type and adds them to the toolbar.
   <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @param component Either one or more Components to add or an Array of Components to add. See <code><a href="output/Ext.Container.html#Ext.Container-items">items</a></code> for additional information.

   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-add Sencha Docs Ext JS 3.4
   */
  override public native function add(...component:Array):*;

  /**
   * Adds a button (or buttons). See <a href="Ext.Button.html">Ext.Button</a> for more info on the config. <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @param config A button config or array of configs
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-addButton Sencha Docs Ext JS 3.4
   */
  public native function addButton(config:*):*;

  /**
   * Adds a new element to the toolbar from the passed <a href="Ext.DomHelper.html">Ext.DomHelper</a> config <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @param config
   * @return The element's item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-addDom Sencha Docs Ext JS 3.4
   */
  public native function addDom(config:Object):Item;

  /**
   * Adds any standard HTML element to the toolbar <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @param el The element or id of the element to add
   * @return The element's item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-addElement Sencha Docs Ext JS 3.4
   */
  public native function addElement(el:*):Item;

  /**
   * Adds a dynamically rendered Ext.form field (TextField, ComboBox, etc). Note: the field should not have been rendered yet. For a field that has already been rendered, use <a href="output/Ext.Toolbar.html#Ext.Toolbar-addElement">addElement</a>. <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @param field
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-addField Sencha Docs Ext JS 3.4
   */
  public native function addField(field:Field):Item;

  /**
   * Forces subsequent additions into the float:right toolbar <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-addFill Sencha Docs Ext JS 3.4
   */
  public native function addFill():void;

  /**
   * Adds any Toolbar.Item or subclass <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @param item
   * @return The item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-addItem Sencha Docs Ext JS 3.4
   */
  public native function addItem(item:Item):Item;

  /**
   * Adds a separator <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @return The separator <a href="Ext.Toolbar.Item.html">item</a>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-addSeparator Sencha Docs Ext JS 3.4
   */
  public native function addSeparator():Item;

  /**
   * Adds a spacer element <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @return The spacer item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-addSpacer Sencha Docs Ext JS 3.4
   */
  public native function addSpacer():ext.toolbar.Spacer;

  /**
   * Adds text to the toolbar <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @param text The text to add
   * @return The element's item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-addText Sencha Docs Ext JS 3.4
   */
  public native function addText(text:String):Item;

  /**
   * Inserts any <a href="Ext.Toolbar.Item.html">Ext.Toolbar.Item</a>/<a href="Ext.Button.html">Ext.Button</a> at the specified index. <br/><p><b>Note</b>: See the notes within <a href="output/Ext.Container.html#Ext.Container-add">Ext.Container.add</a>.</p>
   *
   * @param index The index where the item is to be inserted
   * @param item The button, or button config object to be inserted, or an array of buttons/configs.
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar-method-insertButton Sencha Docs Ext JS 3.4
   */
  public native function insertButton(index:Number, item:*):*;

}
}
    