package ext {

import ext.config.sheet;

/**
 * A Button Sheet class designed to popup or slide/anchor a series of buttons.
 <h2>Screenshot:</h2><p><img src="doc_resources/Ext.ActionSheet/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var actionSheet = new Ext.ActionSheet({
 items: [
 {
 text: 'Delete draft',
 ui  : 'decline'
 },
 {
 text: 'Save draft'
 },
 {
 text: 'Cancel',
 ui  : 'confirm'
 }
 ]
 });
 actionSheet.show();</code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'sheet' / the EXML element &lt;sheet>.</p>
 * @see ext.config.sheet
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sheet.html#cls-Ext.ActionSheet Ext JS source
 */
[Native]
public class ActionSheet extends Sheet {

  /**
   * Create a new ActionSheet.
   *
   * @param config The config object
   * @see ext.config.sheet
   */
  public function ActionSheet(config:sheet = null) {
    super(null);
  }

}
}
    