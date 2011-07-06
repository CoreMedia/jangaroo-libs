package ext.toolbar {


/**
 * A non-rendering placeholder item which instructs the Toolbar's Layout to begin using the right-justified button container. <pre><code>new Ext.Panel({
 tbar : [
 'Item 1',
 {xtype: 'tbfill'}, // or '-&gt;'
 'Item 2'
 ]
 });
 </code></pre>
 * <p>This component is created by the xtype 'tbfill' / the EXML element &lt;tbfill>.</p>
 * @see ext.config.tbfill
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#cls-Ext.Toolbar.Fill Ext JS source
 */
public class Fill extends Spacer {

  /**
   * Creates a new Fill
   *
   * @see ext.config.tbfill
   */
  public function Fill() {
    super();
  }

}
}
    