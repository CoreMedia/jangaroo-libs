package ext.config {


/**
 * Provides a lightweight HTML Editor component. Some toolbar features are not supported by Safari and will be automatically hidden when needed. These are noted in the config options where appropriate. <br/><br/>The editor's toolbar buttons have tooltips defined in the <a href="output/Ext.form.HtmlEditor.html#Ext.form.HtmlEditor-buttonTips">buttonTips</a> property, but they are not enabled by default unless the global <a href="Ext.QuickTips.html">Ext.QuickTips</a> singleton is <a href="output/Ext.QuickTips.html#Ext.QuickTips-init">initialized</a>. <br/><br/><b>Note: The focus/blur and validation marking functionality inherited from Ext.form.Field is NOT supported by this editor.</b> <br/><br/>An Editor is a sensitive component that can't be used in all spots standard fields can be used. Putting an Editor within any element that has display set to 'none' can cause problems in Safari and Firefox due to their default iframe reloading bugs. <br/><br/>Example usage: <pre><code>// Simple example rendered with default options:
 Ext.QuickTips.init();  // enable tooltips
 new Ext.form.HtmlEditor({
 renderTo: Ext.getBody(),
 width: 800,
 height: 300
 });

 // Passed via xtype into a container and with custom options:
 Ext.QuickTips.init();  // enable tooltips
 new Ext.Panel({
 title: 'HTML Editor',
 renderTo: Ext.getBody(),
 width: 600,
 height: 300,
 frame: true,
 layout: 'fit',
 items: {
 xtype: 'htmleditor',
 enableColors: false,
 enableAlignments: false
 }
 });
 </code></pre>
 *
 * <p>This class represents the xtype 'htmleditor' and serves as a
 * typed config object for constructor of class HtmlEditor.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.HtmlEditor
 */
[ExtConfig(target="ext.form.HtmlEditor", xtype="htmleditor")]
public class htmleditor extends field {

  public function htmleditor(config:Object = null) {

    super(config);
  }


  /**
   The default text for the create link prompt
   */
  public native function get createLinkText():String;

  /**
   * @private
   */
  public native function set createLinkText(value:String):void;

  /**
   The default value for the create link prompt (defaults to http:/ /)
   */
  public native function get defaultLinkValue():String;

  /**
   * @private
   */
  public native function set defaultLinkValue(value:String):void;

  /**
   A default value to be put into the editor to resolve focus issues (defaults to   (Non-breaking space) in Opera and IE6, ​ (Zero-width space) in all other browsers).
   */
  public native function get defaultValue():String;

  /**
   * @private
   */
  public native function set defaultValue(value:String):void;

  /**
   Enable the left, center, right alignment buttons (defaults to true)
   */
  public native function get enableAlignments():Boolean;

  /**
   * @private
   */
  public native function set enableAlignments(value:Boolean):void;

  /**
   Enable the fore/highlight color buttons (defaults to true)
   */
  public native function get enableColors():Boolean;

  /**
   * @private
   */
  public native function set enableColors(value:Boolean):void;

  /**
   Enable font selection. Not available in Safari. (defaults to true)
   */
  public native function get enableFont():Boolean;

  /**
   * @private
   */
  public native function set enableFont(value:Boolean):void;

  /**
   Enable the increase/decrease font size buttons (defaults to true)
   */
  public native function get enableFontSize():Boolean;

  /**
   * @private
   */
  public native function set enableFontSize(value:Boolean):void;

  /**
   Enable the bold, italic and underline buttons (defaults to true)
   */
  public native function get enableFormat():Boolean;

  /**
   * @private
   */
  public native function set enableFormat(value:Boolean):void;

  /**
   Enable the create link button. Not available in Safari. (defaults to true)
   */
  public native function get enableLinks():Boolean;

  /**
   * @private
   */
  public native function set enableLinks(value:Boolean):void;

  /**
   Enable the bullet and numbered list buttons. Not available in Safari. (defaults to true)
   */
  public native function get enableLists():Boolean;

  /**
   * @private
   */
  public native function set enableLists(value:Boolean):void;

  /**
   Enable the switch to source edit button. Not available in Safari. (defaults to true)
   */
  public native function get enableSourceEdit():Boolean;

  /**
   * @private
   */
  public native function set enableSourceEdit(value:Boolean):void;

  /**
   An array of available font families
   */
  public native function get fontFamilies():Array;

  /**
   * @private
   */
  public native function set fontFamilies(value:Array):void;


}
}
    