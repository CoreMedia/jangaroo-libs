package ext {

/**
 * An extended <b class='link'>ext.Element</b> object that supports a shadow and shim, constrain to viewport and
 * automatic maintaining of shadow/shim positions.
*/
public class Layer extends Element {
/**
 * @cfg {Boolean} shim False to disable the iframe shim in browsers which need one (defaults to true)
 * @cfg {String/Boolean} shadow True to automatically create an <b class='link'>ext.Shadow</b>, or a string indicating the
 * shadow's display <b class='link'>ext.Shadow#mode</b>. False to disable the shadow. (defaults to false)
 * @cfg {Object} dh DomHelper object config to create element with (defaults to {tag: 'div', cls: 'x-layer'}).
 * @cfg {Boolean} constrain False to disable constrain to viewport (defaults to true)
 * @cfg {String} cls CSS class to add to the element
 * @cfg {Number} zindex Starting z-index (defaults to 11000)
 * @cfg {Number} shadowOffset Number of pixels to offset the shadow (defaults to 4)
 * @cfg {Boolean} useDisplay
 * Defaults to use css offsets to hide the Layer. Specify <code>true</code>
 * to use css style <code>'display:none;'</code> to hide the Layer.
 * @constructor
 * @param config An object with config options.
 * @param existingEl Uses an existing DOM element. If the element is not found it creates it.
 */
  public function Layer(config : Object, existingEl : * = undefined) {
    super(existingEl, true);
  }
            public var offset  : Boolean;
            public var mode ;
    public native function getZIndex(config : Object, existingEl : * = undefined) : void;
    public native function getShim() : void;
    public native function hideShim() : void;
    public native function disableShadow() : void;
    public native function enableShadow(show) : void;
    protected native function sync(doShow) : void;
    protected native function destroy() : void;
    override public native function remove() : void;
    protected native function beginUpdate() : void;
    protected native function endUpdate() : void;
    protected native function hideUnders(negOffset) : void;
    protected native function constrainXY() : void;
    //override public native function isVisible() : void;
    protected native function showAction() : void;
    protected native function hideAction() : void;
    //override public native function setVisible(v, a, d, c, e) : void;
    public native function storeXY(xy) : void;
    public native function storeLeftTop(left, top) : void;
    protected native function beforeFx() : void;
    protected native function afterFx() : void;
    protected native function beforeAction() : void;
    //override public native function setLeft(left) : void;
    //override public native function setTop(top) : void;
    //override public native function setLeftTop(left, top) : void;
    //override public native function setXY(xy, a, d, c, e) : void;
    protected native function createCB(c) : void;
    //override public native function setX(x, a, d, c, e) : void;
    //override public native function setY(y, a, d, c, e) : void;
    //override public native function setSize(w, h, a, d, c, e) : void;
    //override public native function setWidth(w, a, d, c, e) : void;
    //override public native function setHeight(h, a, d, c, e) : void;
    //override public native function setBounds(x, y, w, h, a, d, c, e) : void;
    /**
     * Sets the z-index of this layer and adjusts any shadow and shim z-indexes. The layer z-index is automatically
     * incremented by two more than the value passed in so that it always shows above any shadow or shim (the shadow
     * element, if any, will be assigned z-index + 1, and the shim element, if any, will be assigned the unmodified z-index).
     * @param zindex The new z-index to set
     * @return The Layer
     */
    public native function setZIndex(zindex : Number) : Layer;

}}
