package flash.text.engine {
import flash.display.DisplayObject;
import flash.events.EventDispatcher;

/**
 * The GraphicElement class represents a graphic element in a TextBlock or GroupElement object. Assign a GraphicElement object to the <code>content</code> property of a TextBlock object to display a graphic or an image with <code>TextBlock.createTextLine()</code>. Assign it to a GroupElement object to combine it with other graphic and text elements.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/GraphicElement.html#includeExamplesSummary">View the examples</a></p>
 * @see ContentElement
 * @see GroupElement
 * @see TextBlock
 *
 */
public final class GraphicElement extends ContentElement {
  /**
   * The height in pixels to reserve for the graphic in the line. It is the responsibility of the caller to scale the graphic.
   * <p>The default value is 15.0.</p>
   */
  public function get elementHeight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set elementHeight(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The width in pixels to reserve for the graphic in the line. It is the responsibility of the caller to scale the graphic.
   * <p>The default value is 15.0.</p>
   */
  public function get elementWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set elementWidth(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The DisplayObject to be used as a graphic for the GraphicElement.
   * <p>The default value is <code>null</code>.</p>
   * <p>When the GraphicElement becomes part of a text line, the graphic is added as a child of the line. Setting the graphic removes the old graphic from the line and adds the new one.</p>
   */
  public function get graphic():DisplayObject {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set graphic(value:DisplayObject):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new GraphicElement instance.
   * <p>The registration point of the graphic aligns with the upper-left corner of the region defined by <code>elementHeight</code>, <code>elementWidth</code> and <code>elementFormat.baselineShift</code>. The graphic is not scaled to match the size of the region. If the GraphicElement has an <code>eventMirror</code>, the <code>elementWidth</code> and <code>elementHeight</code> properties, and not the graphic, determine the size and position of the resulting mirror region. If a loader is used, the graphic might not be loaded at the time the text line and the mirror regions are created.</p>
   * @param graphic The DisplayObject to populate the GraphicElement. The default value is <code>null</code>.
   * @param elementWidth The width of the area reserved for the element in pixels. The default value is 15.
   * @param elementHeight The height of the area reserved for the element in pixels. The default value is 15.
   * @param elementFormat The element format for the element. The default value is <code>null</code>.
   * @param eventMirror The <code>EventDispatcher</code> object that receives copies of every event dispatched to text lines created based on this content element. The default value is <code>null</code>.
   * @param textRotation The rotation applied to the element as a unit. Use <code>flash.text.engine.TextRotation</code> constants for this property. The default value is <code>flash.text.engine.TextRotation.ROTATE_0</code>.
   *
   * @see GroupElement
   *
   */
  public function GraphicElement(graphic:DisplayObject = null, elementWidth:Number = 15.0, elementHeight:Number = 15.0, elementFormat:ElementFormat = null, eventMirror:EventDispatcher = null, textRotation:String = "rotate0") {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
