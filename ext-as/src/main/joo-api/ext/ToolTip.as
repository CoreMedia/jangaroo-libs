package ext {
/**
 * A standard tooltip implementation for providing additional information when hovering over a target element.
*/
public class ToolTip extends Tip {
/**
 * @constructor
 * Create a new Tooltip
 * @param config The configuration options
 */
public function ToolTip(config : Object) {
  super(config);
}
    /**
     * When a Tooltip is configured with the <b class='link' title='#delegate'>delegate</b> option to cause selected child elements of the <b class='link' title='#target'>target</b>
     * Element to each trigger a seperate show event, this property is set to the DOM element which triggered the show.
     * @property triggerElement
     */
    /**
     * @cfg {Mixed} target The target HTMLElement, ext.Element or id to monitor for mouseover events to trigger
     * showing this ToolTip.
     */
    /**
     * @cfg {Boolean} autoHide True to automatically hide the tooltip after the mouse exits the target element
     * or after the <b class='link' title='#dismissDelay'>dismissDelay</b> has expired if set (defaults to true).  If <b class='link'>closable</b> = true a close
     * tool button will be rendered into the tooltip header.
     */
    /**
     * @cfg {Number} showDelay Delay in milliseconds before the tooltip displays after the mouse enters the
     * target element (defaults to 500)
     */
    public var showDelay : Number;
    /**
     * @cfg {Number} hideDelay Delay in milliseconds after the mouse exits the target element but before the
     * tooltip actually hides (defaults to 200).  Set to 0 for the tooltip to hide immediately.
     */
    public var hideDelay : Number;
    /**
     * @cfg {Number} dismissDelay Delay in milliseconds before the tooltip automatically hides (defaults to 5000).
     * To disable automatic hiding, set dismissDelay = 0.
     */
    public var dismissDelay : Number;
    /**
     * @cfg {Array} mouseOffset An XY offset from the mouse position where the tooltip should be shown (defaults to [15,18]).
     */
    /**
     * @cfg {Boolean} trackMouse True to have the tooltip follow the mouse as it moves over the target element (defaults to false).
     */
    public var trackMouse  : Boolean;
    /**
     * @cfg {Boolean} anchorToTarget True to anchor the tooltip to the target element, false to
     * anchor it relative to the mouse coordinates (defaults to true).  When anchorToTarget is
     * true, use <b class='link' title='#defaultAlign'>defaultAlign</b> to control tooltip alignment to the target element.  When
     * anchorToTarget is false, use <b class='link' title='#anchorPosition'>anchorPosition</b> instead to control alignment.
     */
    public var anchorToTarget : Boolean;
    /**
     * @cfg {Number} anchorOffset A numeric pixel value used to offset the default position of the
     * anchor arrow (defaults to 0).  When the anchor position is on the top or bottom of the tooltip,
     * anchorOffset will be used as a horizontal offset.  Likewise, when the anchor position is on the
     * left or right side, anchorOffset will be used as a vertical offset.
     */
    public var anchorOffset : Number;
    /**
     * @cfg {String} delegate <p>Optional. A <b class='link' title='ext.DomQuery'>DomQuery</b> selector which allows selection of individual elements
     * within the <b class='link' title='#target'>target</b> element to trigger showing and hiding the ToolTip as the mouse moves within the target.</p>
     * <p>When specified, the child element of the target which caused a show event is placed into the <b class='link' title='#triggerElement'>triggerElement</b> property
     * before the ToolTip is shown.</p>
     * <p>This may be useful when a Component has regular, repeating elements in it, each of which need a Tooltip which contains
     * information specific to that element. For example:</p><pre><code>
var myGrid = new Ext.grid.gridPanel(gridConfig);
myGrid.on('render', function(grid) {
    var store = grid.getStore();  // Capture the Store.
    var view = grid.getView();    // Capture the GridView.
    myGrid.tip = new ext.ToolTip({
        target: view.mainBody,    // The overall target element.
        delegate: '.x-grid3-row', // Each grid row causes its own seperate show and hide.
        trackMouse: true,         // Moving within the row should not hide the tip.
        renderTo: document.body,  // Render immediately so that tip.body can be referenced prior to the first show.
        listeners: {              // Change content dynamically depending on which element triggered the show.
            beforeshow: function updateTipBody(tip) {
                var rowIndex = view.findRowIndex(tip.triggerElement);
                tip.body.dom.innerHTML = "Over Record ID " + store.getAt(rowIndex).id;
            }
        }
    });
});</code></pre>
     */
    protected var targetCounter : String;
    public var constrainPosition;
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function afterRender() : void;
    /**
     * Binds this ToolTip to the specified element. The tooltip will be displayed when the mouse moves over the element.
     * @param t The Element, HtmlElement, or ID of an element to bind to
     */
    public native function initTarget(t : *) : void;
    protected native function onMouseMove(e) : void;
    protected native function getTargetXY() : void;
    public native function getMouseOffset() : void;
    protected native function getAnchorPosition() : void;
    protected native function getAnchorAlign() : void;
    protected native function getOffsets() : void;
    protected native function onTargetOver(e) : void;
    protected native function delayShow() : void;
    protected native function onTargetOut(e) : void;
    protected native function delayHide() : void;
    /**
     * Hides this tooltip if visible.
     */
    override public native function hide() : Component;
    /**
     * Shows this tooltip at the current event target XY position.
     */
    override public native function show() : Component;
    override public native function showAt(xy : Array) : void;
    protected native function syncAnchor() : void;
    override public native function setPagePosition(x : Number, y : Number) : BoxComponent;
    protected native function clearTimer(name) : void;
    protected native function clearTimers() : void;
    override protected native function onShow() : void;
    override protected native function onHide() : void;
    protected native function onDocMouseDown(e) : void;
    override protected native function onDisable() : void;
    override protected native function adjustPosition(x, y) : void;
    override protected native function onDestroy() : void;
}}
