package ext.config {


/**
 * A layout that arranges items horizontally across a Container. This layout optionally divides available horizontal space between child items containing a numeric <code>flex</code> configuration.
 This layout may also be used to set the heights of child items by configuring it with the <a href="output/Ext.layout.HBoxLayout.html#Ext.layout.HBoxLayout-align">align</a> option.
 * <p>This class serves as a typed config object for constructor of class HBoxLayout.</p>
 *
 * @see ext.layout.HBoxLayout
 */
[ExtConfig(target="ext.layout.HBoxLayout", type="hbox")]
public class hboxlayout extends boxlayout {

  public function hboxlayout(config:Object = null) {

    super(config);
  }


  /**
   Controls how the child items of the container are aligned. Acceptable configuration values for this property are: <div class="mdetail-params"><ul><li><b><tt>top</tt></b> : <b>Default</b><div class="sub-desc">child items are aligned vertically at the <b>top</b> of the container</div></li><li><b><tt>middle</tt></b> : <div class="sub-desc">child items are aligned vertically in the <b>middle</b> of the container</div></li><li><b><tt>stretch</tt></b> : <div class="sub-desc">child items are stretched vertically to fill the height of the container</div></li><li><b><tt>stretchmax</tt></b> : <div class="sub-desc">child items are stretched vertically to the height of the largest item.</div></li></ul></div>
   */
  public native function get align():String;

  /**
   * @private
   */
  public native function set align(value:String):void;

  /**
   This configuation option is to be applied to <b>child <tt>items</tt></b> of the container managed by this layout. Each child item with a <tt>flex</tt> property will be flexed <b>horizontally</b> according to each item's <b>relative</b> <tt>flex</tt> value compared to the sum of all items with a <tt>flex</tt> value specified. Any child items that have either a <tt>flex = 0</tt> or <tt>flex = undefined</tt> will not be 'flexed' (the initial size will not be changed).
   */
  public native function get flex():Number;

  /**
   * @private
   */
  public native function set flex(value:Number):void;

  /**
   Controls how the child items of the container are packed together. Acceptable configuration values for this property are: <div class="mdetail-params"><ul><li><b><tt>start</tt></b> : <b>Default</b><div class="sub-desc">child items are packed together at <b>left</b> side of container</div></li><li><b><tt>center</tt></b> : <div class="sub-desc">child items are packed together at <b>mid-width</b> of container</div></li><li><b><tt>end</tt></b> : <div class="sub-desc">child items are packed together at <b>right</b> side of container</div></li></ul></div>
   */
  public native function get pack():String;

  /**
   * @private
   */
  public native function set pack(value:String):void;


}
}
    