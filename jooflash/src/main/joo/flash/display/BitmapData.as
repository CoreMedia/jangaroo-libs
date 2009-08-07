package flash.display {

import js.HTMLElement;
import js.HTMLCanvasElement;
import js.CanvasRenderingContext2D;
import js.ImageData;
import flash.geom.Matrix;
import flash.display.IBitmapDrawable;
import flash.geom.Rectangle;
import flash.geom.ColorTransform;

public class BitmapData implements flash.display.IBitmapDrawable {

  /**
   * Creates a BitmapData object with a specified width and height. If you specify a value for the fillColor parameter,
   * every pixel in the bitmap is set to that color.
   * <p>By default, the bitmap is created as transparent, unless you pass the value false for the transparent parameter.
   * After you create an opaque bitmap, you cannot change it to a transparent bitmap. Every pixel in an opaque bitmap
   * uses only 24 bits of color channel information. If you define the bitmap as transparent, every pixel uses 32 bits
   * of color channel information, including an alpha transparency channel.
   * <p>The maximum width and maximum height of a BitmapData object is 2880 pixels. If you specify a width or height
   * value that is greater than 2880, a new instance is not created.
   * @throws ArgumentError width and/or height are invalid (less than or equal to zero, greater than 2880) 
   * @param width The width of the bitmap image in pixels.
   * @param height The height of the bitmap image in pixels.
   * @param transparent (default = true) Specifies whether the bitmap image supports per-pixel transparency.
   *   The default value is true (transparent). To create a fully transparent bitmap, set the value of the transparent
   *   parameter to true and the value of the fillColor parameter to 0x00000000 (or to 0). Setting the transparent
   *   property to false can result in minor improvements in rendering performance.
   * @param fillColor (default = 0xFFFFFFFF) A 32-bit ARGB color value that you use to fill the bitmap image area.
   *   The default value is 0xFFFFFFFF (solid white).
   */
  public function BitmapData(width : int, height : int, transparent : Boolean = true, fillColor : uint = 0xFFFFFFFF) {
    _transparent = transparent;
    canvas = window.document.createElement("canvas") as HTMLCanvasElement;
    canvas.width = _width = width;
    canvas.height = _height = height;
    canvas.style.position = "absolute";
    context = canvas.getContext("2d") as CanvasRenderingContext2D;
    // TODO: transparent, fillColor.
  }

  /**
   * The rectangle that defines the size and location of the bitmap image. The top and left of the rectangle
   * are 0; the width and height are equal to the width and height in pixels of the BitmapData object.
   */
  public function get rect() : Rectangle {
    return new Rectangle(0, 0, _width, _height);
  }

  /**
   * Defines whether the bitmap image supports per-pixel transparency. You can set this value only when you construct a BitmapData object by passing in true for the transparent parameter of the constructor. Then, after you create a BitmapData object, you can check whether it supports per-pixel transparency by determining if the value of the transparent property is true.
   */
  public function get transparent():Boolean {
    return _transparent;
  }

  /**
   * The width of the bitmap image in pixels.
   */
  public function get width():int {
    return _width;
  }

  /**
   * The height of the bitmap image in pixels.
   */
  public function get height() : int {
    return _height;
  }

  /**
   * Adjusts the color values in a specified area of a bitmap image by using a ColorTransform object. If the
   * rectangle matches the boundaries of the bitmap image, this method transforms the color values of the entire
   * image.
   * @throws TypeError The rect or colorTransform are null.
   * @example
   * The following example shows how to apply a color transform to the left half (rectangle) of a BitmapData
   * object:
   * <pre>
   * import flash.display.Bitmap;
   * import flash.display.BitmapData;
   * import flash.geom.Rectangle;
   * import flash.geom.ColorTransform;
   * 
   * var bmd:BitmapData = new BitmapData(80, 30, false, 0xFF0000);
   * 
   * var cTransform:ColorTransform = new ColorTransform();
   * cTransform.alphaMultiplier = 0.5
   * var rect:Rectangle = new Rectangle(0, 0, 40, 30);
   * bmd.colorTransform(rect, cTransform);
   * 
   * var bm:Bitmap = new Bitmap(bmd);
   * addChild(bm);
   * </pre>
   * @param rect A Rectangle object that defines the area of the image in which the ColorTransform object is applied.
   * @param colorTransform A ColorTransform object that describes the color transformation values to apply.
   * @see flash.geom.ColorTransform
   * @see flash.geom.Rectangle
   */
  public function colorTransform(rect : Rectangle, colorTransform : ColorTransform) : void {
    // check for all known faster methods to map colorTransform directly to canvas APIs:
    if (colorTransform.alphaOffset==0
      && colorTransform.redMultiplier>=0 && colorTransform.redMultiplier<=1
      && colorTransform.redMultiplier==colorTransform.greenMultiplier
      && colorTransform.redMultiplier==colorTransform.blueMultiplier
      && colorTransform.redMultiplier==colorTransform.alphaMultiplier) {
      if (colorTransform.redOffset>=0 && colorTransform.greenOffset>=0 && colorTransform.blueOffset>=0) {
        context.save();
        context.setTransform(1, 0, 0, 1, 0, 0);
        // TODO: which other context attributes to reset?
        var alpha : Number = 1;
        if (colorTransform.redMultiplier==1) {
          context.globalCompositeOperation = "lighter";
        } else {
          context.globalCompositeOperation = "source-over";
          alpha -= colorTransform.alphaMultiplier;
        }
        context.fillStyle = "rgba("+
                            [colorTransform.redOffset, colorTransform.greenOffset, colorTransform.blueOffset,
                              alpha]
                              .join(",")+")";
        context.fillRect(rect.x,rect.y, rect.width,rect.height);
        context.restore();
        return;
      //} else {
      //   TODO: "destination-out" for alphaMultiplier within 0..1 only
      //   TODO: negative offsets: "darker" does not work in Firefox :-(
      }
    }
    // generic, but very slow solution:
    // get the image data to manipulate
    var input : ImageData = context.getImageData(rect.x, rect.y, rect.width, rect.height);

    // get an empty slate to put the data into
    //var output : ImageData = context.createImageData(rect.width, rect.height);
    // => createImageData not yet supported by all browsers with canvas support, esp. not Firefox.

    // alias some variables for convenience
    // notice that we are using input.width and input.height here
    // as they might not be the same as rect.width and rect.height
    // (in particular, they might be different on high-res displays)
    var w : uint = input.width, h : uint = input.height;
    var inputData : Array = input.data;
    //var outputData : Array = output.data;

    // color transformation:
    var maps : Array = colorTransform.getComponentMaps();
    var i : uint;
    for (var m:uint=0; m<4; ++m) {
      var map : Array = maps[m];
      if (map) {
        for (i = inputData.length-4 + m; i >= 0; i -= 4) {
          inputData[i] = map[inputData[i]];
        }
      }
    }
    // put the image data back after manipulation
    context.putImageData(input, rect.x, rect.y);
  }

  /**
   * Draws the source display object onto the bitmap image, using the Flash Player vector renderer. You can
   * specify matrix, colorTransform, blendMode, and a destination clipRect parameter to control how the
   * rendering performs. Optionally, you can specify whether the bitmap should be smoothed when scaled (this
   * works only if the source object is a BitmapData object).
   * <p>This method directly corresponds to how objects are drawn with the standard vector renderer for objects in
   * the authoring tool interface.
   * <p>The source display object does not use any of its applied transformations for this call. It is treated as it
   * exists in the library or file, with no matrix transform, no color transform, and no blend mode. To draw a
   * display object (such as a movie clip) by using its own transform properties, you can copy its transform
   * property object to the transform property of the Bitmap object that uses the BitmapData object.
   * <p>Note: The source object and (in the case of a Sprite or MovieClip object) all of its child objects must
   * come from the same domain as the caller, or must be in a SWF file that is accessible to the caller by having
   * called the Security.allowDomain() method. If these conditions are not met, the draw() method does not draw
   * anything.
   * @throws ArgumentError The source parameter is not a BitmapData or DisplayObject object.
   * @throws SecurityError The source object and (in the case of a Sprite or MovieClip object) all of its
   *   child objects do not come from the same domain as the caller, or are not in a SWF file that is accessible
   *   to the caller by having called the Security.allowDomain() method.
   * @throws ArgumentError The source is null or not a valid IBitmapDrawable object.
   * @example
   * The following example shows how to draw a TextField object to a BitmapData object:
   * <pre>
   * import flash.display.Bitmap;
   * import flash.display.BitmapData;
   * import flash.text.TextField;
   * 
   * var tf:TextField = new TextField();
   * tf.text = "bitmap text";
   * 
   * var myBitmapData:BitmapData = new BitmapData(80, 20);
   * myBitmapData.draw(tf);
   * var bmp:Bitmap = new Bitmap(myBitmapData);
   * this.addChild(bmp);
   * </pre>
   * @param source The display object or BitmapData object to draw to the BitmapData object. (The DisplayObject
   *   and BitmapData classes implement the IBitmapDrawable interface.)
   * @param matrix (default = null) A Matrix object used to scale, rotate, or translate the coordinates of the
   *   bitmap. If you do not want to apply a matrix transformation to the image, set this parameter to an identity
   *   matrix, created with the default new Matrix() constructor, or pass a null value.
   * @param colorTransform (default = null) A ColorTransform object that you use to adjust the color values of
   *   the bitmap. If no object is supplied, the bitmap image's colors are not transformed. If you must pass this
   *   parameter but you do not want to transform the image, set this parameter to a ColorTransform object
   *   created with the default new ColorTransform() constructor.
   * @param blendMode (default = null) A string value, from the flash.display.BlendMode class, specifying the
   *   blend mode to be applied to the resulting bitmap.
   * @param clipRect (default = null) A Rectangle object that defines the area of the source object to draw. If
   *   you do not supply this value, no clipping occurs and the entire source object is drawn.
   * @param smoothing (default = false) A Boolean value that determines whether a BitmapData object is smoothed
   *   when scaled or rotated, due to a scaling or rotation in the matrix parameter. The smoothing parameter only
   *   applies if the source parameter is a BitmapData object. With smoothing set to false, the rotated or scaled
   *   BitmapData image can appear pixelated or jagged. Drawing a bitmap with smoothing set to true takes longer
   *   than doing so with smoothing set to false.
   * @see flash.display.BlendMode
   * @see flash.geom.ColorTransform
   * @see flash.geom.Matrix
   */
  public function draw(source : IBitmapDrawable, matrix : Matrix = null, colorTransform : ColorTransform = null, 
                       blendMode : String = null, clipRect : Rectangle = null, smoothing : Boolean = false) : void {
    var element : HTMLElement = source is BitmapData ? (source as BitmapData).canvas : (source as DisplayObject).getElement();
    if (matrix) {
      this.context.save();
      this.context.setTransform(matrix.a, matrix.b, matrix.c, matrix.d, matrix.tx, matrix.ty);
    }
    this.context.drawImage(element, 0, 0);
    if (matrix) {
      this.context.restore();
    }
  }

  private var _transparent : Boolean;
  private var _width : int;
  private var _height : int;
  internal var canvas : HTMLCanvasElement;
  private var context : CanvasRenderingContext2D;
}
}