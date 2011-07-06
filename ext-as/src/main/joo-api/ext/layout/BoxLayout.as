package ext.layout {

import ext.Container;
import ext.Element;

/**
 * Base Class for HBoxLayout and VBoxLayout Classes. Generally it should not need to be used directly.

 * @see ext.config.boxlayout
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#cls-Ext.layout.BoxLayout Ext JS source
 */
public class BoxLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.boxlayout
   */
  public function BoxLayout() {
    super();
  }

  /**
   Array of the last calculated height, width, top and left positions of each visible rendered component within the Box layout.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#prop-Ext.layout.BoxLayout-childBoxCache Ext JS source
   */
  public native function get childBoxCache():Array;

  /**
   * @private
   */
  public native function set childBoxCache(value:Array):void;

  /**
   Private cache of the last measured size of the layout target. This should never be used except by BoxLayout subclasses during their onLayout run.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#prop-Ext.layout.BoxLayout-layoutTargetLastSize Ext JS source
   */
  public native function get layoutTargetLastSize():Object;

  /**
   * @private
   */
  public native function set layoutTargetLastSize(value:Object):void;

  /**
   If the individual contained items do not have a <tt>margins</tt> property specified, the default margins from this property will be applied to each item.
   <br/><p>This property may be specified as an object containing margins to apply in the format:</p><pre><code>{
   top: (top margin),
   right: (right margin),
   bottom: (bottom margin),
   left: (left margin)
   }</code></pre><p>This property may also be specified as a string containing space-separated, numeric margin values. The order of the sides associated with each value matches the way CSS processes margin values:</p><div class="mdetail-params"><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul></div><p>Defaults to:</p><pre><code>{top:0, right:0, bottom:0, left:0}
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultMargins():Object;

  /**
   Sets the padding to be applied to all child items managed by this layout.
   <p>This property must be specified as a string containing space-separated, numeric padding values. The order of the sides associated with each value matches the way CSS processes padding values:</p><div class="mdetail-params"><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul></div><p>Defaults to: <code>"0"</code></p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get padding():String;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#method-Ext.layout.BoxLayout-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   *
   *
   * @return All matching items
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#method-Ext.layout.BoxLayout-getVisibleItems Ext JS source
   */
  public native function getVisibleItems():Array;

  /**
   *
   *
   * @param previousTargetSize The size and height of the layout target before we just laid out
   * @param container The container
   * @param target The target element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#method-Ext.layout.BoxLayout-handleTargetOverflow Ext JS source
   */
  public native function handleTargetOverflow(previousTargetSize:Object, container:Container, target:Element):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#method-Ext.layout.BoxLayout-onLayout Ext JS source
   */
  public native function onLayout():void;

  /**
   * Resizes and repositions each child component
   *
   * @param boxes The box measurements
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#method-Ext.layout.BoxLayout-updateChildBoxes Ext JS source
   */
  public native function updateChildBoxes(boxes:Array):void;

  /**
   *
   *
   * @param currentSize The current height and width of the innerCt
   * @param calculations The new box calculations of all items to be laid out
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#method-Ext.layout.BoxLayout-updateInnerCtSize Ext JS source
   */
  public native function updateInnerCtSize(currentSize:Object, calculations:Array):void;

}
}
    