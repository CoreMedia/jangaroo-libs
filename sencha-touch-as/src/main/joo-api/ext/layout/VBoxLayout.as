package ext.layout {


/**
 * A layout that arranges items vertically down a Container. This layout optionally divides available vertical space between child items containing a numeric <code>flex</code> configuration. The flex option is a ratio that distributes height after any items with explicit heights have been accounted for. In the code below, the height is calculated as follows:
 <ul><li>The fixed height item is subtracted, leaving us with 300 height</li><li>The total flex number is counted, in this case, it is 3</li><li>The ratio is then calculated, 300 / 3 = 100</li><li>The first item has a flex of 2, so it is set to 2 &#42; 100</li><li>The other remaining item is set to 1 &#42; 100</li></ul><br/><br/> <pre><code>new Ext.Container({
 width: 300,
 height: 400,
 layout: {
 type: 'vbox',
 align: 'stretch'
 },
 items: [{
 flex: 2,
 html: 'First'
 },{
 width: 100,
 html: 'Second'
 },{
 flex: 1,
 html: 'Third'
 }]
 });
 </code></pre>This layout may also be used to set the widths of child items by configuring it with the <a href="output/Ext.layout.VBoxLayout.html#Ext.layout.VBoxLayout-align">align</a> option.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.vboxlayout
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#cls-Ext.layout.VBoxLayout Ext JS source
 */
public class VBoxLayout extends BoxLayout {

  /**
   *
   *
   * @see ext.config.vboxlayout
   */
  public function VBoxLayout() {
    super();
  }

  /**
   Specifies the horizontal alignignment of child components. Defaults to <tt>'center'</tt>. Acceptable values are: <ul><li><b>center</b> : <div class="sub-desc">Aligned to the center of the container.</div></li><li><b>end</b> : <div class="sub-desc">Aligned to the right of the container.</div></li><li><b>start</b> : <div class="sub-desc">Aligned to the left of the container.</div></li><li><b>stretch</b> : <div class="sub-desc">Components are stretched horizontally to fill the container.</div></li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get align():String;

  /**
   Specifies the vertical alignment of child components. Defaults to <tt>'start'</tt>. Acceptable values are: <ul><li><b>center</b> : <div class="sub-desc">Aligned to the center of the container.</div></li><li><b>end</b> : <div class="sub-desc">Aligned to the bottom of the container.</div></li><li><b>justify</b> : <div class="sub-desc">Justified with both the top and bottom of the container.</div></li><li><b>start</b> : <div class="sub-desc">Aligned to the top of the container.</div></li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pack():String;

}
}
    