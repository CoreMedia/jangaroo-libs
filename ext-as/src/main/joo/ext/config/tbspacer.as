package ext.config {


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
 * <p>This class serves as a typed config object for constructor of class Spacer.</p>
 *
 * @see ext.toolbar.Spacer
 */
[ExtConfig(target="ext.toolbar.Spacer", xtype="tbspacer")]
public class tbspacer extends tbitem {

  public function tbspacer(config:Object = null) {

    super(config);
  }


  /**
   The width of the spacer in pixels (defaults to 2px via css style <tt>.x-toolbar .xtb-spacer</tt>).
   */
  override public native function get width():*;

  /**
   * @private
   */
  override public native function set width(value:*):void;


}
}
    