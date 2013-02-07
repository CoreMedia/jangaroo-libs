package ext.layout {
import ext.config.anchorlayout;

/**
 * This is a layout that enables anchoring of contained elements relative to the container's dimensions. If the container is resized, all anchored items are automatically rerendered according to their <b><tt><a href="output/Ext.layout.AnchorLayout.html#Ext.layout.AnchorLayout-anchor">anchor</a></tt></b> rules.
 <p>This class is intended to be extended or created via the layout:'anchor' <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a> config, and should generally not need to be created directly via the new keyword.</p><p>AnchorLayout does not have any direct config options (other than inherited ones). By default, AnchorLayout will calculate anchor measurements based on the size of the container itself. However, the container using the AnchorLayout can supply an anchoring-specific config property of <b>anchorSize</b>. If anchorSize is specified, the layout will use it as a virtual container for the purposes of calculating anchor measurements based on it instead, allowing the container to be sized independently of the anchoring logic if necessary. For example:</p><pre><code>var viewport = new Ext.Viewport({
 layout:'anchor',
 anchorSize: {width:800, height:600},
 items:[{
 title:'Item 1',
 html:'Content 1',
 width:800,
 anchor:'right 20%'
 },{
 title:'Item 2',
 html:'Content 2',
 width:300,
 anchor:'50% 30%'
 },{
 title:'Item 3',
 html:'Content 3',
 width:600,
 anchor:'-100 50%'
 }]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.anchorlayout
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.AnchorLayout Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.layout.AnchorLayout")]
public class AnchorLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.anchorlayout
   */
  public function AnchorLayout(config:anchorlayout = null) {
    super(config);
  }

  /**
   This configuration option is to be applied to <b>child <tt>items</tt></b> of a container managed by this layout (ie. configured with <tt>layout:'anchor'</tt>).
   <br/><p>This value is what tells the layout how an item should be anchored to the container. <tt>items</tt> added to an AnchorLayout accept an anchoring-specific config property of <b>anchor</b> which is a string containing two values: the horizontal anchor value and the vertical anchor value (for example, '100% 50%'). The following types of anchor values are supported:</p><div class="mdetail-params"><ul><li><b>Percentage</b> : Any value between 1 and 100, expressed as a percentage.<div class="sub-desc">The first anchor is the percentage width that the item should take up within the container, and the second is the percentage height. For example:<pre><code>// two values specified
   anchor: '100% 50%' // render item complete width of the container and
   // 1/2 height of the container
   // one value specified
   anchor: '100%'     // the width value; the height will default to auto
   </code></pre></div></li><li><b>Offsets</b> : Any positive or negative integer value.<div class="sub-desc">This is a raw adjustment where the first anchor is the offset from the right edge of the container, and the second is the offset from the bottom edge. For example:<pre><code>// two values specified
   anchor: '-50 -100' // render item the complete width of the container
   // minus 50 pixels and
   // the complete height minus 100 pixels.
   // one value specified
   anchor: '-50'      // anchor value is assumed to be the right offset value
   // bottom offset will default to 0
   </code></pre></div></li><li><b>Sides</b> : Valid values are <tt>'right'</tt> (or <tt>'r'</tt>) and <tt>'bottom'</tt> (or <tt>'b'</tt>).<div class="sub-desc">Either the container must have a fixed size or an anchorSize config value defined at render time in order for these to have any effect.</div></li><li><b>Mixed</b> : <div class="sub-desc">Anchor values can also be mixed as needed. For example, to render the width offset from the container right edge by 50 pixels and 75% of the container's height use: <pre><code>anchor: '-50 75%'
   </code></pre></div></li></ul></div>
   */
  public native function get anchor():String;

  /**
   default anchor for all child container items applied if no anchor or specific width is set on the child item. Defaults to '100%'.
   */
  public native function get defaultAnchor():String;

}
}
    