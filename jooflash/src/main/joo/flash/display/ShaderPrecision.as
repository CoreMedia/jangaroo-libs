package flash.display {


/**
 * This class defines the constants that represent the possible values for the Shader class's <code>precisionHint</code> property. Each constant represents one of the precision modes for executing shader operations.
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
 * @see Shader#precisionHint
 *
 */
public final class ShaderPrecision {
  /**
   * Represents fast precision mode.
   * <p>Fast precision mode is designed for maximum performance but does not work consistently on different platforms and individual CPU configurations. In many cases, this level of precision is sufficient to create graphic effects without visible artifacts.</p>
   * <p>It is usually faster to use fast precision mode than to use lookup tables.</p>
   * @see Shader#precisionHint
   *
   */
  public static const FAST:String = "fast";
  /**
   * Represents full precision mode.
   * <p>In full precision mode, the shader computes all math operations to the full width of the IEEE 32-bit floating standard. This mode provides consistent behavior on all platforms. In this mode, some math operations such as trigonometric and exponential functions can be slow.</p>
   * @see Shader#precisionHint
   *
   */
  public static const FULL:String = "full";
}
}
