package flash.display {
import flash.utils.ByteArray;

/**
 * A ShaderData object contains properties representing any parameters and inputs for a shader kernel, as well as properties containing any metadata specified for the shader.
 * <p>These properties are added to the ShaderData object when it is created. The properties' names match the names specified in the shader's source code. The data type of each property varies according to what aspect of the shader the property represents. The properties that represent shader parameters are ShaderParameter instances, the properties that represent input images are ShaderInput instances, and the properties that represent shader metadata are instances of the ActionScript class corresponding to their data type (for example, a String instance for textual metadata and a uint for uint metadata).</p>
 * <p>For example, consider this shader, which is defined with one input image (<code>src</code>), two parameters (<code>size</code> and <code>radius</code>), and three metadata values (<code>nameSpace</code>, <code>version</code>, and <code>description</code>):</p>
 * <listing>
 *      <languageVersion : 1.0;>
 *
 *      kernel DoNothing
 *      <
 *          namespace: "Adobe::Example";
 *          vendor: "Adobe examples";
 *          version: 1;
 *          description: "A shader that does nothing, but does it well.";
 *      >
 *      {
 *          input image4 src;
 *
 *          output pixel4 dst;
 *
 *          parameter float2 size
 *          <
 *              description: "The size of the image to which the kernel is applied";
 *              minValue: float2(0.0, 0.0);
 *              maxValue: float2(100.0, 100.0);
 *              defaultValue: float2(50.0, 50.0);
 *          >;
 *
 *          parameter float radius
 *          <
 *              description: "The radius of the effect";
 *              minValue: 0.0;
 *              maxValue: 50.0;
 *              defaultValue: 25.0;
 *          >;
 *
 *          void evaluatePixel()
 *          {
 *              float2 one = (radius / radius) ∗ (size / size);
 *              dst = sampleNearest(src, outCoord());
 *          }
 *      }
 *     </listing>
 * <p>If you create a Shader instance by loading the byte code for this shader, the ShaderData instance in its <code>data</code> property contains these properties:</p>
 * <table>
 * <tr><th>Property</th><th>Data type</th><th>Value</th></tr>
 * <tr>
 * <td>name</td>
 * <td>String</td>
 * <td>"DoNothing"</td></tr>
 * <tr>
 * <td>nameSpace</td>
 * <td>String</td>
 * <td>"Adobe::Example"</td></tr>
 * <tr>
 * <td>version</td>
 * <td>String</td>
 * <td>"1"</td></tr>
 * <tr>
 * <td>description</td>
 * <td>String</td>
 * <td>"A shader that does nothing, but does it well."</td></tr>
 * <tr>
 * <td>src</td>
 * <td>ShaderInput</td>
 * <td><i>[A ShaderInput instance]</i> </td></tr>
 * <tr>
 * <td>size</td>
 * <td>ShaderParameter</td>
 * <td><i>[A ShaderParameter instance, with properties for the parameter metadata]</i> </td></tr>
 * <tr>
 * <td>radius</td>
 * <td>ShaderParameter</td>
 * <td><i>[A ShaderParameter instance, with properties for the parameter metadata]</i> </td></tr></table>
 * <p>Note that any input image or parameter that is defined in the shader source code but not used in the shader's <code>evaluatePixel()</code> function is removed when the shader is compiled to byte code. In that case, there is no corresponding ShaderInput or ShaderParameter instance added as a property of the ShaderData instance.</p>
 * <p>Generally, developer code does not create a ShaderData instance. A ShaderData instance containing data, parameters, and inputs for a shader is available as the Shader instance's <code>data</code> property.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/ShaderData.html#includeExamplesSummary">View the examples</a></p>
 * @see Shader#data
 * @see ShaderInput
 * @see ShaderParameter
 *
 */
public final dynamic class ShaderData {
  /**
   * Creates a ShaderData instance. Generally, developer code does not call the ShaderData constructor directly. A ShaderData instance containing data, parameters, and inputs for a Shader instance is accessed using its <code>data</code> property.
   * @param byteCode The shader's byte code.
   *
   * @see Shader#data
   *
   */
  public function ShaderData(byteCode:ByteArray) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
