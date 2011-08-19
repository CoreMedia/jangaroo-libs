package ext.config {


/**
 * A simple class that adds a vertical separator bar between toolbar items (css class:<tt>'xtb-sep'</tt>). Example usage: <pre><code>new Ext.Panel({
 tbar : [
 'Item 1',
 {xtype: 'tbseparator'}, // or '-'
 'Item 2'
 ]
 });
 </code></pre>
 *
 * <p>This class represents the xtype 'tbseparator' and serves as a
 * typed config object for constructor of class Separator.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.toolbar.Separator
 */
[ExtConfig(target="ext.toolbar.Separator", xtype="tbseparator")]
public class tbseparator extends tbitem {

  public function tbseparator(config:Object = null) {

    super(config);
  }


}
}
    