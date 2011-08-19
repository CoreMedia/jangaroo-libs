package ext.config {


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
 * <p>This class represents the xtype 'tbfill' and serves as a
 * typed config object for constructor of class Fill.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.toolbar.Fill
 */
[ExtConfig(target="ext.toolbar.Fill", xtype="tbfill")]
public class tbfill extends tbspacer {

  public function tbfill(config:Object = null) {

    super(config);
  }


}
}
    