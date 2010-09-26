package flash.geom {

import flash.geom.Point;

/**
 * A Rectangle object is an area defined by its position, as indicated by its top-left corner point (x, y) and
 * by its width and its height.
 */
public class Rectangle {
  /**
   * The height of the rectangle, in pixels.
   */
  public var height : Number;
  /**
   * The width of the rectangle, in pixels.
   */
  public var width : Number;
  /**
   * The x coordinate of the top-left corner of the rectangle.
   */
  public var x : Number;
  /**
   * The y coordinate of the top-left corner of the rectangle.
   */
  public var y : Number;

  /**
   * The location of the Rectangle object's top-left corner, determined by the x and y coordinates of the point.
   */
  public function get topLeft () : Point {
    return new Point(x, y);
  }

  public function set topLeft (topLeft : Point) : void {
    left = topLeft.x;
    top = topLeft.y;
  }

  /**
   * The sum of the y and height properties.
   */
  public function get bottom () : Number {
    return y+height;
  }

  public function set bottom (bottom:Number) : void {
    height = Math.max(bottom - y, 0);
  }

  /**
   * The location of the Rectangle object's bottom-right corner, determined by the values of the right and
   * bottom properties.
   */
  public function get bottomRight () : Point {
    return new Point(right, bottom);
  }

  public function set bottomRight (bottomRight : Point) : void {
    right = bottomRight.x;
    bottom = bottomRight.y;
  }

  /**
   * The x coordinate of the top-left corner of the rectangle.
   */
  public function get left () : Number {
    return x;
  }

  public function set left (left : Number) : void {
    width += x - left; // TODO: really change width?
    x = left;
  }

  /**
   * The sum of the x and width properties.
   */
  public function get right () : Number {
    return x + width;
  }
  public function set right (value:Number) : void {
    width = value - x;
  }

  /**
   * The size of the Rectangle object, expressed as a Point object with the values of the width and height properties.
   */
  public function get size() : Point {
    return new Point(width, height);
  }

  public function set size (value:Point) : void {
    this.width = value.x;
    this.height = value.y;
  }

  /**
   * The y coordinate of the top-left corner of the rectangle.
   */
  public function get top () : Number {
    return y;
  }
  public function set top (value:Number) : void {
    height += y - value;
    y = value;
  }

  /**
   * Returns a copy of this Rectangle object.
   */
  public function clone () : Rectangle {
    return new Rectangle(x, y, width, height);
  }

  /**
   * Determines if the specified point is contained within the rectangular region.
   */
  public function contains (x:Number, y:Number) : Boolean {
    return this.x <= x && x < this.right && this.y <= y && y < this.bottom;
  }

  /**
   * Determines if the specified point is contained within the rectangular region defined by this Rectangle
   * object using a Point object as a parameter.
   */
  public function containsPoint (point:Point) : Boolean {
    return contains(point.x, point.y);
  }

  /**
   * Determines if the Rectangle object specified by the rect parameter is contained within this Rectangle object.
   */
  public function containsRect (rect:Rectangle) : Boolean {
    return containsPoint(rect.topLeft) && containsPoint(rect.bottomRight);
  }

  /**
   * Determines if the object specified in the toCompare parameter is equal to this Rectangle object.
   */
  public function equals (toCompare:Rectangle) : Boolean {
    return x==toCompare.x && y==toCompare.y && width==toCompare.width && height==toCompare.height;
  }

  /**
   * Increases the size of the Rectangle object by the specified amounts, in pixels.
   */
  public function inflate (dx:Number, dy:Number) : void {
    this.width += dx;
    this.height += dy;
  }

  /**
   * Increases the size of the Rectangle object using a Point object as a parameter.
   */
  public function inflatePoint (point:Point) : void {
    inflate(point.x, point.y);
  }

  /**
   * Returns the area of intersection.
   */
  public function intersection (toIntersect:Rectangle) : Rectangle {
    var x : Number = Math.max(this.x, toIntersect.x);
    var right : Number = Math.min(this.right, toIntersect.right);
    if (x <= right) {
      var y : Number = Math.max(this.y, toIntersect.y);
      var bottom : Number = Math.min(this.bottom, toIntersect.bottom);
      if (y <= bottom) {
        return new Rectangle(x, y, right-x, bottom-y);
      }
    }
    return new Rectangle();
  }

  /**
   * Determines if the object specified in the toIntersect parameter intersects with this Rectangle object.
   */
  public function intersects (toIntersect:Rectangle) : Boolean {
    return Math.max(this.x, toIntersect.x) <= Math.min(this.right, toIntersect.right)
        && Math.max(this.y, toIntersect.y) <= Math.min(this.bottom, toIntersect.bottom);
  }

  /**
   * Determines whether or not this Rectangle object is empty.
   */
  public function isEmpty () : Boolean {
    return x==0 && y==0 && width==0 && height==0;
  }

  /**
   * Adjusts the location of the Rectangle object.
   */
  public function offset (dx:Number, dy:Number) : void {
    x += dx;
    y += dy;
  }

  /**
   * Adjusts the location of the Rectangle object using a Point object as a parameter.
   */
  public function offsetPoint (point:Point) : void {
    offset(point.x, point.y);
  }

  /**
   * Creates a new Rectangle object with the top-left corner specified by the x and y parameters and with the
   * specified width and height.
   */
  public function Rectangle (x:Number = 0, y:Number = 0, width:Number = 0, height:Number = 0) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  /**
   * Sets all properties to 0.
   */
  public function setEmpty () : void {
    this.x = this.y = this.width = this.height = 0;
  }

  /**
   * Builds and returns a string that lists the horizontal and vertical positions and the width and height of the Rectangle object.
   */
  public function toString () : String {
    return "[Rectangle("+[x,y,width,height].join(", ")+")]";
  }

  /**
   * Adds two rectangles together to create a new Rectangle object.
   */
  public function union (toUnion:Rectangle) : Rectangle {
    var x : Number = Math.min(this.x, toUnion.x);
    var y : Number = Math.min(this.y, toUnion.y);
    return new Rectangle(x, y, Math.max(this.right,toUnion.right)-x, Math.max(this.bottom-toUnion.bottom)-y);
  }
}
}
