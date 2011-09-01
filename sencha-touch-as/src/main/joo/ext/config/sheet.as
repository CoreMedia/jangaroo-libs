package ext.config {


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
 * <p>This class represents the xtype 'sheet' and serves as a
 * typed config object for constructor of class ActionSheet.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.ActionSheet
 */
[ExtConfig(target="ext.ActionSheet", xtype="sheet")]
public class sheet extends ext.config.component {

  public function sheet(config:Object = null) {

    super(config);
  }


}
}
    