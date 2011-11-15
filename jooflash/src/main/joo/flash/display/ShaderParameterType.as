package flash.display {


/**
 * This class defines the constants that represent the possible values for the ShaderParameter class's <code>type</code> property. Each constant represents one of the data types available in Flash Player for parameters in the Pixel Bender shader language.
 * @see ShaderParameter#type
 *
 */
public final class ShaderParameterType {
  /**
   * Indicates that the shader parameter is defined as a <code>bool</code> value, equivalent to a single Boolean instance in ActionScript.
   * <p>Note that even though the parameter only expects a single value, the <code>ShaderParameter.value</code> property is an Array, so the single value must be the only element of an Array assigned to the <code>value</code> property, like this:</p>
   * <listing>
   *          // assumes the shader has a parameter named "param"
   *          // whose data type is bool
   *          myShader.data.param.value = [true];
   *         </listing>
   */
  public static const BOOL:String = "bool";
  /**
   * Indicates that the shader parameter is defined as a <code>bool2</code> value, equivalent to an Array of two Boolean instances in ActionScript.
   */
  public static const BOOL2:String = "bool2";
  /**
   * Indicates that the shader parameter is defined as a <code>bool3</code> value, equivalent to an Array of three Boolean instances in ActionScript.
   */
  public static const BOOL3:String = "bool3";
  /**
   * Indicates that the shader parameter is defined as a <code>bool4</code> value, equivalent to an Array of four Boolean instances in ActionScript.
   */
  public static const BOOL4:String = "bool4";
  /**
   * Indicates that the shader parameter is defined as a <code>float</code> value, equivalent to a single Number instance in ActionScript.
   * <p>Note that even though the parameter only expects a single value, the <code>ShaderParameter.value</code> property is an Array, so the single value must be the only element of an Array assigned to the <code>value</code> property, like this:</p>
   * <listing>
   *          // assumes the shader has a parameter named "param"
   *          // whose data type is float
   *          myShader.data.param.value = [22.5];
   *         </listing>
   * @see ShaderParameter#type
   *
   */
  public static const FLOAT:String = "float";
  /**
   * Indicates that the shader parameter is defined as a <code>float2</code> value, equivalent to an Array of two Number instances in ActionScript.
   * @see ShaderParameter#type
   *
   */
  public static const FLOAT2:String = "float2";
  /**
   * Indicates that the shader parameter is defined as a <code>float3</code> value, equivalent to an Array of three Number instances in ActionScript.
   */
  public static const FLOAT3:String = "float3";
  /**
   * Indicates that the shader parameter is defined as a <code>float4</code> value, equivalent to an Array of four Number instances in ActionScript.
   */
  public static const FLOAT4:String = "float4";
  /**
   * Indicates that the shader parameter is defined as an <code>int</code> value, equivalent to a single int or uint instance in ActionScript.
   * <p>Note that even though the parameter only expects a single value, the <code>ShaderParameter.value</code> property is an Array, so the single value must be the only element of an Array assigned to the <code>value</code> property, like this:</p>
   * <listing>
   *          // assumes the shader has a parameter named "param"
   *          // whose data type is int
   *          myShader.data.param.value = [275];
   *         </listing>
   */
  public static const INT:String = "int";
  /**
   * Indicates that the shader parameter is defined as an <code>int2</code> value, equivalent to an Array of two int or uint instances in ActionScript.
   */
  public static const INT2:String = "int2";
  /**
   * Indicates that the shader parameter is defined as an <code>int3</code> value, equivalent to an Array of three int or uint instances in ActionScript.
   */
  public static const INT3:String = "int3";
  /**
   * Indicates that the shader parameter is defined as an <code>int4</code> value, equivalent to an Array of four int or uint instances in ActionScript.
   */
  public static const INT4:String = "int4";
  /**
   * Indicates that the shader parameter is defined as a <code>float2x2</code> value, equivalent to a 2-by-2 matrix. This matrix is represented as an Array of four Number instances in ActionScript.
   */
  public static const MATRIX2X2:String = "matrix2x2";
  /**
   * Indicates that the shader parameter is defined as a <code>float3x3</code> value, equivalent to a 3-by-3 matrix. This matrix is represented as an Array of nine Number instances in ActionScript.
   */
  public static const MATRIX3X3:String = "matrix3x3";
  /**
   * Indicates that the shader parameter is defined as a <code>float4x4</code> value, equivalent to a 4-by-4 matrix. This matrix is represented as an Array of 16 Number instances in ActionScript.
   */
  public static const MATRIX4X4:String = "matrix4x4";
}
}
