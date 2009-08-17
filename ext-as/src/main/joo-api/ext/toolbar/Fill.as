package ext.toolbar {

/**
 * A non-rendering placeholder item which instructs the Toolbar's Layout to begin using
 * the right-justified button container.
 * <pre><code>
new ext.Panel({
    tbar : [
        'Item 1',
        {xtype: 'tbfill'}, // or '->'
        'Item 2'
    ]
});
</code></pre>
*/
public class Fill extends Spacer {
/**
 * @constructor
 * Creates a new Fill
 * @xtype tbfill
 */
  public function Fill() {
  }

  //protected var render  : Number;
    public var isFill ;
}}
