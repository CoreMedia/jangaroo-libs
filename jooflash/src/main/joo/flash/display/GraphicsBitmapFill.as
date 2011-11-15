package flash.display {
import flash.geom.Matrix;

/**
 * Defines a bitmap fill. The bitmap can be smoothed, repeated or tiled to fill the area; or manipulated using a transformation matrix.
 * <p>Use a GraphicsBitmapFill object with the <code>Graphics.drawGraphicsData()</code> method. Drawing a GraphicsBitmapFill object is the equivalent of calling the <code>Graphics.beginBitmapFill()</code> method.</p>
 * @see Graphics#drawGraphicsData()
 * @see Graphics#beginBitmapFill()
 *
 */
public final class GraphicsBitmapFill implements IGraphicsFill, IGraphicsData {
  /**
   * A transparent or opaque bitmap image.
   * @see BitmapData
   *
   */
  public var bitmapData:BitmapData;
  /**
   * A matrix object (of the flash.geom.Matrix class) that defines transformations on the bitmap. For example, the following matrix rotates a bitmap by 45 degrees (pi/4 radians):
   * <listing>
   *      matrix = new flash.geom.Matrix();
   *      matrix.rotate(Math.PI / 4);
   *     </listing>
   * @see flash.geom.Matrix
   *
   */
  public var matrix:Matrix;
  /**
   * Specifies whether to repeat the bitmap image in a tiled pattern.
   * <p>If <code>true</code>, the bitmap image repeats in a tiled pattern. If <code>false</code>, the bitmap image does not repeat, and the outermost pixels along the edges of the bitmap are used for any fill area that extends beyond the bounds of the bitmap.</p>
   * <p>For example, consider the following bitmap (a 20 x 20-pixel checkerboard pattern):</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/movieClip_beginBitmapFill_repeat_1.jpg" /></p>
   * <p>When <code>repeat</code> is set to <code>true</code> (as in the following example), the bitmap fill repeats the bitmap:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/movieClip_beginBitmapFill_repeat_2.jpg" /></p>
   * <p>When <code>repeat</code> is set to <code>false</code>, the bitmap fill uses the edge pixels for the fill area outside the bitmap:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/movieClip_beginBitmapFill_repeat_3.jpg" /></p>
   */
  public var repeat:Boolean;
  /**
   * Specifies whether to apply a smoothing algorithm to the bitmap image.
   * <p>If <code>false</code>, upscaled bitmap images are rendered by using a nearest-neighbor algorithm and look pixelated. If <code>true</code>, upscaled bitmap images are rendered by using a bilinear algorithm. Rendering by using the nearest neighbor algorithm is usually faster.</p>
   */
  public var smooth:Boolean;

  /**
   * Creates a new GraphicsBitmapFill object.
   * @param bitmapData A transparent or opaque bitmap image that contains the bits to display.
   * @param matrix A matrix object (of the flash.geom.Matrix class), which you use to define transformations on the bitmap.
   * @param repeat If <code>true</code>, the bitmap image repeats in a tiled pattern. If <code>false</code>, the bitmap image does not repeat, and the edges of the bitmap are used for any fill area that extends beyond the bitmap.
   * @param smooth If <code>false</code>, upscaled bitmap images are rendered using a nearest-neighbor algorithm and appear pixelated. If <code>true</code>, upscaled bitmap images are rendered using a bilinear algorithm. Rendering that uses the nearest-neighbor algorithm is usually faster.
   *
   * @see Graphics#beginBitmapFill()
   *
   */
  public function GraphicsBitmapFill(bitmapData:BitmapData = null, matrix:Matrix = null, repeat:Boolean = true, smooth:Boolean = false) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
