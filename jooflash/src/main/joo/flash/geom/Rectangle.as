package flash.geom {


/**
 * A Rectangle object is an area defined by its position, as indicated by its top-left corner point (<i>x</i>, <i>y</i>) and by its width and its height.
 * <p>The <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code> properties of the Rectangle class are independent of each other; changing the value of one property has no effect on the others. However, the <code>right</code> and <code>bottom</code> properties are integrally related to those four properties. For example, if you change the value of the <code>right</code> property, the value of the <code>width</code> property changes; if you change the <code>bottom</code> property, the value of the <code>height</code> property changes.</p>
 * <p>The following methods and properties use Rectangle objects:</p>
 * <ul>
 * <li>The <code>applyFilter()</code>, <code>colorTransform()</code>, <code>copyChannel()</code>, <code>copyPixels()</code>, <code>draw()</code>, <code>fillRect()</code>, <code>generateFilterRect()</code>, <code>getColorBoundsRect()</code>, <code>getPixels()</code>, <code>merge()</code>, <code>paletteMap()</code>, <code>pixelDisolve()</code>, <code>setPixels()</code>, and <code>threshold()</code> methods, and the <code>rect</code> property of the BitmapData class</li>
 * <li>The <code>getBounds()</code> and <code>getRect()</code> methods, and the <code>scrollRect</code> and <code>scale9Grid</code> properties of the DisplayObject class</li>
 * <li>The <code>getCharBoundaries()</code> method of the TextField class</li>
 * <li>The <code>pixelBounds</code> property of the Transform class</li>
 * <li>The <code>bounds</code> parameter for the <code>startDrag()</code> method of the Sprite class</li>
 * <li>The <code>printArea</code> parameter of the <code>addPage()</code> method of the PrintJob class</li></ul>
 * <p>You can use the <code>new Rectangle()</code> constructor to create a Rectangle object.</p>
 * <p><b>Note:</b> The Rectangle class does not define a rectangular Shape display object. To draw a rectangular Shape object onscreen, use the <code>drawRect()</code> method of the Graphics class.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Rectangle.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.display.DisplayObject#scrollRect
 * @see flash.display.BitmapData
 * @see flash.display.DisplayObject
 * @see flash.display.NativeWindow
 * @see flash.text.TextField#getCharBoundaries()
 * @see Transform#pixelBounds
 * @see flash.display.Sprite#startDrag()
 * @see flash.printing.PrintJob#addPage()
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7cc6.html Setting size, scale, and orientation
 *
 */
public class Rectangle {
  /**
   * The sum of the <code>y</code> and <code>height</code> properties.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle.jpg" /></p>
   * @see #y
   * @see #height
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function get bottom():Number {
    return y + height;
  }

  /**
   * @private
   */
  public function set bottom(value:Number):void {
    height = Math.max(value - y, 0);
  }

  /**
   * The location of the Rectangle object's bottom-right corner, determined by the values of the <code>right</code> and <code>bottom</code> properties.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle.jpg" /></p>
   * @see Point
   *
   */
  public function get bottomRight():Point {
    return new Point(right, bottom);
  }

  /**
   * @private
   */
  public function set bottomRight(value:Point):void {
    right = value.x;
    bottom = value.y;
  }

  /**
   * The height of the rectangle, in pixels. Changing the <code>height</code> value of a Rectangle object has no effect on the <code>x</code>, <code>y</code>, and <code>width</code> properties.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle.jpg" /></p>
   * @see #x
   * @see #y
   * @see #height
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public var height:Number;

  /**
   * The <i>x</i> coordinate of the top-left corner of the rectangle. Changing the <code>left</code> property of a Rectangle object has no effect on the <code>y</code> and <code>height</code> properties. However it does affect the <code>width</code> property, whereas changing the <code>x</code> value does <i>not</i> affect the <code>width</code> property.
   * <p>The value of the <code>left</code> property is equal to the value of the <code>x</code> property.</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle.jpg" /></p>
   * @see #x
   * @see #y
   * @see #width
   * @see #height
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function get left():Number {
    return x;
  }

  /**
   * @private
   */
  public function set left(value:Number):void {
    width += x - value; // TODO: really change width?
    x = value;
  }

  /**
   * The sum of the <code>x</code> and <code>width</code> properties.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle.jpg" /></p>
   * @see #x
   * @see #width
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function get right():Number {
    return x + width;
  }

  /**
   * @private
   */
  public function set right(value:Number):void {
    width = value - x;
  }

  /**
   * The size of the Rectangle object, expressed as a Point object with the values of the <code>width</code> and <code>height</code> properties.
   * @see Point
   *
   */
  public function get size():Point {
    return new Point(width, height);
  }

  /**
   * @private
   */
  public function set size(value:Point):void {
    this.width = value.x;
    this.height = value.y;
  }

  /**
   * The <i>y</i> coordinate of the top-left corner of the rectangle. Changing the <code>top</code> property of a Rectangle object has no effect on the <code>x</code> and <code>width</code> properties. However it does affect the <code>height</code> property, whereas changing the <code>y</code> value does <i>not</i> affect the <code>height</code> property.
   * <p>The value of the <code>top</code> property is equal to the value of the <code>y</code> property.</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle.jpg" /></p>
   * @see #x
   * @see #y
   * @see #width
   * @see #height
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function get top():Number {
    return y;
  }

  /**
   * @private
   */
  public function set top(value:Number):void {
    height += y - value;
    y = value;
  }

  /**
   * The location of the Rectangle object's top-left corner, determined by the <i>x</i> and <i>y</i> coordinates of the point.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle.jpg" /></p>
   * @see Point
   * @see #x
   * @see #y
   *
   */
  public function get topLeft():Point {
    return new Point(x, y);
  }

  /**
   * @private
   */
  public function set topLeft(value:Point):void {
    left = value.x;
    top = value.y;
  }

  /**
   * The width of the rectangle, in pixels. Changing the <code>width</code> value of a Rectangle object has no effect on the <code>x</code>, <code>y</code>, and <code>height</code> properties.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle.jpg" /></p>
   * @see #x
   * @see #y
   * @see #height
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public var width:Number;
  /**
   * The <i>x</i> coordinate of the top-left corner of the rectangle. Changing the value of the <code>x</code> property of a Rectangle object has no effect on the <code>y</code>, <code>width</code>, and <code>height</code> properties.
   * <p>The value of the <code>x</code> property is equal to the value of the <code>left</code> property.</p>
   * @see #left
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public var x:Number;
  /**
   * The <i>y</i> coordinate of the top-left corner of the rectangle. Changing the value of the <code>y</code> property of a Rectangle object has no effect on the <code>x</code>, <code>width</code>, and <code>height</code> properties.
   * <p>The value of the <code>y</code> property is equal to the value of the <code>top</code> property.</p>
   * @see #x
   * @see #width
   * @see #height
   * @see #top
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public var y:Number;

  /**
   * Creates a new Rectangle object with the top-left corner specified by the <code>x</code> and <code>y</code> parameters and with the specified <code>width</code> and <code>height</code> parameters. If you call this function without parameters, a rectangle with <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code> properties set to 0 is created.
   * @param x The <i>x</i> coordinate of the top-left corner of the rectangle.
   * @param y The <i>y</i> coordinate of the top-left corner of the rectangle.
   * @param width The width of the rectangle, in pixels.
   * @param height The height of the rectangle, in pixels.
   *
   * @see #x
   * @see #y
   * @see #width
   * @see #height
   *
   */
  public function Rectangle(x:Number = 0, y:Number = 0, width:Number = 0, height:Number = 0) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  /**
   * Returns a new Rectangle object with the same values for the <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code> properties as the original Rectangle object.
   * @return A new Rectangle object with the same values for the <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code> properties as the original Rectangle object.
   *
   * @see #x
   * @see #y
   * @see #width
   * @see #height
   *
   */
  public function clone():Rectangle {
    return new Rectangle(x, y, width, height);
  }

  /**
   * Determines whether the specified point is contained within the rectangular region defined by this Rectangle object.
   * @param x The <i>x</i> coordinate (horizontal position) of the point.
   * @param y The <i>y</i> coordinate (vertical position) of the point.
   *
   * @return A value of <code>true</code> if the Rectangle object contains the specified point; otherwise <code>false</code>.
   *
   * @see Point
   *
   */
  public function contains(x:Number, y:Number):Boolean {
    return this.x <= x && x < this.right && this.y <= y && y < this.bottom;
  }

  /**
   * Determines whether the specified point is contained within the rectangular region defined by this Rectangle object. This method is similar to the <code>Rectangle.contains()</code> method, except that it takes a Point object as a parameter.
   * @param point The point, as represented by its <i>x</i> and <i>y</i> coordinates.
   *
   * @return A value of <code>true</code> if the Rectangle object contains the specified point; otherwise <code>false</code>.
   *
   * @see #contains()
   * @see Point
   *
   */
  public function containsPoint(point:Point):Boolean {
    return contains(point.x, point.y);
  }

  /**
   * Determines whether the Rectangle object specified by the <code>rect</code> parameter is contained within this Rectangle object. A Rectangle object is said to contain another if the second Rectangle object falls entirely within the boundaries of the first.
   * @param rect The Rectangle object being checked.
   *
   * @return A value of <code>true</code> if the Rectangle object that you specify is contained by this Rectangle object; otherwise <code>false</code>.
   *
   */
  public function containsRect(rect:Rectangle):Boolean {
    return containsPoint(rect.topLeft) && containsPoint(rect.bottomRight);
  }

  /**
   * Determines whether the object specified in the <code>toCompare</code> parameter is equal to this Rectangle object. This method compares the <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code> properties of an object against the same properties of this Rectangle object.
   * @param toCompare The rectangle to compare to this Rectangle object.
   *
   * @return A value of <code>true</code> if the object has exactly the same values for the <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code> properties as this Rectangle object; otherwise <code>false</code>.
   *
   * @see #x
   * @see #y
   * @see #width
   * @see #height
   *
   */
  public function equals(toCompare:Rectangle):Boolean {
    return x == toCompare.x && y == toCompare.y && width == toCompare.width && height == toCompare.height;
  }

  /**
   * Increases the size of the Rectangle object by the specified amounts, in pixels. The center point of the Rectangle object stays the same, and its size increases to the left and right by the <code>dx</code> value, and to the top and the bottom by the <code>dy</code> value.
   * @param dx The value to be added to the left and the right of the Rectangle object. The following equation is used to calculate the new width and position of the rectangle:
   * <listing>
   *     x -= dx;
   *     width += 2 * dx;
   *    </listing>
   * @param dy The value to be added to the top and the bottom of the Rectangle. The following equation is used to calculate the new height and position of the rectangle:
   * <listing>
   *     y -= dy;
   *     height += 2 * dy;
   *    </listing>
   *
   * @see #x
   * @see #y
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function inflate(dx:Number, dy:Number):void {
    this.width += dx;
    this.height += dy;
  }

  /**
   * Increases the size of the Rectangle object. This method is similar to the <code>Rectangle.inflate()</code> method except it takes a Point object as a parameter.
   * <p>The following two code examples give the same result:</p>
   * <listing>
   *      var rect1:Rectangle = new Rectangle(0,0,2,5);
   *      rect1.inflate(2,2)
   *     </listing>
   * <listing>
   *      var rect1:Rectangle = new Rectangle(0,0,2,5);
   *      var pt1:Point = new Point(2,2);
   *      rect1.inflatePoint(pt1)
   *     </listing>
   * @param point The <code>x</code> property of this Point object is used to increase the horizontal dimension of the Rectangle object. The <code>y</code> property is used to increase the vertical dimension of the Rectangle object.
   *
   * @see Point
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function inflatePoint(point:Point):void {
    inflate(point.x, point.y);
  }

  /**
   * If the Rectangle object specified in the <code>toIntersect</code> parameter intersects with this Rectangle object, returns the area of intersection as a Rectangle object. If the rectangles do not intersect, this method returns an empty Rectangle object with its properties set to 0.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle_intersect.jpg" /></p>
   * @param toIntersect The Rectangle object to compare against to see if it intersects with this Rectangle object.
   *
   * @return A Rectangle object that equals the area of intersection. If the rectangles do not intersect, this method returns an empty Rectangle object; that is, a rectangle with its <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code> properties set to 0.
   *
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function intersection(toIntersect:Rectangle):Rectangle {
    var x:Number = Math.max(this.x, toIntersect.x);
    var right:Number = Math.min(this.right, toIntersect.right);
    if (x <= right) {
      var y:Number = Math.max(this.y, toIntersect.y);
      var bottom:Number = Math.min(this.bottom, toIntersect.bottom);
      if (y <= bottom) {
        return new Rectangle(x, y, right - x, bottom - y);
      }
    }
    return new Rectangle();
  }

  /**
   * Determines whether the object specified in the <code>toIntersect</code> parameter intersects with this Rectangle object. This method checks the <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code> properties of the specified Rectangle object to see if it intersects with this Rectangle object.
   * @param toIntersect The Rectangle object to compare against this Rectangle object.
   *
   * @return A value of <code>true</code> if the specified object intersects with this Rectangle object; otherwise <code>false</code>.
   *
   * @see #x
   * @see #y
   * @see #width
   * @see #height
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function intersects(toIntersect:Rectangle):Boolean {
    return Math.max(this.x, toIntersect.x) <= Math.min(this.right, toIntersect.right)
      && Math.max(this.y, toIntersect.y) <= Math.min(this.bottom, toIntersect.bottom);
  }

  /**
   * Determines whether or not this Rectangle object is empty.
   * @return A value of <code>true</code> if the Rectangle object's width or height is less than or equal to 0; otherwise <code>false</code>.
   *
   */
  public function isEmpty():Boolean {
    return x == 0 && y == 0 && width == 0 && height == 0;
  }

  /**
   * Adjusts the location of the Rectangle object, as determined by its top-left corner, by the specified amounts.
   * @param dx Moves the <i>x</i> value of the Rectangle object by this amount.
   * @param dy Moves the <i>y</i> value of the Rectangle object by this amount.
   *
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function offset(dx:Number, dy:Number):void {
    x += dx;
    y += dy;
  }

  /**
   * Adjusts the location of the Rectangle object using a Point object as a parameter. This method is similar to the <code>Rectangle.offset()</code> method, except that it takes a Point object as a parameter.
   * @param point A Point object to use to offset this Rectangle object.
   *
   * @see Point
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function offsetPoint(point:Point):void {
    offset(point.x, point.y);
  }

  /**
   * Sets all of the Rectangle object's properties to 0. A Rectangle object is empty if its width or height is less than or equal to 0.
   * <p>This method sets the values of the <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code> properties to 0.</p>
   * @see #x
   * @see #y
   * @see #width
   * @see #height
   *
   */
  public function setEmpty():void {
    this.x = this.y = this.width = this.height = 0;
  }

  /**
   * Builds and returns a string that lists the horizontal and vertical positions and the width and height of the Rectangle object.
   * @return A string listing the value of each of the following properties of the Rectangle object: <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code>.
   *
   * @see #x
   * @see #y
   * @see #width
   * @see #height
   *
   */
  public function toString():String {
    return "[Rectangle("+[x,y,width,height].join(", ")+")]";
  }

  /**
   * Adds two rectangles together to create a new Rectangle object, by filling in the horizontal and vertical space between the two rectangles.
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/rectangle_union.jpg" /></p>
   * <p><b>Note:</b> The <code>union()</code> method ignores rectangles with <code>0</code> as the height or width value, such as: <code>var rect2:Rectangle = new Rectangle(300,300,50,0);</code></p>
   * @param toUnion A Rectangle object to add to this Rectangle object.
   *
   * @return A new Rectangle object that is the union of the two rectangles.
   *
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dc9.html Using Rectangle objects
   *
   */
  public function union(toUnion:Rectangle):Rectangle {
    if (toUnion.width === 0 || toUnion.height === 0) {
      return clone();
    }
    if (width === 0 || height === 0) {
      return toUnion.clone();
    }
    var x : Number = Math.min(this.x, toUnion.x);
    var y : Number = Math.min(this.y, toUnion.y);
    return new Rectangle(x, y, Math.max(this.right,toUnion.right)-x, Math.max(this.bottom-toUnion.bottom)-y);
  }
}
}
