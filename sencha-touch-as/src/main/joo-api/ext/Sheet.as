package ext {

import ext.config.sheet;

/**
 * A general sheet class. This renderable container provides base support for orientation-aware transitions for popup or side-anchored sliding Panels.
 <h2>Screenshot:</h2><p><img src="doc_resources/Ext.Sheet/screenshot.png" alt=""/></p><h2>Example usage:</h2><pre><code>var sheet = new Ext.Sheet({
 height  : 200,
 stretchX: true,
 stretchY: true,

 layout: {
 type: 'hbox',
 align: 'stretch'
 },

 dockedItems: [
 {
 dock : 'bottom',
 xtype: 'button',
 text : 'Click me'
 }
 ]
 });
 sheet.show();
 </code></pre><p>See <a href="Ext.Picker.html">Ext.Picker</a> and <a href="Ext.DatePicker.html">Ext.DatePicker</a></p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'sheet' / the EXML element &lt;sheet>.</p>
 * @see ext.config.sheet
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sheet.html#cls-Ext.Sheet Ext JS source
 */
public class Sheet extends Panel {

  /**
   * Create a new Sheet.
   *
   * @param config The config object
   * @see ext.config.sheet
   */
  public function Sheet(config:sheet = null) {
    super(null);
  }

  /**
   The viewport side from which to anchor the sheet when made visible (top, bottom, left, right) Defaults to 'bottom'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enter():String;

  /**
   the named Ext.anim effect or animation configuration object used for transitions when the component is shown. Defaults to 'slide'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enterAnimation():*;

  /**
   The viewport side used as the exit point when hidden (top, bottom, left, right) Applies to sliding animation effects only. Defaults to 'bottom'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get exit():String;

  /**
   the named Ext.anim effect or animation configuration object used for transitions when the component is hidden. Defaults to 'slide'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get exitAnimation():*;

  /**
   If true, the width of anchored Sheets are adjusted to fill the entire top/bottom axis width, or false to center the Sheet along the same axis based upon the sheets current/calculated width. This option is ignored when {link #centered} is true or x/y coordinates are specified for the Sheet.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get stretchX():Boolean;

  /**
   If true, the height of anchored Sheets are adjusted to fill the entire right/left axis height, or false to center the Sheet along the same axis based upon the sheets current/calculated height. This option is ignored when {link #centered} is true or x/y coordinates are specified for the Sheet.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get stretchY():Boolean;

}
}
    