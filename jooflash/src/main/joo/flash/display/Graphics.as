package flash.display {
import flash.geom.Matrix;
import flash.geom.Point;

import js.CanvasGradient;
import js.CanvasRenderingContext2D;

/**
 * The Graphics class contains a set of methods that you can use to create a vector shape. Display objects that support drawing include Sprite and Shape objects. Each of these classes includes a <code>graphics</code> property that is a Graphics object. The following are among those helper functions provided for ease of use: <code>drawRect()</code>, <code>drawRoundRect()</code>, <code>drawCircle()</code>, and <code>drawEllipse()</code>.
 * <p>You cannot create a Graphics object directly from ActionScript code. If you call <code>new Graphics()</code>, an exception is thrown.</p>
 * <p>The Graphics class is final; it cannot be subclassed.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#includeExamplesSummary">View the examples</a></p>
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dce.html Basics of the drawing API
 *
 */
public final class Graphics {
  /**
   * Fills a drawing area with a bitmap image. The bitmap can be repeated or tiled to fill the area. The fill remains in effect until you call the <code>beginFill()</code>, <code>beginBitmapFill()</code>, <code>beginGradientFill()</code>, or <code>beginShaderFill()</code> method. Calling the <code>clear()</code> method clears the fill.
   * <p>The application renders the fill whenever three or more points are drawn, or when the <code>endFill()</code> method is called.</p>
   * @param bitmap A transparent or opaque bitmap image that contains the bits to be displayed.
   * @param matrix A matrix object (of the flash.geom.Matrix class), which you can use to define transformations on the bitmap. For example, you can use the following matrix to rotate a bitmap by 45 degrees (pi/4 radians):
   * <listing>
   *      matrix = new flash.geom.Matrix();
   *      matrix.rotate(Math.PI / 4);
   *     </listing>
   * @param repeat If <code>true</code>, the bitmap image repeats in a tiled pattern. If <code>false</code>, the bitmap image does not repeat, and the edges of the bitmap are used for any fill area that extends beyond the bitmap.
   * <p>For example, consider the following bitmap (a 20 x 20-pixel checkerboard pattern):</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/movieClip_beginBitmapFill_repeat_1.jpg" /></p>
   * <p>When <code>repeat</code> is set to <code>true</code> (as in the following example), the bitmap fill repeats the bitmap:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/movieClip_beginBitmapFill_repeat_2.jpg" /></p>
   * <p>When <code>repeat</code> is set to <code>false</code>, the bitmap fill uses the edge pixels for the fill area outside the bitmap:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/movieClip_beginBitmapFill_repeat_3.jpg" /></p>
   * @param smooth If <code>false</code>, upscaled bitmap images are rendered by using a nearest-neighbor algorithm and look pixelated. If <code>true</code>, upscaled bitmap images are rendered by using a bilinear algorithm. Rendering by using the nearest neighbor algorithm is faster.
   *
   * @see #endFill()
   * @see #beginFill()
   * @see #beginGradientFill()
   *
   * @example The following example uses an image (<code>image1.jpg</code>) that is rotated and repeated to fill in a rectangle. <ol>
   * <li>The image file (<code>image1.jpg</code>) is loaded using the <code>Loader</code> and <code>URLRequest</code> objects. Here the file is in the same directory as the SWF file. The SWF file needs to be compiled with Local Playback Security set to Access Local Files Only.</li>
   * <li>When the image is loaded (<code>Event</code> is complete), the <code>drawImage()</code> method is called. The <code>ioErrorHandler()</code> method writes a trace comment if the image was not loaded properly.</li>
   * <li>In <code>drawImage()</code> method, a <code>BitmapData</code> object is instantiated and its width and height are set to the image (<code>image1.jpg</code>). Then the source image is drawn into the BitmapData object. Next, a rectangle is drawn in the <code>mySprite</code> Sprite object and the BitmapData object is used to fill it. Using a <code>Matrix</code> object, the <code>beginBitmapFill()</code> method rotates the image 45 degrees, then it begins filling the rectangle with the image until it is finished.</li></ol>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.display.BitmapData;
   *     import flash.display.Loader;
   *     import flash.net.URLRequest;
   *     import flash.events.Event;
   *     import flash.events.IOErrorEvent;
   *     import flash.geom.Matrix;
   *
   *     public class Graphics_beginBitmapFillExample extends Sprite {
   *
   *         private var url:String = "image1.jpg";
   *         private var loader:Loader = new Loader();
   *
   *         public function Graphics_beginBitmapFillExample() {
   *
   *             var request:URLRequest = new URLRequest(url);
   *
   *             loader.load(request);
   *             loader.contentLoaderInfo.addEventListener(Event.COMPLETE, drawImage);
   *             loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
   *         }
   *
   *         private function drawImage(event:Event):void {
   *
   *             var mySprite:Sprite = new Sprite();
   *             var myBitmap:BitmapData = new BitmapData(loader.width, loader.height, false);
   *
   *             myBitmap.draw(loader, new Matrix());
   *
   *             var matrix:Matrix = new Matrix();
   *             matrix.rotate(Math.PI/4);
   *
   *             mySprite.graphics.beginBitmapFill(myBitmap, matrix, true);
   *             mySprite.graphics.drawRect(100, 50, 200, 90);
   *             mySprite.graphics.endFill();
   *
   *             addChild(mySprite);
   *         }
   *
   *          private function ioErrorHandler(event:IOErrorEvent):void {
   *             trace("Unable to load image: " + url);
   *         }
   *     }
   * }
   * </listing>
   */
  public function beginBitmapFill(bitmap:BitmapData, matrix:Matrix = null, repeat:Boolean = true, smooth:Boolean = false):void {
    commands.push(function (context:CanvasRenderingContext2D):void {
      // TODO: matrix, smooth
      context.fillStyle = context.createPattern(bitmap.getImage(), repeat ? "repeat" : "no-repeat");
    });
  }

  /**
   * Specifies a simple one-color fill that subsequent calls to other Graphics methods (such as <code>lineTo()</code> or <code>drawCircle()</code>) use when drawing. The fill remains in effect until you call the <code>beginFill()</code>, <code>beginBitmapFill()</code>, <code>beginGradientFill()</code>, or <code>beginShaderFill()</code> method. Calling the <code>clear()</code> method clears the fill.
   * <p>The application renders the fill whenever three or more points are drawn, or when the <code>endFill()</code> method is called.</p>
   * @param color The color of the fill (0xRRGGBB).
   * @param alpha The alpha value of the fill (0.0 to 1.0).
   *
   * @see #endFill()
   * @see #beginBitmapFill()
   * @see #beginGradientFill()
   *
   * @example
   * <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#includeExamplesSummary">example</a> at the end of this class for an illustration of how to use this method.
   */
  public function beginFill(color:uint, alpha:Number = 1.0):void {
    commands.push(function (context:CanvasRenderingContext2D):void {
      context.fillStyle = toRGBA(color, alpha);
      context.beginPath();
    });
  }

  /**
   * Specifies a gradient fill used by subsequent calls to other Graphics methods (such as <code>lineTo()</code> or <code>drawCircle()</code>) for the object. The fill remains in effect until you call the <code>beginFill()</code>, <code>beginBitmapFill()</code>, <code>beginGradientFill()</code>, or <code>beginShaderFill()</code> method. Calling the <code>clear()</code> method clears the fill.
   * <p>The application renders the fill whenever three or more points are drawn, or when the <code>endFill()</code> method is called.</p>
   * @param type A value from the GradientType class that specifies which gradient type to use: <code>GradientType.LINEAR</code> or <code>GradientType.RADIAL</code>.
   * @param colors An array of RGB hexadecimal color values used in the gradient; for example, red is 0xFF0000, blue is 0x0000FF, and so on. You can specify up to 15 colors. For each color, specify a corresponding value in the alphas and ratios parameters.
   * @param alphas An array of alpha values for the corresponding colors in the colors array; valid values are 0 to 1. If the value is less than 0, the default is 0. If the value is greater than 1, the default is 1.
   * @param ratios An array of color distribution ratios; valid values are 0-255. This value defines the percentage of the width where the color is sampled at 100%. The value 0 represents the left position in the gradient box, and 255 represents the right position in the gradient box.
   * <p><b>Note:</b> This value represents positions in the gradient box, not the coordinate space of the final gradient, which can be wider or thinner than the gradient box. Specify a value for each value in the <code>colors</code> parameter.</p>
   * <p>For example, for a linear gradient that includes two colors, blue and green, the following example illustrates the placement of the colors in the gradient based on different values in the <code>ratios</code> array:</p>
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
   * @param matrix A transformation matrix as defined by the flash.geom.Matrix class. The flash.geom.Matrix class includes a <code>createGradientBox()</code> method, which lets you conveniently set up the matrix for use with the <code>beginGradientFill()</code> method.
   * @param spreadMethod A value from the SpreadMethod class that specifies which spread method to use, either: <code>SpreadMethod.PAD</code>, <code>SpreadMethod.REFLECT</code>, or <code>SpreadMethod.REPEAT</code>.
   * <p>For example, consider a simple linear gradient between two colors:</p>
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
   * @param interpolationMethod A value from the InterpolationMethod class that specifies which value to use: <code>InterpolationMethod.LINEAR_RGB</code> or <code>InterpolationMethod.RGB</code>
   * <p>For example, consider a simple linear gradient between two colors (with the <code>spreadMethod</code> parameter set to <code>SpreadMethod.REFLECT</code>). The different interpolation methods affect the appearance as follows:</p>
   * <table>
   * <tr>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_interp_linearrgb.jpg" /> </td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_interp_rgb.jpg" /> </td></tr>
   * <tr>
   * <td><code>InterpolationMethod.LINEAR_RGB</code></td>
   * <td><code>InterpolationMethod.RGB</code></td></tr></table>
   * @param focalPointRatio A number that controls the location of the focal point of the gradient. 0 means that the focal point is in the center. 1 means that the focal point is at one border of the gradient circle. -1 means that the focal point is at the other border of the gradient circle. A value less than -1 or greater than 1 is rounded to -1 or 1. For example, the following example shows a <code>focalPointRatio</code> set to 0.75:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/radial_sketch.jpg" /></p>
   *
   * @throws ArgumentError If the <code>type</code> parameter is not valid.
   *
   * @see #endFill()
   * @see #beginFill()
   * @see #beginBitmapFill()
   * @see flash.geom.Matrix#createGradientBox()
   * @see GradientType
   * @see SpreadMethod
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7ddb.html Using Matrix objects
   *
   */
  public function beginGradientFill(type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix = null, spreadMethod:String = "pad", interpolationMethod:String = "rgb", focalPointRatio:Number = 0):void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      context.fillStyle = createGradientStyle(context, type, colors, alphas, ratios,
              matrix, spreadMethod, interpolationMethod, focalPointRatio);
    });
  }

  /**
   * Specifies a shader fill used by subsequent calls to other Graphics methods (such as <code>lineTo()</code> or <code>drawCircle()</code>) for the object. The fill remains in effect until you call the <code>beginFill()</code>, <code>beginBitmapFill()</code>, <code>beginGradientFill()</code>, or <code>beginShaderFill()</code> method. Calling the <code>clear()</code> method clears the fill.
   * <p>The application renders the fill whenever three or more points are drawn, or when the <code>endFill()</code> method is called.</p>
   * <p>Shader fills are not supported under GPU rendering; filled areas will be colored cyan.</p>
   * @param shader The shader to use for the fill. This Shader instance is not required to specify an image input. However, if an image input is specified in the shader, the input must be provided manually. To specify the input, set the <code>input</code> property of the corresponding ShaderInput property of the <code>Shader.data</code> property.
   * <p>When you pass a Shader instance as an argument the shader is copied internally. The drawing fill operation uses that internal copy, not a reference to the original shader. Any changes made to the shader, such as changing a parameter value, input, or bytecode, are not applied to the copied shader that's used for the fill.</p>
   * @param matrix A matrix object (of the flash.geom.Matrix class), which you can use to define transformations on the shader. For example, you can use the following matrix to rotate a shader by 45 degrees (pi/4 radians):
   * <listing>
   *      matrix = new flash.geom.Matrix();
   *      matrix.rotate(Math.PI / 4);
   *     </listing>
   * <p>The coordinates received in the shader are based on the matrix that is specified for the <code>matrix</code> parameter. For a default (<code>null</code>) matrix, the coordinates in the shader are local pixel coordinates which can be used to sample an input.</p>
   *
   * @throws ArgumentError When the shader output type is not compatible with this operation (the shader must specify a <code>pixel3</code> or <code>pixel4</code> output).
   * @throws ArgumentError When the shader specifies an image input that isn't provided.
   * @throws ArgumentError When a ByteArray or Vector.&lt;Number> instance is used as an input and the <code>width</code> and <code>height</code> properties aren't specified for the ShaderInput, or the specified values don't match the amount of data in the input object. See the <code>ShaderInput.input</code> property for more information.
   *
   * @see #endFill()
   * @see #beginFill()
   * @see #beginBitmapFill()
   * @see #beginGradientFill()
   * @see ShaderInput
   *
   */
  public function beginShaderFill(shader:Shader, matrix:Matrix = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Clears the graphics that were drawn to this Graphics object, and resets fill and line style settings.
   */
  public function clear():void {
    commands.length = 0;
  }

  /**
   * Copies all of drawing commands from the source Graphics object into the calling Graphics object.
   * @param sourceGraphics The Graphics object from which to copy the drawing commands.
   *
   */
  public function copyFrom(sourceGraphics:Graphics):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Draws a curve using the current line style from the current drawing position to (anchorX, anchorY) and using the control point that (<code>controlX</code>, <code>controlY</code>) specifies. The current drawing position is then set to (<code>anchorX</code>, <code>anchorY</code>). If the movie clip in which you are drawing contains content created with the Flash drawing tools, calls to the <code>curveTo()</code> method are drawn underneath this content. If you call the <code>curveTo()</code> method before any calls to the <code>moveTo()</code> method, the default of the current drawing position is (0, 0). If any of the parameters are missing, this method fails and the current drawing position is not changed.
   * <p>The curve drawn is a quadratic Bezier curve. Quadratic Bezier curves consist of two anchor points and one control point. The curve interpolates the two anchor points and curves toward the control point.</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/quad_bezier.jpg" /></p>
   * @param controlX A number that specifies the horizontal position of the control point relative to the registration point of the parent display object.
   * @param controlY A number that specifies the vertical position of the control point relative to the registration point of the parent display object.
   * @param anchorX A number that specifies the horizontal position of the next anchor point relative to the registration point of the parent display object.
   * @param anchorY A number that specifies the vertical position of the next anchor point relative to the registration point of the parent display object.
   *
   * @example The following example draws a green circular object with a width and height of 100 pixels, 250 pixels to the right from the registration point (0, 0) of Sprite display object.
   * <p>Draw four curves to produce a circle and fill it green.</p>
   * <p>Note that due to the nature of the quadratic Bezier equation, this is not a perfect circle. The best way to draw a circle is to use the Graphics class's <code>drawCircle()</code> method.</p>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.display.Shape;
   *
   *     public class Graphics_curveToExample1 extends Sprite
   *     {
   *         public function Graphics_curveToExample1():void
   *         {
   *             var roundObject:Shape = new Shape();
   *
   *             roundObject.graphics.beginFill(0x00FF00);
   *             roundObject.graphics.moveTo(250, 0);
   *             roundObject.graphics.curveTo(300, 0, 300, 50);
   *             roundObject.graphics.curveTo(300, 100, 250, 100);
   *             roundObject.graphics.curveTo(200, 100, 200, 50);
   *             roundObject.graphics.curveTo(200, 0, 250, 0);
   *             roundObject.graphics.endFill();
   *
   *             this.addChild(roundObject);
   *         }
   *     }
   * }
   * </listing>
   * <div>The following example draws a new moon using <code>curveTo()</code> method.
   * <p>Two curve lines of 1 pixel are drawn and the space in between is filled white. The <code>moveTo()</code> method is used to position the current drawing position to coordinates (100, 100). The first curve moves the drawing position to (100, 200), its destination point. The second curve returns the position back to the starting position (100, 100), its destination point. The horizontal control points determine the different curve sizes.</p>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.display.Shape;
   *
   *     public class Graphics_curveToExample2 extends Sprite
   *     {
   *         public function Graphics_curveToExample2() {
   *             var newMoon:Shape = new Shape();
   *
   *             newMoon.graphics.lineStyle(1, 0);
   *             newMoon.graphics.beginFill(0xFFFFFF);
   *             newMoon.graphics.moveTo(100, 100);
   *             newMoon.graphics.curveTo(30, 150, 100, 200);
   *             newMoon.graphics.curveTo(50, 150, 100, 100);
   *             graphics.endFill();
   *
   *             this.addChild(newMoon);
   *         }
   *     }
   * }
   * </listing></div>
   */
  public function curveTo(controlX:Number, controlY:Number, anchorX:Number, anchorY:Number):void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      context.quadraticCurveTo(controlX, controlY, anchorX, anchorY);
    });
  }

  /**
   * Draws a circle. Set the line style, fill, or both before you call the <code>drawCircle()</code> method, by calling the <code>linestyle()</code>, <code>lineGradientStyle()</code>, <code>beginFill()</code>, <code>beginGradientFill()</code>, or <code>beginBitmapFill()</code> method.
   * @param x The <i>x</i> location of the center of the circle relative to the registration point of the parent display object (in pixels).
   * @param y The <i>y</i> location of the center of the circle relative to the registration point of the parent display object (in pixels).
   * @param radius The radius of the circle (in pixels).
   *
   * @see #drawEllipse()
   * @see #lineStyle()
   * @see #lineGradientStyle()
   * @see #beginFill()
   * @see #beginGradientFill()
   * @see #beginBitmapFill()
   *
   * @example
   * <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#includeExamplesSummary">example</a> at the end of this class for an illustration of how to use this method.
   */
  public function drawCircle(x:Number, y:Number, radius:Number):void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      context.moveTo(x + radius, y);
      context.arc(x, y, radius, 0, 2 * Math.PI, false);
      context.fill();
      context.stroke();
      context.beginPath();
      context.moveTo(x, y);
    });
  }

  /**
   * Draws an ellipse. Set the line style, fill, or both before you call the <code>drawEllipse()</code> method, by calling the <code>linestyle()</code>, <code>lineGradientStyle()</code>, <code>beginFill()</code>, <code>beginGradientFill()</code>, or <code>beginBitmapFill()</code> method.
   * @param x The <i>x</i> location of the top-left of the bounding-box of the ellipse relative to the registration point of the parent display object (in pixels).
   * @param y The <i>y</i> location of the top left of the bounding-box of the ellipse relative to the registration point of the parent display object (in pixels).
   * @param width The width of the ellipse (in pixels).
   * @param height The height of the ellipse (in pixels).
   *
   * @see #drawCircle()
   * @see #lineStyle()
   * @see #lineGradientStyle()
   * @see #beginFill()
   * @see #beginGradientFill()
   * @see #beginBitmapFill()
   *
   * @example The following example uses the function <code>drawEgg()</code> to draw three different sized eggs (three sizes of ellipses), depending on the <code>eggSize</code> parameter. <ol>
   * <li>The constructor calls the function <code>drawEgg()</code> and passes the horizontal and vertical parameters for where the egg should be drawn, plus the type of egg (<code>eggSize</code>). (The height and width of the eggs (the ellipses) can be used to decide where to display them.)</li>
   * <li>Function <code>drawEgg()</code> draws the different size ellipses and fills them white using <code>beginFill()</code> method. There is no advance error handling written for his function.</li></ol>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.display.Shape;
   *
   *     public class Graphics_drawEllipseExample extends Sprite
   *     {
   *         public static const SMALL:uint = 0;
   *         public static const MEDIUM:uint = 1;
   *         public static const LARGE:uint = 2;
   *
   *         public function Graphics_drawEllipseExample()
   *         {
   *             drawEgg(SMALL, 0, 100);
   *             drawEgg(MEDIUM, 100, 60);
   *             drawEgg(LARGE, 250, 35);
   *         }
   *
   *         public function drawEgg(eggSize:uint, x:Number, y:Number):void  {
   *
   *             var myEgg:Shape = new Shape();
   *
   *             myEgg.graphics.beginFill(0xFFFFFF);
   *             myEgg.graphics.lineStyle(1);
   *
   *             switch(eggSize) {
   *                 case SMALL:
   *                     myEgg.graphics.drawEllipse(x, y, 60, 70);
   *                     break;
   *                 case MEDIUM:
   *                     myEgg.graphics.drawEllipse(x, y, 120, 150);
   *                     break;
   *                 case LARGE:
   *                     myEgg.graphics.drawEllipse(x, y, 150, 200);
   *                     break;
   *                 default:
   *                     trace ("Wrong size! There is no egg.");
   *                 break;
   *             }
   *
   *             myEgg.graphics.endFill();
   *
   *             this.addChild(myEgg);
   *         }
   *     }
   * }
   * </listing>
   */
  public function drawEllipse(x:Number, y:Number, width:Number, height:Number):void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      var rx:Number = width / 2;
      var ry:Number = height / 2;

      var cx:Number = x + rx;
      var cy:Number = y + ry;

      context.beginPath();
      context.moveTo(cx, cy - ry);
      context.bezierCurveTo(cx + (KAPPA * rx), cy - ry, cx + rx, cy - (KAPPA * ry), cx + rx, cy);
      context.bezierCurveTo(cx + rx, cy + (KAPPA * ry), cx + (KAPPA * rx), cy + ry, cx, cy + ry);
      context.bezierCurveTo(cx - (KAPPA * rx), cy + ry, cx - rx, cy + (KAPPA * ry), cx - rx, cy);
      context.bezierCurveTo(cx - rx, cy - (KAPPA * ry), cx - (KAPPA * rx), cy - ry, cx, cy - ry);

      context.fill();
      context.stroke();
      context.beginPath();
      context.moveTo(x, y);
  });
  }

  /**
   * Submits a series of IGraphicsData instances for drawing. This method accepts a Vector containing objects including paths, fills, and strokes that implement the IGraphicsData interface. A Vector of IGraphicsData instances can refer to a part of a shape, or a complex fully defined set of data for rendering a complete shape.
   * <p>Graphics paths can contain other graphics paths. If the <code>graphicsData</code> Vector includes a path, that path and all its sub-paths are rendered during this operation.</p>
   * @param graphicsData A Vector containing graphics objects, each of which much implement the IGraphicsData interface.
   *
   * @see IGraphicsData
   * @see GraphicsBitmapFill
   * @see GraphicsEndFill
   * @see GraphicsGradientFill
   * @see GraphicsPath
   * @see GraphicsShaderFill
   * @see GraphicsSolidFill
   * @see GraphicsStroke
   * @see GraphicsTrianglePath
   *
   * @example The following example creates a GraphicsGradientFill object to establish the fill properties for a square. Then, the example creates a GraphicsStroke object (for the line thickness) class and a GraphicsSolidFill object (for the line color) to set the properties for the border line of the square. The example then creates a GraphicsPath object to contain the values for drawing the shape. All of these objects are stored in an IGraphicsData object, and passed to the <code>drawGraphicsData()</code> command to render the shape.
   * <listing>
   * package{
   *     import flash.display.*;
   *     import flash.geom.*;
   *
   *     public class DrawGraphicsDataExample extends Sprite {
   *
   *     public function DrawGraphicsDataExample(){
   *
   *     // establish the fill properties
   *     var myFill:GraphicsGradientFill = new GraphicsGradientFill();
   *     myFill.colors = [0xEEFFEE, 0x0000FF];
   *     myFill.matrix = new Matrix();
   *     myFill.matrix.createGradientBox(100, 100, 0);
   *
   *     // establish the stroke properties
   *     var myStroke:GraphicsStroke = new GraphicsStroke(2);
   *     myStroke.fill = new GraphicsSolidFill(0x000000);
   *
   *     // establish the path properties
   *     var myPath:GraphicsPath = new GraphicsPath(new Vector.&lt;int>(), new Vector.&lt;Number>());
   *     myPath.commands.push(1,2,2,2,2);
   *     myPath.data.push(10,10, 10,100, 100,100, 100,10, 10,10);
   *
   *     // populate the IGraphicsData Vector array
   *     var myDrawing:Vector.&lt;IGraphicsData> = new Vector.&lt;IGraphicsData>();
   *     myDrawing.push(myFill, myStroke, myPath);
   *
   *     // render the drawing
   *     graphics.drawGraphicsData(myDrawing);
   *     }
   *     }
   * }
   * </listing>
   */
  public function drawGraphicsData(graphicsData:Vector.<IGraphicsData>):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Submits a series of commands for drawing. The <code>drawPath()</code> method uses vector arrays to consolidate individual <code>moveTo()</code>, <code>lineTo()</code>, and <code>curveTo()</code> drawing commands into a single call. The <code>drawPath()</code> method parameters combine drawing commands with x- and y-coordinate value pairs and a drawing direction. The drawing commands are values from the GraphicsPathCommand class. The x- and y-coordinate value pairs are Numbers in an array where each pair defines a coordinate location. The drawing direction is a value from the GraphicsPathWinding class.
   * <p>Generally, drawings render faster with <code>drawPath()</code> than with a series of individual <code>lineTo()</code> and <code>curveTo()</code> methods.</p>
   * <p>The <code>drawPath()</code> method uses a uses a floating computation so rotation and scaling of shapes is more accurate and gives better results. However, curves submitted using the <code>drawPath()</code> method can have small sub-pixel alignment errors when used in conjunction with the <code>lineTo()</code> and <code>curveTo()</code> methods.</p>
   * <p>The <code>drawPath()</code> method also uses slightly different rules for filling and drawing lines. They are:</p>
   * <ul>
   * <li>When a fill is applied to rendering a path:
   * <ul>
   * <li>A sub-path of less than 3 points is not rendered. (But note that the stroke rendering will still occur, consistent with the rules for strokes below.)</li>
   * <li>A sub-path that isn't closed (the end point is not equal to the begin point) is implicitly closed.</li></ul></li>
   * <li>When a stroke is applied to rendering a path:
   * <ul>
   * <li>The sub-paths can be composed of any number of points.</li>
   * <li>The sub-path is never implicitly closed.</li></ul></li></ul>
   * @param commands A Vector of integers representing commands defined by the GraphicsPathCommand class. The GraphicsPathCommand class maps commands to numeric identifiers for this vector array.
   * @param data A Vector of Numbers where each pair of numbers is treated as a coordinate location (an x, y pair). The x- and y-coordinate value pairs are not Point objects; the <code>data</code> vector is a series of numbers where each group of two numbers represents a coordinate location.
   * @param winding Specifies the winding rule using a value defined in the GraphicsPathWinding class.
   *
   * @see GraphicsPathCommand
   * @see GraphicsPathWinding
   *
   * @example The following example populates two Vector objects, then passes them to the <code>drawPath()</code> method to render a blue star. The first Vector, <code>star_commands</code>, contains a series of integers representing drawing commands from the flash.display.GraphicsPathCommand class, where the value 1 is a <code>MoveTo()</code> command and the value 2 is a <code>LineTo()</code> command. The second Vector, <code>star_coord</code>, contains 5 sets of x- and y-coordinate pairs. The <code>drawPath()</code> method matches the commands with the positions to draw a star.
   * <listing>
   * package{
   *     import flash.display.*;
   *
   *     public class DrawPathExample extends Sprite {
   *
   *     public function DrawPathExample(){
   *
   *     var star_commands:Vector.&lt;int> = new Vector.&lt;int>(5, true);
   *
   *     star_commands[0] = 1;
   *     star_commands[1] = 2;
   *     star_commands[2] = 2;
   *     star_commands[3] = 2;
   *     star_commands[4] = 2;
   *
   *     var star_coord:Vector.&lt;Number> = new Vector.&lt;Number>(10, true);
   *     star_coord[0] = 66; //x
   *     star_coord[1] = 10; //y
   *     star_coord[2] = 23;
   *     star_coord[3] = 127;
   *     star_coord[4] = 122;
   *     star_coord[5] = 50;
   *     star_coord[6] = 10;
   *     star_coord[7] = 49;
   *     star_coord[8] = 109;
   *     star_coord[9] = 127;
   *
   *
   *     graphics.beginFill(0x003366);
   *     graphics.drawPath(star_commands, star_coord);
   *
   *     }
   *
   *     }
   * }
   *
   * </listing>
   * <div>In the above example, each command and coordinate pair is assigned individually to show their position in the array, but they can be assigned in a single statement. The following example draws the same star by assigning the values for each array in a single <code>push()</code> statement:
   * <listing>
   * package{
   *     import flash.display.*;
   *
   *     public class DrawPathExample extends Sprite {
   *     public function DrawPathExample(){
   *         var star_commands:Vector.&lt;int> = new Vector.&lt;int>();
   *         star_commands.push(1, 2, 2, 2, 2);
   *
   *            var star_coord:Vector.&lt;Number> = new Vector.&lt;Number>();
   *            star_coord.push(66,10, 23,127, 122,50, 10,49, 109,127);
   *
   *         graphics.beginFill(0x003366);
   *         graphics.drawPath(star_commands, star_coord);
   *     }
   *     }
   * }
   *
   *
   * </listing><b>Note:</b> By default, the <code>drawPath()</code> method uses the even-odd winding type. So, the center of the star is not filled. Specify the non-zero winding type for the third parameter and it fills the center of the star:
   * <listing>
   *  graphics.drawPath(star_commands, star_coord, GraphicsPathWinding.NON_ZERO);
   * </listing></div>
   */
  public function drawPath(commands:Vector.<int>, data:Vector.<Number>, winding:String = "evenOdd"):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Draws a rectangle. Set the line style, fill, or both before you call the <code>drawRect()</code> method, by calling the <code>linestyle()</code>, <code>lineGradientStyle()</code>, <code>beginFill()</code>, <code>beginGradientFill()</code>, or <code>beginBitmapFill()</code> method.
   * @param x A number indicating the horizontal position relative to the registration point of the parent display object (in pixels).
   * @param y A number indicating the vertical position relative to the registration point of the parent display object (in pixels).
   * @param width The width of the rectangle (in pixels).
   * @param height The height of the rectangle (in pixels).
   *
   * @throws ArgumentError If the <code>width</code> or <code>height</code> parameters are not a number (<code>Number.NaN</code>).
   *
   * @see #lineStyle()
   * @see #lineGradientStyle()
   * @see #beginFill()
   * @see #beginGradientFill()
   * @see #beginBitmapFill()
   * @see #drawRoundRect()
   *
   * @example The following example shows how you can draw shapes in ActionScript 3.0. Example provided by <a href="http://actionscriptexamples.com/2008/12/07/drawing-shapes-using-the-drawing-api-in-actionscript-30-and-actionscript-20/">ActionScriptExamples.com</a>.
   * <listing>
   * var movieClip:MovieClip = new MovieClip();
   * movieClip.graphics.beginFill(0xFF0000);
   * movieClip.graphics.drawRect(0, 0, 100, 80);
   * movieClip.graphics.endFill();
   * movieClip.x = 10;
   * movieClip.y = 10;
   * addChild(movieClip);
   * </listing>
   */
  public function drawRect(x:Number, y:Number, width:Number, height:Number):void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      context.fillRect(x, y, width, height);
      context.strokeRect(x, y, width, height);
    });
  }

  /**
   * Draws a rounded rectangle. Set the line style, fill, or both before you call the <code>drawRoundRect()</code> method, by calling the <code>linestyle()</code>, <code>lineGradientStyle()</code>, <code>beginFill()</code>, <code>beginGradientFill()</code>, or <code>beginBitmapFill()</code> method.
   * @param x A number indicating the horizontal position relative to the registration point of the parent display object (in pixels).
   * @param y A number indicating the vertical position relative to the registration point of the parent display object (in pixels).
   * @param width The width of the round rectangle (in pixels).
   * @param height The height of the round rectangle (in pixels).
   * @param ellipseWidth The width of the ellipse used to draw the rounded corners (in pixels).
   * @param ellipseHeight The height of the ellipse used to draw the rounded corners (in pixels). Optional; if no value is specified, the default value matches that provided for the <code>ellipseWidth</code> parameter.
   *
   * @throws ArgumentError If the <code>width</code>, <code>height</code>, <code>ellipseWidth</code> or <code>ellipseHeight</code> parameters are not a number (<code>Number.NaN</code>).
   *
   * @see #lineStyle()
   * @see #lineGradientStyle()
   * @see #beginFill()
   * @see #beginGradientFill()
   * @see #beginBitmapFill()
   * @see #drawRect()
   *
   * @example
   * <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#includeExamplesSummary">example</a> at the end of this class for an illustration of how to use this method.
   */
  public function drawRoundRect(x:Number, y:Number, width:Number, height:Number, ellipseWidth:Number, ellipseHeight:Number = NaN):void {
    if (ellipseHeight == 0 || ellipseWidth == 0) {
      drawRect(x, y, width, height);
    } else {
      commands.push(function(context:CanvasRenderingContext2D):void {
        var x_r:Number = x + width;
        var y_b:Number = y + height;
        if (isNaN(ellipseHeight)) {
          ellipseHeight = ellipseWidth;
        }
        var x_lw:Number = x + ellipseWidth;
        var x_rw:Number = x_r - ellipseWidth;
        var y_tw:Number = y + ellipseHeight;
        var y_bw:Number = y_b - ellipseHeight;
        context.beginPath();
        context.moveTo(x_lw, y);
        context.lineTo(x_rw, y);
        context.quadraticCurveTo(x_r, y, x_r, y_tw);
        context.lineTo(x_r, y_bw);
        context.quadraticCurveTo(x_r, y_b, x_rw, y_b);
        context.lineTo(x_lw, y_b);
        context.quadraticCurveTo(x, y_b, x, y_bw);
        context.lineTo(x, y_tw);
        context.quadraticCurveTo(x, y, x_lw, y);
        context.closePath();
        context.fill();
        context.stroke();
      });
    }
  }

  /**
   * Draws a rounded rectangle using the size of a radius to draw the rounded corners.
   * You must set the line style, fill, or both on the Graphics object before you call the
   * <code>drawRoundRectComplex()</code> method by calling the <code>linestyle()</code>,
   * <code>lineGradientStyle()</code>, <code>beginFill()</code>,
   * <code>beginGradientFill()</code>, or
   * <code>beginBitmapFill()</code> method.
   *
   * @param x The horizontal position relative to the registration point of the parent display object, in pixels.
   * @param y The vertical position relative to the registration point of the parent display object, in pixels.
   * @param width The width of the round rectangle, in pixels.
   * @param height The height of the round rectangle, in pixels.
   * @param topLeftRadius The radius of the upper-left corner, in pixels.
   * @param topRightRadius The radius of the upper-right corner, in pixels.
   * @param bottomLeftRadius The radius of the bottom-left corner, in pixels.
   * @param bottomRightRadius The radius of the bottom-right corner, in pixels.
   */
  public function drawRoundRectComplex(x:Number, y:Number, width:Number, height:Number, topLeftRadius:Number, topRightRadius:Number, bottomLeftRadius:Number, bottomRightRadius:Number):void {
    if (topLeftRadius == 0 && topRightRadius == 0 && bottomLeftRadius == 0 && bottomRightRadius == 0) {
      drawRect(x, y, width, height);
    } else {
      commands.push(function(context:CanvasRenderingContext2D):void {
        var x_r:Number = x + width;
        var y_b:Number = y + height;
        context.beginPath();
        var x_tl:Number = x + topLeftRadius;
        context.moveTo(x_tl, y);
        context.lineTo(x_r - topRightRadius, y);
        context.quadraticCurveTo(x_r, y, x_r, y + topRightRadius);
        context.lineTo(x_r, y_b - bottomRightRadius);
        context.quadraticCurveTo(x_r, y_b, x_r - bottomRightRadius, y_b);
        context.lineTo(x + bottomLeftRadius, y_b);
        context.quadraticCurveTo(x, y_b, x, y_b - bottomLeftRadius);
        context.lineTo(x, y + topLeftRadius);
        context.quadraticCurveTo(x, y, x_tl, y);
        context.closePath();
        context.fill();
        context.stroke();
      });
    }
  }

  /**
   * Renders a set of triangles, typically to distort bitmaps and give them a three-dimensional appearance. The <code>drawTriangles()</code> method maps either the current fill, or a bitmap fill, to the triangle faces using a set of (u,v) coordinates.
   * <p>Any type of fill can be used, but if the fill has a transform matrix that transform matrix is ignored.</p>
   * <p>A <code>uvtData</code> parameter improves texture mapping when a bitmap fill is used.</p>
   * @param vertices A Vector of Numbers where each pair of numbers is treated as a coordinate location (an x, y pair). The <code>vertices</code> parameter is required.
   * @param indices A Vector of integers or indexes, where every three indexes define a triangle. If the <code>indexes</code> parameter is null then every three vertices (six x,y pairs in the <code>vertices</code> Vector) defines a triangle. Otherwise each index refers to a vertex, which is a pair of numbers in the <code>vertices</code> Vector. For example <code>indexes[1]</code> refers to (<code>vertices[2]</code>, <code>vertices[3]</code>). The <code>indexes</code> parameter is optional, but indexes generally reduce the amount of data submitted and the amount of data computed.
   * @param uvtData A Vector of normalized coordinates used to apply texture mapping. Each coordinate refers to a point on the bitmap used for the fill. You must have one UV or one UVT coordinate per vertex. In UV coordinates, (0,0) is the upper left of the bitmap, and (1,1) is the lower right of the bitmap.
   * <p>If the length of this vector is twice the length of the <code>vertices</code> vector then normalized coordinates are used without perspective correction.</p>
   * <p>If the length of this vector is three times the length of the <code>vertices</code> vector then the third coordinate is interpreted as 't' (the distance from the eye to the texture in eye space). This helps the rendering engine correctly apply perspective when mapping textures in three dimensions.</p>
   * <p>If the <code>uvtData</code> parameter is null, then normal fill rules (and any fill type) apply.</p>
   * @param culling Specifies whether to render triangles that face in a specified direction. This parameter prevents the rendering of triangles that cannot be seen in the current view. This parameter can be set to any value defined by the TriangleCulling class.
   *
   * @see TriangleCulling
   * @see GraphicsTrianglePath
   *
   */
  public function drawTriangles(vertices:Vector.<Number>, indices:Vector.<int> = null, uvtData:Vector.<Number> = null, culling:String = "none"):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Applies a fill to the lines and curves that were added since the last call to the <code>beginFill()</code>, <code>beginGradientFill()</code>, or <code>beginBitmapFill()</code> method. Flash uses the fill that was specified in the previous call to the <code>beginFill()</code>, <code>beginGradientFill()</code>, or <code>beginBitmapFill()</code> method. If the current drawing position does not equal the previous position specified in a <code>moveTo()</code> method and a fill is defined, the path is closed with a line and then filled.
   * @see #beginFill()
   * @see #beginBitmapFill()
   * @see #beginGradientFill()
   *
   */
  public function endFill():void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      context.closePath();
      context.fill();
      context.stroke();
    });
  }

  /**
   * Specifies a bitmap to use for the line stroke when drawing lines.
   * <p>The bitmap line style is used for subsequent calls to Graphics methods such as the <code>lineTo()</code> method or the <code>drawCircle()</code> method. The line style remains in effect until you call the <code>lineStyle()</code> or <code>lineGradientStyle()</code> methods, or the <code>lineBitmapStyle()</code> method again with different parameters.</p>
   * <p>You can call the <code>lineBitmapStyle()</code> method in the middle of drawing a path to specify different styles for different line segments within a path.</p>
   * <p>Call the <code>lineStyle()</code> method before you call the <code>lineBitmapStyle()</code> method to enable a stroke, or else the value of the line style is <code>undefined</code>.</p>
   * <p>Calls to the <code>clear()</code> method set the line style back to <code>undefined</code>.</p>
   * @param bitmap The bitmap to use for the line stroke.
   * @param matrix An optional transformation matrix as defined by the flash.geom.Matrix class. The matrix can be used to scale or otherwise manipulate the bitmap before applying it to the line style.
   * @param repeat Whether to repeat the bitmap in a tiled fashion.
   * @param smooth Whether smoothing should be applied to the bitmap.
   *
   * @see #lineStyle()
   * @see #lineGradientStyle()
   * @see flash.geom.Matrix
   *
   */
  public function lineBitmapStyle(bitmap:BitmapData, matrix:Matrix = null, repeat:Boolean = true, smooth:Boolean = false):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies a gradient to use for the stroke when drawing lines.
   * <p>The gradient line style is used for subsequent calls to Graphics methods such as the <code>lineTo()</code> methods or the <code>drawCircle()</code> method. The line style remains in effect until you call the <code>lineStyle()</code> or <code>lineBitmapStyle()</code> methods, or the <code>lineGradientStyle()</code> method again with different parameters.</p>
   * <p>You can call the <code>lineGradientStyle()</code> method in the middle of drawing a path to specify different styles for different line segments within a path.</p>
   * <p>Call the <code>lineStyle()</code> method before you call the <code>lineGradientStyle()</code> method to enable a stroke, or else the value of the line style is <code>undefined</code>.</p>
   * <p>Calls to the <code>clear()</code> method set the line style back to <code>undefined</code>.</p>
   * @param type A value from the GradientType class that specifies which gradient type to use, either GradientType.LINEAR or GradientType.RADIAL.
   * @param colors An array of RGB hex color values to be used in the gradient (for example, red is 0xFF0000, blue is 0x0000FF, and so on).
   * @param alphas An array of alpha values for the corresponding colors in the colors array; valid values are 0 to 1. If the value is less than 0, the default is 0. If the value is greater than 1, the default is 1.
   * @param ratios An array of color distribution ratios; valid values are from 0 to 255. This value defines the percentage of the width where the color is sampled at 100%. The value 0 represents the left position in the gradient box, and 255 represents the right position in the gradient box. This value represents positions in the gradient box, not the coordinate space of the final gradient, which can be wider or thinner than the gradient box. Specify a value for each value in the <code>colors</code> parameter.
   * <p>For example, for a linear gradient that includes two colors, blue and green, the following figure illustrates the placement of the colors in the gradient based on different values in the <code>ratios</code> array:</p>
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
   * <p>The values in the array must increase, sequentially; for example, <code>[0, 63, 127, 190, 255]</code>.</p>
   * @param matrix A transformation matrix as defined by the flash.geom.Matrix class. The flash.geom.Matrix class includes a <code>createGradientBox()</code> method, which lets you conveniently set up the matrix for use with the <code>lineGradientStyle()</code> method.
   * @param spreadMethod A value from the SpreadMethod class that specifies which spread method to use:
   * <table>
   * <tr>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_spread_pad.jpg" /></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_spread_reflect.jpg" /></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_spread_repeat.jpg" /></td></tr>
   * <tr>
   * <td><code>SpreadMethod.PAD</code></td>
   * <td><code>SpreadMethod.REFLECT</code></td>
   * <td><code>SpreadMethod.REPEAT</code></td></tr></table>
   * @param interpolationMethod A value from the InterpolationMethod class that specifies which value to use. For example, consider a simple linear gradient between two colors (with the <code>spreadMethod</code> parameter set to <code>SpreadMethod.REFLECT</code>). The different interpolation methods affect the appearance as follows:
   * <table>
   * <tr>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_interp_linearrgb.jpg" /></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/beginGradientFill_interp_rgb.jpg" /></td></tr>
   * <tr>
   * <td><code>InterpolationMethod.LINEAR_RGB</code></td>
   * <td><code>InterpolationMethod.RGB</code></td></tr></table>
   * @param focalPointRatio A number that controls the location of the focal point of the gradient. The value 0 means the focal point is in the center. The value 1 means the focal point is at one border of the gradient circle. The value -1 means that the focal point is at the other border of the gradient circle. Values less than -1 or greater than 1 are rounded to -1 or 1. The following image shows a gradient with a <code>focalPointRatio</code> of -0.75:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/radial_sketch.jpg" /></p>
   *
   * @see #lineStyle()
   * @see #lineBitmapStyle()
   * @see flash.geom.Matrix#createGradientBox()
   * @see GradientType
   * @see SpreadMethod
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7ddb.html Using Matrix objects
   *
   * @example The following example draws a rectangle and a circle that use a gradient stroke from red to green to blue.
   * <p>The method <code>createGradientBox()</code> from the <code>Matrix</code> class is used to define the gradient box to 200 width and 40 height. The thickness of line is set to 5 pixels. Thickness of the stroke must be defined for <code>lineGradientStyle()</code> method. The gradient is set to linear. Colors for the gradient are set to red, green, and blue. Transparency (alpha value) for the colors is set to 1 (opaque). The distribution of gradient is even, where the colors are sampled at 100% at 0 (left-hand position in the gradient box), 128 (middle in the box) and 255 (right-hand position in the box). The width of the rectangle encompasses all the spectrum of the gradient, while the circle encompasses 50% from the middle of the spectrum.</p>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.display.Shape;
   *     import flash.geom.Matrix;
   *     import flash.display.GradientType;
   *
   *     public class Graphics_lineGradientStyleExample extends Sprite
   *     {
   *         public function Graphics_lineGradientStyleExample()
   *         {
   *             var myShape:Shape = new Shape();
   *             var gradientBoxMatrix:Matrix = new Matrix();
   *
   *             gradientBoxMatrix.createGradientBox(200, 40, 0, 0, 0);
   *
   *             myShape.graphics.lineStyle(5);
   *
   *             myShape.graphics.lineGradientStyle(GradientType.LINEAR, [0xFF0000,
   *             0x00FF00, 0x0000FF], [1, 1, 1], [0, 128, 255], gradientBoxMatrix);
   *
   *             myShape.graphics.drawRect(0, 0, 200, 40);
   *             myShape.graphics.drawCircle(100, 120, 50);
   *
   *             this.addChild(myShape);
   *
   *         }
   *     }
   * }
   * </listing>
   */
  public function lineGradientStyle(type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix = null, spreadMethod:String = "pad", interpolationMethod:String = "rgb", focalPointRatio:Number = 0):void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      context.strokeStyle = createGradientStyle(context, type, colors, alphas, ratios,
        matrix, spreadMethod, interpolationMethod, focalPointRatio);
    });
  }

  /**
   * Specifies a shader to use for the line stroke when drawing lines.
   * <p>The shader line style is used for subsequent calls to Graphics methods such as the <code>lineTo()</code> method or the <code>drawCircle()</code> method. The line style remains in effect until you call the <code>lineStyle()</code> or <code>lineGradientStyle()</code> methods, or the <code>lineBitmapStyle()</code> method again with different parameters.</p>
   * <p>You can call the <code>lineShaderStyle()</code> method in the middle of drawing a path to specify different styles for different line segments within a path.</p>
   * <p>Call the <code>lineStyle()</code> method before you call the <code>lineShaderStyle()</code> method to enable a stroke, or else the value of the line style is <code>undefined</code>.</p>
   * <p>Calls to the <code>clear()</code> method set the line style back to <code>undefined</code>.</p>
   * @param shader The shader to use for the line stroke.
   * @param matrix An optional transformation matrix as defined by the flash.geom.Matrix class. The matrix can be used to scale or otherwise manipulate the bitmap before applying it to the line style.
   *
   * @see #lineStyle()
   * @see #lineBitmapStyle()
   * @see flash.geom.Matrix
   *
   */
  public function lineShaderStyle(shader:Shader, matrix:Matrix = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies a line style used for subsequent calls to Graphics methods such as the <code>lineTo()</code> method or the <code>drawCircle()</code> method. The line style remains in effect until you call the <code>lineGradientStyle()</code> method, the <code>lineBitmapStyle()</code> method, or the <code>lineStyle()</code> method with different parameters.
   * <p>You can call the <code>lineStyle()</code> method in the middle of drawing a path to specify different styles for different line segments within the path.</p>
   * <p><b>Note:</b> Calls to the <code>clear()</code> method set the line style back to <code>undefined</code>.</p>
   * <p><b>Note:</b> Flash Lite 4 supports only the first three parameters (<code>thickness</code>, <code>color</code>, and <code>alpha</code>).</p>
   * @param thickness An integer that indicates the thickness of the line in points; valid values are 0-255. If a number is not specified, or if the parameter is undefined, a line is not drawn. If a value of less than 0 is passed, the default is 0. The value 0 indicates hairline thickness; the maximum thickness is 255. If a value greater than 255 is passed, the default is 255.
   * @param color A hexadecimal color value of the line; for example, red is 0xFF0000, blue is 0x0000FF, and so on. If a value is not indicated, the default is 0x000000 (black). Optional.
   * @param alpha A number that indicates the alpha value of the color of the line; valid values are 0 to 1. If a value is not indicated, the default is 1 (solid). If the value is less than 0, the default is 0. If the value is greater than 1, the default is 1.
   * @param pixelHinting (Not supported in Flash Lite 4) A Boolean value that specifies whether to hint strokes to full pixels. This affects both the position of anchors of a curve and the line stroke size itself. With <code>pixelHinting</code> set to <code>true</code>, line widths are adjusted to full pixel widths. With <code>pixelHinting</code> set to <code>false</code>, disjoints can appear for curves and straight lines. For example, the following illustrations show how Flash Player or Adobe AIR renders two rounded rectangles that are identical, except that the <code>pixelHinting</code> parameter used in the <code>lineStyle()</code> method is set differently (the images are scaled by 200%, to emphasize the difference):
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/lineStyle_pixelHinting.jpg" /></p>
   * <p>If a value is not supplied, the line does not use pixel hinting.</p>
   * @param scaleMode (Not supported in Flash Lite 4) A value from the LineScaleMode class that specifies which scale mode to use:
   * <ul>
   * <li><code>LineScaleMode.NORMAL</code>—Always scale the line thickness when the object is scaled (the default).</li>
   * <li><code>LineScaleMode.NONE</code>—Never scale the line thickness.</li>
   * <li><code>LineScaleMode.VERTICAL</code>—Do not scale the line thickness if the object is scaled vertically <i>only</i>. For example, consider the following circles, drawn with a one-pixel line, and each with the <code>scaleMode</code> parameter set to <code>LineScaleMode.VERTICAL</code>. The circle on the left is scaled vertically only, and the circle on the right is scaled both vertically and horizontally:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/LineScaleMode_VERTICAL.jpg" /></p></li>
   * <li><code>LineScaleMode.HORIZONTAL</code>—Do not scale the line thickness if the object is scaled horizontally <i>only</i>. For example, consider the following circles, drawn with a one-pixel line, and each with the <code>scaleMode</code> parameter set to <code>LineScaleMode.HORIZONTAL</code>. The circle on the left is scaled horizontally only, and the circle on the right is scaled both vertically and horizontally:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/LineScaleMode_HORIZONTAL.jpg" /></p></li></ul>
   * @param caps (Not supported in Flash Lite 4) A value from the CapsStyle class that specifies the type of caps at the end of lines. Valid values are: <code>CapsStyle.NONE</code>, <code>CapsStyle.ROUND</code>, and <code>CapsStyle.SQUARE</code>. If a value is not indicated, Flash uses round caps.
   * <p>For example, the following illustrations show the different <code>capsStyle</code> settings. For each setting, the illustration shows a blue line with a thickness of 30 (for which the <code>capsStyle</code> applies), and a superimposed black line with a thickness of 1 (for which no <code>capsStyle</code> applies):</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/linecap.jpg" /></p>
   * @param joints (Not supported in Flash Lite 4) A value from the JointStyle class that specifies the type of joint appearance used at angles. Valid values are: <code>JointStyle.BEVEL</code>, <code>JointStyle.MITER</code>, and <code>JointStyle.ROUND</code>. If a value is not indicated, Flash uses round joints.
   * <p>For example, the following illustrations show the different <code>joints</code> settings. For each setting, the illustration shows an angled blue line with a thickness of 30 (for which the <code>jointStyle</code> applies), and a superimposed angled black line with a thickness of 1 (for which no <code>jointStyle</code> applies):</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/linejoin.jpg" /></p>
   * <p><b>Note:</b> For <code>joints</code> set to <code>JointStyle.MITER</code>, you can use the <code>miterLimit</code> parameter to limit the length of the miter.</p>
   * @param miterLimit (Not supported in Flash Lite 4) A number that indicates the limit at which a miter is cut off. Valid values range from 1 to 255 (and values outside that range are rounded to 1 or 255). This value is only used if the <code>jointStyle</code> is set to <code>"miter"</code>. The <code>miterLimit</code> value represents the length that a miter can extend beyond the point at which the lines meet to form a joint. The value expresses a factor of the line <code>thickness</code>. For example, with a <code>miterLimit</code> factor of 2.5 and a <code>thickness</code> of 10 pixels, the miter is cut off at 25 pixels.
   * <p>For example, consider the following angled lines, each drawn with a <code>thickness</code> of 20, but with <code>miterLimit</code> set to 1, 2, and 4. Superimposed are black reference lines showing the meeting points of the joints:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/miterLimit.jpg" /></p>
   * <p>Notice that a given <code>miterLimit</code> value has a specific maximum angle for which the miter is cut off. The following table lists some examples:</p>
   * <table>
   * <tr><th><code>miterLimit</code> value:</th><th>Angles smaller than this are cut off:</th></tr>
   * <tr>
   * <td>1.414</td>
   * <td>90 degrees</td></tr>
   * <tr>
   * <td>2</td>
   * <td>60 degrees</td></tr>
   * <tr>
   * <td>4</td>
   * <td>30 degrees</td></tr>
   * <tr>
   * <td>8</td>
   * <td>15 degrees</td></tr></table>
   *
   * @see #lineBitmapStyle()
   * @see #lineGradientStyle()
   * @see LineScaleMode
   * @see CapsStyle
   * @see JointStyle
   *
   * @example
   * <a href="http://www.adobe.com/go/learn_as3_usingexamples_en">How to use this example</a>Please see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#lineTo()">lineTo()</a> or <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#moveTo()">moveTo()</a> method's example for illustrations of how to use the <code>getStyle()</code> method.
   */
  public function lineStyle(thickness:Number = NaN, color:uint = 0, alpha:Number = 1.0, pixelHinting:Boolean = false, scaleMode:String = "normal", caps:String = null, joints:String = null, miterLimit:Number = 3):void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      context.lineWidth = thickness > 0 ? thickness : 1;
      context.strokeStyle = toRGBA(color, alpha);
      context.lineCap = caps || CapsStyle.ROUND;
      context.lineJoin = joints || JointStyle.ROUND;
      context.miterLimit = miterLimit;
    });
  }

  /**
   * Draws a line using the current line style from the current drawing position to (<code>x</code>, <code>y</code>); the current drawing position is then set to (<code>x</code>, <code>y</code>). If the display object in which you are drawing contains content that was created with the Flash drawing tools, calls to the <code>lineTo()</code> method are drawn underneath the content. If you call <code>lineTo()</code> before any calls to the <code>moveTo()</code> method, the default position for the current drawing is (<i>0, 0</i>). If any of the parameters are missing, this method fails and the current drawing position is not changed.
   * @param x A number that indicates the horizontal position relative to the registration point of the parent display object (in pixels).
   * @param y A number that indicates the vertical position relative to the registration point of the parent display object (in pixels).
   *
   * @example The following example draws a trapezoid using <code>lineTo()</code> method, starting at pixels (100, 100).
   * <p>The line thickness is set to 10 pixels, color is gold and opaque, caps at the end of lines is set to none (since all lines are jointed), and the joint between the lines is set to <code>MITER</code> with miter limit set to 10, to have sharp, pointed corners.</p>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.display.LineScaleMode;
   *     import flash.display.CapsStyle;
   *     import flash.display.JointStyle;
   *     import flash.display.Shape;
   *
   *
   *     public class Graphics_lineToExample extends Sprite {
   *
   *         public function Graphics_lineToExample() {
   *
   *             var trapezoid:Shape = new Shape();
   *
   *             trapezoid.graphics.lineStyle(10, 0xFFD700, 1, false, LineScaleMode.VERTICAL,
   *                                CapsStyle.NONE, JointStyle.MITER, 10);
   *
   *             trapezoid.graphics.moveTo(100, 100);
   *
   *             trapezoid.graphics.lineTo(120, 50);
   *             trapezoid.graphics.lineTo(200, 50);
   *             trapezoid.graphics.lineTo(220, 100);
   *             trapezoid.graphics.lineTo(100, 100);
   *
   *             this.addChild(trapezoid);
   *         }
   *     }
   * }
   * </listing>
   */
  public function lineTo(x:Number, y:Number):void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      context.lineTo(x, y);
    });
  }

  /**
   * Moves the current drawing position to (<code>x</code>, <code>y</code>). If any of the parameters are missing, this method fails and the current drawing position is not changed.
   * @param x A number that indicates the horizontal position relative to the registration point of the parent display object (in pixels).
   * @param y A number that indicates the vertical position relative to the registration point of the parent display object (in pixels).
   *
   * @example The following example draws a dashed line of three pixels thickness using <code>moveTo()</code> and <code>lineTo()</code> methods.
   * <p>Using the <code>lineStyle()</code> method, the line thickness is set to 3 pixels. It is also set not to scale. Color is set to red with 25 percent opacity. The <code>CapsStyle</code> property is set to square (the default is round).</p>
   * <p>Since <code>Graphics_moveToExample</code> is an instance of the <code>Sprite</code> class, it has access to all the Graphics class methods. The Graphics class methods can be used to directly draw on the <code>Graphic_moveToExample</code> Sprite object. However, not putting the vector drawing object in a <code>Shape</code> limits the way they can be managed, moved, or changed.</p>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.display.CapsStyle;
   *     import flash.display.LineScaleMode;
   *
   *     public class Graphics_moveToExample extends Sprite
   *     {
   *         public function Graphics_moveToExample() {
   *
   *             graphics.lineStyle(3, 0x990000, 0.25, false,
   *                             LineScaleMode.NONE, CapsStyle.SQUARE);
   *
   *             graphics.moveTo(10, 20);
   *             graphics.lineTo(20, 20);
   *             graphics.moveTo(30, 20);
   *             graphics.lineTo(50, 20);
   *             graphics.moveTo(60, 20);
   *             graphics.lineTo(80, 20);
   *             graphics.moveTo(90, 20);
   *             graphics.lineTo(110, 20);
   *             graphics.moveTo(120, 20);
   *             graphics.lineTo(130, 20);
   *         }
   *     }
   * }
   * </listing>
   */
  public function moveTo(x:Number, y:Number):void {
    commands.push(function(context:CanvasRenderingContext2D):void {
      context.moveTo(x, y);
    });
  }

  // ************************** Jangaroo part **************************

  private var commands:Vector.<Function>;

  /**
   * @private
   */
  public function Graphics() {
    commands = new Vector.<Function>();
  }

  private static function createGradientStyle(context:CanvasRenderingContext2D,
                                       type:String, colors:Array, alphas:Array, ratios:Array,
                                       matrix:Matrix = null, spreadMethod:String = SpreadMethod.PAD,
                                       interpolationMethod:String = InterpolationMethod.RGB,
                                       focalPointRatio:Number = 0):CanvasGradient {
    // TODO: support spreadMethod != "pad" (medium), interpolationMethod == "rgb_linear" (hard)
    // TODO: check enumeration-typed parameters: throw new ArgumentError("<param-name>","2002");
    var gradient:CanvasGradient;
    var p0:Point = new Point(0, 0);
    var p1:Point = new Point(-Matrix.MAGIC_GRADIENT_FACTOR / 2, 0);
    var p2:Point = type == GradientType.LINEAR
      ? new Point(0, -Matrix.MAGIC_GRADIENT_FACTOR / 2)
      : new Point(Matrix.MAGIC_GRADIENT_FACTOR / 2 * focalPointRatio, 0);
    if (matrix) {
      p0 = matrix.transformPoint(p0);
      p1 = matrix.transformPoint(p1);
      p2 = matrix.transformPoint(p2);
    }
    if (type == GradientType.LINEAR) {
      var x1:Number;
      var y1:Number;
      if (p2.x == p0.x) {
        x1 = p1.x;
        y1 = p1.y;
      } else if (p2.y == p0.y) {
        x1 = p1.x;
        y1 = p2.x;
      } else {
        var d:Number = -(p2.x - p0.x) / (p2.y - p0.y);
        // d*(x1 - pm.x) + pm.y = -1/d*(x1 - px.x) + px.y =>
        x1 = (p1.x / d + p1.y + d * p0.x - p0.y) / (d + 1 / d);
        y1 = d * (x1 - p0.x) + p0.y;
      }
      var x2:Number = p0.x + (p0.x - x1);
      var y2:Number = p0.y + (p0.y - y1);
      gradient = context.createLinearGradient(x1, y1, x2, y2);
    } else { // type == GradientType.RADIAL
      // TODO: support squashed box, i.e. ellipse, not circle! But how? Somehow delegate transform to fill...
      var rx:Number = p1.x - p0.x;
      var ry:Number = p1.y - p0.y;
      // point distance with optimizations for two typical special cases:
      var r:Number = rx == 0 ? Math.abs(ry) : ry == 0 ? Math.abs(rx) : Math.sqrt(rx * rx + ry * ry);
      gradient = context.createRadialGradient(p2.x, p2.y, 0, p0.x, p0.y, r);
    }
    for (var i:uint = 0; i < colors.length; ++i) {
      gradient.addColorStop(ratios[i] / 255, toRGBA(colors[i], alphas[i]));
    }
    return gradient;
  }

  /**
   * @private
   */
  public static function toRGBA(color:uint, alpha:Number = undefined):String {
    var params:String = [color >>> 16 & 0xFF, color >>> 8 & 0xFF, color & 0xFF].join(",");
    return alpha < 1 ? ["rgba(", params, ",", alpha, ")"].join("")
                     :  "rgb(" + params + ")";

  }

  private static const KAPPA:Number = 4 * ((Math.sqrt(2) - 1) / 3);

  public function _render(renderState:RenderState):void {
    var context:CanvasRenderingContext2D = renderState.context;

    context.save();
    context.beginPath();
    for (var i:int = 0; i < commands.length; i++) {
      var command:Function = commands[i];
      command(context);
    }
    context.stroke();
    context.restore();
  }

}
}
