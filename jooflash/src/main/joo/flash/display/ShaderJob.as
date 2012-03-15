package flash.display {
import flash.events.EventDispatcher;

/**
 * Dispatched when a ShaderJob that executes asynchronously finishes processing the data using the shader. A ShaderJob instance executes asynchronously when the <code>start()</code> method is called with a <code>false</code> value for the <code>waitForCompletion</code> parameter.
 * @eventType flash.events.ShaderEvent.COMPLETE
 */
[Event(name="complete", type="flash.events.ShaderEvent")]

/**
 * A ShaderJob instance is used to execute a shader operation in stand-alone mode. The shader operation executes and returns its result data. It is up to the developer to determine how to use the result.
 * <p>There are two primary reasons for using a shader in stand-alone mode:</p>
 * <ul>
 * <li>Processing non-image data: Using a ShaderJob instance you have control over input values and over how the shader result is used. The shader can return the result as binary data or number data instead of image data.</li>
 * <li>Background processing: Some shaders are complex and require a notable amount of time to execute. Executing a complex shader in the main execution of an application could slow down other parts of the application such as user interaction or updating the screen. Using a ShaderJob instance, you can execute the shader in the background. When the shader is executed in this way, the shader operation runs separate from the main execution of the application.</li></ul>
 * <p>The <code>shader</code> property (or constructor parameter) specifies the Shader instance representing the shader that is used for the operation. You provide any parameter or input that the shader expects using the associated ShaderParameter or ShaderInput instance.</p>
 * <p>Before execution a ShaderJob operation, you provide an object into which the result is written, by setting it as the value of the <code>target</code> property. When the shader operation completes the result is written into the <code>target</code> object.</p>
 * <p>To begin a background shader operation, call the <code>start()</code> method. When the operation finishes the result is written into the <code>target</code> object. At that point the ShaderJob instance dispatches a <code>complete</code> event, notifying listeners that the result is available.</p>
 * <p>To execute a shader synchronously (that is, not running in the background), call the <code>start()</code> method and pass <code>true</code> as an argument. The shader runs in the main execution thread and your code pauses until the operation completes. When it finishes the result is written into the <code>target</code> object. At that point the application continues running at the next line of code.</p>
 * @see Shader
 * @see ShaderInput
 * @see ShaderParameter
 * @see flash.events.ShaderEvent
 *
 */
public class ShaderJob extends EventDispatcher {
  /**
   * The height of the result data in the <code>target</code> if it is a ByteArray or Vector.&lt;Number> instance. The size of the ByteArray or Vector.&lt;Number> instance is enlarged if necessary and existing data is overwritten.
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
   * The progress of a running shader. This property is a value from 0 through 1. Zero is the initial value (0% complete). One indicates that the shader has completed its operation.
   * <p>If the <code>cancel()</code> method is called this property becomes <code>undefined</code>, and its value cannot be used reliably until the shader operation starts again.</p>
   */
  public function get progress():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The shader that's used for the operation. Any input or parameter that the shader expects must be provided using the ShaderInput or ShaderParameter property of the Shader instance's <code>data</code> property. An input must be provided using its corresponding ShaderInput even if it is the same as the <code>target</code> object.
   * <p>To process a ByteArray containing a linear array of data (as opposed to image data) set the corresponding ShaderInput instance's <code>height</code> to 1 and <code>width</code> to the number of 32-bit floating-point values in the ByteArray. In that case, the input in the shader must be defined with the <code>image1</code> data type.</p>
   * @see ShaderData
   * @see ShaderInput
   * @see ShaderParameter
   *
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
   * The object into which the result of the shader operation is written. This object must be a BitmapData, ByteArray, or Vector.&lt;Number> instance.
   */
  public function get target():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set target(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The width of the result data in the <code>target</code> if it is a ByteArray or Vector.&lt;Number> instance. The size of the ByteArray or Vector.&lt;Number> instance is enlarged if necessary and existing data is overwritten.
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
   *
   * @param shader The shader to use for the operation.
   * @param target The object into which the result of the shader operation is written. This argument must be a BitmapData, ByteArray, or Vector.&lt;Number> instance.
   * @param width The width of the result data in the <code>target</code> if it is a ByteArray or Vector.&lt;Number> instance. The size of the ByteArray or Vector.&lt;Number> instance is enlarged if necessary and existing data is overwritten.
   * @param height The height of the result data in the <code>target</code> if it is a ByteArray or Vector.&lt;Number> instance. The size of the ByteArray or Vector.&lt;Number> instance is enlarged if necessary and existing data is overwritten.
   *
   */
  public function ShaderJob(shader:Shader = null, target:Object = null, width:int = 0, height:int = 0) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Cancels the currently running shader operation. Any result data that is already computed is discarded. The <code>complete</code> event is not dispatched.
   * <p>Calling <code>cancel()</code> multiple times has no additional effect.</p>
   */
  public function cancel():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Starts a shader operation in synchronous or asynchronous mode, according to the value of the <code>waitForCompletion</code> parameter.
   * <p>In asynchronous mode (when <code>waitForCompletion</code> is <code>false</code>), which is the default, the ShaderJob execution runs in the background. The shader operation does not affect the responsiveness of the display or other operations. In asynchronous mode the <code>start()</code> call returns immediately and the program continues with the next line of code. When the asynchronous shader operation finishes, the result is available and the <code>complete</code> event is dispatched.</p>
   * <p>Only one background ShaderJob operation executes at a time. Shader operations are held in a queue until they execute. If you call the <code>start()</code> method while a shader operation is executing, the additional operation is added to the end of the queue. Later, when its turn comes, it executes.</p>
   * <p>To execute a shader operation in synchronous mode, call <code>start()</code> with a <code>true</code> value for the <code>waitForCompletion</code> parameter (the only parameter). Your code pauses at the point where <code>start()</code> is called until the shader operation completes. At that point the result is available and execution continues with the next line of code.</p>
   * <p>When you call the <code>start()</code> method the Shader instance in the <code>shader</code> property is copied internally. The shader operation uses that internal copy, not a reference to the original shader. Any changes made to the shader, such as changing a parameter value, input, or bytecode, are not applied to the copied shader that's used for the shader processing. To incorporate shader changes into the shader processing, call the <code>cancel()</code> method (if necessary) and call the <code>start()</code> method again to restart the shader processing.</p>
   * <p>While a shader operation is executing, the <code>target</code> object's value is not changed. When the operation finishes (and the <code>complete</code> event is dispatched in asynchronous mode) the entire result is written to the <code>target</code> object at one time. If the <code>target</code> object is a BitmapData instance and its <code>dispose()</code> method is called before the operation finishes, the <code>complete</code> event is still dispatched in asynchronous mode. However, the result data is not written to the BitmapData object because it is in a disposed state.</p>
   * @param waitForCompletion Specifies whether to execute the shader in the background (<code>false</code>, the default) or in the main program execution (<code>true</code>).
   * Events
   * <table>
   * <tr>
   * <td><code><b>complete</b>:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/ShaderEvent.html"><code>ShaderEvent</code></a></code> — Dispatched when the operation finishes, if the <code>start()</code> method is called with a <code>waitForCompletion</code> argument of <code>true</code>.</td></tr></table>
   * @throws ArgumentError When the <code>target</code> property is <code>null</code> or is not a BitmapData, ByteArray, or Vector.&lt;Number> instance.
   * @throws ArgumentError When the shader specifies an image input that isn't provided.
   * @throws ArgumentError When a ByteArray or Vector.&lt;Number> instance is used as an input and the <code>width</code> and <code>height</code> properties aren't specified for the ShaderInput, or the specified values don't match the amount of data in the input object. See the <code>ShaderInput.input</code> property for more information.
   *
   */
  public function start(waitForCompletion:Boolean = false):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
