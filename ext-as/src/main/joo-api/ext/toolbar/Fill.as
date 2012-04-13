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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'tbfill' / the EXML element &lt;tbfill>.</p>
 * @see ext.config.tbfill
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar.Fill Sencha Docs Ext JS 3.4
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
    