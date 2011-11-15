package flash.geom {


/**
 * The Orientation3D class is an enumeration of constant values for representing the orientation style of a Matrix3D object. The three types of orientation are Euler angles, axis angle, and quaternion. The <code>decompose</code> and <code>recompose</code> methods of the Matrix3D object take one of these enumerated types to identify the rotational components of the Matrix.
 * @see Matrix3D
 * @see Transform
 * @see PerspectiveProjection
 *
 */
public final class Orientation3D {
  /**
   * The axis angle orientation uses a combination of an axis and an angle to determine the orientation. A line or vector from the center of a three-dimensional globe to the surface is an example of an axis. The axis around which the object is rotated is a unit vector that represents any possible direction in the three-dimensional space. The angle represents the magnitude of the rotation about the vector. The direction determines where a display object is facing and the roll angle determines which way is up. You can use Vector3D and the Matrix3D objects to determine the various matrix transformations as well as to determine important three-dimensional programming values such as the distance to the intersection of two objects that can be used to detect simple collision between three-dimensional objects.
   * <p>The <code>Matrix3D.appendRotation()</code> and <code>Matrix3D.prependRotation()</code> methods use the axis angle orientation.</p>
   * @see Matrix3D#decompose()
   * @see Matrix3D#recompose()
   *
   */
  public static const AXIS_ANGLE:String = "axisAngle";
  /**
   * Euler angles, the default orientation for <code>decompose()</code> and <code>recompose()</code> methods, defines the orientation with three separate angles of rotation for each axis. Usually, a rotation around the x axis is followed by a rotation around the y axis, which is followed by a rotation around the z axis.
   * <p>Euler angles can sometimes lead to animation errors because of problems such as singularities when rotating around the x axis or gimbal lock. For example, since with Euler angles each axis is handled independently, gimbal lock can occur during the rotation around two or more axes. The axes can become aligned, leading to unexpected results.</p>
   * <p>The axis rotation properties of the display object perform Euler angles rotation.</p>
   * @see Matrix3D#decompose()
   * @see Matrix3D#recompose()
   *
   */
  public static const EULER_ANGLES:String = "eulerAngles";
  /**
   * The quaternion orientation uses complex numbers. An orientation in quaternion is by the three axes of rotation (x,y,z) and an angle of rotation (w). Quaternion guarantees the shortest, most efficient path for the rotation. It also produces a smooth, gimbal-lock-free rotation. A gimbal lock can occur when during the rotation around two or more axes the axes are aligned, leading to unexpected results.
   * <p>The <code>Matrix3D.interpolate()</code> method uses quaternion.</p>
   * @see Matrix3D#decompose()
   * @see Matrix3D#recompose()
   *
   */
  public static const QUATERNION:String = "quaternion";
}
}
