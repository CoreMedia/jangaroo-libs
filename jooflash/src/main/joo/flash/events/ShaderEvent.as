package flash.events {
import flash.display.BitmapData;
import flash.utils.ByteArray;

/**
 * A ShaderEvent is dispatched when a shader operation launched from a ShaderJob finishes.
 * @see flash.display.ShaderJob
 *
 */
public class ShaderEvent extends Event {
  /**
   * The BitmapData object that was passed to the <code>ShaderJob.start()</code> method. If a ByteArray or Vector.&lt;Number> was passed to the <code>start()</code> method this property is <code>null</code>.
   * @see flash.display.ShaderJob#start()
   *
   */
  public function get bitmapData():BitmapData {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set bitmapData(value:BitmapData):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The ByteArray object that was passed to the <code>ShaderJob.start()</code> method. If a BitmapData or Vector.&lt;Number> object was passed to the <code>start()</code> method this property is <code>null</code>.
   * @see flash.display.ShaderJob#start()
   *
   */
  public function get byteArray():ByteArray {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set byteArray(value:ByteArray):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The Vector.&lt;Number> object that was passed to the <code>ShaderJob.start()</code> method. If a BitmapData or ByteArray object was passed to the <code>start()</code> method this property is <code>null</code>.
   * @see flash.display.ShaderJob#start()
   *
   */
  public function get vector():Vector.<Number> {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set vector(value:Vector.<Number>):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a ShaderEvent object to pass to event listeners.
   * @param type The type of the event, available in the <code>type</code> property.
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow. The default value is <code>false</code>.
   * @param cancelable Determines whether the Event object can be canceled. The default value is <code>false</code>.
   * @param bitmap The BitmapData object containing the result of the operation that finished (or <code>null</code> if the target wasn't a BitmapData object).
   * @param array The ByteArray object containing the result of the operation that finished (or <code>null</code> if the target wasn't a ByteArray object).
   * @param vector The Vector.&lt;Number> instance containing the result of the operation that finished (or <code>null</code> if the target wasn't a Vector.&lt;Number> instance).
   *
   */
  public function ShaderEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, bitmap:BitmapData = null, array:ByteArray = null, vector:Vector.<Number> = null) {
    super(type, bubbles, cancelable);
  }

  /**
   * Creates a copy of the ShaderEvent object and sets the value of each property to match that of the original.
   * @return A new ShaderEvent object with property values that match the values of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the ShaderEvent object. The string is in the following format:
   * <p><code>[ShaderEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> eventPhase=<i>value</i> bitmapData=<i>value</i> byteArray=<i>value</i> vector=<i>value</i>]</code></p>
   * @return A string that contains all the properties of the ShaderEvent object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>complete</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>false</code></td></tr>
   * <tr>
   * <td><code>bitmapData</code></td>
   * <td>The BitmapData object containing the result of the operation that finished (or <code>null</code> if the target wasn't a BitmapData object).</td></tr>
   * <tr>
   * <td><code>byteArray</code></td>
   * <td>The ByteArray object containing the result of the operation that finished (or <code>null</code> if the target wasn't a ByteArray object).</td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the event object with an event listener.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The ShaderJob object reporting completion.</td></tr>
   * <tr>
   * <td><code>vector</code></td>
   * <td>The Vector.&lt;Number> instance containing the result of the operation that finished (or <code>null</code> if the target wasn't a Vector.&lt;Number> instance).</td></tr></table>
   * @see flash.display.ShaderJob#event:complete
   *
   */
  public static const COMPLETE:String = "complete";
}
}
