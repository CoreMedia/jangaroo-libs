package flash.display {
import flash.utils.ByteArray;

/**
 * A Shader instance represents a Pixel Bender shader kernel in ActionScript. To use a shader in your application, you create a Shader instance for it. You then use that Shader instance in the appropriate way according to the effect you want to create. For example, to use the shader as a filter, you assign the Shader instance to the <code>shader</code> property of a ShaderFilter object.
 * <p>A shader defines a function that executes on all the pixels in an image, one pixel at a time. The result of each call to the function is the output color at that pixel coordinate in the image. A shader can specify one or more input images, which are images whose content can be used in determining the output of the function. A shader can also specify one or more parameters, which are input values that can be used in calculating the function output. In a single shader execution, the input and parameter values are constant. The only thing that varies is the coordinate of the pixel whose color is the function result. Shader function calls for multiple output pixel coordinates execute in parallel to improve shader execution performance.</p>
 * <p>The shader bytecode can be loaded at run time using a URLLoader instance. The following example demonstrates loading a shader bytecode file at run time and linking it to a Shader instance.</p>
 * <listing>
 *      var loader:URLLoader = new URLLoader();
 *      loader.dataFormat = URLLoaderDataFormat.BINARY;
 *      loader.addEventListener(Event.COMPLETE, onLoadComplete);
 *      loader.load(new URLRequest("myShader.pbj"));
 *
 *      var shader:Shader;
 *
 *      function onLoadComplete(event:Event):void {
 *          // Create a new shader and set the loaded data as its bytecode
 *          shader = new Shader();
 *          shader.byteCode = loader.data;
 *
 *          // You can also pass the bytecode to the Shader() constructor like this:
 *          // shader = new Shader(loader.data);
 *
 *          // do something with the shader
 *      }
 *     </listing>
 * <p>You can also embed the shader into the SWF at compile time using the <code>[Embed]</code> metadata tag. The <code>[Embed]</code> metadata tag is only available if you use the Flex SDK to compile the SWF. The <code>[Embed]</code> tag's <code>source</code> parameter points to the shader file, and its <code>mimeType</code> parameter is <code>"application/octet-stream"</code>, as in this example:</p>
 * <listing>
 *      [Embed(source="myShader.pbj", mimeType="application/octet-stream)]
 *      var MyShaderClass:Class;
 *
 *      // ...
 *
 *      // create a new shader and set the embedded shader as its bytecode
 *      var shaderShader = new Shader();
 *      shader.byteCode = new MyShaderClass();
 *
 *      // You can also pass the bytecode to the Shader() constructor like this:
 *      // var shader:Shader = new Shader(new MyShaderClass());
 *
 *      // do something with the shader
 *     </listing>
 * <p>In either case, you link the raw shader (the <code>URLLoader.data</code> property or an instance of the <code>[Embed]</code> data class) to the Shader instance. As the previous examples demonstrate, you can do this in two ways. You can pass the shader bytecode as an argument to the <code>Shader()</code> constructor. Alternatively, you can set it as the Shader instance's <code>byteCode</code> property.</p>
 * <p>Once a Shader instance is created, it can be used in one of several ways:</p>
 * <ul>
 * <li>A shader fill: The output of the shader is used as a fill for content drawn with the drawing API. Pass the Shader instance as an argument to the <code>Graphics.beginShaderFill()</code> method.</li>
 * <li>A shader filter: The output of the shader is used as a graphic filter applied to a display object. Assign the Shader instance to the <code>shader</code> property of a ShaderFilter instance.</li>
 * <li>A blend mode: The output of the shader is rendered as the blending between two overlapping display objects. Assign the Shader instance to the <code>blendShader</code> property of the upper of the two display objects.</li>
 * <li>Background shader processing: The shader executes in the background, avoiding the possibility of freezing the display, and dispatches an event when processing is complete. Assign the Shader instance to the <code>shader</code> property of a ShaderJob instance.</li></ul>
 * <p>Shader fills, filters, and blends are not supported under GPU rendering.</p>
 * <p><b>Mobile Browser Support:</b> This feature is not supported in mobile browsers.</p>
 * <p><i>AIR profile support:</i> This feature is supported on all desktop operating systems, but it is not supported on all mobile devices. It is not supported on AIR for TV devices. See <a href="http://help.adobe.com/en_US/air/build/WS144092a96ffef7cc16ddeea2126bb46b82f-8000.html">AIR Profile Support</a> for more information regarding API support across multiple profiles.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/Shader.html#includeExamplesSummary">View the examples</a></p>
 * @see DisplayObject#blendShader
 * @see Graphics#beginShaderFill()
 * @see ShaderJob
 * @see flash.filters.ShaderFilter
 * @see flash.net.URLLoader
 *
 */
public class Shader {
  /**
   * The raw shader bytecode for this Shader instance.
   */
  public function set byteCode(value:ByteArray):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Provides access to parameters, input images, and metadata for the Shader instance. ShaderParameter objects representing parameters for the shader, ShaderInput objects representing the input images for the shader, and other values representing the shader's metadata are dynamically added as properties of the <code>data</code> property object when the Shader instance is created. Those properties can be used to introspect the shader and to set parameter and input values.
   * <p>For information about accessing and manipulating the dynamic properties of the <code>data</code> object, see the ShaderData class description.</p>
   * @see ShaderData
   * @see ShaderInput
   * @see ShaderParameter
   *
   */
  public function get data():ShaderData {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set data(value:ShaderData):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The precision of math operations performed by the shader.
   * <p>The set of possible values for the <code>precisionHint</code> property is defined by the constants in the ShaderPrecision class.</p>
   * <p>The default value is <code>ShaderPrecision.FULL</code>. Setting the precision to <code>ShaderPrecision.FAST</code> can speed up math operations at the expense of precision.</p>
   * <p>Full precision mode (<code>ShaderPrecision.FULL</code>) computes all math operations to the full width of the IEEE 32-bit floating standard and provides consistent behavior on all platforms. In this mode, some math operations such as trigonometric and exponential functions can be slow.</p>
   * <p>Fast precision mode (<code>ShaderPrecision.FAST</code>) is designed for maximum performance but does not work consistently on different platforms and individual CPU configurations. In many cases, this level of precision is sufficient to create graphic effects without visible artifacts.</p>
   * <p>The precision mode selection affects the following shader operations. These operations are faster on an Intel processor with the SSE instruction set:</p>
   * <ul>
   * <li><code>sin(x)</code></li>
   * <li><code>cos(x)</code></li>
   * <li><code>tan(x)</code></li>
   * <li><code>asin(x)</code></li>
   * <li><code>acos(x)</code></li>
   * <li><code>atan(x)</code></li>
   * <li><code>atan(x, y)</code></li>
   * <li><code>exp(x)</code></li>
   * <li><code>exp2(x)</code></li>
   * <li><code>log(x)</code></li>
   * <li><code>log2(x)</code></li>
   * <li><code>pow(x, y)</code></li>
   * <li><code>reciprocal(x)</code></li>
   * <li><code>sqrt(x)</code></li></ul>
   * @see ShaderPrecision
   *
   */
  public function get precisionHint():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set precisionHint(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new Shader instance.
   * @param code The raw shader bytecode to link to the Shader.
   *
   */
  public function Shader(code:ByteArray = null) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
