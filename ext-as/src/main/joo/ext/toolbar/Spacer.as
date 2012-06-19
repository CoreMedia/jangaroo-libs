package ext.toolbar {
/**
 * A simple element that adds extra horizontal space between items in a toolbar. By default a 2px wide space is added via css specification:<pre><code>.x-toolbar .xtb-spacer {
 width:2px;
 }
 </code></pre><p>Example usage:</p><pre><code>new Ext.Panel({
 tbar : [
 'Item 1',
 {xtype: 'tbspacer'}, // or ' '
 'Item 2',
 // space width is also configurable via javascript
 {xtype: 'tbspacer', width: 50}, // add a 50px space
 'Item 3'
 ]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'tbspacer' / the EXML element &lt;tbspacer>.</p>
 * @see ext.config.tbspacer
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Toolbar.Spacer Sencha Docs Ext JS 3.4
 */
[Native]
public class Spacer extends Item {

  /**
   * Creates a new Spacer
   *
   * @see ext.config.tbspacer
   */
  public function Spacer() {
    super(null);
  }

}
}
    