package flash.filters {
import flash.display.Shader;

/**
 * The ShaderFilter class applies a filter by executing a shader on the object being filtered. The filtered object is used as an input to the shader, and the shader output becomes the filter result.
 * <p>To create a new filter, use the constructor <code>new ShaderFilter()</code>. The use of filters depends on the object to which you apply the filter:</p>
 * <ul>
 * <li>To apply filters to movie clips, text fields, buttons, and video, use the <code>filters</code> property (inherited from DisplayObject). Setting the <code>filters</code> property of an object does not modify the object, and you can remove the filter by clearing the <code>filters</code> property.</li>
 * <li>To apply filters to BitmapData objects, use the <code>BitmapData.applyFilter()</code> method. Calling <code>applyFilter()</code> on a BitmapData object takes the source BitmapData object and the filter object and generates a filtered image as a result.</li></ul>
 * <p>If you apply a filter to a display object, the value of the <code>cacheAsBitmap</code> property of the object is set to true. If you remove all filters, the original value of <code>cacheAsBitmap</code> is restored.</p>
 * <p>This filter supports stage scaling. However, it does not support general scaling, rotation, and skewing. If the object itself is scaled (if the <code>scaleX</code> and <code>scaleY</code> properties are not set to 100%), the filter is not scaled. It is scaled only when the user zooms in on the stage.</p>
 * <p>A filter is not applied if the resulting image exceeds the maximum dimensions. In AIR 1.5 and Flash Player 10, the maximum is 8,191 pixels in width or height, and the total number of pixels cannot exceed 16,777,215 pixels. (So, if an image is 8,191 pixels wide, it can only be 2,048 pixels high.) In Flash Player 9 and earlier and AIR 1.1 and earlier, the limitation is 2,880 pixels in height and 2,880 pixels in width. If, for example, you zoom in on a large movie clip with a filter applied, the filter is turned off if the resulting image exceeds the maximum dimensions.</p>
 * <p>To specify the Shader instance to use with the filter, pass the Shader instance as an argument to the <code>ShaderFilter()</code> constructor, or set it as the value of the <code>shader</code> property.</p>
 * <p>To allow the shader output to extend beyond the bounds of the filtered object, use the <code>leftExtension</code>, <code>rightExtension</code>, <code>topExtension</code>, and <code>bottomExtension</code> properties.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/filters/ShaderFilter.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.display.DisplayObject#filters
 * @see flash.display.DisplayObject#cacheAsBitmap
 * @see flash.display.BitmapData#applyFilter()
 * @see flash.display.Shader
 *
 */
public class ShaderFilter extends BitmapFilter {
  /**
   * The growth in pixels on the bottom side of the target object.
   * <p>The growth is the area beyond the bounds of the target object that is passed to the shader during execution. At execution time Flash Player or AIR computes the normal bounds of a movie clip and extends the bounds based on the <code>leftExtension</code>, <code>rightExtension</code>, <code>topExtension</code>, and <code>bottomExtension</code> values.</p>
   * <p>The default value is <code>0.</code></p>
   */
  public function get bottomExtension():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set bottomExtension(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The growth in pixels on the left side of the target object.
   * <p>The growth is the area beyond the bounds of the target object that is passed to the shader during execution. At execution time Flash Player or AIR computes the normal bounds of a movie clip and extends the bounds based on the <code>leftExtension</code>, <code>rightExtension</code>, <code>topExtension</code>, and <code>bottomExtension</code> values.</p>
   * <p>The default value is <code>0.</code></p>
   */
  public function get leftExtension():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set leftExtension(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The growth in pixels on the right side of the target object.
   * <p>The growth is the area beyond the bounds of the target object that is passed to the shader during execution. At execution time Flash Player or AIR computes the normal bounds of a movie clip and extends the bounds based on the <code>leftExtension</code>, <code>rightExtension</code>, <code>topExtension</code>, and <code>bottomExtension</code> values.</p>
   * <p>The default value is <code>0.</code></p>
   */
  public function get rightExtension():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set rightExtension(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The shader to use for this filter.
   * <p>The Shader assigned to the <code>shader</code> property must specify at least one <code>image4</code> input. The input <b>does not</b> need to be specified in code using the associated ShaderInput object's <code>input</code> property. Instead, the object to which the filter is applied is automatically used as the first input (the input with <code>index</code> 0). A shader used as a filter can specify more than one input, in which case any additional input must be specified by setting its ShaderInput instance's <code>input</code> property.</p>
   * <p>When you assign a Shader instance to this property the shader is copied internally and the filter operation uses that internal copy, not a reference to the original shader. Any changes made to the shader, such as changing a parameter value, input, or bytecode, are not applied to the copied shader that's used for the filter. To make it so that shader changes are taken into account in the filter output, you must reassign the Shader instance to the <code>shader</code> property. As with all filters, you must also reassign the ShaderFilter instance to the display object's <code>filters</code> property in order to apply filter changes.</p>
   */
  public function get shader():Shader {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set shader(value:Shader):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The growth in pixels on the top side of the target object.
   * <p>The growth is the area beyond the bounds of the target object that is passed to the shader during execution. At execution time Flash Player or AIR computes the normal bounds of a movie clip and extends the bounds based on the <code>leftExtension</code>, <code>rightExtension</code>, <code>topExtension</code>, and <code>bottomExtension</code> values.</p>
   * <p>The default value is <code>0.</code></p>
   */
  public function get topExtension():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set topExtension(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new shader filter.
   * @param shader The Shader to use for this filter. For details and limitations that the shader must conform to, see the description for the <code>shader</code> property.
   *
   * @see #shader
   *
   */
  public function ShaderFilter(shader:Shader = null) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
