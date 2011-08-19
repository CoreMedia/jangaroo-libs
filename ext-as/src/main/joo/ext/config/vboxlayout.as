package ext.config {


/**
 * A layout that arranges items vertically down a Container. This layout optionally divides available vertical space between child items containing a numeric <code>flex</code> configuration.
 This layout may also be used to set the widths of child items by configuring it with the <a href="output/Ext.layout.VBoxLayout.html#Ext.layout.VBoxLayout-align">align</a> option.
 *
 * <p>This class serves as a
 * typed config object for constructor of class VBoxLayout.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.layout.VBoxLayout
 */
[ExtConfig(target="ext.layout.VBoxLayout", type="vbox")]
public class vboxlayout extends boxlayout {

  public function vboxlayout(config:Object = null) {

    super(config);
  }


  /**
   Controls how the child items of the container are aligned. Acceptable configuration values for this property are: <div class="mdetail-params"><ul><li><b><tt>left</tt></b> : <b>Default</b><div class="sub-desc">child items are aligned horizontally at the <b>left</b> side of the container</div></li><li><b><tt>center</tt></b> : <div class="sub-desc">child items are aligned horizontally at the <b>mid-width</b> of the container</div></li><li><b><tt>stretch</tt></b> : <div class="sub-desc">child items are stretched horizontally to fill the width of the container</div></li><li><b><tt>stretchmax</tt></b> : <div class="sub-desc">child items are stretched horizontally to the size of the largest item.</div></li></ul></div>
   */
  public native function get align():String;

  /**
   * @private
   */
  public native function set align(value:String):void;

  /**
   This configuation option is to be applied to <b>child <tt>items</tt></b> of the container managed by this layout. Each child item with a <tt>flex</tt> property will be flexed <b>vertically</b> according to each item's <b>relative</b> <tt>flex</tt> value compared to the sum of all items with a <tt>flex</tt> value specified. Any child items that have either a <tt>flex = 0</tt> or <tt>flex = undefined</tt> will not be 'flexed' (the initial size will not be changed).
   */
  public native function get flex():Number;

  /**
   * @private
   */
  public native function set flex(value:Number):void;

  /**
   Controls how the child items of the container are packed together. Acceptable configuration values for this property are: <div class="mdetail-params"><ul><li><b><tt>start</tt></b> : <b>Default</b><div class="sub-desc">child items are packed together at <b>top</b> side of container</div></li><li><b><tt>center</tt></b> : <div class="sub-desc">child items are packed together at <b>mid-height</b> of container</div></li><li><b><tt>end</tt></b> : <div class="sub-desc">child items are packed together at <b>bottom</b> side of container</div></li></ul></div>
   */
  public native function get pack():String;

  /**
   * @private
   */
  public native function set pack(value:String):void;


}
}
    