package flash.display {
import flash.geom.Matrix;

/**
 * Defines a shader fill.
 * <p>Use a GraphicsShaderFill object with the <code>Graphics.drawGraphicsData()</code> method. Drawing a GraphicsShaderFill object is the equivalent of calling the <code>Graphics.beginShaderFill()</code> method.</p>
 * @see Graphics#beginShaderFill()
 * @see Graphics#drawGraphicsData()
 *
 */
public final class GraphicsShaderFill implements IGraphicsFill, IGraphicsData {
  /**
   * A matrix object (of the flash.geom.Matrix class), which you can use to define transformations on the shader. For example, you can use the following matrix to rotate a shader by 45 degrees (pi/4 radians):
   * <listing>
   *      matrix = new flash.geom.Matrix();
   *      matrix.rotate(Math.PI / 4);
   *     </listing>
   * <p>The coordinates received in the shader are based on the matrix that is specified for the <code>matrix</code> parameter. For a default (<code>null</code>) matrix, the coordinates in the shader are local pixel coordinates which can be used to sample an input.</p>
   * @see flash.geom.Matrix
   *
   */
  public var matrix:Matrix;
  /**
   * The shader to use for the fill. This Shader instance is not required to specify an image input. However, if an image input is specified in the shader, the input must be provided manually by setting the <code>input</code> property of the corresponding ShaderInput property of the <code>Shader.data</code> property.
   * <p>When you pass a Shader instance as an argument the shader is copied internally and the drawing fill operation uses that internal copy, not a reference to the original shader. Any changes made to the shader, such as changing a parameter value, input, or bytecode, are not applied to the copied shader that's used for the fill.</p>
   * @see Shader
   *
   */
  public var shader:Shader;

  /**
   * Creates a new GraphicsShaderFill object.
   * @param shader The shader to use for the fill. This Shader instance is not required to specify an image input. However, if an image input is specified in the shader, the input must be provided manually by setting the <code>input</code> property of the corresponding ShaderInput property of the <code>Shader.data</code> property.
   * @param matrix A matrix object (of the flash.geom.Matrix class), which you can use to define transformations on the shader.
   *
   * @see flash.geom.Matrix
   * @see Shader
   *
   */
  public function GraphicsShaderFill(shader:Shader = null, matrix:Matrix = null) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
