package ext.dd {
/**
 * A DragDrop implementation that inserts an empty, bordered div into the document that follows the cursor during drag operations. At the time of the click, the frame div is resized to the dimensions of the linked html element, and moved to the exact location of the linked element. References to the "frame" element refer to the single proxy element that was created to be dragged in place of all DDProxy elements on the page.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#cls-Ext.dd.DDProxy Ext JS source
 */
public class DDProxy extends DD {

  /**
   *
   *
   * @param id the id of the linked html element
   * @param sGroup the group of related DragDrop objects
   * @param config an object containing configurable attributes Valid properties for DDProxy in addition to those in DragDrop: resizeFrame, centerFrame, dragElId
   */
  public function DDProxy(id:String, sGroup:String, config:Object) {
    super(null, null, null);
  }

  /**
   By default the frame is positioned exactly where the drag element is, so we use the cursor offset provided by Ext.dd.DD. Another option that works only if you do not have constraints on the obj is to have the drag frame centered around the cursor. Set centerFrame to true for this effect.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DDProxy-centerFrame Ext JS source
   */
  public native function get centerFrame():Boolean;

  /**
   * @private
   */
  public native function set centerFrame(value:Boolean):void;

  /**
   The default drag frame div id
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DDProxy-dragElId Ext JS source
   */
  public static native function get dragElId():String;

  /**
   * @private
   */
  public static native function set dragElId(value:String):void;

  /**
   By default we resize the drag frame to be the same size as the element we want to drag (this is to get the frame effect). We can turn it off if we want a different behavior.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DDProxy-resizeFrame Ext JS source
   */
  public native function get resizeFrame():Boolean;

  /**
   * @private
   */
  public native function set resizeFrame(value:Boolean):void;

  /**
   * The proxy is automatically resized to the dimensions of the linked element when a drag is initiated, unless resizeFrame is set to false
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DDProxy-_resizeProxy Ext JS source
   */
  public native function _resizeProxy():void;

  /**
   * Creates the proxy element if it does not yet exist
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DDProxy-createFrame Ext JS source
   */
  public native function createFrame():void;

  /**
   * Initialization for the drag frame element. Must be called in the constructor of all subclasses
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DDProxy-initFrame Ext JS source
   */
  public native function initFrame():void;

  /**
   * Resizes the drag frame to the dimensions of the clicked object, positions it over the object, and finally displays it
   *
   * @param iPageX X click position
   * @param iPageY Y click position
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DDProxy-showFrame Ext JS source
   */
  public native function showFrame(iPageX:int, iPageY:int):void;

}
}
    