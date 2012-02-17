package ext.layout {
import ext.config.accordionlayout;

/**
 * This is a layout that manages multiple Panels in an expandable accordion style such that only <b>one Panel can be expanded at any given time</b>. Each Panel has built-in support for expanding and collapsing.
 <p>Note: Only Ext.Panels <b>and all subclasses of Ext.Panel</b> may be used in an accordion layout Container.</p><p>This class is intended to be extended or created via the <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></tt> configuration property. See <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a></b></tt> for additional details.</p><p>Example usage:</p><pre><code>var accordion = new Ext.Panel({
 title: 'Accordion Layout',
 layout:'accordion',
 defaults: {
 // applied to each contained panel
 bodyStyle: 'padding:15px'
 },
 layoutConfig: {
 // layout-specific configs go here
 titleCollapse: false,
 animate: true,
 activeOnTop: true
 },
 items: [{
 title: 'Panel 1',
 html: '&lt;p&gt;Panel content!&lt;/p&gt;'
 },{
 title: 'Panel 2',
 html: '&lt;p&gt;Panel content!&lt;/p&gt;'
 },{
 title: 'Panel 3',
 html: '&lt;p&gt;Panel content!&lt;/p&gt;'
 }]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.accordionlayout
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AccordionLayout.html#cls-Ext.layout.AccordionLayout Ext JS source
 */
public class AccordionLayout extends FitLayout {

  /**
   *
   *
   * @see ext.config.accordionlayout
   */
  public function AccordionLayout(config:accordionlayout = null) {
    super(config);
  }

  /**
   True to swap the position of each panel as it is expanded so that it becomes the first item in the container, false to keep the panels in the rendered order. <b>This is NOT compatible with "animate:true"</b> (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get activeOnTop():Boolean;

  /**
   True to slide the contained panels open and closed during expand/collapse using animation, false to open and close directly with no animation (defaults to false). Note: to defer to the specific config setting of each contained panel for this property, set this to undefined at the layout level.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get animate():Boolean;

  /**
   True to set each contained item's width to 'auto', false to use the item's current width (defaults to true). Note that some components, in particular the <a href="Ext.grid.GridPanel.html">grid</a>, will not function properly within layouts if they have auto width, so in such cases this config should be set to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoWidth():Boolean;

  /**
   True to make sure the collapse/expand toggle button always renders first (to the left of) any other tools in the contained panels' title bars, false to render it last (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get collapseFirst():Boolean;

  /**
   True to adjust the active item's height to fill the available space in the container, false to use the item's current height, or auto height if not explicitly set (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get fill():Boolean;

  /**
   True to hide the contained panels' collapse/expand toggle buttons, false to display them (defaults to false). When set to true, <a href="output/Ext.layout.AccordionLayout.html#Ext.layout.AccordionLayout-titleCollapse">titleCollapse</a> should be true also.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideCollapseTool():Boolean;

  /**
   <b>Experimental</b>. If animate is set to true, this will result in each animation running in sequence.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sequence():Boolean;

  /**
   True to allow expand/collapse of each contained panel by clicking anywhere on the title bar, false to allow expand/collapse only when the toggle tool button is clicked (defaults to true). When set to false, <a href="output/Ext.layout.AccordionLayout.html#Ext.layout.AccordionLayout-hideCollapseTool">hideCollapseTool</a> should be false also.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get titleCollapse():Boolean;

  /**
   * Sets the active (expanded) item in the layout.
   *
   * @param item The string component id or numeric index of the item to activate
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AccordionLayout.html#method-Ext.layout.AccordionLayout-setActiveItem Ext JS source
   */
  public native function setActiveItem(item:*):void;

}
}
    