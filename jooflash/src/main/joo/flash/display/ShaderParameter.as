package flash.display {


/**
 * A ShaderParameter instance represents a single input parameter of a shader kernel. A kernel can be defined to accept zero, one, or more parameters that are used in the kernel execution. A ShaderParameter provides information about the parameter, such as the type of data it expects. It also provides a mechanism for setting the parameter value that is used when the shader executes. To specify a value or values for the shader parameter, create an Array containing the value or values and assign it to the <code>value</code> property.
 * <p>A ShaderParameter instance representing a parameter for a Shader instance is accessed as a property of the Shader instance's <code>data</code> property. The ShaderParameter property has the same name as the parameter's name in the shader code. For example, if a shader defines a parameter named <code>radius</code>, the ShaderParameter instance representing the <code>radius</code> parameter is available as the <code>radius</code> property, as shown here:</p>
 * <listing>
 * var radiusParam:ShaderParameter = myShader.data.radius;</listing>
 * <p>In addition to the defined properties of the ShaderParameter class, each ShaderParameter instance has additional properties corresponding to any metadata defined for the parameter. These properties are added to the ShaderParameter object when it is created. The properties' names match the metadata names specified in the shader's source code. The data type of each property varies according to the data type of the corresponding metadata. A text metadata value such as "description" is a String instance. A metadata property with a non-string value (such as <code>minValue</code> or <code>defaultValue</code>) is represented as an Array instance. The number of elements and element data types correspond to the metadata values.</p>
 * <p>For example, suppose a shader includes the following two parameter declarations:</p>
 * <listing>
 *      parameter float2 size
 *      &lt;
 *          description: "The size of the image to which the kernel is applied";
 *          minValue: float2(0.0, 0.0);
 *          maxValue: float2(100.0, 100.0);
 *          defaultValue: float2(50.0, 50.0);
 *      >;
 *
 *      parameter float radius
 *      &lt;
 *          description: "The radius of the effect";
 *          minValue: 0.0;
 *          maxValue: 50.0;
 *          defaultValue: 25.0;
 *      >;
 *     </listing>
 * <p>The ShaderParameter instance corresponding to the <code>size</code> parameter has the following metadata properties in addition to its built-in properties:</p>
 * <table>
 * <tr><th>Property name</th><th>Data type</th><th>Value</th></tr>
 * <tr>
 * <td><code>name</code> </td>
 * <td>String</td>
 * <td><code>"size"</code> </td></tr>
 * <tr>
 * <td><code>description</code> </td>
 * <td>String</td>
 * <td><code>"The size of the image to which the kernel is applied"</code> </td></tr>
 * <tr>
 * <td><code>minValue</code> </td>
 * <td>Array</td>
 * <td><code>[0, 0]</code> </td></tr>
 * <tr>
 * <td><code>maxValue</code> </td>
 * <td>Array</td>
 * <td><code>[100, 100]</code> </td></tr>
 * <tr>
 * <td><code>defaultValue</code> </td>
 * <td>Array</td>
 * <td><code>[50, 50]</code> </td></tr></table>
 * <p>The ShaderParameter corresponding to the <code>radius</code> parameter has the following additional properties:</p>
 * <table>
 * <tr><th>Property name</th><th>Data type</th><th>Value</th></tr>
 * <tr>
 * <td><code>name</code> </td>
 * <td>String</td>
 * <td><code>"radius"</code> </td></tr>
 * <tr>
 * <td><code>description</code> </td>
 * <td>String</td>
 * <td><code>"The radius of the effect"</code> </td></tr>
 * <tr>
 * <td><code>minValue</code> </td>
 * <td>Array</td>
 * <td><code>[0]</code> </td></tr>
 * <tr>
 * <td><code>maxValue</code> </td>
 * <td>Array</td>
 * <td><code>[50]</code> </td></tr>
 * <tr>
 * <td><code>defaultValue</code> </td>
 * <td>Array</td>
 * <td><code>[25]</code> </td></tr></table>
 * <p>Generally, developer code does not create a ShaderParameter instance directly. A ShaderParameter instance is created for each of a shader's parameters when the Shader instance is created.</p>
 * @see ShaderData
 * @see Shader#data
 *
 */
public final dynamic class ShaderParameter {
  /**
   * The zero-based index of the parameter.
   */
  public function get index():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The data type of the parameter as defined in the shader. The set of possible values for the <code>type</code> property is defined by the constants in the ShaderParameterType class.
   * @see ShaderParameterType
   *
   */
  public function get type():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The value or values that are passed in as the parameter value to the shader. The <code>value</code> property is an indexed Array. The number and type of the elements of the Array correspond to the data type of the parameter, which can be determined using the <code>type</code> property.
   * <p>The following table indicates the parameter type and corresponding number and data type of the <code>value</code> Array's elements:</p>
   * <table>
   * <tr><th>Parameter type</th><th># Elements</th><th>Element data type</th></tr>
   * <tr>
   * <td>float (<code>ShaderParameterType.FLOAT</code>)</td>
   * <td>1</td>
   * <td>Number</td></tr>
   * <tr>
   * <td>float2 (<code>ShaderParameterType.FLOAT2</code>)</td>
   * <td>2</td>
   * <td>Number</td></tr>
   * <tr>
   * <td>float3 (<code>ShaderParameterType.FLOAT3</code>)</td>
   * <td>3</td>
   * <td>Number</td></tr>
   * <tr>
   * <td>float4 (<code>ShaderParameterType.FLOAT4</code>)</td>
   * <td>4</td>
   * <td>Number</td></tr>
   * <tr>
   * <td>int (<code>ShaderParameterType.INT</code>)</td>
   * <td>1</td>
   * <td>int or uint</td></tr>
   * <tr>
   * <td>int2 (<code>ShaderParameterType.INT2</code>)</td>
   * <td>2</td>
   * <td>int or uint</td></tr>
   * <tr>
   * <td>int3 (<code>ShaderParameterType.INT3</code>)</td>
   * <td>3</td>
   * <td>int or uint</td></tr>
   * <tr>
   * <td>int4 (<code>ShaderParameterType.INT4</code>)</td>
   * <td>4</td>
   * <td>int or uint</td></tr>
   * <tr>
   * <td>bool (<code>ShaderParameterType.BOOL</code>)</td>
   * <td>1</td>
   * <td>Boolean</td></tr>
   * <tr>
   * <td>bool2 (<code>ShaderParameterType.BOOL2</code>)</td>
   * <td>2</td>
   * <td>Boolean</td></tr>
   * <tr>
   * <td>bool3 (<code>ShaderParameterType.BOOL3</code>)</td>
   * <td>3</td>
   * <td>Boolean</td></tr>
   * <tr>
   * <td>bool4 (<code>ShaderParameterType.BOOL4</code>)</td>
   * <td>4</td>
   * <td>Boolean</td></tr>
   * <tr>
   * <td>float2x2 (<code>ShaderParameterType.MATRIX2X2</code>)</td>
   * <td>4</td>
   * <td>Number</td></tr>
   * <tr>
   * <td>float3x3 (<code>ShaderParameterType.MATRIX3X3</code>)</td>
   * <td>9</td>
   * <td>Number</td></tr>
   * <tr>
   * <td>float4x4 (<code>ShaderParameterType.MATRIX4X4</code>)</td>
   * <td>16</td>
   * <td>Number</td></tr></table>
   * <p>For the matrix parameter types, the array elements fill the rows of the matrix, then the columns. For example, suppose the following line of ActionScript is used to fill a <code>float2x2</code> parameter named <code>myMatrix</code>:</p>
   * <listing>
   * myShader.data.myMatrix.value = [.1, .2, .3, .4];</listing>
   * <p>Within the shader, the matrix elements have the following values:</p>
   * <ul>
   * <li><code>myMatrix[0][0]</code>: .1</li>
   * <li><code>myMatrix[0][1]</code>: .2</li>
   * <li><code>myMatrix[1][0]</code>: .3</li>
   * <li><code>myMatrix[1][1]</code>: .4</li></ul>
   */
  public function get value():Array {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set value(value:Array):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a ShaderParameter instance. Developer code does not call the ShaderParameter constructor directly. A ShaderParameter instance is created for each of a shader's parameters when the Shader instance is created.
   */
  public function ShaderParameter() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
