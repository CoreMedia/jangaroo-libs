package flash.geom {
import flash.display.DisplayObject;

/**
 * The Transform class provides access to color adjustment properties and two- or three-dimensional transformation objects that can be applied to a display object. During the transformation, the color or the orientation and position of a display object is adjusted (offset) from the current values or coordinates to new values or coordinates. The Transform class also collects data about color and two-dimensional matrix transformations that are applied to a display object and all of its parent objects. You can access these combined transformations through the <code>concatenatedColorTransform</code> and <code>concatenatedMatrix</code> properties.
 * <p>To apply color transformations: create a ColorTransform object, set the color adjustments using the object's methods and properties, and then assign the <code>colorTransformation</code> property of the <code>transform</code> property of the display object to the new ColorTransformation object.</p>
 * <p>To apply two-dimensional transformations: create a Matrix object, set the matrix's two-dimensional transformation, and then assign the <code>transform.matrix</code> property of the display object to the new Matrix object.</p>
 * <p>To apply three-dimensional transformations: start with a three-dimensional display object. A three-dimensional display object has a <code>z</code> property value other than zero. You do not need to create the Matrix3D object. For all three-dimensional objects, a Matrix3D object is created automatically when you assign a <code>z</code> value to a display object. You can access the display object's Matrix3D object through the display object's <code>transform</code> property. Using the methods of the Matrix3D class, you can add to or modify the existing transformation settings. Also, you can create a custom Matrix3D object, set the custom Matrix3D object's transformation elements, and then assign the new Matrix3D object to the display object using the <code>transform.matrix</code> property.</p>
 * <p>To modify a perspective projection of the stage or root object: use the <code>transform.matrix</code> property of the root display object to gain access to the PerspectiveProjection object. Or, apply different perspective projection properties to a display object by setting the perspective projection properties of the display object's parent. The child display object inherits the new properties. Specifically, create a PerspectiveProjection object and set its properties, then assign the PerspectiveProjection object to the <code>perspectiveProjection</code> property of the parent display object's <code>transform</code> property. The specified projection transformation then applies to all the display object's three-dimensional children.</p>
 * <p>Since both PerspectiveProjection and Matrix3D objects perform perspective transformations, do not assign both to a display object at the same time. Use the PerspectiveProjection object for focal length and projection center changes. For more control over the perspective transformation, create a perspective projection Matrix3D object.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Transform.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.display.DisplayObject#transform
 * @see ColorTransform
 * @see Matrix
 * @see Matrix3D
 * @see PerspectiveProjection
 *
 */
public class Transform {
  /**
   * A ColorTransform object containing values that universally adjust the colors in the display object.
   * @throws TypeError The colorTransform is null when being set
   *
   * @see ColorTransform
   *
   */
  public function get colorTransform():ColorTransform {
    return _colorTransform;
  }

  /**
   * @private
   */
  public function set colorTransform(value:ColorTransform):void {
    _colorTransform = value;
  }

  /**
   * A ColorTransform object representing the combined color transformations applied to the display object and all of its parent objects, back to the root level. If different color transformations have been applied at different levels, all of those transformations are concatenated into one ColorTransform object for this property.
   * @see ColorTransform
   *
   */
  public function get concatenatedColorTransform():ColorTransform {
    var concCT : ColorTransform = _colorTransform;
    var currentDO : DisplayObject = displayObject.parent;
    while (currentDO) {
      concCT.concat(currentDO.transform.colorTransform);
      currentDO = currentDO.parent;
    }
    return colorTransform;
  }

  /**
   * A Matrix object representing the combined transformation matrixes of the display object and all of its parent objects, back to the root level. If different transformation matrixes have been applied at different levels, all of those matrixes are concatenated into one matrix for this property. Also, for resizeable SWF content running in the browser, this property factors in the difference between stage coordinates and window coordinates due to window resizing. Thus, the property converts local coordinates to window coordinates, which may not be the same coordinate space as that of the Stage.
   */
  public function get concatenatedMatrix():Matrix {
    var concMatrix:Matrix = _matrix;
    var currentDO:DisplayObject = displayObject.parent;
    while (currentDO) {
      concMatrix.concat(currentDO.transform.matrix);
      currentDO = currentDO.parent;
    }
    return concMatrix;
  }

  /**
   * A Matrix object containing values that alter the scaling, rotation, and translation of the display object.
   * <p>If the <code>matrix</code> property is set to a value (not <code>null</code>), the <code>matrix3D</code> property is <code>null</code>. And if the <code>matrix3D</code> property is set to a value (not <code>null</code>), the <code>matrix</code> property is <code>null</code>.</p>
   * @throws TypeError The matrix is null when being set
   *
   * @see Matrix
   *
   */
  public function get matrix():Matrix {
    return _matrix;
  }

  /**
   * @private
   */
  public function set matrix(value:Matrix):void {
    _matrix = value;
    displayObject.transform = this;
  }

  /**
   * Provides access to the Matrix3D object of a three-dimensional display object. The Matrix3D object represents a transformation matrix that determines the display object's position and orientation. A Matrix3D object can also perform perspective projection.
   * <p>If the <code>matrix</code> property is set to a value (not <code>null</code>), the <code>matrix3D</code> property is <code>null</code>. And if the <code>matrix3D</code> property is set to a value (not <code>null</code>), the <code>matrix</code> property is <code>null</code>.</p>
   * @see Matrix3D
   *
   */
  public function get matrix3D():Matrix3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set matrix3D(value:Matrix3D):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Provides access to the PerspectiveProjection object of a three-dimensional display object. The PerspectiveProjection object can be used to modify the perspective transformation of the stage or to assign a perspective transformation to all the three-dimensional children of a display object.
   * <p>Based on the field of view and aspect ratio (dimensions) of the stage, a default PerspectiveProjection object is assigned to the root object.</p>
   * @see PerspectiveProjection
   *
   */
  public function get perspectiveProjection():PerspectiveProjection {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set perspectiveProjection(value:PerspectiveProjection):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A Rectangle object that defines the bounding rectangle of the display object on the stage.
   */
  public function get pixelBounds():Rectangle {
    return new Rectangle(displayObject.x, displayObject.y, displayObject.width, displayObject.height);
  }

  /**
   * Returns a Matrix3D object, which can transform the space of a specified display object in relation to the current display object's space. You can use the <code>getRelativeMatrix3D()</code> method to move one three-dimensional display object relative to another three-dimensional display object.
   * @param relativeTo The display object relative to which the transformation occurs. To get a Matrix3D object relative to the stage, set the parameter to the <code>root</code> or <code>stage</code> object. To get the world-relative matrix of the display object, set the parameter to a display object that has a perspective transformation applied to it.
   *
   * @return A Matrix3D object that can be used to transform the space from the <code>relativeTo</code> display object to the current display object space.
   *
   * @see Matrix3D
   *
   */
  public function getRelativeMatrix3D(relativeTo:DisplayObject):Matrix3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  // ************************** Jangaroo part **************************

  /**
   * @private
   */
  public function Transform(displayObject:DisplayObject) {
    this.displayObject = displayObject;
  }

  private var displayObject:DisplayObject;

  private var _colorTransform:ColorTransform;

  /**
   * A Matrix object containing values that alter the scaling, rotation, and translation of the display object.
   */
  private var _matrix:Matrix;

}
}
