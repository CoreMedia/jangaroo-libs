package flash.geom {

/**
 * The Matrix class represents a transformation matrix that determines how to map points from one coordinate
 * space to another.
 */
public class Matrix {

  /**
   * Creates a new two-dimensional Matrix object.
   *
   * @param a
   * @param b
   * @param c
   * @param d
   * @param tx
   * @param ty
   */
  public function Matrix (a:Number = 1, b:Number = 0, c:Number = 0, d:Number = 1, tx:Number = 0, ty:Number = 0) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.d = d;
    this.tx = tx;
    this.ty = ty;
  }

  /**
   * The value that affects the positioning of pixels along the x axis when scaling or rotating an image.
   */
  public var a : Number;
  /**
   * The value that affects the positioning of pixels along the y axis when rotating or skewing an image.
   */
  public var b : Number;
  /**
   * The value that affects the positioning of pixels along the x axis when rotating or skewing an image.
   */
  public var c : Number;
  /**
   * The value that affects the positioning of pixels along the y axis when scaling or rotating an image.
   */
  public var d : Number;
  /**
   * The distance by which to translate each point along the x axis.
   */
  public var tx : Number;
  /**
   * The distance by which to translate each point along the y axis.
   */
  public var ty : Number;

  /**
   * Returns a new Matrix object that is a copy of the current matrix.
   * @return a new Matrix object that is a copy of the current matrix.
   */
  public function clone () : Matrix {
    return new Matrix(a, b, c, d, tx, ty);
  }

  /**
   * Concatenates a matrix with the current matrix, effectively combining the geometric effects of the two. In
   * mathematical terms, concatenating two matrixes is the same as combining them using matrix multiplication.
   * <p>For example, if matrix m1 scales an object by a factor of four, and matrix m2 rotates an object by
   * 1.5707963267949 radians (Math.PI/2), then m1.concat(m2) transforms m1 into a matrix that scales an object
   * by a factor of four and rotates the object by Math.PI/2 radians.
   * <p>This method replaces the source matrix with the concatenated matrix. If you want to concatenate two
   * matrixes without altering either of the two source matrixes, first copy the source matrix by using the
   * clone() method, as shown in the Class Examples section.
   * 
   * @param m The matrix to be concatenated to the source matrix. 
   */
  public function concat(m : Matrix) : void {
    var a : Number = this.a;
    var b : Number = this.b;
    var c : Number = this.c;
    var d : Number = this.d;
    var tx : Number = this.tx;
    var ty : Number = this.ty;
    this.a  = m.a*a  + m.c*b;
    this.b  = m.b*a  + m.d*b;
    this.c  = m.a*c  + m.c*d;
    this.d  = m.b*c  + m.d*d;
    this.tx = m.a*tx + m.c*ty + m.tx;
    this.ty = m.b*tx + m.d*ty+m.ty;
  }

  /**
   * Includes parameters for scaling, rotation, and translation. When applied to a matrix it sets the matrix's
   * values based on those parameters.
   * <p>Using the createBox() method lets you obtain the same matrix as you would if you applied the
   * identity(), scale(), rotate(), and translate() methods in succession. For example,
   * mat1.createBox(2,2,Math.PI/4, 100, 100) has the same effect as the following:
   * <pre>
   *  import flash.geom.Matrix;
   *       var mat1:Matrix = new Matrix();
   *  mat1.identity();
   *  mat1.scale(2,2);
   *  mat1.rotate(Math.PI/4);
   *  mat1.translate(10,20);
   * </pre>
   * @example
   * The following example sets the x scale, y scale, rotation, x location, and y location of myMatrix by
   * calling its createBox() method.
   * <pre>
   * package
   * {
   *     import flash.display.Shape;
   *     import flash.display.Sprite;
   *     import flash.geom.Matrix;
   *     import flash.geom.Transform;
   *     
   *     public class Matrix_createBox extends Sprite
   *     {
   *         public function Matrix_createBox()
   *         {
   *              var myMatrix:Matrix = new Matrix();
   *              trace(myMatrix.toString());  // (a=1, b=0, c=0, d=1, tx=0, ty=0)
   *              
   *              myMatrix.createBox(1, 2, Math.PI/4, 50, 100);
   *              trace(myMatrix.toString());  
   *              // (a=0.7071067811865476, b=1.414213562373095, c=-0.7071067811865475, 
   *              //  d=1.4142135623730951, tx=100, ty=200)
   *              
   *              var rectangleShape:Shape = createRectangle(20, 80, 0xFF0000);   
   *              addChild(rectangleShape);
   *               
   *              var rectangleTrans:Transform = new Transform(rectangleShape);
   *              rectangleTrans.matrix = myMatrix;
   *         }
   *         
   *         public function createRectangle(w:Number, h:Number, color:Number):Shape 
   *         {
   *             var rect:Shape = new Shape();
   *             rect.graphics.beginFill(color);
   *             rect.graphics.drawRect(0, 0, w, h);
   *             addChild(rect);
   *             return rect;
   *         }
   *     }
   * }
   * </pre>
   * 
   * @param scaleX The factor by which to scale horizontally.
   * @param scaleY The factor by which scale vertically.
   * @param rotation (default = 0) The amount to rotate, in radians.
   * @param tx (default = 0) The number of pixels to translate (move) to the right along the x axis.
   * @param ty (default = 0) The number of pixels to translate (move) down along the y axis.
   * @see flash.display.Graphics#beginBitmapFill()
   */
  public function createBox(scaleX:Number = 1, scaleY:Number = 1, rotation:Number = 0, tx:Number = 0, ty:Number = 0) : void {
    // all inlined for higher performance:
    if (rotation == 0) {
      a = d = 1;
      b = c = 0;
    } else {
      a = Math.cos(rotation);
      b = Math.sin(rotation);
      c = -b;
      d = a;
    }
    if (scaleX != 1) {
      a *= scaleX;
      c *= scaleY;
    }
    if (scaleY != 1) {
      b *= scaleY;
      d *= scaleY;
    }
    this.tx = tx;
    this.ty = ty;
  }

  public static const MAGIC_GRADIENT_FACTOR:Number = 16384/10;

  /**
   * Creates the specific style of matrix expected by the beginGradientFill() method of the Graphics class.
   *
   * @param width
   * @param height
   * @param rotation
   * @param tx
   * @param ty
   */
  public function createGradientBox (width:Number = NaN, height:Number = NaN, rotation:Number = 0, tx:Number = 0, ty:Number = 0) : void {
    this.createBox(width/MAGIC_GRADIENT_FACTOR, height/MAGIC_GRADIENT_FACTOR, rotation, tx + width/2, ty + height/2);
  }

  /**
   * Returns the result of applying the geometric transformation represented by the Matrix object to the
   * specified point.
   *
   * @param point The point for which you want to get the result of the Matrix transformation. 
   * @return The point resulting from applying the Matrix transformation. 
   */
  public function transformPoint(point : Point) : Point {
    return new Point(a*point.x + c*point.y + tx, b*point.x + d*point.y + ty);
  }

  /**
   * Given a point in the pretransform coordinate space, returns the coordinates of that point after the
   * transformation occurs. Unlike the standard transformation applied using the transformPoint() method, the
   * deltaTransformPoint() method's transformation does not consider the translation parameters tx and ty.
   *
   * @param point The point for which you want to get the result of the matrix transformation.
   * @return The point resulting from applying the matrix transformation.
   */
  public function deltaTransformPoint(point : Point) : Point {
    return new Point(a*point.x + c*point.y, b*point.x + d*point.y);
  }

  /**
   * Sets each matrix property to a value that causes a null transformation.
   */
  public function identity () : void {
    a = d = 1;
    b = c = tx = ty = 0;
  }

  /**
   * Performs the opposite transformation of the original matrix.
   */
  public function invert () : void {
    var a : Number = this.a;
    var b : Number = this.b;
    var c : Number = this.c;
    var d : Number = this.d;
    var tx : Number = this.tx;
    var ty : Number = this.ty;
    // Cremer's rule: inverse = adjugate / determinant
    // A-1 = adj(A) / det(A)
    var det : Number = a*d - c*b;
    //     [a11 a12 a13]
    // A = [a21 a22 a23]
    //     [a31 a32 a33]
    // according to http://de.wikipedia.org/wiki/Inverse_Matrix#Formel_f.C3.BCr_3x3-Matrizen (sorry, German):
    //          [a22*a33-a32*a23 a13*a32-a12*a33 a12*a23-a13*a22]
    // adj(A) = [a23*a31-a21*a33 a11*a33-a13*a31 a13*a21-a11*a23]
    //          [a21*a32-a22*a31 a12*a31-a11*a32 a11*a22-a12*a21]
    // with a11 = a, a12 = c, a13 = tx,
    //      a21 = b, a22 = d, a23 = ty,
    //      a31 = 0, a32 = 0, a33 = 1:
    //          [d *1-0*ty  tx*0-c *1  c *ty-tx*d ]
    // adj(A) = [ty*0-b* 1  a *1-tx*0  tx* b-a *ty]
    //          [b *0-d* 0  c *0-a *0  a * d-c *b ]
    //          [ d -c  c*ty-tx*d]
    //        = [-b  a  tx*b-a*ty]
    //          [ 0  0  a*d -c*b ]
    this.a = d/det;
    this.b = -b/det;
    this.c = -c/det;
    this.d = a/det;
    this.tx = (c*ty-tx*d)/det;
    this.ty = (tx*b-a*ty)/det;
  }

  /**
   * A transformation that moves an object along the x and y axes.
   *
   * @param dx
   * @param dy
   */
  public function translate (dx:Number, dy:Number) : void {
    tx += dx; ty += dy;
  }

  /**
   * Applies a scaling transformation to the matrix.
   *
   * @param sx
   * @param sy
   */
  public function scale (sx:Number, sy:Number) : void {
    if (sx != 1) {
      a *= sx;
      c *= sx;
    }
    if (sy != 1) {
      b *= sy;
      d *= sy;
    }
  }

  /**
   * Applies a rotation transformation to the Matrix object.
   *
   * @param angle
   */
  public function rotate (angle:Number) : void {
    if (angle!=0) {
      var cos : Number = Math.cos(angle);
      var sin : Number = Math.sin(angle);
      var a : Number = this.a;
      var b : Number = this.b;
      var c : Number = this.c;
      var d : Number = this.d;
      this.a   = a*cos  - c*sin;
      this.b   = a*sin  + c*cos;
      this.c   = b*cos  - d*sin;
      this.d   = b*sin  + d*cos;
    }
  }

  /**
   * Returns a text value listing the properties of this Matrix object.
   * @return
   */
  public function toString () : String {
    return "("+["a="+a,"b="+b,"c="+c,"d="+d,"tx="+tx,"ty="+ty].join(", ")+")";
  }

}
}
