package ext.config {

import joo.JavaScriptObject;

/**
 * This is a region of a <a href="Ext.layout.BorderLayout.html">BorderLayout</a> that acts as a subcontainer within the layout. Each region has its own <a href="Ext.layout.ContainerLayout.html">layout</a> that is independent of other regions and the containing BorderLayout, and can be any of the <a href="Ext.layout.ContainerLayout.html">valid Ext layout types</a>.
 <p>Region size is managed automatically and cannot be changed by the user -- for <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-split">resizable regions</a>, see <a href="Ext.layout.BorderLayout.SplitRegion.html">Ext.layout.BorderLayout.SplitRegion</a>.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Region.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.layout.borderlayout.Region
 */
[ExtConfig(target="ext.layout.borderlayout.Region")]
public class region extends JavaScriptObject {

  public function region(config:Object = null) {

    super(config);
  }


  /**
   When a collapsed region's bar is clicked, the region's panel will be displayed as a floated panel that will close again once the user mouses out of that panel (or clicks out if <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-autoHide">autoHide</a> = false</tt>). Setting <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-animFloat">animFloat</a> = false</tt> will prevent the open and close of these floated panels from being animated (defaults to <tt>true</tt>).
   */
  public native function get animFloat():Boolean;

  /**
   * @private
   */
  public native function set animFloat(value:Boolean):void;

  /**
   When a collapsed region's bar is clicked, the region's panel will be displayed as a floated panel. If <tt>autoHide = true</tt>, the panel will automatically hide after the user mouses out of the panel. If <tt>autoHide = false</tt>, the panel will continue to display until the user clicks outside of the panel (defaults to <tt>true</tt>).
   */
  public native function get autoHide():Boolean;

  /**
   * @private
   */
  public native function set autoHide(value:Boolean):void;

  /**
   An object containing margins to apply to the region when in the collapsed state in the format:<pre><code>{
   top: (top margin),
   right: (right margin),
   bottom: (bottom margin),
   left: (left margin)
   }</code></pre><p>May also be a string containing space-separated, numeric margin values. The order of the sides associated with each value matches the way CSS processes margin values.</p><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul><br/><br/>
   */
  public native function get cmargins():Object;

  /**
   * @private
   */
  public native function set cmargins(value:Object):void;

  /**
   <tt>collapseMode</tt> supports two configuration values:<div class="mdetail-params"><ul><li><b><tt>undefined</tt></b> (default)<div class="sub-desc">By default, <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">collapsible</a> regions are collapsed by clicking the expand/collapse tool button that renders into the region's title bar.</div></li><li><b><tt>'mini'</tt></b><div class="sub-desc">Optionally, when <tt>collapseMode</tt> is set to <tt>'mini'</tt> the region's split bar will also display a small collapse button in the center of the bar. In <tt>'mini'</tt> mode the region will collapse to a thinner bar than in normal mode.</div></li></ul></div><br/><br/> <p><b>Note</b>: if a collapsible region does not have a title bar, then set <tt>collapseMode = 'mini'</tt> and <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-split">split</a> = true</tt> in order for the region to be <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">collapsible</a> by the user as the expand/collapse tool button (that would go in the title bar) will not be rendered.</p><p>See also <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-cmargins">cmargins</a></tt>.</p>
   */
  public native function get collapseMode():String;

  /**
   * @private
   */
  public native function set collapseMode(value:String):void;

  /**
   <tt>true</tt> to allow the user to collapse this region (defaults to <tt>false</tt>). If <tt>true</tt>, an expand/collapse tool button will automatically be rendered into the title bar of the region, otherwise the button will not be shown.
   <p><b>Note</b>: that a title bar is required to display the collapse/expand toggle button -- if no <tt>title</tt> is specified for the region's panel, the region will only be collapsible if <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapseMode">collapseMode</a> = 'mini'</tt> and <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-split">split</a> = true</tt>.</p>
   */
  public native function get collapsible():Boolean;

  /**
   * @private
   */
  public native function set collapsible(value:Boolean):void;

  /**
   <tt>true</tt> to allow clicking a collapsed region's bar to display the region's panel floated above the layout, <tt>false</tt> to force the user to fully expand a collapsed region by clicking the expand button to see it again (defaults to <tt>true</tt>).
   */
  public native function get floatable():Boolean;

  /**
   * @private
   */
  public native function set floatable(value:Boolean):void;

  /**
   An object containing margins to apply to the region when in the expanded state in the format:<pre><code>{
   top: (top margin),
   right: (right margin),
   bottom: (bottom margin),
   left: (left margin)
   }</code></pre><p>May also be a string containing space-separated, numeric margin values. The order of the sides associated with each value matches the way CSS processes margin values:</p><div class="mdetail-params"><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul></div><br/><br/> <p>Defaults to:</p><pre><code>{top:0, right:0, bottom:0, left:0}
   </code></pre>
   */
  public native function get margins():Object;

  /**
   * @private
   */
  public native function set margins(value:Object):void;

  /**
   The minimum allowable height in pixels for this region (defaults to <tt>50</tt>) <tt>maxHeight</tt> may also be specified.<br/><br/><br/><p><b>Note</b>: setting the <tt><a href="output/Ext.SplitBar.html#Ext.SplitBar-minSize">minSize</a></tt> / <tt><a href="output/Ext.SplitBar.html#Ext.SplitBar-maxSize">maxSize</a></tt> supersedes any specified <tt>minHeight</tt> / <tt>maxHeight</tt>.</p>
   */
  public native function get minHeight():Number;

  /**
   * @private
   */
  public native function set minHeight(value:Number):void;

  /**
   The minimum allowable width in pixels for this region (defaults to <tt>50</tt>). <tt>maxWidth</tt> may also be specified.
   <br/><p><b>Note</b>: setting the <tt><a href="output/Ext.SplitBar.html#Ext.SplitBar-minSize">minSize</a></tt> / <tt><a href="output/Ext.SplitBar.html#Ext.SplitBar-maxSize">maxSize</a></tt> supersedes any specified <tt>minWidth</tt> / <tt>maxWidth</tt>.</p>
   */
  public native function get minWidth():Number;

  /**
   * @private
   */
  public native function set minWidth(value:Number):void;

  /**
   <tt>true</tt> to create a <a href="Ext.layout.BorderLayout.SplitRegion.html">SplitRegion</a> and display a 5px wide <a href="Ext.SplitBar.html">Ext.SplitBar</a> between this region and its neighbor, allowing the user to resize the regions dynamically. Defaults to <tt>false</tt> creating a <a href="Ext.layout.BorderLayout.Region.html">Region</a>.
   <br/><p><b>Notes</b>:</p><div class="mdetail-params"><ul><li>this configuration option is ignored if <tt>region='center'</tt></li><li>when <tt>split == true</tt>, it is common to specify a <tt><a href="output/Ext.SplitBar.html#Ext.SplitBar-minSize">minSize</a></tt> and <tt><a href="output/Ext.SplitBar.html#Ext.SplitBar-maxSize">maxSize</a></tt> for the <a href="Ext.BoxComponent.html">BoxComponent</a> representing the region. These are not native configs of <a href="Ext.BoxComponent.html">BoxComponent</a>, and are used only by this class.</li><li>if <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapseMode">collapseMode</a> = 'mini'</tt> requires <tt>split = true</tt> to reserve space for the collapse tool</li></ul></div>
   */
  public native function get split():Boolean;

  /**
   * @private
   */
  public native function set split(value:Boolean):void;


}
}
    