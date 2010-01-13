package ext {
/**
 * Slider which supports vertical or horizontal orientation, keyboard adjustments,
 * configurable snapping, axis clicking and animation. Can be added as an item to
 * any container. Example usage:
<pre><code>
new ext.Slider({
    renderTo&#58; Ext.getBody(),
    width&#58; 200,
    value&#58; 50,
    increment&#58; 10,
    minValue&#58; 0,
    maxValue&#58; 100
});
</code></pre>
 */
public class Slider extends BoxComponent {

    public function Slider(config : *) {
    super(config);
  }
/**
	 * @cfg {Number} value The value to initialize the slider with. Defaults to minValue.
	 */
	/**
	 * @cfg {Boolean} vertical Orient the Slider vertically rather than horizontally, defaults to false.
	 */
    public var vertical : Boolean;
	/**
	 * @cfg {Number} minValue The minimum value for the Slider. Defaults to 0.
	 */
    public var minValue : Number;
	/**
	 * @cfg {Number} maxValue The maximum value for the Slider. Defaults to 100.
	 */
    public var maxValue : Number;
    /**
     * @cfg {Number/Boolean} decimalPrecision.
     * <p>The number of decimal places to which to round the Slider's value. Defaults to 0.</p>
     * <p>To disable rounding, configure as <code><b>false</b></code>.</p>
     */
    public var decimalPrecision : *;
	/**
	 * @cfg {Number} keyIncrement How many units to change the Slider when adjusting with keyboard navigation. Defaults to 1. If the increment config is larger, it will be used instead.
	 */
    public var keyIncrement : Number;
	/**
	 * @cfg {Number} increment How many units to change the slider when adjusting by drag and drop. Use this option to enable 'snapping'.
	 */
    public var increment : Number;
    protected var clickRange;
	/**
	 * @cfg {Boolean} clickToChange Determines whether or not clicking on the Slider axis will change the slider. Defaults to true
	 */
    public var clickToChange  : Boolean;
	/**
	 * @cfg {Boolean} animate Turn on or off animation. Defaults to true
	 */
    public var animate : Boolean;
    /**
     * True while the thumb is in a drag operation
     */
    public var dragging : Boolean;
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    public native function initEvents() : void;
    public native function onMouseDown(e) : void;
    protected native function onClickChange(local) : void;
    protected native function onKeyDown(e) : void;
    protected native function doSnap(value) : void;
    override protected native function afterRender() : void;
    protected native function getRatio() : void;
    protected native function normalizeValue(v) : void;
	/**
	 * Programmatically sets the value of the Slider. Ensures that the value is constrained within
	 * the minValue and maxValue.
	 * @param value The value to set the slider to. (This will be constrained within minValue and maxValue)
	 * @param animate Turn on or off animation, defaults to true
	 */
    public native function setValue(value : Number, animate : Boolean, changeComplete) : void;
    protected native function translateValue(v) : void;
	public native function reverseValue(pos) : void;
    protected native function moveThumb(v, animate) : void;
    //override public native function focus() : void;
    protected native function onBeforeDragStart(e) : void;
    protected native function onDragStart(e) : void;
    protected native function onDrag(e) : void;
    protected native function onDragEnd(e) : void;
    override public native function onResize(w, h, rw, rh) : void;
    override protected native function onDisable() : void;
    override protected native function onEnable() : void;
    /**
     * Synchronizes the thumb position to the proper proportion of the total component width based
     * on the current slider <b class='link' title='#value'>value</b>.  This will be called automatically when the Slider
     * is resized by a layout, but if it is rendered auto width, this method can be called from
     * another resize handler to sync the Slider if necessary.
     */
    public native function syncThumb() : void;
	/**
	 * Returns the current value of the slider
	 * @return The current value of the slider
	 */
    public native function getValue() : Number;
}}
