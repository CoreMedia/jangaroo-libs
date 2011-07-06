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
 * <p>This component is created by the xtype 'tbseparator' / the EXML element &lt;tbseparator>.</p>
 * @see ext.config.tbseparator
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#cls-Ext.Toolbar.Separator Ext JS source
 */
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
    