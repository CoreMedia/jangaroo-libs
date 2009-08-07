package flash.geom {

import flash.geom.Rectangle;
import flash.display.DisplayObject;
import flash.display.Shape;

/**
 * The Transform class provides access to color adjustment properties and two- or three-dimensional
 * transformation objects that can be applied to a display object.
 */
public class Transform {

  public function Transform (displayObject : DisplayObject) {
    this.displayObject = displayObject;
  }

  private var displayObject : DisplayObject;

  /**
   * A ColorTransform object containing values that universally adjust the colors in the display object.
   * @return
   */
  public function get colorTransform () : ColorTransform {
    return _colorTransform;
  }

  public function set colorTransform (value : ColorTransform) : void {
    _colorTransform = value;
  }

  private var _colorTransform : ColorTransform;

  /**
   * A ColorTransform object representing the combined color transformations applied to the display object
   * and all of its parent objects, back to the root level.
   * @return
   */
  public function get concatenatedColorTransform () : ColorTransform {
    var concCT : ColorTransform = _colorTransform;
    var currentDO : DisplayObject = displayObject.parent;
    while (currentDO) {
      concCT.concat(currentDO.transform.colorTransform);
      currentDO = currentDO.parent;
    }
    return colorTransform;
  }

  /**
   * A Matrix object containing values that alter the scaling, rotation, and translation of the display object.
   * @return
   */
  public function get matrix () : Matrix {
    return _matrix;
  }
  public function set matrix (value:Matrix) : void {
    _matrix = value;
    displayObject.transform = this;
  }

  private var _matrix : Matrix;

  /**
   * A Matrix object representing the combined transformation matrixes of the display object and all of its
   * parent objects, back to the root level.
   * @return
   */
  public function get concatenatedMatrix () : Matrix {
    var concMatrix : Matrix = _matrix;
    var currentDO : DisplayObject = displayObject.parent;
    while (currentDO) {
      concMatrix.concat(currentDO.transform.matrix);
      currentDO = currentDO.parent;
    }
    return concMatrix;
  }

  /**
   * A Rectangle object that defines the bounding rectangle of the display object on the stage.
   * @return
   */
  public function get pixelBounds () : Rectangle {
    return new Rectangle(displayObject.x, displayObject.y, displayObject.width, displayObject.height);
  }

}
}
