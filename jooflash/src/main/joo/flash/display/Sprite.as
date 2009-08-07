package flash.display {

import js.Element;
import js.HTMLCanvasElement;
import flash.display.Graphics;
import flash.display.DisplayObjectContainer;
import flash.display.Shape;
import flash.geom.Transform;
import flash.geom.Matrix;

/**
 * The Sprite class is a basic display list building block: a display list node that can display graphics and can also
 * contain children.
 * A Sprite object is similar to a movie clip, but does not have a timeline. Sprite is an appropriate base class for
 * objects that do not require timelines. For example, Sprite would be a logical base class for user interface (UI)
 * components that typically do not use the timeline.
 * The Sprite class is new in ActionScript 3.0. It provides an alternative to the functionality of the MovieClip class,
 * which retains all the functionality of previous ActionScript releases to provide backward compatibility.
 */
public class Sprite extends DisplayObjectContainer {

  /**
   * Creates a new Sprite instance. After you create the Sprite instance, call the
   * <code>DisplayObjectContainer.addChild()</code> or <code>DisplayObjectContainer.addChildAt()</code>
   * method to add the Sprite to a parent DisplayObjectContainer. 
   * @see flash.display.DisplayObjectContainer#addChildAt()
   */
  public function Sprite() {
    super();
  }

  /**
   * Specifies the Graphics object that belongs to this sprite where vector drawing commands can occur.
   * <p><b>Example</b></p>
   * The following example creates a circle sprite and uses its graphics property to draw a circle with a yellow
   * (0xFFCC00) fill:
   * <code>
   * import flash.display.Sprite;
   * 
   * var circle:Sprite = new Sprite();
   * circle.graphics.beginFill(0xFFCC00);
   * circle.graphics.drawCircle(40, 40, 40);
   * addChild(circle);
   * </code>
   * @return the Graphics object that belongs to this sprite where vector drawing commands can occur.
   */
  public function get graphics() : Graphics {
    if (!this._graphics) {
      var canvas : HTMLCanvasElement = Shape.createCanvas();
      var element : Element = this.getElement();
      if (element.firstChild) {
        element.insertBefore(canvas, element.firstChild);
      } else {
        element.appendChild(canvas);
      }
      this._graphics = new Graphics(canvas.getContext("2d") as CanvasRenderingContext2D);
    }
    return this._graphics;
  }

  override public function set transform(value:Transform):void {
    super.transform = value;
    var m : Matrix = value.matrix;
    if (m) {
      this.graphics.renderingContext.setTransform(m.a, m.b, m.c, m.d, m.tx, m.ty);
    }
  }

  private var _graphics : Graphics;
}
}