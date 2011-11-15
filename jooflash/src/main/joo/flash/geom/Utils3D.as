package flash.geom {
/**
 * The Utils3D class contains static methods that simplify the implementation of certain three-dimensional matrix operations.
 * @see Matrix3D
 * @see Vector3D
 * @see Transform
 * @see PerspectiveProjection
 * @see flash.display.Graphics
 * @see flash.display.GraphicsTrianglePath
 * @see Vector
 *
 */
public class Utils3D {
  /**
   * Interpolates the orientation of an object toward a position. The <code>pointTowards()</code> method combines the functionality of the <code>Matrix3D.pointAt()</code> and <code>Matrix3D.interpolateTo()</code> methods.
   * <p>The <code>pointTowards()</code> method allows for in-place modification to the orientation. It decomposes the Matrix3D of the display object and replaces the rotation elements by ones that make a percent turn toward the position of the target. The object can make an incremental turn toward the target while still moving in its own direction. The consecutive calls to the <code>pointTowards()</code> followed by a translation method can produce the animation of an object chasing or following a moving target. First point the object a percent point toward the target, then incrementally move the object along an axis.</p>
   * @param percent A Number between 0 and 1 that incrementally turns the object toward the target.
   * @param mat The Matrix3D property of the object that is transformed.
   * @param pos The world-relative position of the target object. World-relative defines the transformation of the object relative to the world space and coordinates, where all objects are positioned.
   * @param at The object-relative vector that defines where the display object is pointing. Object-relative defines the transformation of the object relative to the object space, the object's own frame of reference and coordinate system. Default value is (0,0,-1).
   * @param up The object-relative vector that defines "up" for the display object. If the object is drawn looking down from the above, the <i>+z</i> axis is its "up" vector. Object-relative defines the transformation of the object relative to the object space, the object's own frame of reference and coordinate system. Default value is (0,-1,0).
   *
   * @return A modified version of the Matrix3D object specified in the second parameter. To transform the display object using the <code>pointTowards()</code> method, set the Matrix3D property of the display object to the returned Matrix3D object.
   *
   * @see Matrix3D#pointAt()
   * @see Matrix3D#interpolateTo()
   * @see Matrix3D#interpolate()
   *
   */
  public static function pointTowards(percent:Number, mat:Matrix3D, pos:Vector3D, at:Vector3D = null, up:Vector3D = null):Matrix3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Using a projection Matrix3D object, projects a Vector3D object from one space coordinate to another. The <code>projectVector()</code> method is like the <code>Matrix3D.transformVector()</code> method except that the <code>projectVector()</code> method divides the <i>x</i>, <i>y</i>, and <i>z</i> elements of the original Vector3D object by the projection depth value. The depth value is the distance from the eye to the Vector3D object in view or eye space. The default value for this distance is the value of the <i>z</i> element.
   * @param m A projection Matrix3D object that implements the projection transformation. If a display object has a PerspectiveProjection object, you can use the <code>perspectiveProjection.toMatrix()</code> method to produce a projection Matrix3D object that applies to the children of the display object. For more advance projections, use the <code>matrix3D.rawData</code> property to create a custom projection matrix. There is no built-in Matrix3D method for creating a projection Matrix3D object.
   * @param v The Vector3D object that is projected to a new space coordinate.
   *
   * @return A new Vector3D with a transformed space coordinate.
   *
   * @see Matrix3D#transformVector()
   * @see #projectVectors()
   *
   */
  public static function projectVector(m:Matrix3D, v:Vector3D):Vector3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Using a projection Matrix3D object, projects a Vector of three-dimensional space coordinates (<i>verts</i>) to a Vector of two-dimensional space coordinates (<code>projectedVerts</code>). The projected Vector object should be pre-allocated before it is used as a parameter.
   * <p>The <code>projectVectors()</code> method also sets the <i>t</i> value of the <i>uvt</i> data. You should pre-allocate a Vector that can hold the <i>uvts</i> data for each projected Vector set of coordinates. Also specify the <i>u</i> and <i>v</i> values of the <i>uvt</i> data. The <i>uvt</i> data is a Vector of normalized coordinates used for texture mapping. In UV coordinates, (0,0) is the upper left of the bitmap, and (1,1) is the lower right of the bitmap.</p>
   * <p>This method can be used in conjunction with the <code>Graphics.drawTriangles()</code> method and the <code>GraphicsTrianglePath</code> class.</p>
   * @param m A projection Matrix3D object that implements the projection transformation. You can produce a projection Matrix3D object using the <code>Matrix3D.rawData</code> property.
   * @param verts A Vector of Numbers, where every three Numbers represent the <i>x</i>, <i>y</i>, and <i>z</i> coordinates of a three-dimensional space, like <code>Vector3D(x,y,z)</code>.
   * @param projectedVerts A vector of Numbers, where every two Numbers represent a projected two-dimensional coordinate, like <code>Point(x,y)</code>. You should pre-allocate the Vector. The <code>projectVectors()</code> method fills the values for each projected point.
   * @param uvts A vector of Numbers, where every three Numbers represent the <i>u</i>, <i>v</i>, and <i>t</i> elements of the <code>uvt</code> data. The <i>u</i> and <i>v</i> are the texture coordinate for each projected point. The <i>t</i> value is the projection depth value, the distance from the eye to the Vector3D object in the view or eye space. You should pre-allocate the Vector and specify the <i>u</i> and <i>v</i> values. The <code>projectVectors</code> method fills the <i>t</i> value for each projected point.
   *
   * @see flash.display.Graphics#drawTriangles()
   * @see flash.display.GraphicsTrianglePath
   * @see Matrix3D
   * @see #projectVector()
   * @see Vector
   *
   */
  public static function projectVectors(m:Matrix3D, verts:Vector.<Number>, projectedVerts:Vector.<Number>, uvts:Vector.<Number>):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
