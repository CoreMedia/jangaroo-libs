package ext.config {


/**
 * Toolbars are most commonly used as dockedItems within an Ext.Panel. They can be docked at the 'top' or 'bottom' of a Panel by specifying the dock config.
 <p>The <a href="output/Ext.Toolbar.html#Ext.Toolbar-defaultType">defaultType</a> of Toolbar's is '<a href="Ext.Button.html">button</a>'.</p><h2>Screenshot:</h2><p><img src="doc_resources/Ext.Toolbar/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var myToolbar = new Ext.Toolbar({
 dock : 'top',
 title: 'My Toolbar',
 items: [
 {
 text: 'My Button'
 }
 ]
 });

 var myPanel = new Ext.Panel({
 dockedItems: [myToolbar],
 fullscreen : true,
 html       : 'Test Panel'
 });</code></pre>
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
   The base CSS class to apply to the Carousel's element (defaults to <code>'x-toolbar'</code>).
   */
  override public native function get baseCls():String;

  /**
   * @private
   */
  override public native function set baseCls(value:String):void;

  /**
   The default xtype to create. (Defaults to 'button')
   */
  override public native function get defaultType():String;

  /**
   * @private
   */
  override public native function set defaultType(value:String):void;

  /**
   A layout config object. A string is NOT supported here.
   */
  override public native function get layout():*;

  /**
   * @private
   */
  override public native function set layout(value:*):void;

  /**
   The title of the Toolbar.
   */
  public native function get title():String;

  /**
   * @private
   */
  public native function set title(value:String):void;

  /**
   The CSS class to apply to the titleEl (defaults to <code>'x-toolbar-title'</code>).
   */
  public native function get titleCls():String;

  /**
   * @private
   */
  public native function set titleCls(value:String):void;

  /**
   Style options for Toolbar. Default is 'dark'. 'light' is also available.
   */
  override public native function get ui():String;

  /**
   * @private
   */
  override public native function set ui(value:String):void;


}
}
    