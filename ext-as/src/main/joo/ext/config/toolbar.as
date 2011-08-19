package ext.config {


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
 * <p>This class represents the xtype 'toolbar' and serves as a
 * typed config object for constructor of class Toolbar.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Toolbar
 */
[ExtConfig(target="ext.Toolbar", xtype="toolbar")]
public class toolbar extends container {

  public function toolbar(config:Object = null) {

    super(config);
  }


  /**
   The default position at which to align child items. Defaults to <code>"left"</code>
   <p>May be specified as <code>"center"</code> to cause items added before a Fill (A <code>"-&gt;"</code>) item to be centered in the Toolbar. Items added after a Fill are still right-aligned.</p><p>Specify as <code>"right"</code> to right align all child items.</p>
   */
  public native function get buttonAlign():String;

  /**
   * @private
   */
  public native function set buttonAlign(value:String):void;

  /**
   Defaults to false. Configure <tt>true</tt> to make the toolbar provide a button which activates a dropdown Menu to show items which overflow the Toolbar's width.
   */
  public native function get enableOverflow():Boolean;

  /**
   * @private
   */
  public native function set enableOverflow(value:Boolean):void;

  /**
   This class assigns a default layout (<code>layout:'<b>toolbar</b>'</code>). Developers <i>may</i> override this configuration option if another layout is required (the constructor must be passed a configuration object in this case instead of an array). See <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a> for additional information.
   */
  override public native function get layout():*;

  /**
   * @private
   */
  override public native function set layout(value:*):void;


}
}
    