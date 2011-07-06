package ext.layout.borderlayout {

import ext.Panel;
import ext.layout.ContainerLayout;

/**
 * This is a region of a <a href="Ext.layout.BorderLayout.html">BorderLayout</a> that acts as a subcontainer within the layout. Each region has its own <a href="Ext.layout.ContainerLayout.html">layout</a> that is independent of other regions and the containing BorderLayout, and can be any of the <a href="Ext.layout.ContainerLayout.html">valid Ext layout types</a>.
 <p>Region size is managed automatically and cannot be changed by the user -- for <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-split">resizable regions</a>, see <a href="Ext.layout.BorderLayout.SplitRegion.html">Ext.layout.BorderLayout.SplitRegion</a>.</p>
 * @see ext.config.region
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#cls-Ext.layout.BorderLayout.Region Ext JS source
 */
public class Region {

  /**
   * Create a new Region.
   *
   * @param layout The <a href="Ext.layout.BorderLayout.html">BorderLayout</a> instance that is managing this Region.
   * @param config The configuration options
   * @param position The region position. Valid values are: <tt>north</tt>, <tt>south</tt>, <tt>east</tt>, <tt>west</tt> and <tt>center</tt>. Every <a href="Ext.layout.BorderLayout.html">BorderLayout</a> <b>must have a center region</b> for the primary content -- all other regions are optional.
   * @see ext.config.region
   */
  public function Region(layout:ContainerLayout, config:Object, position:String) {
    super();
  }

  /**
   True if this region is collapsed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#prop-Ext.layout.BorderLayout.Region-isCollapsed Ext JS source
   */
  public native function get isCollapsed():Boolean;

  /**
   This region's layout.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#prop-Ext.layout.BorderLayout.Region-layout Ext JS source
   */
  public native function get layout():ContainerLayout;

  /**
   This region's panel.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#prop-Ext.layout.BorderLayout.Region-panel Ext JS source
   */
  public native function get panel():Panel;

  /**
   This region's layout position (north, south, east, west or center).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#prop-Ext.layout.BorderLayout.Region-position Ext JS source
   */
  public native function get position():String;

  /**
   When a collapsed region's bar is clicked, the region's panel will be displayed as a floated panel that will close again once the user mouses out of that panel (or clicks out if <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-autoHide">autoHide</a> = false</tt>). Setting <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-animFloat">animFloat</a> = false</tt> will prevent the open and close of these floated panels from being animated (defaults to <tt>true</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get animFloat():Boolean;

  /**
   When a collapsed region's bar is clicked, the region's panel will be displayed as a floated panel. If <tt>autoHide = true</tt>, the panel will automatically hide after the user mouses out of the panel. If <tt>autoHide = false</tt>, the panel will continue to display until the user clicks outside of the panel (defaults to <tt>true</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoHide():Boolean;

  /**
   An object containing margins to apply to the region when in the collapsed state in the format:<pre><code>{
   top: (top margin),
   right: (right margin),
   bottom: (bottom margin),
   left: (left margin)
   }</code></pre><p>May also be a string containing space-separated, numeric margin values. The order of the sides associated with each value matches the way CSS processes margin values.</p><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul><br/><br/>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cmargins():Object;

  /**
   <tt>collapseMode</tt> supports two configuration values:<div class="mdetail-params"><ul><li><b><tt>undefined</tt></b> (default)<div class="sub-desc">By default, <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">collapsible</a> regions are collapsed by clicking the expand/collapse tool button that renders into the region's title bar.</div></li><li><b><tt>'mini'</tt></b><div class="sub-desc">Optionally, when <tt>collapseMode</tt> is set to <tt>'mini'</tt> the region's split bar will also display a small collapse button in the center of the bar. In <tt>'mini'</tt> mode the region will collapse to a thinner bar than in normal mode.</div></li></ul></div><br/><br/> <p><b>Note</b>: if a collapsible region does not have a title bar, then set <tt>collapseMode = 'mini'</tt> and <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-split">split</a> = true</tt> in order for the region to be <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">collapsible</a> by the user as the expand/collapse tool button (that would go in the title bar) will not be rendered.</p><p>See also <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-cmargins">cmargins</a></tt>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get collapseMode():String;

  /**
   <tt>true</tt> to allow the user to collapse this region (defaults to <tt>false</tt>). If <tt>true</tt>, an expand/collapse tool button will automatically be rendered into the title bar of the region, otherwise the button will not be shown.
   <p><b>Note</b>: that a title bar is required to display the collapse/expand toggle button -- if no <tt>title</tt> is specified for the region's panel, the region will only be collapsible if <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapseMode">collapseMode</a> = 'mini'</tt> and <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-split">split</a> = true</tt>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get collapsible():Boolean;

  /**
   <tt>true</tt> to allow clicking a collapsed region's bar to display the region's panel floated above the layout, <tt>false</tt> to force the user to fully expand a collapsed region by clicking the expand button to see it again (defaults to <tt>true</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get floatable():Boolean;

  /**
   <tt>true</tt> to create a <a href="Ext.layout.BorderLayout.SplitRegion.html">SplitRegion</a> and display a 5px wide <a href="Ext.SplitBar.html">Ext.SplitBar</a> between this region and its neighbor, allowing the user to resize the regions dynamically. Defaults to <tt>false</tt> creating a <a href="Ext.layout.BorderLayout.Region.html">Region</a>.
   <br/><p><b>Notes</b>:</p><div class="mdetail-params"><ul><li>this configuration option is ignored if <tt>region='center'</tt></li><li>when <tt>split == true</tt>, it is common to specify a <tt><a href="output/Ext.SplitBar.html#Ext.SplitBar-minSize">minSize</a></tt> and <tt><a href="output/Ext.SplitBar.html#Ext.SplitBar-maxSize">maxSize</a></tt> for the <a href="Ext.BoxComponent.html">BoxComponent</a> representing the region. These are not native configs of <a href="Ext.BoxComponent.html">BoxComponent</a>, and are used only by this class.</li><li>if <tt><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapseMode">collapseMode</a> = 'mini'</tt> requires <tt>split = true</tt> to reserve space for the collapse tool</li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get split():Boolean;

  /**
   * Returns the current margins for this region. If the region is collapsed, the <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-cmargins">cmargins</a> (collapsed margins) value will be returned, otherwise the <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-margins">margins</a> value will be returned.
   *
   * @return An object containing the element's margins: <tt>{left: (left margin), top: (top margin), right: (right margin), bottom: (bottom margin)}</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#method-Ext.layout.BorderLayout.Region-getMargins Ext JS source
   */
  public native function getMargins():Object;

  /**
   * Returns the minimum allowable height for this region.
   *
   * @return The minimum height
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#method-Ext.layout.BorderLayout.Region-getMinHeight Ext JS source
   */
  public native function getMinHeight():Number;

  /**
   * Returns the minimum allowable width for this region.
   *
   * @return The minimum width
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#method-Ext.layout.BorderLayout.Region-getMinWidth Ext JS source
   */
  public native function getMinWidth():Number;

  /**
   * Returns the current size of this region. If the region is collapsed, the size of the collapsedEl will be returned, otherwise the size of the region's panel will be returned.
   *
   * @return An object containing the element's size: <tt>{width: (element width), height: (element height)}</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#method-Ext.layout.BorderLayout.Region-getSize Ext JS source
   */
  public native function getSize():Object;

  /**
   * True if this region is currently visible, else false.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#method-Ext.layout.BorderLayout.Region-isVisible Ext JS source
   */
  public native function isVisible():Boolean;

  /**
   * Sets the specified panel as the container element for this region.
   *
   * @param panel The new panel
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#method-Ext.layout.BorderLayout.Region-setPanel Ext JS source
   */
  public native function setPanel(panel:Panel):void;

  /**
   * If this Region is <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-floatable">floatable</a>, and this Region has been slid into floating visibility, then this method slides this region back into its collapsed state.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#method-Ext.layout.BorderLayout.Region-slideIn Ext JS source
   */
  public native function slideIn():void;

  /**
   * If this Region is <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-floatable">floatable</a>, this method slides this Region into full visibility <i>over the top of the center Region</i> where it floats until either <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-slideIn">slideIn</a> is called, or other regions of the layout are clicked, or the mouse exits the Region.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BorderLayout.html#method-Ext.layout.BorderLayout.Region-slideOut Ext JS source
   */
  public native function slideOut():void;

}
}
    