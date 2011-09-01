package ext.config {


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
 * <p>This class represents the xtype 'spacer' and serves as a
 * typed config object for constructor of class Spacer.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Spacer
 */
[ExtConfig(target="ext.Spacer", xtype="spacer")]
public class spacer extends component {

  public function spacer(config:Object = null) {

    super(config);
  }


}
}
    