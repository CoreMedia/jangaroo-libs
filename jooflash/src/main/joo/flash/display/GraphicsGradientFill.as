package flash.display {
import flash.geom.Matrix;

/**
 * Defines a gradient fill.
 * <p>Use a GraphicsGradientFill object with the <code>Graphics.drawGraphicsData()</code> method. Drawing a GraphicsGradientFill object is the equivalent of calling the <code>Graphics.beginGradientFill()</code> method.</p>
 * @see Graphics#beginGradientFill()
 * @see Graphics#drawGraphicsData()
 *
 */
public final class GraphicsGradientFill implements IGraphicsFill, IGraphicsData {
  /**
   * An array of alpha values for the corresponding colors in the colors array. Valid values are between 0 and 1. If the value is less than 0, 0 is used. If the value is greater than 1, 1 is used.
   */
  public var alphas:Array;
  /**
   * An array of RGB hexadecimal color values to use in the gradient. For example, red is 0xFF0000, blue is 0x0000FF, and so on. You can specify up to 15 colors. For each color, specify a corresponding value in the alphas and ratios properties.
   */
  public var colors:Array;
  /**
   * A number that controls the location of the focal point of the gradient. A value of 0 sets the focal point in the center. A value of 1 means that the focal point is at one border of the gradient circle.A value of -1 sets the focal point at the other border of the gradient circle. A value of less than -1 or greater than 1 is rounded to -1 or 1, respectively. For example, the following shows a <code>focalPointRatio</code> set to 0.75:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/radial_sketch.jpg" /></p>
   */
  public var focalPointRatio:Number;

  /**
   * A value from the InterpolationMethod class that specifies which value to use. Valid values are: <code>InterpolationMethod.LINEAR_RGB</code> or <code>InterpolationMethod.RGB</code>
   * <p>For example, the following shows a simple linear gradient between two colors (with the <code>spreadMethod</code> parameter set to <code>SpreadMethod.REFLECT</code>). The different interpolation methods change the appearance as follows:</p>
   * <table>
   * <tr>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_interp_linearrgb.jpg" /> </td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_interp_rgb.jpg" /> </td></tr>
   * <tr>
   * <td><code>InterpolationMethod.LINEAR_RGB</code></td>
   * <td><code>InterpolationMethod.RGB</code></td></tr></table>
   * @see InterpolationMethod
   *
   */
  public function get interpolationMethod():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set interpolationMethod(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A transformation matrix as defined by the Matrix class. The flash.geom.Matrix class includes a <code>createGradientBox()</code> method to set up the matrix for use with the <code>beginGradientFill()</code> method.
   * @see flash.geom.Matrix#createGradientBox()
   *
   */
  public var matrix:Matrix;
  /**
   * An array of color distribution ratios. Valid values are between 0 and 255. This value defines the percentage of the width where the color is sampled at 100%. The value 0 represents the left position in the gradient box, and the value 255 represents the right position in the gradient box.
   * <p><b>Note:</b> This value represents positions in the gradient box, not the coordinate space of the final gradient which can be wider or thinner than the gradient box. Specify a value for corresponding to each value in the <code>colors</code> property.</p>
   * <p>For example, for a linear gradient that includes two colors (blue and green) the following example illustrates the placement of the colors in the gradient based on different values in the <code>ratios</code> array:</p>
   * <table>
   * <tr><th><code>ratios</code></th><th>Gradient</th></tr>
   * <tr>
   * <td><code>[0, 127]</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/gradient-ratios-1.jpg" /></td></tr>
   * <tr>
   * <td><code>[0, 255]</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/gradient-ratios-2.jpg" /></td></tr>
   * <tr>
   * <td><code>[127, 255]</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/gradient-ratios-3.jpg" /></td></tr></table>
   * <p>The values in the array must increase sequentially; for example, <code>[0, 63, 127, 190, 255]</code>.</p>
   */
  public var ratios:Array;

  /**
   * A value from the SpreadMethod class that specifies which spread method to use. Valid values are: <code>SpreadMethod.PAD</code>, <code>SpreadMethod.REFLECT</code>, or <code>SpreadMethod.REPEAT</code>.
   * <p>For example, the following shows a simple linear gradient between two colors:</p>
   * <listing>
   *      import flash.geom.*
   *      import flash.display.*
   *      var fillType:String = GradientType.LINEAR;
   *      var colors:Array = [0xFF0000, 0x0000FF];
   *      var alphas:Array = [1, 1];
   *      var ratios:Array = [0x00, 0xFF];
   *      var matr:Matrix = new Matrix();
   *      matr.createGradientBox(20, 20, 0, 0, 0);
   *      var spreadMethod:String = SpreadMethod.PAD;
   *      this.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod);
   *      this.graphics.drawRect(0,0,100,100);
   *     </listing>
   * <p>This example uses <code>SpreadMethod.PAD</code> for the spread method, and the gradient fill looks like the following:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_spread_pad.jpg" /></p>
   * <p>If you use <code>SpreadMethod.REFLECT</code> for the spread method, the gradient fill looks like the following:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_spread_reflect.jpg" /></p>
   * <p>If you use <code>SpreadMethod.REPEAT</code> for the spread method, the gradient fill looks like the following:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_spread_repeat.jpg" /></p>
   * @see SpreadMethod
   *
   */
  public function get spreadMethod():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set spreadMethod(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A value from the GradientType class that specifies which gradient type to use. Values are <code>GradientType.LINEAR</code> or <code>GradientType.RADIAL</code>.
   * @see GradientType
   *
   */
  public function get type():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set type(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new GraphicsGradientFill object.
   * @param type A value from the GradientType class that specifies which gradient type to use: <code>GradientType.LINEAR</code> or <code>GradientType.RADIAL</code>.
   * @param colors An array of RGB hexadecimal color values used in the gradient; for example, red is 0xFF0000, blue is 0x0000FF, and so on. You can specify up to 15 colors. For each color, specify a corresponding value in the alphas and ratios parameters.
   * @param alphas An array of alpha values for the corresponding colors in the colors array; valid values are 0 to 1. If the value is less than 0, 0 is used. If the value is greater than 1, 1 is used.
   * @param ratios An array of color distribution ratios; valid values are 0-255. This value defines the percentage of the width where the color is sampled at 100%. The value 0 represents the left position in the gradient box, and 255 represents the right position in the gradient box.
   * @param matrix A transformation matrix as defined by the flash.geom.Matrix class. The flash.geom.Matrix class includes a <code>createGradientBox()</code> method, which lets you conveniently set up the matrix for use with the <code>beginGradientFill()</code> method.
   * @param spreadMethod A value from the SpreadMethod class that specifies which spread method to use, either: <code>SpreadMethod.PAD</code>, <code>SpreadMethod.REFLECT</code>, or <code>SpreadMethod.REPEAT</code>.
   * @param interpolationMethod A value from the InterpolationMethod class that specifies which value to use: <code>InterpolationMethod.LINEAR_RGB</code> or <code>InterpolationMethod.RGB</code>
   * @param focalPointRatio A number that controls the location of the focal point of the gradient. A value of 0 sets the focal point in the center. A value of 1 sets the focal point at one border of the gradient circle. A value of -1 sets the focal point at the other border of the gradient circle. A value less than -1 or greater than 1 is rounded to -1 or 1, respectively.
   *
   * @see Graphics#beginGradientFill()
   * @see GradientType
   * @see flash.geom.Matrix
   * @see SpreadMethod
   * @see InterpolationMethod
   *
   */
  public function GraphicsGradientFill(type:String = "linear", colors:Array = null, alphas:Array = null, ratios:Array = null, matrix:* = null, spreadMethod:* = "pad", interpolationMethod:String = "rgb", focalPointRatio:Number = 0.0) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
