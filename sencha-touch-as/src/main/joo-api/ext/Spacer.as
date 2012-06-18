package ext {

import ext.config.spacer;

/**
 * By default the spacer component will take up a flex of 1 unless a width is set.
 <p>Example usage:</p><pre><code>var toolbar = new Ext.Toolbar({
 title: 'Toolbar Title',

 items: [
 {xtype: 'spacer'},
 {
 xtype: 'Button',
 text : 'Button!'
 }
 ]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'spacer' / the EXML element &lt;spacer>.</p>
 * @see ext.config.spacer
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#cls-Ext.Spacer Ext JS source
 */
[Native]
public class Spacer extends Component {

  /**
   * Create a new Spacer.
   *
   * @param config The config object
   * @see ext.config.spacer
   */
  public function Spacer(config:spacer = null) {
    super(null);
  }

}
}
    