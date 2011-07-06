package ext {

import js.Element;

/**
 * A standard tooltip implementation for providing additional information when hovering over a target element.
 * <p>This component is created by the xtype 'tooltip' / the EXML element &lt;tooltip>.</p>
 * @see ext.config.tooltip
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolTip.html#cls-Ext.ToolTip Ext JS source
 */
public class ToolTip extends Tip {

  /**
   * Create a new Tooltip
   *
   * @param config The configuration options
   * @see ext.config.tooltip
   */
  public function ToolTip(config:Object) {
    super(null);
  }

  /**
   When a Tooltip is configured with the <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-delegate">delegate</a></code> option to cause selected child elements of the <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-target">target</a></code> Element to each trigger a separate show event, this property is set to the DOM element which triggered the show.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolTip.html#prop-Ext.ToolTip-triggerElement Ext JS source
   */
  public native function get triggerElement():js.Element;

  /**
   * @private
   */
  public native function set triggerElement(value:js.Element):void;

  /**
   A numeric pixel value used to offset the default position of the anchor arrow (defaults to 0). When the anchor position is on the top or bottom of the tooltip, <code>anchorOffset</code> will be used as a horizontal offset. Likewise, when the anchor position is on the left or right side, <code>anchorOffset</code> will be used as a vertical offset.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get anchorOffset():Number;

  /**
   True to anchor the tooltip to the target element, false to anchor it relative to the mouse coordinates (defaults to true). When <code>anchorToTarget</code> is true, use <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-defaultAlign">defaultAlign</a></code> to control tooltip alignment to the target element. When <code>anchorToTarget</code> is false, use <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-anchorPosition">anchorPosition</a></code> instead to control alignment.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get anchorToTarget():Boolean;

  /**
   True to automatically hide the tooltip after the mouse exits the target element or after the <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-dismissDelay">dismissDelay</a></code> has expired if set (defaults to true). If <code><a href="closable.html">closable</a> = true</code> a close tool button will be rendered into the tooltip header.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoHide():Boolean;

  /**
   Optional. A <a href="Ext.DomQuery.html">DomQuery</a> selector which allows selection of individual elements within the <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-target">target</a></code> element to trigger showing and hiding the ToolTip as the mouse moves within the target.
   <p>When specified, the child element of the target which caused a show event is placed into the <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-triggerElement">triggerElement</a></code> property before the ToolTip is shown.</p><p>This may be useful when a Component has regular, repeating elements in it, each of which need a Tooltip which contains information specific to that element. For example:</p><pre><code>var myGrid = new Ext.grid.gridPanel(gridConfig);
   myGrid.on('render', function(grid) {
   var store = grid.getStore();  // Capture the Store.
   var view = grid.getView();    // Capture the GridView.
   myGrid.tip = new Ext.ToolTip({
   target: view.mainBody,    // The overall target element.
   delegate: '.x-grid3-row', // Each grid row causes its own seperate show and hide.
   trackMouse: true,         // Moving within the row should not hide the tip.
   renderTo: document.body,  // Render immediately so that tip.body can be
   //  referenced prior to the first show.
   listeners: {              // Change content dynamically depending on which element
   //  triggered the show.
   beforeshow: function updateTipBody(tip) {
   var rowIndex = view.findRowIndex(tip.triggerElement);
   tip.body.dom.innerHTML = 'Over Record ID ' + store.getAt(rowIndex).id;
   }
   }
   });
   });
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get delegate():String;

  /**
   Delay in milliseconds before the tooltip automatically hides (defaults to 5000). To disable automatic hiding, set dismissDelay = 0.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dismissDelay():Number;

  /**
   Delay in milliseconds after the mouse exits the target element but before the tooltip actually hides (defaults to 200). Set to 0 for the tooltip to hide immediately.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideDelay():Number;

  /**
   An XY offset from the mouse position where the tooltip should be shown (defaults to [15,18]).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get mouseOffset():Array;

  /**
   Delay in milliseconds before the tooltip displays after the mouse enters the target element (defaults to 500)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get showDelay():Number;

  /**
   The target HTMLElement, Ext.Element or id to monitor for mouseover events to trigger showing this ToolTip.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get target():*;

  /**
   True to have the tooltip follow the mouse as it moves over the target element (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get trackMouse():Boolean;

  /**
   * Hides this tooltip if visible.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolTip.html#method-Ext.ToolTip-hide Ext JS source
   */
  override public native function hide():Component;

  /**
   * Binds this ToolTip to the specified element. The tooltip will be displayed when the mouse moves over the element.
   *
   * @param t The Element, HtmlElement, or ID of an element to bind to
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolTip.html#method-Ext.ToolTip-initTarget Ext JS source
   */
  public native function initTarget(t:*):void;

  /**
   * Shows this tooltip at the current event target XY position.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolTip.html#method-Ext.ToolTip-show Ext JS source
   */
  override public native function show():Component;

}
}
    