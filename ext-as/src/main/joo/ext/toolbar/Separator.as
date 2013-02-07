package ext.toolbar {
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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'tbseparator' / the EXML element &lt;tbseparator>.</p>
 * @see ext.config.tbseparator
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar.Separator Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.Toolbar.Separator")]
public class Separator extends Item {

  /**
   * Creates a new Separator
   *
   * @see ext.config.tbseparator
   */
  public function Separator() {
    super(null);
  }

}
}
    