package flash.geom {


/**
 * The Matrix3D class represents a transformation matrix that determines the position and orientation of a three-dimensional (3D) display object. The matrix can perform transformation functions including translation (repositioning along the x, y, and z axes), rotation, and scaling (resizing). The Matrix3D class can also perform perspective projection, which maps points from the 3D coordinate space to a two-dimensional (2D) view.
 * <p>A single matrix can combine multiple transformations and apply them at once to a 3D display object. For example, a matrix can be applied to 3D coordinates to perform a rotation followed by a translation.</p>
 * <p>When you explicitly set the <code>z</code> property or any of the rotation or scaling properties of a display object, a corresponding Matrix3D object is automatically created.</p>
 * <p>You can access a 3D display object's Matrix3D object through the <code>transform.matrix3d</code> property. 2D objects do not have a Matrix3D object.</p>
 * <p>The value of the <code>z</code> property of a 2D object is zero and the value of its <code>matrix3D</code> property is <code>null</code>.</p>
 * <p><b>Note:</b> If the same Matrix3D object is assigned to two different display objects, a runtime error is thrown.</p>
 * <p>The Matrix3D class uses a 4x4 square matrix: a table of four rows and columns of numbers that hold the data for the transformation. The first three rows of the matrix hold data for each 3D axis (x,y,z). The translation information is in the last column. The orientation and scaling data are in the first three columns. The scaling factors are the diagonal numbers in the first three columns. Here is a representation of Matrix3D elements:</p>
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/Matrix3Delements.jpg" /></p>
 * <p>You don't need to understand matrix mathematics to use the Matrix3D class. It offers specific methods that simplify the task of transformation and projection, such as the <code>appendTranslation()</code>, <code>appendRotation()</code>, or <code>interpolateTo()</code> methods. You also can use the <code>decompose()</code> and <code>recompose()</code> methods or the <code>rawData</code> property to access the underlying matrix elements.</p>
 * <p>Display objects cache their axis rotation properties to have separate rotation for each axis and to manage the different combinations of rotations. When a method of a Matrix3D object is called to transform a display object, the rotation cache of the object is invalidated.</p>
 * @see flash.display.DisplayObject
 * @see Transform
 * @see PerspectiveProjection
 * @see Vector3D
 * @see Orientation3D
 * @see Utils3D
 * @see Matrix
 *
 */
public class Matrix3D {
  /**
   * A Number that determines whether a matrix is invertible.
   * <p>A Matrix3D object must be invertible. You can use the <code>determinant</code> property to make sure that a Matrix3D object is invertible. If determinant is zero, an inverse of the matrix does not exist. For example, if an entire row or column of a matrix is zero or if two rows or columns are equal, the determinant is zero. Determinant is also used to solve a series of equations.</p>
   * <p>Only a square matrix, like the Matrix3D class, has a determinant.</p>
   * @see #invert()
   *
   */
  public function get determinant():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A Vector3D object that holds the position, the 3D coordinate (x,y,z) of a display object within the transformation's frame of reference. The <code>position</code> property provides immediate access to the translation vector of the display object's matrix without needing to decompose and recompose the matrix.
   * <p>With the <code>position</code> property, you can get and set the translation elements of the transformation matrix.</p>
   * @see #appendTranslation()
   * @see #prependTranslation()
   *
   */
  public function get position():Vector3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set position(value:Vector3D):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A Vector of 16 Numbers, where every four elements can be a row or a column of a 4x4 matrix.
   * <p>An exception is thrown if the <code>rawData</code> property is set to a matrix that is not invertible. The Matrix3D object must be invertible. If a non-invertible matrix is needed, create a subclass of the Matrix3D object.</p>
   * @see Vector
   *
   */
  public function get rawData():Vector.<Number> {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set rawData(value:Vector.<Number>):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a Matrix3D object. Matrix3D objects can be initialized with a Vector of 16 Numbers, where every four elements can be a row or a column. Once the Matrix3D object is created, you can access its matrix elements with the <code>rawData</code> property.
   * <p>If no parameter is defined, the constructor produces an identity or unit Matrix3D object. In matrix notation, an identity matrix has a value of one for all elements on the main diagonal position and a value of zero for all other elements. The value of the <code>rawData</code> property of an identity matrix is: <code>1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1</code>. The position or translation value of the identity matrix is <code>Vector3D(0,0,0)</code>, the rotation setting is <code>Vector3D(0,0,0)</code>, and the scale value is <code>Vector3D(1,1,1)</code>.</p>
   * @param v A Vector of 16 Numbers, where each four elements can be a row or a column of a 4x4 matrix.
   *
   * @see #identity()
   * @see Vector
   *
   */
  public function Matrix3D(v:Vector.<Number> = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Appends the matrix by multiplying another Matrix3D object by the current Matrix3D object. The result combines both matrix transformations. You can multiply a Matrix3D object by many matrixes. The final Matrix3D object contains the result of all the transformations.
   * <p>Matrix multiplication is different from matrix addition. Matrix multiplication is not commutative. In other words, A times B is not equal to B times A. With the <code>append()</code> method, the multiplication happens from the left side, meaning the <code>lhs</code> Matrix3D object is on the left side of the multiplication operator.</p><code>thisMatrix = lhs * thisMatrix;</code>
   * <p>The first time the <code>append()</code> method is called, it makes a modification relative to the parent space. Subsequent calls are relative to the frame of reference of the appended Matrix3D object.</p>
   * <p>The <code>append()</code> method replaces the current matrix with the appended matrix. If you want to append two matrixes without altering the current matrix, copy the current matrix by using the <code>clone()</code> method and then apply the <code>append()</code> method to the copy.</p>
   * @param lhs A left-hand-side matrix that is multiplied by the current Matrix3D object.
   *
   * @see #prepend()
   *
   */
  public function append(lhs:Matrix3D):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Appends an incremental rotation to a Matrix3D object. When the Matrix3D object is applied to a display object, the matrix performs the rotation after other transformations in the Matrix3D object.
   * <p>The display object's rotation is defined by an axis, an incremental degree of rotation around the axis, and an optional pivot point for the center of the object's rotation. The axis can be any general direction. The common axes are the <code>X_AXIS</code> (<code>Vector3D(1,0,0)</code>), <code>Y_AXIS</code> (<code>Vector3D(0,1,0)</code>), and <code>Z_AXIS</code> (<code>Vector3D(0,0,1)</code>). In aviation terminology, the rotation about the y axis is called yaw. The rotation about the x axis is called pitch. The rotation about the z axis is called roll.</p>
   * <p>The order of transformation matters. A rotation followed by a translation transformation produces a different effect than a translation followed by a rotation transformation.</p>
   * <p>The rotation effect is not absolute. It is relative to the current position and orientation. To make an absolute change to the transformation matrix, use the <code>recompose()</code> method. The <code>appendRotation()</code> method is also different from the axis rotation property of the display object, such as <code>rotationX</code> property. The rotation property is always performed before any translation, whereas the <code>appendRotation()</code> method is performed relative to what is already in the matrix. To make sure that you get a similar effect as the display object's axis rotation property, use the <code>prependRotation()</code> method, which performs the rotation before other transformations in the matrix.</p>
   * <p>When the <code>appendRotation()</code> method's transformation is applied to a Matrix3D object of a display object, the cached rotation property values of the display object are invalidated.</p>
   * <p>One way to have a display object rotate around a specific point relative to its location is to set the translation of the object to the specified point, rotate the object using the <code>appendRotation()</code> method, and translate the object back to the original position. In the following example, the <code>myObject</code> 3D display object makes a y-axis rotation around the coordinate (10,10,0).</p>
   * <listing>
   *
   *     myObject.z = 1;
   *     myObject.transform.matrix3D.appendTranslation(10,10,0);
   *     myObject.transform.matrix3D.appendRotation(1, Vector3D.Y_AXIS);
   *     myObject.transform.matrix3D.appendTranslation(-10,-10,0);
   *
   *    </listing>
   * @param degrees The degree of the rotation.
   * @param axis The axis or direction of rotation. The usual axes are the <code>X_AXIS</code> (<code>Vector3D(1,0,0)</code>), <code>Y_AXIS</code> (<code>Vector3D(0,1,0)</code>), and <code>Z_AXIS</code> (<code>Vector3D(0,0,1)</code>).
   * @param pivotPoint A point that determines the center of an object's rotation. The default pivot point for an object is its registration point.
   *
   * @see #prependRotation()
   *
   */
  public function appendRotation(degrees:Number, axis:Vector3D, pivotPoint:Vector3D = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Appends an incremental scale change along the x, y, and z axes to a Matrix3D object. When the Matrix3D object is applied to a display object, the matrix performs the scale changes after other transformations in the Matrix3D object. The default scale factor is (1.0, 1.0, 1.0).
   * <p>The scale is defined as a set of three incremental changes along the three axes (x,y,z). You can multiply each axis with a different number. When the scale changes are applied to a display object, the object's size increases or decreases. For example, setting the x, y, and z axes to two doubles the size of the object, while setting the axes to <code>0.5</code> halves the size. To make sure that the scale transformation only affects a specific axis, set the other parameters to one. A parameter of one means no scale change along the specific axis.</p>
   * <p>The <code>appendScale()</code> method can be used for resizing as well as for managing distortions, such as stretch or contract of a display object, or for zooming in and out on a location. Scale transformations are automatically performed during a display object's rotation and translation.</p>
   * <p>The order of transformation matters. A resizing followed by a translation transformation produces a different effect than a translation followed by a resizing transformation.</p>
   * @param xScale A multiplier used to scale the object along the x axis.
   * @param yScale A multiplier used to scale the object along the y axis.
   * @param zScale A multiplier used to scale the object along the z axis.
   *
   * @see #prependScale()
   *
   */
  public function appendScale(xScale:Number, yScale:Number, zScale:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Appends an incremental translation, a repositioning along the x, y, and z axes, to a Matrix3D object. When the Matrix3D object is applied to a display object, the matrix performs the translation changes after other transformations in the Matrix3D object.
   * <p>The translation is defined as a set of three incremental changes along the three axes (x,y,z). When the transformation is applied to a display object, the display object moves from it current location along the x, y, and z axes as specified by the parameters. To make sure that the translation only affects a specific axis, set the other parameters to zero. A zero parameter means no change along the specific axis.</p>
   * <p>The translation changes are not absolute. They are relative to the current position and orientation of the matrix. To make an absolute change to the transformation matrix, use the <code>recompose()</code> method. The order of transformation also matters. A translation followed by a rotation transformation produces a different effect than a rotation followed by a translation.</p>
   * @param x An incremental translation along the x axis.
   * @param y An incremental translation along the y axis.
   * @param z An incremental translation along the z axis.
   *
   * @see #prependTranslation()
   * @see #position
   *
   */
  public function appendTranslation(x:Number, y:Number, z:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a new Matrix3D object that is an exact copy of the current Matrix3D object.
   * @return A new Matrix3D object that is an exact copy of the current Matrix3D object.
   *
   */
  public function clone():Matrix3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the transformation matrix's translation, rotation, and scale settings as a Vector of three Vector3D objects. The first Vector3D object holds the translation elements. The second Vector3D object holds the rotation elements. The third Vector3D object holds the scale elements.
   * <p>Some Matrix3D methods, such as the <code>interpolateTo()</code> method, automatically decompose and recompose the matrix to perform their transformation.</p>
   * <p>To modify the matrix's transformation with an absolute parent frame of reference, retrieve the settings with the <code>decompose()</code> method and make the appropriate changes. You can then set the Matrix3D object to the modified transformation using the <code>recompose()</code> method.</p>
   * <p>The <code>decompose()</code> method's parameter specifies the orientation style that is meant to be used for the transformation. The default orientation is <code>eulerAngles</code>, which defines the orientation with three separate angles of rotation for each axis. The rotations occur consecutively and do not change the axis of each other. The display object's axis rotation properties perform Euler Angles orientation style transformation. The other orientation style options are <code>axisAngle</code> and <code>quaternion</code>. The Axis Angle orientation uses a combination of an axis and an angle to determine the orientation. The axis around which the object is rotated is a unit vector that represents a direction. The angle represents the magnitude of the rotation about the vector. The direction also determines where a display object is facing and the angle determines which way is up. The <code>appendRotation()</code> and <code>prependRotation()</code> methods use the Axis Angle orientation. The quaternion orientation uses complex numbers and the fourth element of a vector. The three axes of rotation (x,y,z) and an angle of rotation (w) represent the orientation. The <code>interpolate()</code> method uses quaternion.</p>
   * @param orientationStyle An optional parameter that determines the orientation style used for the matrix transformation. The three types of orientation style are <code>eulerAngles</code> (constant <code>EULER_ANGLES</code>), <code>axisAngle</code> (constant <code>AXIS_ANGLE</code>), and <code>quaternion</code> (constant <code>QUATERNION</code>). For additional information on the different orientation style, see the <code>geom.Orientation3D</code> class.
   *
   * @return A Vector of three Vector3D objects, each holding the translation, rotation, and scale settings, respectively.
   *
   * @see Orientation3D
   * @see #recompose()
   * @see Vector
   *
   * @example This example uses the <code>decompose()</code> and <code>recompose()</code> methods to have an ellipse stretch horizontally while moving toward the vanishing point. The first Vector3D object returned by the <code>decompose()</code> method holds the translation coordinates. The third Vector3D object holds the scale settings. The Vector3D object's <code>incrementBy()</code> method increments the matrix's absolute translation and scale settings.
   * <listing>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.display.Shape;
   *     import flash.geom.*;
   *     import flash.events.Event;
   *
   *     public class Matrix3DdecomposeExample extends MovieClip {
   *         private var ellipse:Shape = new Shape();
   *
   *         public function Matrix3DdecomposeExample():void {
   *
   *             ellipse.x = (this.stage.stageWidth / 2);
   *             ellipse.y = (this.stage.stageHeight - 40);
   *             ellipse.z = 1;
   *             ellipse.graphics.beginFill(0xFF0000);
   *             ellipse.graphics.lineStyle(2);
   *             ellipse.graphics.drawEllipse(0, 0, 50, 40);
   *             ellipse.graphics.endFill();
   *             addChild(ellipse);
   *
   *             ellipse.addEventListener(Event.ENTER_FRAME, enterFrameHandler);
   *         }
   *
   *         private function enterFrameHandler(e:Event):void {
   *
   *             var v3:Vector.<Vector3D> = new Vector.<Vector3D>(3);
   *             v3 = ellipse.transform.matrix3D.decompose();
   *             v3[0].incrementBy(new Vector3D(0,0,1));
   *             v3[2].incrementBy(new Vector3D(0.01,0,0));
   *             ellipse.transform.matrix3D.recompose(v3);
   *         }
   *     }
   * }
   * </listing>
   */
  public function decompose(orientationStyle:String = "eulerAngles"):Vector.<Vector3D> {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Uses the transformation matrix without its translation elements to transform a Vector3D object from one space coordinate to another. The returned Vector3D object holds the new coordinates after the rotation and scaling transformations have been applied. If the <code>deltaTransformVector()</code> method applies a matrix that only contains a translation transformation, the returned Vector3D is the same as the original Vector3D object.
   * <p>You can use the <code>deltaTransformVector()</code> method to have a display object in one coordinate space respond to the rotation transformation of a second display object. The object does not copy the rotation; it only changes its position to reflect the changes in the rotation. For example, to use the <code>display.Graphics</code> API for drawing a rotating 3D display object, you must map the object's rotating coordinates to a 2D point. First, retrieve the object's 3D coordinates after each rotation, using the <code>deltaTransformVector()</code> method. Next, apply the display object's <code>local3DToGlobal()</code> method to translate the 3D coordinates to 2D points. You can then use the 2D points to draw the rotating 3D object.</p>
   * @param v A Vector3D object holding the coordinates that are going to be transformed.
   *
   * @return A Vector3D object with the transformed coordinates.
   *
   * @see #transformVectors()
   * @see #transformVector()
   *
   */
  public function deltaTransformVector(v:Vector3D):Vector3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Converts the current matrix to an identity or unit matrix. An identity matrix has a value of one for the elements on the main diagonal and a value of zero for all other elements. The result is a matrix where the <code>rawData</code> value is <code>1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1</code> and the rotation setting is set to <code>Vector3D(0,0,0)</code>, the position or translation setting is set to <code>Vector3D(0,0,0)</code>, and the scale is set to <code>Vector3D(1,1,1)</code>. Here is a representation of an identity matrix.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/identityMatrix.jpg" /></p>
   * <p>An object transformed by applying an identity matrix performs no transformation. In other words, if a matrix is multiplied by an identity matrix, the result is a matrix that is the same as (identical to) the original matrix.</p>
   */
  public function identity():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Simplifies the interpolation from one frame of reference to another by interpolating a display object a percent point closer to a target display object. The result is a new Matrix3D object where all the elements for the translation, rotation, and scale are interpolated to values between the current display object and the target display object.
   * <p>The <code>interpolate()</code> method avoids some of the unwanted results that can occur when using methods such as the display object's axis rotation properties. The <code>interpolate()</code> method invalidates the cached value of the rotation property of the display object and converts the orientation elements of the display object's matrix to a quaternion before interpolation. This method guarantees the shortest, most efficient path for the rotation. It also produces a smooth, gimbal-lock-free rotation. A gimbal lock can occur when using Euler Angles, where each axis is handled independently. During the rotation around two or more axes, the axes can become aligned, leading to unexpected results. Quaternion rotation avoids the gimbal lock.</p>
   * <p>Consecutive calls to the <code>interpolate()</code> method can produce the effect of a display object starting quickly and then slowly approaching another display object. For example, if you set the <code>thisMat</code> parameter to the returned Matrix3D object, the <code>toMat</code> parameter to the target display object's associated Matrix3D object, and the <code>percent</code> parameter to <code>0.1</code>, the display object moves ten percent toward the target object. On subsequent calls or in subsequent frames, the object moves ten percent of the remaining 90 percent, then ten percent of the remaining 80 percent, until it reaches the target.</p>
   * @param thisMat The Matrix3D object that is to be interpolated.
   * @param toMat The target Matrix3D object.
   * @param percent A value between <code>0</code> and <code>1</code> that determines the percent the <code>thisMat</code> Matrix3D object is interpolated toward the target Matrix3D object.
   *
   * @return A Matrix3D object with elements that place the values of the matrix between the original matrix and the target matrix. When the returned matrix is applied to the <code>this</code> display object, the object moves the specified percent closer to the target object.
   *
   * @see #interpolateTo()
   * @see Utils3D#pointTowards()
   *
   */
  public static function interpolate(thisMat:Matrix3D, toMat:Matrix3D, percent:Number):Matrix3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Interpolates the display object's matrix a percent closer to a target's matrix. All the elements for translation, rotation, and scale of the display object are interpolated to values between the current and target display object's matrix.
   * <p>The <code>interpolateTo()</code> method avoids the unwanted results that can occur when using methods such as the display object's axis rotation properties. The <code>interpolateTo()</code> method invalidates the cached value of the rotation property of the display object and converts the orientation elements of the display object's matrix to a quaternion before interpolation. This method guarantees the shortest, most efficient path for the rotation. It also produces a smooth, gimbal-lock-free rotation. A gimbal lock can occur when using Euler Angles, where each axis is handled independently. During the rotation around two or more axes, the axes can become aligned, leading to unexpected results. Quaternion rotation avoids the gimbal lock.</p>
   * <p>Consecutive calls to the <code>interpolateTo()</code> method can produce the effect of a display object starting quickly and then slowly approaching another display object. For example, if the percent parameter is set to <code>0.1</code>, the display object moves ten percent toward the target object specified by the <code>toMat</code> parameter. On subsequent calls or in subsequent frames, the object moves ten percent of the remaining 90 percent, then ten percent of the remaining 80 percent, until it reaches the target.</p>
   * @param toMat The target Matrix3D object.
   * @param percent A value between <code>0</code> and <code>1</code> that determines the location of the display object relative to the target. The closer the value is to <code>1.0</code>, the closer the display object is to its current position. The closer the value is to <code>0</code>, the closer the display object is to the target.
   *
   * @see #interpolate()
   *
   * @example In this example, <code>ellipse2</code>, a three-dimensional display object, goes toward <code>ellipse1</code>, another three-dimensional display object. <code>ellipse2</code> follows <code>ellipse1</code> around trying to catch it. If <code>ellipse1</code> does not rotate around its y axis, <code>ellipse2</code> will reach and land on top of <code>ellipse1</code>. The two ellipses are drawn in the same way but are placed in different three-dimensional world-space locations.
   * <listing>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.display.Shape;
   *     import flash.display.Graphics;
   *     import flash.geom.*;
   *     import flash.events.Event;
   *
   *     public class InterpolateToExample extends MovieClip {
   *         private var ellipse1:Shape = new Shape();
   *         private var ellipse2:Shape = new Shape();
   *
   *         public function InterpolateToExample():void {
   *
   *             ellipse1 = myEllipses(250, 100, 500, 0xFF0000);
   *             addChild(ellipse1);
   *
   *             ellipse2 = myEllipses(-30, 120, 1, 0x00FF00);
   *             addChild(ellipse2);
   *
   *             addEventListener(Event.ENTER_FRAME, enterFrameHandler);
   *         }
   *
   *         private function myEllipses(x:Number, y:Number, z:Number, c:Number):Shape {
   *             var s:Shape = new Shape();
   *             s.x = x;
   *             s.y = y;
   *             s.z = z;
   *             s.graphics.beginFill(c);
   *             s.graphics.lineStyle(2);
   *             s.graphics.drawEllipse(100, 50, 100, 80);
   *             s.graphics.endFill();
   *             return s;
   *         }
   *
   *         private function enterFrameHandler(e:Event) {
   *             ellipse1.rotationY += 1;
   *
   *             ellipse2.transform.matrix3D.interpolateTo(ellipse1.transform.matrix3D, 0.1);
   *         }
   *     }
   * }
   * </listing>
   */
  public function interpolateTo(toMat:Matrix3D, percent:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Inverts the current matrix. An inverted matrix is the same size as the original but performs the opposite transformation of the original matrix. For example, if the original matrix has an object rotate around the x axis in one direction, the inverse of the matrix will have the object rotate around the axis in the opposite direction. Applying an inverted matrix to an object undoes the transformation performed by the original matrix. If a matrix is multiplied by its inverse matrix, the result is an identity matrix.
   * <p>An inverse of a matrix can be used to divide one matrix by another. The way to divide matrix A by matrix B is to multiply matrix A by the inverse of matrix B. The inverse matrix can also be used with a camera space. When the camera moves in the world space, the object in the world needs to move in the opposite direction to transform from the world view to the camera or view space. For example, if the camera moves closer, the objects becomes bigger. In other words, if the camera moves down the world z axis, the object moves up world z axis.</p>
   * <p>The <code>invert()</code> method replaces the current matrix with an inverted matrix. If you want to invert a matrix without altering the current matrix, first copy the current matrix by using the <code>clone()</code> method and then apply the <code>invert()</code> method to the copy.</p>
   * <p>The Matrix3D object must be invertible.</p>
   * @return Returns <code>true</code> if the matrix was successfully inverted.
   *
   * @see #determinant
   *
   */
  public function invert():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Rotates the display object so that it faces a specified position. This method allows for an in-place modification to the orientation. The forward direction vector of the display object (the <code>at</code> Vector3D object) points at the specified world-relative position. The display object's up direction is specified with the <code>up</code> Vector3D object.
   * <p>The <code>pointAt()</code> method invalidates the cached rotation property value of the display object. The method decomposes the display object's matrix and modifies the rotation elements to have the object turn to the specified position. It then recomposes (updates) the display object's matrix, which performs the transformation. If the object is pointing at a moving target, such as a moving object's position, then with each subsequent call, the method has the object rotate toward the moving target.</p>
   * <p><b>Note:</b> If you use the <code>Matrix3D.pointAt()</code> method without setting the optional parameters, a target object does not face the specified world-relative position by default. You need to set the values for <code>at</code> to the -y-axis (0,-1,0) and <code>up</code> to the -z axis (0,0,-1).</p>
   * @param pos The world-relative position of the target object. World-relative defines the object's transformation relative to the world space and coordinates, where all objects are positioned.
   * @param at The object-relative vector that defines where the display object is pointing. Object-relative defines the object's transformation relative to the object space, the object's own frame of reference and coordinate system. Default value is the <i>+y</i> axis (0,1,0).
   * @param up The object-relative vector that defines "up" for the display object. If the object is drawn looking down from above, the <i>+z</i> axis is its "up" vector. Object-relative defines the object's transformation relative to the object space, the object's own frame of reference and coordinate system. Default value is the <i>+z</i>-axis (0,0,1).
   *
   * @see Utils3D#pointTowards()
   *
   * @example In this example, a triangle points and follows the path of the ellipse's movement. The ellipse and triangle are set to different locations. The ellipse then moves up toward the corner of the stage. The triangle follows the ellipse's translation changes. You can change the triangle's shape and the "at" and "up" parameters of the <code>pointAt()</code> to see their impacts on the triangle's movement.
   * <listing>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.display.Shape;
   *     import flash.display.Graphics;
   *     import flash.geom.*;
   *     import flash.events.Event;
   *
   *     public class PointAtExample extends MovieClip {
   *         private var ellipse:Shape = new Shape();
   *         private var triangle:Shape = new Shape();
   *
   *         public function PointAtExample():void {
   *             ellipse.graphics.beginFill(0xFF0000);
   *             ellipse.graphics.lineStyle(2);
   *             ellipse.graphics.drawEllipse(30, 40, 50, 40);
   *             ellipse.graphics.endFill();
   *             ellipse.x = 100;
   *             ellipse.y = 150;
   *             ellipse.z = 1;
   *
   *             triangle.graphics.beginFill(0x0000FF);
   *             triangle.graphics.moveTo(0, 0);
   *             triangle.graphics.lineTo(40, 40);
   *             triangle.graphics.lineTo(80, 0);
   *             triangle.graphics.lineTo(0, 0);
   *             triangle.graphics.endFill();
   *             triangle.x = 200;
   *             triangle.y = 50;
   *             triangle.z = 1;
   *
   *             addChild(ellipse);
   *             addChild(triangle);
   *
   *             ellipse.addEventListener(Event.ENTER_FRAME, ellipseEnterFrameHandler);
   *             triangle.addEventListener(Event.ENTER_FRAME, triangleEnterFrameHandler);
   *         }
   *
   *         private function ellipseEnterFrameHandler(e:Event) {
   *             if(e.target.y > 0) {
   *                 e.target.y -= 1;
   *                 e.target.x -= 1;
   *             }
   *         }
   *
   *         private function triangleEnterFrameHandler(e:Event) {
   *             e.target.transform.matrix3D.pointAt(ellipse.transform.matrix3D.position,
   *                                                 Vector3D.X_AXIS, Vector3D.Y_AXIS);
   *         }
   *     }
   * }
   * </listing>
   */
  public function pointAt(pos:Vector3D, at:Vector3D = null, up:Vector3D = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Prepends a matrix by multiplying the current Matrix3D object by another Matrix3D object. The result combines both matrix transformations.
   * <p>Matrix multiplication is different from matrix addition. Matrix multiplication is not commutative. In other words, A times B is not equal to B times A. With the <code>prepend()</code> method, the multiplication happens from the right side, meaning the <code>rhs</code> Matrix3D object is on the right side of the multiplication operator.</p><code>thisMatrix = thisMatrix * rhs</code>
   * <p>The modifications made by <code>prepend()</code> method are object-space-relative. In other words, they are always relative to the object's initial frame of reference.</p>
   * <p>The <code>prepend()</code> method replaces the current matrix with the prepended matrix. If you want to prepend two matrixes without altering the current matrix, first copy the current matrix by using the <code>clone()</code> method and then apply the <code>prepend()</code> method to the copy.</p>
   * @param rhs A right-hand-side of the matrix by which the current Matrix3D is multiplied.
   *
   * @see #append()
   *
   */
  public function prepend(rhs:Matrix3D):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Prepends an incremental rotation to a Matrix3D object. When the Matrix3D object is applied to a display object, the matrix performs the rotation before other transformations in the Matrix3D object.
   * <p>The display object's rotation is defined by an axis, an incremental degree of rotation around the axis, and an optional pivot point for the center of the object's rotation. The axis can be any general direction. The common axes are the <code>X_AXIS</code> (<code>Vector3D(1,0,0)</code>), <code>Y_AXIS</code> (<code>Vector3D(0,1,0)</code>), and <code>Z_AXIS</code> (<code>Vector3D(0,0,1)</code>). In aviation terminology, the rotation about the y axis is called yaw. The rotation about the x axis is called pitch. The rotation about the z axis is called roll.</p>
   * <p>The order of transformation matters. A rotation followed by a translation transformation produces a different effect than a translation followed by a rotation.</p>
   * <p>The rotation effect is not absolute. The effect is object-relative, relative to the frame of reference of the original position and orientation. To make an absolute change to the transformation, use the <code>recompose()</code> method.</p>
   * <p>When the <code>prependRotation()</code> method's transformation is applied to a Matrix3D object of a display object, the cached rotation property values of the display object are invalidated.</p>
   * <p>One way to have a display object rotate around a specific point relative to its location is to set the translation of the object to the specified point, rotate the object using the <code>prependRotation()</code> method, and translate the object back to the original position. In the following example, the <code>myObject</code> 3D display object makes a y-axis rotation around the coordinate (10,10,0).</p>
   * <listing>
   *
   *     myObject.z = 1;
   *     myObject.transform.matrix3D.prependTranslation(10,10,0);
   *     myObject.transform.matrix3D.prependRotation(1, Vector3D.Y_AXIS);
   *     myObject.transform.matrix3D.prependTranslation(-10,-10,0);
   *
   *    </listing>
   * @param degrees The degree of rotation.
   * @param axis The axis or direction of rotation. The usual axes are the <code>X_AXIS</code> (<code>Vector3D(1,0,0)</code>), <code>Y_AXIS</code> (<code>Vector3D(0,1,0)</code>), and <code>Z_AXIS</code> (<code>Vector3D(0,0,1)</code>).
   * @param pivotPoint A point that determines the center of rotation. The default pivot point for an object is its registration point.
   *
   * @see #appendRotation()
   *
   * @example In this example, the user can move a mouse to rotate an ellipse around its <i>x</i> and <i>y</i> axes. The ellipse is drawn with its registration point in its center. The ellipse rotates around its <i>y</i> axis using the mouse's <i>x</i> coordinate. It rotates around its <i>x</i> axis using the mouse's <i>y</i> coordinate.
   * <listing>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.display.Shape;
   *     import flash.geom.*;
   *     import flash.events.MouseEvent;
   *
   *     public class Matrix3DprependRotationExample extends MovieClip {
   *         private var ellipse:Shape = new Shape();
   *
   *         public function Matrix3DprependRotationExample():void {
   *
   *             ellipse.graphics.beginFill(0xFF0000);
   *             ellipse.graphics.lineStyle(2);
   *             ellipse.graphics.drawEllipse(-50, -40, 100, 80);
   *             ellipse.graphics.endFill();
   *
   *             ellipse.x = (this.stage.stageWidth / 2);
   *             ellipse.y = (this.stage.stageHeight / 2);
   *             ellipse.z = 1;
   *
   *             addChild(ellipse);
   *
   *             stage.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
   *         }
   *
   *         private function mouseMoveHandler(e:MouseEvent):void {
   *             var y:int;
   *             var x:int;
   *
   *             if(e.localX > ellipse.x) {
   *                 y = (Math.round(e.localX) / 100);
   *             } else {
   *                 y = -(Math.round(e.localX) / 10);
   *             }
   *
   *             if(e.localY > ellipse.y) {
   *                 x = (Math.round(e.localY) / 100);
   *             } else {
   *                 x = -(Math.round(e.localY) / 100);
   *             }
   *
   *             ellipse.transform.matrix3D.prependRotation(y, Vector3D.Y_AXIS);
   *             ellipse.transform.matrix3D.prependRotation(x, Vector3D.X_AXIS);
   *         }
   *
   *     }
   * }
   * </listing>
   */
  public function prependRotation(degrees:Number, axis:Vector3D, pivotPoint:Vector3D = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Prepends an incremental scale change along the x, y, and z axes to a Matrix3D object. When the Matrix3D object is applied to a display object, the matrix performs the scale changes before other transformations in the Matrix3D object. The changes are object-relative, relative to the frame of reference of the original position and orientation. The default scale factor is (1.0, 1.0, 1.0).
   * <p>The scale is defined as a set of three incremental changes along the three axes (x,y,z). You can multiply each axis with a different number. When the scale changes are applied to a display object, the object's size increases or decreases. For example, setting the x, y, and z axes to two doubles the size of the object, while setting the axes to <code>0.5</code> halves the size. To make sure that the scale transformation only affects a specific axis, set the other parameters to one. A parameter of one means no scale change along the specific axis.</p>
   * <p>The <code>prependScale()</code> method can be used for resizing as well as for managing distortions, such as stretch or contract of a display object. It can also be used for zooming in and out on a location. Scale transformations are automatically performed during a display object's rotation and translation.</p>
   * <p>The order of transformation matters. A resizing followed by a translation transformation produces a different effect than a translation followed by a resizing transformation.</p>
   * @param xScale A multiplier used to scale the object along the x axis.
   * @param yScale A multiplier used to scale the object along the y axis.
   * @param zScale A multiplier used to scale the object along the z axis.
   *
   * @see #appendScale()
   *
   */
  public function prependScale(xScale:Number, yScale:Number, zScale:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Prepends an incremental translation, a repositioning along the x, y, and z axes, to a Matrix3D object. When the Matrix3D object is applied to a display object, the matrix performs the translation changes before other transformations in the Matrix3D object.
   * <p>Translation specifies the distance the display object moves from its current location along the x, y, and z axes. The <code>prependTranslation()</code> method sets the translation as a set of three incremental changes along the three axes (x,y,z). To have a translation change only a specific axis, set the other parameters to zero. A zero parameter means no change along the specific axis.</p>
   * <p>The translation changes are not absolute. The effect is object-relative, relative to the frame of reference of the original position and orientation. To make an absolute change to the transformation matrix, use the <code>recompose()</code> method. The order of transformation also matters. A translation followed by a rotation transformation produces a different effect than a rotation followed by a translation transformation. When <code>prependTranslation()</code> is used, the display object continues to move in the direction it is facing, regardless of the other transformations. For example, if a display object was facing toward a positive x axis, it continues to move in the direction specified by the <code>prependTranslation()</code> method, regardless of how the object has been rotated. To make translation changes occur after other transformations, use the <code>appendTranslation()</code> method.</p>
   * @param x An incremental translation along the x axis.
   * @param y An incremental translation along the y axis.
   * @param z An incremental translation along the z axis.
   *
   * @see #appendTranslation()
   *
   * @example In this example, the user can push an ellipse up the stage's <i>y</i> axis using a mouse. When the user moves the mouse over the ellipse, the ellipse jumps ten coordinates up the <i>y</i> axis. When the mouse moves off of the ellipse, if the ellipse has not reached the top, the ellipse again jumps ten coordinates up the <i>y</i> axis. Once the ellipse reaches the top, it is moved back to the bottom of the stage.
   * <listing>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.display.Sprite;
   *     import flash.geom.*;
   *     import flash.events.MouseEvent;
   *
   *     public class Matrix3DprependTranslationExample extends MovieClip {
   *         private var ellipse:Sprite = new Sprite();
   *
   *         public function Matrix3DprependTranslationExample():void {
   *             ellipse.x = this.stage.stageWidth / 2;
   *             ellipse.y = this.stage.stageHeight - 100;
   *             ellipse.z = 1;
   *             ellipse.graphics.beginFill(0xFF0000);
   *             ellipse.graphics.lineStyle(2);
   *             ellipse.graphics.drawEllipse(0, 0, 60, 50);
   *             ellipse.graphics.endFill();
   *             addChild(ellipse);
   *
   *             ellipse.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler);
   *             ellipse.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler);
   *         }
   *
   *         private function mouseOverHandler(e:MouseEvent):void {
   *             if(ellipse.y > 0) {
   *                 ellipse.transform.matrix3D.prependTranslation(0, -10, 0);
   *             }
   *         }
   *
   *         private function mouseOutHandler(e:MouseEvent):void {
   *             if(ellipse.y > 0) {
   *                 ellipse.transform.matrix3D.prependTranslation(0, -10, 0);
   *             } else {
   *                 ellipse.transform.matrix3D.prependTranslation(0,
   *                                      (this.stage.stageHeight - 100), 0);
   *             }
   *         }
   *     }
   * }
   * </listing>
   */
  public function prependTranslation(x:Number, y:Number, z:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the transformation matrix's translation, rotation, and scale settings. Unlike the incremental changes made by the display object's rotation properties or Matrix3D object's rotation methods, the changes made by <code>recompose()</code> method are absolute changes. The <code>recompose()</code> method overwrites the matrix's transformation.
   * <p>To modify the matrix's transformation with an absolute parent frame of reference, retrieve the settings with the <code>decompose()</code> method and make the appropriate changes. You can then set the Matrix3D object to the modified transformation using the <code>recompose()</code> method.</p>
   * <p>The <code>recompose()</code> method's parameter specifies the orientation style that was used for the transformation. The default orientation is <code>eulerAngles</code>, which defines the orientation with three separate angles of rotation for each axis. The rotations occur consecutively and do not change the axis of each other. The display object's axis rotation properties perform Euler Angles orientation style transformation. The other orientation style options are <code>axisAngle</code> and <code>quaternion</code>. The Axis Angle orientation uses the combination of an axis and an angle to determine the orientation. The axis around which the object is rotated is a unit vector that represents a direction. The angle represents the magnitude of the rotation about the vector. The direction also determines where a display object is facing and the angle determines which way is up. The <code>appendRotation()</code> and <code>prependRotation()</code> methods use the Axis Angle orientation. The quaternion orientation uses complex numbers and the fourth element of a vector. An orientation is represented by the three axes of rotation (x,y,z) and an angle of rotation (w). The <code>interpolate()</code> method uses quaternion.</p>
   * @param components A Vector of three Vector3D objects that replace the Matrix3D object's translation, rotation, and scale elements.
   * @param orientationStyle An optional parameter that determines the orientation style used for the matrix transformation. The three types of orientation styles are <code>eulerAngles</code> (constant <code>EULER_ANGLES</code>), <code>axisAngle</code> (constant <code>AXIS_ANGLE</code>), and <code>quaternion</code> (constant <code>QUATERNION</code>). For additional information on the different orientation style, see the <code>geom.Orientation3D</code> class.
   *
   * @return Returns <code>false</code> if any of the scale elements are zero.
   *
   * @see Orientation3D
   * @see #decompose()
   * @see Vector
   *
   */
  public function recompose(components:Vector.<Vector3D>, orientationStyle:String = "eulerAngles"):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Uses the transformation matrix to transform a Vector3D object from one space coordinate to another. The returned Vector3D object holds the new coordinates after the transformation. All the matrix transformations including translation are applied to the Vector3D object.
   * <p>If the result of the <code>transformVector()</code> method was applied to the position of a display object, only the display object's position changes. The display object's rotation and scale elements remain the same.</p>
   * @param v A Vector3D object holding the coordinates that are going to be transformed.
   *
   * @return A Vector3D object with the transformed coordinates.
   *
   * @see #transformVectors()
   * @see #deltaTransformVector()
   *
   */
  public function transformVector(v:Vector3D):Vector3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Uses the transformation matrix to transform a Vector of Numbers from one coordinate space to another. The <code>tranformVectors()</code> method reads every three Numbers in the <code>vin</code> Vector object as a 3D coordinate (x,y,z) and places a transformed 3D coordinate in the <code>vout</code> Vector object. All the matrix transformations including translation are applied to the <code>vin</code> Vector object. You can use the <code>transformVectors()</code> method to render and transform a 3D object as a mesh. A mesh is a collection of vertices that defines the shape of the object.
   * @param vin A Vector of Numbers, where every three Numbers are a 3D coordinate (x,y,z) that is going to be transformed.
   * @param vout A Vector of Numbers, where every three Numbers are a 3D transformed coordinate (x,y,z).
   *
   * @see #transformVector()
   * @see #deltaTransformVector()
   * @see Vector
   *
   */
  public function transformVectors(vin:Vector.<Number>, vout:Vector.<Number>):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Converts the current Matrix3D object to a matrix where the rows and columns are swapped. For example, if the current Matrix3D object's <code>rawData</code> contains the following 16 numbers, <code>1,2,3,4,11,12,13,14,21,22,23,24,31,32,33,34</code>, the <code>transpose()</code> method reads every four elements as a row and turns the rows into columns. The result is a matrix with the <code>rawData</code> of: <code>1,11,21,31,2,12,22,32,3,13,23,33,4,14,24,34</code>.
   * <p>The <code>transpose()</code> method replaces the current matrix with a transposed matrix. If you want to transpose a matrix without altering the current matrix, first copy the current matrix by using the <code>clone()</code> method and then apply the <code>transpose()</code> method to the copy.</p>
   * <p>An orthogonal matrix is a square matrix whose transpose is equal to its inverse.</p>
   */
  public function transpose():void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
