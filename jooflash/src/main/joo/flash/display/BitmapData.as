package flash.display {
import flash.geom.ColorTransform;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Rectangle;

import js.CanvasRenderingContext2D;
import js.HTMLCanvasElement;
import js.HTMLElement;
import js.HTMLImageElement;
import js.ImageData;

public class BitmapData implements IBitmapDrawable {

  /**
   * Creates a BitmapData object with a specified width and height. If you specify a value for the fillColor parameter,
   * every pixel in the bitmap is set to that color.
   * <p>By default, the bitmap is created as transparent, unless you pass the value false for the transparent parameter.
   * After you create an opaque bitmap, you cannot change it to a transparent bitmap. Every pixel in an opaque bitmap
   * uses only 24 bits of color channel information. If you define the bitmap as transparent, every pixel uses 32 bits
   * of color channel information, including an alpha transparency channel.</p>
   * <p>The maximum width and maximum height of a BitmapData object is 2880 pixels. If you specify a width or height
   * value that is greater than 2880, a new instance is not created.</p>
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
    var alpha:Number = (fillColor >>> 24) / 0xFF;
    if (alpha > 0 || !transparent) {
      context.save();
      context.fillStyle = Graphics.toRGBA(fillColor, alpha);
      context.fillRect(0, 0, width, height);
      context.restore();
    }
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
   * Fills a rectangular area of pixels with a specified ARGB color.
   *
   * @param rect The rectangular area to fill.
   * @param color The ARGB color value that fills the area. ARGB colors are often
   * specified in hexadecimal format; for example, 0xFF336699.
   *
   * @throws TypeError The rect is null.
   *
   * @see flash.geom.Rectangle
   *
   * @example
   * The following example shows how to fill a rectangular region of a BitmapData object with blue:
   *
   * <pre>
   * import flash.display.Bitmap;
   * import flash.display.BitmapData;
   * import flash.geom.Rectangle;
   *
   * var myBitmapData:BitmapData = new BitmapData(40, 40, false, 0x0000FF00);
   *
   * var rect:Rectangle = new Rectangle(0, 0, 20, 20);
   * myBitmapData.fillRect(rect, 0x0000FF);
   *
   * var bm:Bitmap = new Bitmap(myBitmapData);
   * addChild(bm);
   * </pre>
   */
  public function fillRect(rect:Rectangle, color:uint):void {
    context.save();
    context.setTransform(1, 0, 0, 1, 0, 0);
    // TODO: which other context attributes to reset?
    var alpha:uint = (color >> 24 & 0xFF);
    if (alpha == 0) {
      // IE9 does not (yet?) support globalCompositeOperation, but at least we can clear:
      context.clearRect(rect.x, rect.y, rect.width, rect.height);
    } else {
      context.fillStyle = "rgba("+
        [color >> 16 & 0xFF, color >> 8 & 0xFF, color & 0xFF, alpha / 0xFF]
          .join(",")+")";
      context.globalCompositeOperation = "copy";
      context.fillRect(rect.x, rect.y, rect.width, rect.height);
    }
    context.restore();
    context.globalCompositeOperation = "source-over";
    this.invalidateImg();
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
    var inputData : Array = input.data;

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
   * the authoring tool interface.</p>
   * <p>The source display object does not use any of its applied transformations for this call. It is treated as it
   * exists in the library or file, with no matrix transform, no color transform, and no blend mode. To draw a
   * display object (such as a movie clip) by using its own transform properties, you can copy its transform
   * property object to the transform property of the Bitmap object that uses the BitmapData object.</p>
   * <p>Note: The source object and (in the case of a Sprite or MovieClip object) all of its child objects must
   * come from the same domain as the caller, or must be in a SWF file that is accessible to the caller by having
   * called the Security.allowDomain() method. If these conditions are not met, the draw() method does not draw
   * anything.</p>
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
    var element:HTMLElement;
    if (source is BitmapData) {
      element = (source as BitmapData).canvas;
    } else {
      element = (source as DisplayObject).getElement();
      if (!(element is HTMLImageElement || element is HTMLCanvasElement)) {
        // TODO: Until I find out how to draw text, only images and canvas are supported.
        return;
      }
    }
    if (matrix) {
      this.context.save();
      this.context.setTransform(matrix.a, matrix.b, matrix.c, matrix.d, matrix.tx, matrix.ty);
    }
    this.context.drawImage(element, 0, 0);
    if (matrix) {
      this.context.restore();
    }
    this.invalidateImg();
  }

  public static function fromImg(img:HTMLImageElement):BitmapData {
    var bitmapData:BitmapData = new BitmapData(img.width, img.height, true, 0);
    bitmapData.img = img;
    bitmapData.context.drawImage(img, 0, 0);
    return bitmapData;
  }

  private function invalidateImg():void {
    if (img) {
      img = null;
    }
  }

  function getDrawImageElement():HTMLElement {
    return img || canvas;
  }

  private var img:HTMLImageElement;

  /**
   * Returns an integer that represents an RGB pixel value from a BitmapData object at
   * a specific point (<i>x</i>, <i>y</i>). The <code>getPixel()</code> method returns an
   * unmultiplied pixel value. No alpha information is returned.
   * <p>All pixels in a BitmapData object are stored as premultiplied color values.
   * A premultiplied image pixel has the red, green, and blue
   * color channel values already multiplied by the alpha data. For example, if the
   * alpha value is 0, the values for the RGB channels are also 0, independent of their unmultiplied
   * values. This loss of data can cause some problems when you perform operations. All BitmapData
   * methods take and return unmultiplied values. The internal pixel representation is converted
   * from premultiplied to unmultiplied before it is returned as a value. During a set operation,
   * the pixel value is premultiplied before the raw image pixel is set.</p>
   *
   * @param x The <i>x</i> position of the pixel.
   * @param y The <i>y</i> position of the pixel.
   *
   * @return uint A number that represents an RGB pixel value. If the (<i>x</i>, <i>y</i>) coordinates are
   * outside the bounds of the image, the method returns 0.
   *
   * @see #getPixel32()
   * @see #setPixel()
   *
   * @example
   * The following example creates a BitmapData object filled with red, then uses the
   * <code>getPixel()</code> method to determine the color value in the upper-left pixel:
   * <pre>
   * import flash.display.BitmapData;
   *
   * var bmd:BitmapData = new BitmapData(80, 40, false, 0xFF0000);
   *
   * var pixelValue:uint = bmd.getPixel(1, 1);
   * trace(pixelValue.toString(16)); // ff0000;
   * </pre>
   */
  public function getPixel(x:int, y:int):uint {
    if (rect.contains(x, y)) {
      var data : Array = context.getImageData(x, y, 1, 1).data;
      return data[0] << 16 | data[1] << 8 | data[2];
    }
    return 0;
  }

  /**
   * Returns an ARGB color value that contains alpha channel data and RGB
   * data. This method is similar to the <code>getPixel()</code> method, which returns an
   * RGB color without alpha channel data.
   * <p>All pixels in a BitmapData object are stored as premultiplied color values.
   * A premultiplied image pixel has the red, green, and blue
   * color channel values already multiplied by the alpha data. For example, if the
   * alpha value is 0, the values for the RGB channels are also 0, independent of their unmultiplied
   * values. This loss of data can cause some problems when you perform operations. All BitmapData
   * methods take and return unmultiplied values. The internal pixel representation is converted
   * from premultiplied to unmultiplied before it is returned as a value. During a set operation,
   * the pixel value is premultiplied before the raw image pixel is set.</p>
   *
   * @param x The <i>x</i> position of the pixel.
   * @param y The <i>y</i> position of the pixel.
   *
   * @return uint A number representing an ARGB pixel value. If the (<i>x</i>, <i>y</i>) coordinates are
   *    outside the bounds of the image, 0 is returned.
   *
   * @see #getPixel()
   * @see #setPixel32()
   *
   * @example
   * The following example creates a BitmapData object filled with a color, then uses the
   * <code>getPixel32()</code> method to determine the color value in the upper-left pixel, and then
   * determines the hexidecimal values for each color component (alpha, red, green, and blue):
   *
   * <pre>
   * import flash.display.BitmapData;
   *
   * var bmd:BitmapData = new BitmapData(80, 40, true, 0xFF44AACC);
   *
   * var pixelValue:uint = bmd.getPixel32(1, 1);
   * var alphaValue:uint = pixelValue &gt;&gt; 24 &amp; 0xFF;
   * var red:uint = pixelValue &gt;&gt; 16 &amp; 0xFF;
   * var green:uint = pixelValue &gt;&gt; 8 &amp; 0xFF;
   * var blue:uint = pixelValue &amp; 0xFF;
   *
   * trace(alphaValue.toString(16)); // ff
   * trace(red.toString(16)); // 44
   * trace(green.toString(16)); // aa
   * trace(blue.toString(16)); // cc
   * </pre>
   */
  public function getPixel32(x:int, y:int):uint {
    if (rect.contains(x, y)) {
      var data : Array = context.getImageData(x, y, 1, 1).data;
      return data[0] << 16 | data[1] << 8 | data[2] | data[3] << 24;
    }
    return 0;
  }

  /**
   * Sets a single pixel of a BitmapData object. The current
   * alpha channel value of the image pixel is preserved during this
   * operation. TODO: Jangaroo: This seems to be incorrect, alpha is set to 0xFF!
   * The value of the RGB color parameter is treated as an unmultiplied color value.
   *
   * <p><b>Note:</b> To increase performance, when you use the <code>setPixel()</code> or
   * <code>setPixel32()</code> method repeatedly, call the <code>lock()</code> method before
   * you call the <code>setPixel()</code> or <code>setPixel32()</code> method, and then call
   * the <code>unlock()</code> method when you have made all pixel changes. This process prevents objects
   * that reference this BitmapData instance from updating until you finish making
   * the pixel changes.</p>
   *
   * @param x The <i>x</i> position of the pixel whose value changes.
   * @param y The <i>y</i> position of the pixel whose value changes.
   * @param color The resulting RGB color for the pixel.
   *
   * @see #getPixel
   * @see #setPixel32
   * @see #lock
   * @see #unlock
   *
   * @example
   * The following example uses the <code>setPixel()</code>
   * method to draw a red line in a BitmapData object:
   * <pre>
   * import flash.display.Bitmap;
   * import flash.display.BitmapData;
   *
   * var bmd:BitmapData = new BitmapData(80, 80, false, 0xCCCCCC);
   *
   * for (var i:uint = 0; i &lt; 80; i++) {
   *     var red:uint = 0xFF0000;
   *     bmd.setPixel(i, 40, red);
   * }
   *
   * var bm:Bitmap = new Bitmap(bmd);
   * addChild(bm);
   * </pre>
   */
  public function setPixel(x:int, y:int, color:uint):void {
    if (rect.contains(x, y)) {
      var imageData:ImageData = context.createImageData(1, 1);
      imageData.data[0] = color >> 16 & 0xFF;
      imageData.data[1] = color >>  8 & 0xFF;
      imageData.data[2] = color       & 0xFF;
      imageData.data[3] = 0xFF;
      context.putImageData(imageData, x, y);
      this.invalidateImg();
    }
  }

   /**
	 Sets the color and alpha transparency values of a single pixel of a BitmapData
	 object. This method is similar to the <code>setPixel()</code> method; the main difference is 
	 that the <code>setPixel32()</code> method takes an
	 ARGB color value that contains alpha channel information.
	 
	 <p>All pixels in a BitmapData object are stored as premultiplied color values. 
	 A premultiplied image pixel has the red, green, and blue 
	 color channel values already multiplied by the alpha data. For example, if the 
	 alpha value is 0, the values for the RGB channels are also 0, independent of their unmultiplied 
	 values. This loss of data can cause some problems when you perform operations. All BitmapData 
	 methods take and return unmultiplied values. The internal pixel representation is converted 
	 from premultiplied to unmultiplied before it is returned as a value. During a set operation, 
	 the pixel value is premultiplied before the raw image pixel is set.</p>
	 
	 <p><b>Note:</b> To increase performance, when you use the <code>setPixel()</code> or 
	 <code>setPixel32()</code> method repeatedly, call the <code>lock()</code> method before
	 you call the <code>setPixel()</code> or <code>setPixel32()</code> method, and then call 
	 the <code>unlock()</code> method when you have made all pixel changes. This process prevents objects
	 that reference this BitmapData instance from updating until you finish making 
	 the pixel changes.</p>

	 
	 @param x The <i>x</i> position of the pixel whose value changes.
	 @param y The <i>y</i> position of the pixel whose value changes.
	 @param color The resulting ARGB color for the pixel. If the bitmap is opaque
	 (not transparent), the alpha transparency portion of this color value is ignored.
	 
	 @see #setPixel
     @see getPixel32
     @see #lock
     @see #unlock

    @example
    The following example uses the <code>setPixel32()</code>
    method to draw a transparent (alpha == 0x60) red line in a BitmapData object:
<pre>
import flash.display.Bitmap;
import flash.display.BitmapData;

var bmd:BitmapData = new BitmapData(80, 80, true, 0xFFCCCCCC);

for (var i:uint = 0; i &lt; 80; i++) {
    var red:uint = 0x60FF0000;
    bmd.setPixel32(i, 40, red);
}

var bm:Bitmap = new Bitmap(bmd);
addChild(bm);
</pre>
   */
  public function setPixel32(x:int, y:int, color:uint):void {
    if (rect.contains(x, y)) {
      var imageData:ImageData = context.createImageData(1, 1);
      imageData.data[0] = color >> 16 & 0xFF;
      imageData.data[1] = color >>  8 & 0xFF;
      imageData.data[2] = color       & 0xFF;
      imageData.data[3] = color >> 24 & 0xFF;
      context.putImageData(imageData, x, y);
      this.invalidateImg();
    }
  }

  /**
   * Locks an image so that any objects that reference the BitmapData object, such as Bitmap objects,
	 are not updated when this BitmapData object changes. To improve performance, use this method
	 along with the <code>unlock()</code> method before and after numerous calls to the
	 <code>setPixel()</code> or <code>setPixel32()</code> method.

	 @see #setPixel
     @see #setPixel32
     @see #unlock

     @example
   The following example creates a BitmapData object based on the
 <code>bitmapData</code> property of a Bitmap object, <code>picture</code>.
 It then calls the <code>lock()</code> method before calling a complicated custom function,
 <code>complexTransformation()</code>, that modifies the BitmapData object. (The <code>picture</code> object
 and the <code>complexTransformation()</code> function are not defined in this example.) Even if the
 <code>complexTransformation()</code> function updates the <code>bitmapData</code> property of
 the <code>picture</code> object, changes are not reflected until the code calls the
 <code>unlock()</code> method on the <code>bitmapData</code> object:

<pre>
import flash.display.BitmapData;

var bitmapData:BitmapData = picture.bitmapData;
bitmapData.lock();
bitmapData = complexTransformation(bitmapData);
bitmapData.unlock();
picture.bitmapData = bitmapData;
</pre>
   */
  public function lock():void {
    // TODO: anything we can do here? Maybe create a reusable ImageData object and destroy it on unlock()?
  }

  /**
   * Unlocks an image so that any objects that reference the BitmapData object, such as Bitmap objects,
	 are updated when this BitmapData object changes. To improve performance, use this method
	 along with the <code>lock()</code> method before and after numerous calls to the
	 <code>setPixel()</code> or <code>setPixel32()</code> method.

	 @param changeRect (default = <code>null</code>) The area of the BitmapData object that has changed. If you do not specify a value for
	 this parameter, the entire area of the BitmapData object is considered
     changed. This parameter requires Flash Player version 9.0.115.0 or later.

	 @see #lock
     @see #setPixel
     @see setPixel32

   @example
   The following example creates a BitmapData object based on the
 <code>bitmapData</code> property of a Bitmap object, <code>picture</code>.
 It then calls the <code>lock()</code> method before calling a complicated custom function,
 <code>complexTransformation()</code>, that modifies the BitmapData object. (The <code>picture</code> object
 and the <code>complexTransformation()</code> function are not defined in this example.) Even if the
 <code>complexTransformation()</code> function updates the <code>bitmapData</code> property of
 the <code>picture</code> object, changes are not reflected until the code calls the
 <code>unlock()</code> method on the <code>bitmapData</code> object:

<pre>import flash.display.BitmapData;

var bitmapData:BitmapData = picture.bitmapData;
bitmapData.lock();
bitmapData = complexTransformation(bitmapData);
bitmapData.unlock();
picture.bitmapData = bitmapData;
</pre>
   */
  public function unlock(changeRect:Rectangle = null):void {
    // TODO: see lock()
  }

  /**
   * Provides a fast routine to perform pixel manipulation
   * between images with no stretching, rotation, or color effects. This method copies a
   * rectangular area of a source image to a
   * rectangular area of the same size at the destination point of the destination
   * BitmapData object.
   *
   * <p>If you include the <code>alphaBitmap</code> and <code>alphaPoint</code> parameters, you can use a secondary
   * image as an alpha source for the source image. If the source
   * image has alpha data, both sets of alpha data are used to
   * composite pixels from the source image to the destination image. The
   * <code>alphaPoint</code> parameter is the point in the alpha image that
   * corresponds to the upper-left corner of the source
   * rectangle. Any pixels outside the intersection of the source
   * image and alpha image are not copied to the destination image.</p>
   *
   * <p>The <code>mergeAlpha</code> property controls whether or not the alpha
   * channel is used when a transparent image is copied onto
   * another transparent image. To copy
   * pixels with the alpha channel data, set the <code>mergeAlpha</code>
   * property to <code>true</code>. By default, the <code>mergeAlpha</code> property is
   * <code>false</code>.</p>
   *
   * @param sourceBitmapData The input bitmap image from which to copy pixels. The source image can be a
   * different BitmapData instance, or it can refer to the current BitmapData
   * instance.
   *
   * @param sourceRect A rectangle that defines the area of the source image to use as input.
   *
   * @param destPoint The destination point that represents the upper-left corner of the rectangular
   * area where the new pixels are placed.
   *
   * @param alphaBitmapData (default = <code>null</code>) A secondary, alpha BitmapData object source.
   *
   * @param alphaPoint (default = <code>null</code>) The point in the alpha BitmapData object source that corresponds to
   * the upper-left corner of the <code>sourceRect</code> parameter.
   *
   * @param mergeAlpha (default = <code>false</code>) To use the alpha channel, set the value to
   * <code>true</code>. To copy pixels with no alpha channel, set the value to
   * <code>false</code>.
   *
   * @throws TypeError The sourceBitmapData, sourceRect, destPoint are null.
   *
   * @example
   * The following example shows how to copy pixels from a 20 x 20 pixel region in one BitmapData object
   * to another BitmapData object:
   * <pre>
   * import flash.display.Bitmap;
   * import flash.display.BitmapData;
   * import flash.geom.Rectangle;
   * import flash.geom.Point;
   *
   * var bmd1:BitmapData = new BitmapData(40, 40, false, 0x000000FF);
   * var bmd2:BitmapData = new BitmapData(80, 40, false, 0x0000CC44);
   *
   * var rect:Rectangle = new Rectangle(0, 0, 20, 20);
   * var pt:Point = new Point(10, 10);
   * bmd2.copyPixels(bmd1, rect, pt);
   *
   * var bm1:Bitmap = new Bitmap(bmd1);
   * this.addChild(bm1);
   * var bm2:Bitmap = new Bitmap(bmd2);
   * this.addChild(bm2);
   * bm2.x = 50;
   * </pre>
   */
  public function copyPixels(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point,
                             alphaBitmapData:BitmapData = null, alphaPoint:Point = null, mergeAlpha:Boolean = false):void {
    var destRect:Rectangle = new Rectangle(destPoint.x, destPoint.y, sourceRect.width, sourceRect.height);
    destRect = destRect.intersection(this.rect);
    if (destRect.width > 0 && destRect.height > 0) {
      if (mergeAlpha) {
        // putImageData() does not support alpha channel, so use drawImage():
        this.context.drawImage(sourceBitmapData.getDrawImageElement(), sourceRect.x, sourceRect.y, destRect.width, destRect.height,
          destPoint.x, destPoint.y, destRect.width, destRect.height);
      } else {
        var imageData:ImageData = sourceBitmapData.context.getImageData(sourceRect.x, sourceRect.y, destRect.width, destRect.height);
        this.context.putImageData(imageData, destPoint.x, destPoint.y);
      }
      invalidateImg();
    }
  }

  /**
   * Performs pixel-level hit detection between one bitmap image
   * and a point, rectangle, or other bitmap image. A hit is defined as
   * an overlap of a point or rectangle over an opaque pixel, or two
   * overlapping opaque pixels. No stretching,
   * rotation, or other transformation of either object is considered when
   * the hit test is performed.
   *
   * <p>If an image is an opaque image, it is considered a fully opaque rectangle for this
   * method. Both images must be transparent images to perform pixel-level hit testing that
   * considers transparency. When you are testing two transparent images, the alpha threshold
   * parameters control what alpha channel values, from 0 to 255, are considered opaque.</p>
   *
   * @example
   * The following example creates a BitmapData object that is only opaque in a rectangular region
   * (20, 20, 40, 40) and calls the <code>hitTest()</code> method with a Point object as the <code>secondObject</code>.
   * In the first call, the Point object defines the upper-left corner of the BitmapData object, which is not opaque, and
   * in the second call, the Point object defines the center of the BitmapData object, which is opaque.
   * <pre>
   * import flash.display.BitmapData;
   * import flash.geom.Rectangle;
   * import flash.geom.Point;
   *
   * var bmd1:BitmapData = new BitmapData(80, 80, true, 0x00000000);
   * var rect:Rectangle = new Rectangle(20, 20, 40, 40);
   * bmd1.fillRect(rect, 0xFF0000FF);
   *
   * var pt1:Point = new Point(1, 1);
   * trace(bmd1.hitTest(pt1, 0xFF, pt1)); // false
   * var pt2:Point = new Point(40, 40);
   * trace(bmd1.hitTest(pt1, 0xFF, pt2)); // true
   * </pre>
   * @param firstPoint A position of the upper-left corner of the BitmapData image in an arbitrary coordinate space.
   *   The same coordinate space is used in defining the <code>secondBitmapPoint</code> parameter.
   * @param firstAlphaThreshold The smallest alpha channel value that is considered opaque for this hit test.
   * @param secondObject A Rectangle, Point, Bitmap, or BitmapData object.
   * @param secondBitmapDataPoint (default = <code>null</code>) A point that defines a pixel location in the second BitmapData object.
   *   Use this parameter only when the value of <code>secondObject</code> is a
   *   BitmapData object.
   * @param secondAlphaThreshold (default = <code>1</code>) The smallest alpha channel value that is considered opaque in the second BitmapData object.
   *   Use this parameter only when the value of <code>secondObject</code> is a
   *   BitmapData object and both BitmapData objects are transparent.
   * @return A value of <code>true</code> if a hit occurs; otherwise, <code>false</code>.
   * @throws ArgumentError The <code>secondObject</code> parameter is not a Point, Rectangle, Bitmap, or BitmapData object.
   * @throws TypeError The firstPoint is null.
   */
  public function hitTest(firstPoint:Point, firstAlphaThreshold:uint, secondObject:Object, secondBitmapDataPoint:Point = null, secondAlphaThreshold:uint = 1):Boolean {
    return false; // TODO
  }

  private var _transparent : Boolean;
  private var _width : int;
  private var _height : int;
  internal var canvas : HTMLCanvasElement;
  private var context : CanvasRenderingContext2D;
}
}
