package flash.geom {

/**
 * The Point object represents a location in a two-dimensional coordinate system, where x  represents the horizontal
 * axis and y represents the vertical axis.
 * <p>The following code creates a point at (0,0):</p>
 * <pre>
 *   var myPoint:Point = new Point();
 * </pre>
 */
public class Point {

  /**
   * Creates a new point. If you pass no parameters to this method, a point is created at (0,0).
   * @param x (default = 0) The horizontal coordinate.
   * @param y (default = 0) The vertical coordinate.
   */
  public function Point(x : Number = 0, y : Number = 0) {
    this.x = x;
    this.y = y;
  }

  /**
   * The length of the line segment from (0,0) to this point.
   * @see #polar()
   */
   public function get length() : Number {
     return Math.sqrt(x^2 + y^2);
   }

  /**
   * The horizontal coordinate of the point. The default value is 0.
   */
  public var x : Number;

  /**
   * The vertical coordinate of the point. The default value is 0.
   */
  public var y:Number;

  /**
   * Adds the coordinates of another point to the coordinates of this point to create a new point.
   * @param v The point to be added.
   * @return The new point.
   */
  public function add(v : Point) : Point {
    return new Point(x+v.x, y+v.y);
  }

  /**
   * Creates a copy of this Point object.
   * @return The new Point object.
   */
  public function clone() : Point {
    return new Point(x, y);
  }

  /**
   * Returns the distance between pt1 and pt2.
   * @param pt1 The first point.
   * @param pt2 The second point.
   * @return The distance between the first and second points.
   */
  public static function distance(pt1 : Point, pt2 : Point) : Number {
    return Math.sqrt((pt2.x-pt1.x)^2 + (pt2.y-pt2.y)^2);
  }

  /**
   * Determines whether two points are equal.
   * Two points are equal if they have the same x and y values.
   * @param toCompare The point to be compared.
   * @return A value of true if the object is equal to this Point object; false if it is not equal.
   */
  public function equals(toCompare : Point) : Boolean {
    return x == toCompare.x && y == toCompare.y;
  }

  /**
   * Determines a point between two specified points.
   * The parameter f determines where the new interpolated point is located relative to the two end points specified
   * by parameters pt1 and pt2. The closer the value of the parameter f is to 1.0, the closer the interpolated point
   * is to the first point (parameter pt1). The closer the value of the parameter f is to 0, the closer the
   * interpolated point is to the second point (parameter pt2).
   * @param pt1 The first point.
   * @param pt2 The second point.
   * @param f The level of interpolation between the two points. Indicates where the new point will be, along the line between pt1 and pt2. If f=1, pt1 is returned; if f=0, pt2 is returned.
   * @return The new, interpolated point.
   */
  public static function interpolate(pt1 : Point, pt2 : Point, f : Number) : Point {
    return null; // TODO
  }

  /**
   * Scales the line segment between (0,0) and the current point to a set length.
   * @param thickness The scaling value. For example, if the current point is (0,5), and you normalize it to 1, the
   *   resulting point is at (0,1).
   * @see #length
   */
  public function normalize(thickness : Number) : void {
    // TODO
  }

  /**
   * Offsets the Point object by the specified amount. The value of dx is added to the original value of x to create
   * the new x value. The value of dy is added to the original value of y to create the new y value.
   * @param dx The amount by which to offset the horizontal coordinate, x.
   * @param dy The amount by which to offset the vertical coordinate, y.
   */
  public function offset(dx : Number, dy : Number) : void {
    x += dx;
    y += dy;
  }

  /**
   * Converts a pair of polar coordinates to a Cartesian point coordinate.
   * @param len The length coordinate of the polar pair.
   * @param angle The angle, in radians, of the polar pair.
   * @return The Cartesian point.
   * @see #length
   * @see Math#round()
   */
  public static function polar(len : Number, angle : Number) : Point {
    return null; // TODO
  }

  /**
   * Subtracts the coordinates of another point from the coordinates of this point to create a new point.
   * @param v The point to be subtracted.
   * @return The new point.
   */
  public function subtract(v : Point) : Point {
    return new Point(x-v.x, y-v.y);
  }

  /**
   * Returns a string that contains the values of the x and y coordinates.
   * The string has the form "(x=x, y=y)", so calling the toString() method for a point at 23,17 would return
   * "(x=23, y=17)".
   * @return The string representation of the coordinates. 
   */
  public function toString() : String {
    return ["(x=",x,", y=",y,")"].join("");
  }

}
}
