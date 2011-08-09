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
 * <p>This class serves as a typed config object for constructor of class Separator.</p>
 *
 * @see ext.toolbar.Separator
 */
[ExtConfig(target="ext.toolbar.Separator", xtype="tbseparator")]
public class tbseparator extends tbitem {

  public function tbseparator(config:Object = null) {

    super(config);
  }


}
}
    