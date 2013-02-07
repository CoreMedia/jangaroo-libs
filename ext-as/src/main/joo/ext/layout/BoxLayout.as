package ext.layout {
import ext.Container;
import ext.Element;
import ext.config.boxlayout;

/**
 * Base Class for HBoxLayout and VBoxLayout Classes. Generally it should not need to be used directly.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.boxlayout
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BoxLayout Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.layout.BoxLayout")]
public class BoxLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.boxlayout
   */
  public function BoxLayout(config:boxlayout = null) {
    super(config);
  }

  /**
   Array of the last calculated height, width, top and left positions of each visible rendered component within the Box layout.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BoxLayout-property-childBoxCache Sencha Docs Ext JS 3.4
   */
  public native function get childBoxCache():Array;

  /**
   * @private
   */
  public native function set childBoxCache(value:Array):void;

  /**
   Private cache of the last measured size of the layout target. This should never be used except by BoxLayout subclasses during their onLayout run.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BoxLayout-property-layoutTargetLastSize Sencha Docs Ext JS 3.4
   */
  public native function getLayoutTargetSize():Object;

  /**
   If the individual contained items do not have a <tt>margins</tt> property specified, the default margins from this property will be applied to each item.
   <br/><p>This property may be specified as an object containing margins to apply in the format:</p><pre><code>{
   top: (top margin),
   right: (right margin),
   bottom: (bottom margin),
   left: (left margin)
   }</code></pre><p>This property may also be specified as a string containing space-separated, numeric margin values. The order of the sides associated with each value matches the way CSS processes margin values:</p><div class="mdetail-params"><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul></div><p>Defaults to:</p><pre><code>{top:0, right:0, bottom:0, left:0}
   </code></pre>
   */
  public native function get defaultMargins():Object;

  /**
   * Returns the padding that is applied to all child items managed by this layout.
   * Initially, this is the <code>String</code> from the config object, but once
   * <code>onLayout()</code> has been called, it is converted to an object with the
   * properties <code>top</code>, <code>right</code>, <code>bottom</code> and <code>left</code>.
   *
   * @see ext.config.boxlayout#padding
   * @see ContainerLayout#onLayout()
   * @see ContainerLayout#parseMargins()
   */
  public native function get padding():Object;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BoxLayout-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy():void;

  /**
   *
   *
   * @return All matching items
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BoxLayout-method-getVisibleItems Sencha Docs Ext JS 3.4
   */
  public native function getVisibleItems():Array;

  /**
   *
   *
   * @param previousTargetSize The size and height of the layout target before we just laid out
   * @param container The container
   * @param target The target element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BoxLayout-method-handleTargetOverflow Sencha Docs Ext JS 3.4
   */
  public native function handleTargetOverflow(previousTargetSize:Object, container:Container, target:Element):void;

  /**
   * Resizes and repositions each child component
   *
   * @param boxes The box measurements
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BoxLayout-method-updateChildBoxes Sencha Docs Ext JS 3.4
   */
  public native function updateChildBoxes(boxes:Array):void;

  /**
   *
   *
   * @param currentSize The current height and width of the innerCt
   * @param calculations The new box calculations of all items to be laid out
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BoxLayout-method-updateInnerCtSize Sencha Docs Ext JS 3.4
   */
  public native function updateInnerCtSize(currentSize:Object, calculations:Array):void;

}
}
    