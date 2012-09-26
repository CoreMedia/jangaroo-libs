package flash.events {
import flash.utils.ByteArray;

/**
 * Dispatched when a Sound object requests new audio data or when a Microphone object has new audio data to provide.
 * <p>This event has two uses:</p>
 * <ul>
 * <li>To provide dynamically generated audio data for a Sound object</li>
 * <li>To get audio data for a Microphone object</li></ul>
 * <p><b>Dynamically generating audio using the Sound object</b> Use the <code>sampleData</code> event to play dynamically generated audio. In this environment, the Sound object doesn't actually contain sound data. Instead, it acts as a socket for sound data that is being streamed to it through the use of the function you assign as the handler for the <code>sampleData</code> event.</p>
 * <p>In your function, you use the <code>ByteArray.writeFloat()</code> method to write to the event's <code>data</code>) property, which contains the sampled data you want to play.</p>
 * <p>If a Sound object has not loaded an MP3 file, when you call its <code>play()</code> method the object starts dispatching <code>sampleData</code> events, requesting sound samples. The Sound object continues to send events as the sound plays back until you stop providing data, or until the <code>stop()</code> method of the SoundChannel object is called.</p>
 * <p>Thes latency of the event varies from platform to platform, and it could change in future versions of Flash Player or AIR. Don't depend on a specific latency. Instead calculate it using <code>((SampleDataEvent.position/44.1) - SoundChannelObject.position)</code>.</p>
 * <p>Provide between 2048 and 8192 samples to the <code>data</code> property of the SampleDataEvent object. For best performance, provide as many samples as possible. The fewer samples you provide, the more likely it is that clicks and pops will occur during playback. This behavior can differ on various platforms and can occur in various situations - for example, when resizing the browser. You might write code that works on one platform when you provide only 2048 samples, but that same code might not work as well when run on a different platform. If you require the lowest latency possible, consider making the amount of data user-selectable.</p>
 * <p>If you provide fewer than 2048 samples, tha Sound object plays the remaining samples and then stops the sound as if the end of a sound file was reached, generating a <code>complete</code> event.</p>
 * <p>You can use the <code>extract()</code> method of a Sound object to extract its sound data, which you can then write to the dynamic stream for playback.</p>
 * <p>When you use the <code>sampleData</code> event with a Sound object, the only Sound methods that are enabled are <code>extract()</code> and <code>play()</code>. Calling any other methods or properties results in an "invalid call" exception. All methods and properties of the SoundChannel object are still enabled.</p>
 * <p><b>Capturing Microphone audio</b> Use the <code>sampleData</code> event to capture audio data from a microphone. When you add an event listener for the <code>sampleData</code> event, the Microphone dispatches the event as audio samples become available.</p>
 * <p>In the event handler function, use the <code>ByteArray.readFloat()</code> method to read the event's <code>data</code>) property, which contains the sampled data. The event will contain multiple samples, so you should use a <code>while</code> loop to read the available data:</p>
 * <listing>
 * var soundBytes:ByteArray = new ByteArray();
 *  while(event.data.bytesAvailable)
 *  {
 *       var sample:Number = event.data.readFloat();
 *       soundBytes.writeFloat(sample);
 *  }</listing>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/SampleDataEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.media.Sound
 *
 */
public class SampleDataEvent extends Event {
  /**
   * The data in the audio stream.
   */
  public function get data():ByteArray {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set data(value:ByteArray):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The position of the data in the audio stream.
   */
  public function get position():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set position(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an event object that contains information about audio data events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. This value is:<code>Event.SAMPLE_DATA</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow.
   * @param cancelable Determines whether the Event object can be canceled.
   * @param theposition The position of the data in the audio stream.
   * @param thedata A byte array of data.
   *
   */
  public function SampleDataEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, theposition:Number = 0, thedata:ByteArray = null) {
    super(type, bubbles, cancelable);
  }

  /**
   * Creates a copy of the SampleDataEvent object and sets each property's value to match that of the original.
   * @return A new SampleDataEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the SampleDataEvent object. The string is in the following format:
   * <p><code>[SampleDataEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> theposition=<i>value</i> thedata=<i>value</i>]</code></p>
   * @return A string that contains all the properties of the <code>SampleDataEvent</code> object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>SampleDataEvent</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>false</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>position</code></td>
   * <td>The point from which audio data is provided.</td></tr></table>
   * @see flash.media.Sound#event:sampleData
   * @see SampleDataEvent
   *
   */
  public static const SAMPLE_DATA:String = "sampleData";
}
}
