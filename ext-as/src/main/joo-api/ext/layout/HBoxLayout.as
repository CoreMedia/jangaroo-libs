package ext.layout {
/**
 * A layout that arranges items horizontally across a Container. This layout optionally divides available horizontal space between child items containing a numeric <code>flex</code> configuration.
 This layout may also be used to set the heights of child items by configuring it with the <a href="output/Ext.layout.HBoxLayout.html#Ext.layout.HBoxLayout-align">align</a> option.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.hboxlayout
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HBoxLayout.html#cls-Ext.layout.HBoxLayout Ext JS source
 */
public class HBoxLayout extends BoxLayout {

  /**
   *
   *
   * @see ext.config.hboxlayout
   */
  public function HBoxLayout() {
    super();
  }

  /**
   Controls how the child items of the container are aligned. Acceptable configuration values for this property are: <div class="mdetail-params"><ul><li><b><tt>top</tt></b> : <b>Default</b><div class="sub-desc">child items are aligned vertically at the <b>top</b> of the container</div></li><li><b><tt>middle</tt></b> : <div class="sub-desc">child items are aligned vertically in the <b>middle</b> of the container</div></li><li><b><tt>stretch</tt></b> : <div class="sub-desc">child items are stretched vertically to fill the height of the container</div></li><li><b><tt>stretchmax</tt></b> : <div class="sub-desc">child items are stretched vertically to the height of the largest item.</div></li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get align():String;

  /**
   This configuation option is to be applied to <b>child <tt>items</tt></b> of the container managed by this layout. Each child item with a <tt>flex</tt> property will be flexed <b>horizontally</b> according to each item's <b>relative</b> <tt>flex</tt> value compared to the sum of all items with a <tt>flex</tt> value specified. Any child items that have either a <tt>flex = 0</tt> or <tt>flex = undefined</tt> will not be 'flexed' (the initial size will not be changed).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get flex():Number;

  /**
   Controls how the child items of the container are packed together. Acceptable configuration values for this property are: <div class="mdetail-params"><ul><li><b><tt>start</tt></b> : <b>Default</b><div class="sub-desc">child items are packed together at <b>left</b> side of container</div></li><li><b><tt>center</tt></b> : <div class="sub-desc">child items are packed together at <b>mid-width</b> of container</div></li><li><b><tt>end</tt></b> : <div class="sub-desc">child items are packed together at <b>right</b> side of container</div></li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pack():String;

  /**
   *
   *
   * @param visibleItems The array of all rendered, visible items to be calculated for
   * @param targetSize Object containing target size and height
   * @return Object containing box measurements for each child, plus meta data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HBoxLayout.html#method-Ext.layout.HBoxLayout-calculateChildBoxes Ext JS source
   */
  public native function calculateChildBoxes(visibleItems:Array, targetSize:Object):Object;

}
}
    