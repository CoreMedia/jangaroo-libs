package flash.display {


/**
 * A ShaderInput instance represents a single input image for a shader kernel. A kernel can be defined to accept zero, one, or more source images that are used in the kernel execution. A ShaderInput instance provides a mechanism for specifying the input image that is used when the shader executes. To specify a value for the input, create a BitmapData, ByteArray, or Vector.&lt;Number> instance containing the image data and assign it to the <code>input</code> property.
 * <p>The ShaderInput instance representing a Shader instance's input image is accessed as a property of the Shader instance's <code>data</code> property. The ShaderInput property has the same name as the input's name in the shader code. For example, if a shader defines an input named <code>src</code>, the ShaderInput instance representing the <code>src</code> input is available as the <code>src</code> property, as this example shows:</p>
 * <listing>
 * myShader.data.src.image = new BitmapData(50, 50, true, 0xFF990000);</listing>
 * <p>For some uses of a Shader instance, you do not need to specify an input image, because it is automatically specified by the operation. You only need to specify an input when a Shader is used for the following:</p>
 * <ul>
 * <li>Shader fill</li>
 * <li>ShaderFilter, only for the second or additional inputs if the shader is defined to use more than one input. (The object to which the filter is applied is automatically used as the first input.)</li>
 * <li>Shader blend mode, only for the third or additional inputs if the shader is defined to use more than two inputs. (The objects being blended are automatically used as the first and second inputs.)</li>
 * <li>ShaderJob background execution</li></ul>
 * <p>If the shader is being executed using a ShaderJob instance to process a ByteArray containing a linear array of data, set the ShaderInput instance's <code>height</code> to 1 and <code>width</code> to the number of 32-bit floating point values in the ByteArray. In that case, the input in the shader must be defined with the <code>image1</code> data type.</p>
 * <p>Generally, developer code does not create a ShaderInput instance directly. A ShaderInput instance is created for each of a shader's inputs when the Shader instance is created.</p>
 * @see ShaderData
 * @see Shader#data
 * @see ShaderJob
 *
 */
public final dynamic class ShaderInput {
  /**
   * The number of channels that a shader input expects. This property must be accounted for when the input data is a ByteArray or Vector.&lt;Number> instance.
   */
  public function get channels():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The height of the shader input. This property is only used when the input data is a ByteArray or Vector.&lt;Number> instance. When the input is a BitmapData instance the height is automatically determined.
   */
  public function get height():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set height(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The zero-based index of the input in the shader, indicating the order of the input definitions in the shader.
   */
  public function get index():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The input data that is used when the shader executes. This property can be a BitmapData instance, a ByteArray instance, or a Vector.&lt;Number> instance.
   * <p>If a ByteArray value is assigned to the <code>input</code> property, the following conditions must be met:</p>
   * <ul>
   * <li>The <code>height</code> and <code>width</code> properties must be set.</li>
   * <li>The byte array's contents must only consist of 32-bit floating-point values. These values can be written using the <code>ByteArray.writeFloat()</code> method.</li>
   * <li>The total length in bytes of the ByteArray must be exactly <code>width</code> times <code>height</code> times <code>channels</code> times 4.</li>
   * <li>The byte array's <code>endian</code> property must be <code>Endian.LITTLE_ENDIAN</code>.</li></ul>
   * <p>If a Vector.&lt;Number> instance is assigned to the <code>input</code> property, the length of the Vector must be equal to <code>width</code> times <code>height</code> times <code>channels</code>.</p>
   */
  public function get input():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set input(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The width of the shader input. This property is only used when the input data is a ByteArray or Vector.&lt;Number> instance. When the input is a BitmapData instance the width is automatically determined.
   */
  public function get width():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set width(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a ShaderInput instance. Developer code does not call the ShaderInput constructor directly. A ShaderInput instance is created for each of a shader's inputs when the Shader instance is created.
   */
  public function ShaderInput() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
