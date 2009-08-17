package ext.form {

import ext.Component;
import ext.Element;
import ext.Toolbar;

/**
 * Provides a lightweight HTML Editor component. Some toolbar features are not supported by Safari and will be 
 * automatically hidden when needed.  These are noted in the config options where appropriate.
 * <br><br>The editor's toolbar buttons have tooltips defined in the <b class='link'>#buttonTips</b> property, but they are not 
 * enabled by default unless the global <b class='link'>ext.QuickTips</b> singleton is <b class='link' title='ext.QuickTips#init'>initialized</b>.
 * <br><br><b>Note: The focus/blur and validation marking functionality inherited from ext.form.Field is NOT
 * supported by this editor.</b>
 * <br><br>An Editor is a sensitive component that can't be used in all spots standard fields can be used. Putting an Editor within
 * any element that has display set to 'none' can cause problems in Safari and Firefox due to their default iframe reloading bugs.
 * <br><br>Example usage:
 * <pre><code>
// Simple example rendered with default options:
ext.QuickTips.init();  // enable tooltips
new ext.form.HtmlEditor({
    renderTo: Ext.getBody(),
    width: 800,
    height: 300
});

// Passed via xtype into a container and with custom options:
ext.QuickTips.init();  // enable tooltips
new ext.Panel({
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
*/
public class HtmlEditor extends Field {
/**
 * @constructor
 * Create a new HtmlEditor
 * @param config
 * @xtype htmleditor
 */
public function HtmlEditor(config : Object) {
  super(config);
}
    /**
     * @cfg {Boolean} enableFormat Enable the bold, italic and underline buttons (defaults to true)
     */
    public var enableFormat  : Boolean;
    /**
     * @cfg {Boolean} enableFontSize Enable the increase/decrease font size buttons (defaults to true)
     */
    public var enableFontSize  : Boolean;
    /**
     * @cfg {Boolean} enableColors Enable the fore/highlight color buttons (defaults to true)
     */
    public var enableColors  : Boolean;
    /**
     * @cfg {Boolean} enableAlignments Enable the left, center, right alignment buttons (defaults to true)
     */
    public var enableAlignments  : Boolean;
    /**
     * @cfg {Boolean} enableLists Enable the bullet and numbered list buttons. Not available in Safari. (defaults to true)
     */
    public var enableLists  : Boolean;
    /**
     * @cfg {Boolean} enableSourceEdit Enable the switch to source edit button. Not available in Safari. (defaults to true)
     */
    public var enableSourceEdit  : Boolean;
    /**
     * @cfg {Boolean} enableLinks Enable the create link button. Not available in Safari. (defaults to true)
     */
    public var enableLinks  : Boolean;
    /**
     * @cfg {Boolean} enableFont Enable font selection. Not available in Safari. (defaults to true)
     */
    public var enableFont  : Boolean;
    /**
     * @cfg {String} createLinkText The default text for the create link prompt
     */
    public var createLinkText  : String;
    /**
     * @cfg {String} defaultLinkValue The default value for the create link prompt (defaults to http:/ /)
     */
    public var defaultLinkValue  : String;
    /**
     * @cfg {Array} fontFamilies An array of available font families
     */
    public var fontFamilies  : Array;
    public var defaultFont;
    /**
     * @cfg {String} defaultValue A default value to be put into the editor to resolve focus issues (defaults to &#8203; (Zero-width space), &nbsp; (Non-breaking space) in Opera and IE6).
     */
    public var defaultValue : String;
    //public var actionMode;
    //public var validationEvent ;
    //public var deferHeight;
    public var initialized ;
    public var activated ;
    public var sourceEditMode ;
    //public var onFocus ;
    public var iframePad;
    //public var hideMode;
    //public var defaultAutoCreate ;
    override protected native function initComponent() : void;
    protected native function createFontOptions() : void;
    public native function createToolbar(editor) : void;
    /**
     * Protected method that will not generally be called directly. It
     * is called when the editor initializes the iframe with HTML contents. Override this method if you
     * want to change the initialization markup of the iframe (e.g. to add stylesheets).
     */
    public native function getDocMarkup() : void;
    protected native function getEditorBody() : void;
    protected native function getDoc() : void;
    protected native function getWin() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    public native function createIFrame() : void;
    public native function initFrame() : void;
    public native function checkDesignMode() : void;
    public native function disableItems(disabled) : void;
    override public native function onResize(adjWidth, adjHeight, rawWidth, rawHeight) : void;
    /**
     * Toggles the editor between standard and source edit mode.
     * @param sourceEdit True for source edit, false for standard
     */
    public native function toggleSourceEdit(sourceEdit : Boolean = undefined) : void;
    public native function createLink() : void;
    //public var adjustSize : Boolean;
    override public native function getResizeEl() : void;
    override public native function getPositionEl() : void;
    override protected native function initEvents() : void;
    /**
     * Overridden and disabled. The editor element does not support standard valid/invalid marking. @hide
     * @method
     */
     override public native function markInvalid(msg : String = undefined):void;

  /**
     * Overridden and disabled. The editor element does not support standard valid/invalid marking. @hide
     * @method
     */
     override public native function clearInvalid():void;

  override public native function setValue(v : *) : Field;
    /**
     * Protected method that will not generally be called directly. If you need/want
     * custom HTML cleanup, this is the method you should override.
     * @param html The HTML to be cleaned
     * @return The cleaned HTML
     */
    public native function cleanHtml(html : String) : String;
    /**
     * Protected method that will not generally be called directly. Syncs the contents
     * of the editor iframe with the textarea.
     */
    public native function syncValue() : void;
    override public native function getValue() : *;
    /**
     * Protected method that will not generally be called directly. Pushes the value of the textarea
     * into the iframe editor.
     */
    public native function pushValue() : void;
    protected native function deferFocus() : void;
    override public native function focus(selectText : Boolean = undefined, delay : * = undefined) : Component;
    protected native function initEditor() : void;
    override protected native function onDestroy() : void;
    protected native function onFirstFocus() : void;
    protected native function adjustFont(btn) : void;
    protected native function onEditorEvent(e) : void;
    /**
     * Protected method that will not generally be called directly. It triggers
     * a toolbar update by reading the markup state of the current selection in the editor.
     */
    public native function updateToolbar() : void;
    protected native function relayBtnCmd(btn) : void;
    /**
     * Executes a Midas editor command on the editor document and performs necessary focus and
     * toolbar updates. <b>This should only be called after the editor is initialized.</b>
     * @param cmd The Midas command
     * @param value The value to pass to the command (defaults to null)
     */
    public native function relayCmd(cmd : String, value : * = undefined) : void;
    /**
     * Executes a Midas editor command directly on the editor document.
     * For visual commands, you should use <b class='link'>#relayCmd</b> instead.
     * <b>This should only be called after the editor is initialized.</b>
     * @param cmd The Midas command
     * @param value The value to pass to the command (defaults to null)
     */
    public native function execCmd(cmd : String, value : * = undefined) : void;
    protected native function applyCommand(e) : void;
    /**
     * Inserts the passed text at the current cursor position. Note: the editor must be initialized and activated
     * to insert text.
     * @param text
     */
    public native function insertAtCursor(text : String) : void;
    protected native function fixKeys() : void;
    /**
     * Returns the editor's toolbar. <b>This is only available after the editor has been rendered.</b>
     * @return 
     */
    public native function getToolbar() : Toolbar;
    /**
     * Object collection of toolbar tooltips for the buttons in the editor. The key
     * is the command id associated with that button and the value is a valid QuickTips object.
     * For example:
<pre><code>
{
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
     */
    public var buttonTips  : Object;
    /**
     * @event blur
     * @hide
     */
    /**
     * @event change
     * @hide
     */
    /**
     * @event focus
     * @hide
     */
    /**
     * @event specialkey
     * @hide
     */
    /**
     * @cfg {String} fieldClass @hide
     */
    /**
     * @cfg {String} focusClass @hide
     */
    /**
     * @cfg {String} autoCreate @hide
     */
    /**
     * @cfg {String} inputType @hide
     */
    /**
     * @cfg {String} invalidClass @hide
     */
    /**
     * @cfg {String} invalidText @hide
     */
    /**
     * @cfg {String} msgFx @hide
     */
    /**
     * @cfg {String} validateOnBlur @hide
     */
    /**
     * @cfg {Boolean} allowDomMove  @hide
     */
    /**
     * @cfg {String} applyTo @hide
     */
    /**
     * @cfg {String} autoHeight  @hide
     */
    /**
     * @cfg {String} autoWidth  @hide
     */
    /**
     * @cfg {String} cls  @hide
     */
    /**
     * @cfg {String} disabled  @hide
     */
    /**
     * @cfg {String} disabledClass  @hide
     */
    /**
     * @cfg {String} msgTarget  @hide
     */
    /**
     * @cfg {String} readOnly  @hide
     */
    /**
     * @cfg {String} style  @hide
     */
    /**
     * @cfg {String} validationDelay  @hide
     */
    /**
     * @cfg {String} validationEvent  @hide
     */
    /**
     * @cfg {String} tabIndex  @hide
     */
    /**
     * @property disabled
     * @hide
     */
    /**
     * @method applyToMarkup
     * @hide
     */
    /**
     * @method disable
     * @hide
     */
    /**
     * @method enable
     * @hide
     */
    /**
     * @method validate
     * @hide
     */
    /**
     * @event valid
     * @hide
     */
    /**
     * @method setDisabled
     * @hide
     */
    /**
     * @cfg keys
     * @hide
     */
}}
