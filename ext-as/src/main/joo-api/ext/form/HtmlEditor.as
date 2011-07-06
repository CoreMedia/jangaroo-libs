package ext.form {

import ext.Toolbar;

import js.Document;

import js.HTMLElement;

/**
 * Fires when the editor is first receives the focus. Any insertion must wait until after this event.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.HtmlEditor</code>

 *       </li>

 * </ul>
 */
[Event(name="activate")]

/**
 * Fires before the iframe editor is updated with content from the textarea. Return false to cancel the push.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.HtmlEditor</code>

 *       </li>

 *       <li>
 *           <code>html:String</code>

 *       </li>

 * </ul>
 */
[Event(name="beforepush")]

/**
 * Fires before the textarea is updated with content from the editor iframe. Return false to cancel the sync.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.HtmlEditor</code>

 *       </li>

 *       <li>
 *           <code>html:String</code>

 *       </li>

 * </ul>
 */
[Event(name="beforesync")]

/**
 * Fires when the editor switches edit modes
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.HtmlEditor</code>

 *       </li>

 *       <li>
 *           <code>sourceEdit:Boolean</code>
 True if source edit, false if standard editing.
 *       </li>

 * </ul>
 */
[Event(name="editmodechange")]

/**
 * Fires when the editor is fully initialized (including the iframe)
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.HtmlEditor</code>

 *       </li>

 * </ul>
 */
[Event(name="initialize")]

/**
 * Fires when the iframe editor is updated with content from the textarea.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.HtmlEditor</code>

 *       </li>

 *       <li>
 *           <code>html:String</code>

 *       </li>

 * </ul>
 */
[Event(name="push")]

/**
 * Fires when the textarea is updated with content from the editor iframe.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.HtmlEditor</code>

 *       </li>

 *       <li>
 *           <code>html:String</code>

 *       </li>

 * </ul>
 */
[Event(name="sync")]


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
 * <p>This component is created by the xtype 'htmleditor' / the EXML element &lt;htmleditor>.</p>
 * @see ext.config.htmleditor
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#cls-Ext.form.HtmlEditor Ext JS source
 */
public class HtmlEditor extends Field {

  /**
   * Create a new HtmlEditor
   *
   * @param config
   * @see ext.config.htmleditor
   */
  public function HtmlEditor(config:Object) {
    super(null);
  }

  /**
   Object collection of toolbar tooltips for the buttons in the editor. The key is the command id associated with that button and the value is a valid QuickTips object. For example: <pre><code>{
   bold : {
   title: 'Bold (Ctrl+B)',
   text: 'Make the selected text bold.',
   cls: 'x-html-editor-tip'
   },
   italic : {
   title: 'Italic (Ctrl+I)',
   text: 'Make the selected text italic.',
   cls: 'x-html-editor-tip'
   },
   ...
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#prop-Ext.form.HtmlEditor-buttonTips Ext JS source
   */
  public native function get buttonTips():Object;

  /**
   * @private
   */
  public native function set buttonTips(value:Object):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#prop-Ext.form.HtmlEditor-iframe Ext JS source
   */
  public native function get iframe():HTMLElement;

  /**
   * @private
   */
  public native function set iframe(value:HTMLElement):void;

  /**
   The default text for the create link prompt
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get createLinkText():String;

  /**
   The default value for the create link prompt (defaults to http:/ /)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultLinkValue():String;

  /**
   A default value to be put into the editor to resolve focus issues (defaults to   (Non-breaking space) in Opera and IE6, ​ (Zero-width space) in all other browsers).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultValue():String;

  /**
   Enable the left, center, right alignment buttons (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableAlignments():Boolean;

  /**
   Enable the fore/highlight color buttons (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableColors():Boolean;

  /**
   Enable font selection. Not available in Safari. (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableFont():Boolean;

  /**
   Enable the increase/decrease font size buttons (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableFontSize():Boolean;

  /**
   Enable the bold, italic and underline buttons (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableFormat():Boolean;

  /**
   Enable the create link button. Not available in Safari. (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableLinks():Boolean;

  /**
   Enable the bullet and numbered list buttons. Not available in Safari. (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableLists():Boolean;

  /**
   Enable the switch to source edit button. Not available in Safari. (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableSourceEdit():Boolean;

  /**
   An array of available font families
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get fontFamilies():Array;

  /**
   * Protected method that will not generally be called directly. If you need/want custom HTML cleanup, this is the method you should override.
   *
   * @param html The HTML to be cleaned
   * @return The cleaned HTML
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-cleanHtml Ext JS source
   */
  public native function cleanHtml(html:String):String;

  /**
   * Executes a Midas editor command directly on the editor document. For visual commands, you should use <a href="output/Ext.form.HtmlEditor.html#Ext.form.HtmlEditor-relayCmd">relayCmd</a> instead. <b>This should only be called after the editor is initialized.</b>
   *
   * @param cmd The Midas command
   * @param value The value to pass to the command (defaults to null)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-execCmd Ext JS source
   */
  public native function execCmd(cmd:String, value:* = null):void;

  /**
   *
   *
   * @return iframe's document
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-getDoc Ext JS source
   */
  protected native function getDoc():Document;

  /**
   * Protected method that will not generally be called directly. It is called when the editor initializes the iframe with HTML contents. Override this method if you want to change the initialization markup of the iframe (e.g. to add stylesheets). Note: IE8-Standards has unwanted scroller behavior, so the default meta tag forces IE7 compatibility
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-getDocMarkup Ext JS source
   */
  public native function getDocMarkup():void;

  /**
   * Returns the editor's toolbar. <b>This is only available after the editor has been rendered.</b>
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-getToolbar Ext JS source
   */
  public native function getToolbar():Toolbar;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-initFrame Ext JS source
   */
  protected native function initFrame():void;

  /**
   * Inserts the passed text at the current cursor position. Note: the editor must be initialized and activated to insert text.
   *
   * @param text
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-insertAtCursor Ext JS source
   */
  public native function insertAtCursor(text:String):void;

  /**
   * Protected method that will not generally be called directly. Pushes the value of the textarea into the iframe editor.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-pushValue Ext JS source
   */
  public native function pushValue():void;

  /**
   * Executes a Midas editor command on the editor document and performs necessary focus and toolbar updates. <b>This should only be called after the editor is initialized.</b>
   *
   * @param cmd The Midas command
   * @param value The value to pass to the command (defaults to null)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-relayCmd Ext JS source
   */
  public native function relayCmd(cmd:String, value:* = null):void;

  /**
   * Protected method that will not generally be called directly. Syncs the contents of the editor iframe with the textarea.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-syncValue Ext JS source
   */
  public native function syncValue():void;

  /**
   * Toggles the editor between standard and source edit mode.
   *
   * @param sourceEdit True for source edit, false for standard
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-toggleSourceEdit Ext JS source
   */
  public native function toggleSourceEdit(sourceEdit:Boolean = false):void;

  /**
   * Protected method that will not generally be called directly. It triggers a toolbar update by reading the markup state of the current selection in the editor.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HtmlEditor.html#method-Ext.form.HtmlEditor-updateToolbar Ext JS source
   */
  public native function updateToolbar():void;

}
}
    