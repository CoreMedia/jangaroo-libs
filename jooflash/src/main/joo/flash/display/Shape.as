package flash.display {

import js.Element;
import flash.geom.Transform;
import flash.geom.Matrix;

/**
 * The Shape class is used to create lightweight shapes by using the ActionScript drawing application program interface
 * (API). The Shape class includes a graphics property, which lets you access methods from the Graphics class.
 * <p>The Sprite class also includes a graphics property, and it includes other features not available to the Shape
 * class. For example, a Sprite object is a display object container, whereas a Shape object is not (and cannot contain
 * child display objects). For this reason, Shape objects consume less memory than Sprite objects that contain the same
 * graphics. However, a Sprite object supports mouse click events, while a Shape object does not.</p>
 * @see flash.display.Graphics
 * @see flash.display.Sprite
 */
public class Shape extends DisplayObject {

  /**
   * Creates a new Shape object.
   */
  public function Shape() {
    super();
    _graphics = new Graphics();
  }

  override protected function createElement() : Element {
    return graphics.canvas;
  }

  /**
   * Specifies the Graphics object belonging to this Shape object, where vector drawing commands can occur.
   * @return  the Graphics object belonging to this Shape object
   */
  public function get graphics() : Graphics {
    return this._graphics;
  }

  override public function set transform(value:Transform):void {
    super.transform = value;
    var m : Matrix = value.matrix;
    if (m) {
      this.graphics.renderingContext.setTransform(m.a, m.b, m.c, m.d, m.tx, m.ty);
    }
  }

  override public function get width():Number {
    return _graphics.width;
  }

  override public function get height():Number {
    return _graphics.height;
  }

  private var _graphics : Graphics;
}
}