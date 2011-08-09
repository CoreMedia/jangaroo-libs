package ext.config {


/**
 * A standard tooltip implementation for providing additional information when hovering over a target element.
 * <p>This class serves as a typed config object for constructor of class ToolTip.</p>
 *
 * @see ext.ToolTip
 */
[ExtConfig(target="ext.ToolTip", xtype="tooltip")]
public class tooltip extends tip {

  public function tooltip(config:Object = null) {

    super(config);
  }


  /**
   A numeric pixel value used to offset the default position of the anchor arrow (defaults to 0). When the anchor position is on the top or bottom of the tooltip, <code>anchorOffset</code> will be used as a horizontal offset. Likewise, when the anchor position is on the left or right side, <code>anchorOffset</code> will be used as a vertical offset.
   */
  public native function get anchorOffset():Number;

  /**
   * @private
   */
  public native function set anchorOffset(value:Number):void;

  /**
   True to anchor the tooltip to the target element, false to anchor it relative to the mouse coordinates (defaults to true). When <code>anchorToTarget</code> is true, use <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-defaultAlign">defaultAlign</a></code> to control tooltip alignment to the target element. When <code>anchorToTarget</code> is false, use <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-anchorPosition">anchorPosition</a></code> instead to control alignment.
   */
  public native function get anchorToTarget():Boolean;

  /**
   * @private
   */
  public native function set anchorToTarget(value:Boolean):void;

  /**
   True to automatically hide the tooltip after the mouse exits the target element or after the <code><a href="output/Ext.ToolTip.html#Ext.ToolTip-dismissDelay">dismissDelay</a></code> has expired if set (defaults to true). If <code><a href="closable.html">closable</a> = true</code> a close tool button will be rendered into the tooltip header.
   */
  public native function get autoHide():Boolean;

  /**
   * @private
   */
  public native function set autoHide(value:Boolean):void;

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
   */
  public native function get delegate():String;

  /**
   * @private
   */
  public native function set delegate(value:String):void;

  /**
   Delay in milliseconds before the tooltip automatically hides (defaults to 5000). To disable automatic hiding, set dismissDelay = 0.
   */
  public native function get dismissDelay():Number;

  /**
   * @private
   */
  public native function set dismissDelay(value:Number):void;

  /**
   Delay in milliseconds after the mouse exits the target element but before the tooltip actually hides (defaults to 200). Set to 0 for the tooltip to hide immediately.
   */
  public native function get hideDelay():Number;

  /**
   * @private
   */
  public native function set hideDelay(value:Number):void;

  /**
   An XY offset from the mouse position where the tooltip should be shown (defaults to [15,18]).
   */
  public native function get mouseOffset():Array;

  /**
   * @private
   */
  public native function set mouseOffset(value:Array):void;

  /**
   Delay in milliseconds before the tooltip displays after the mouse enters the target element (defaults to 500)
   */
  public native function get showDelay():Number;

  /**
   * @private
   */
  public native function set showDelay(value:Number):void;

  /**
   The target HTMLElement, Ext.Element or id to monitor for mouseover events to trigger showing this ToolTip.
   */
  public native function get target():*;

  /**
   * @private
   */
  public native function set target(value:*):void;

  /**
   True to have the tooltip follow the mouse as it moves over the target element (defaults to false).
   */
  public native function get trackMouse():Boolean;

  /**
   * @private
   */
  public native function set trackMouse(value:Boolean):void;


}
}
    