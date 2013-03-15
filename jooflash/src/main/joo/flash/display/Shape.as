package flash.display {
import flash.geom.Matrix;
import flash.geom.Rectangle;

import js.CanvasRenderingContext2D;
import js.HTMLCanvasElement;
import js.HTMLElement;

/**
 * This class is used to create lightweight shapes using the ActionScript drawing application program interface (API). The Shape class includes a <code>graphics</code> property, which lets you access methods from the Graphics class.
 * <p>The Sprite class also includes a <code>graphics</code>property, and it includes other features not available to the Shape class. For example, a Sprite object is a display object container, whereas a Shape object is not (and cannot contain child display objects). For this reason, Shape objects consume less memory than Sprite objects that contain the same graphics. However, a Sprite object supports user input events, while a Shape object does not.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/Shape.html#includeExamplesSummary">View the examples</a></p>
 * @see Graphics
 * @see Sprite
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7e3c.html Core display classes
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dce.html Basics of the drawing API
 *
 */
public class Shape extends DisplayObject {
  /**
   * Specifies the Graphics object belonging to this Shape object, where vector drawing commands can occur.
   */
  public function get graphics():Graphics {
    return this._graphics;
  }

  /**
   * Creates a new Shape object.
   */
  public function Shape() {
    super();
    _graphics = new Graphics();
  }

  // ************************** Jangaroo part **************************

  override protected function getBoundsTransformed(matrix:Matrix = null, resultRectangle:Rectangle = null):Rectangle {
    return _graphics.getBoundsTransformed(matrix, resultRectangle);
  }

  override protected function _doRender(renderState:RenderState):void {
    _graphics._render(renderState);
  }

  override protected function getElementName():String {
    return 'canvas';
  }

  override protected function updateElement(element:HTMLElement, bounds:Rectangle):void {
    var canvas:HTMLCanvasElement = HTMLCanvasElement(element);
    var context:CanvasRenderingContext2D = CanvasRenderingContext2D(canvas.getContext('2d'));
    RenderState.resizeAndReset(context, _graphics.width, _graphics.height);
    _graphics._renderIntoCanvas(context);
  }

  private var _graphics : Graphics;
}
}