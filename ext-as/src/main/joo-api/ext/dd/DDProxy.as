package ext.dd {
import ext.EventObject;

/**
 * A DragDrop implementation that inserts an empty, bordered div into
 * the document that follows the cursor during drag operations.  At the time of
 * the click, the frame div is resized to the dimensions of the linked html
 * element, and moved to the exact location of the linked element.
 *
 * References to the "frame" element refer to the single proxy element that
 * was created to be dragged in place of all DDProxy elements on the
 * page.
 *
*/
public class DDProxy extends DD {
/**
 * @constructor
 * @param id the id of the linked html element
 * @param sGroup the group of related DragDrop objects
 * @param config an object containing configurable attributes
 *                Valid properties for DDProxy in addition to those in DragDrop:
 *                   resizeFrame, centerFrame, dragElId
 */
public function DDProxy(id : String, sGroup : String, config : Object) {
  super(id, sGroup, config);
}
/**
 * The default drag frame div id
 * @property Ext.dd.DDProxy.dragElId
 * @static
 */
public static var dragElId  : String = "ygddfdiv";
    /**
     * By default we resize the drag frame to be the same size as the element
     * we want to drag (this is to get the frame effect).  We can turn it off
     * if we want a different behavior.
     * @property resizeFrame
     */
    public var resizeFrame : Boolean;
    /**
     * By default the frame is positioned exactly where the drag element is, so
     * we use the cursor offset provided by Ext.dd.DD.  Another option that works only if
     * you do not have constraints on the obj is to have the drag frame centered
     * around the cursor.  Set centerFrame to true for this effect.
     * @property centerFrame
     */
    public var centerFrame : Boolean;
    /**
     * Creates the proxy element if it does not yet exist
     * @method createFrame
     */
    public native function createFrame() : void;
    /**
     * Initialization for the drag frame element.  Must be called in the
     * constructor of all subclasses
     * @method initFrame
     */
    public native function initFrame() : void;
    override public native function applyConfig() : void;
    /**
     * Resizes the drag frame to the dimensions of the clicked object, positions
     * it over the object, and finally displays it
     * @method showFrame
     * @param iPageX X click position
     * @param iPageY Y click position
     * @private
     */
    public native function showFrame(iPageX : int, iPageY : int) : void;
    /**
     * The proxy is automatically resized to the dimensions of the linked
     * element when a drag is initiated, unless resizeFrame is set to false
     * @method _resizeProxy
     * @private
     */
    public native function resizeProxy() : void;
    override protected native function b4MouseDown(e:EventObject) : void;
    override protected native function b4StartDrag(x:Number, y:Number) : void;
    override protected native function b4EndDrag(e:EventObject) : void;
    override public native function endDrag(e:EventObject) : void;
    public native function beforeMove() : void;
    public native function afterDrag() : void;
    override public native function toString() : String;
}}
