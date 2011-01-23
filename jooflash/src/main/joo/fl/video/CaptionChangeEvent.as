package fl.video {
import flash.events.Event;

/**
 * The CaptionChangeEvent is dispatched any time a caption is added or removed from the caption target text field.
 * <p>The event is also dispatched when the following conditions are true:</p>
 * <ul>
 * <li>the <code>captionTargetName</code> property is not set</li>
 * <li>the <code>captionTarget</code> property is not set</li>
 * <li>the FLVPlaybackCaptioning instance creates a TextField object automatically for captioning.</li></ul>
 */
public class CaptionChangeEvent extends Event {
  /**
   * A Boolean value that determines whether the caption was added or removed.
   */
  public function get added():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set added(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The cue point object for the caption that was added or removed.
   */
  public function get captionCuePointObject():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set captionCuePointObject(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an Event object that contains information about <code>captionChange</code> events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Event listeners can access this information through the inherited <code>type</code> property. There is only one type of <code>captionChange</code> event: <code>CaptionChangeEvent.CAPTION_CHANGE</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param added A Boolean value that indicates whether the caption was added or removed from the display.
   * @param captionCuePointObject The cue point object for this caption.
   *
   */
  public function CaptionChangeEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, added:Boolean = true, captionCuePointObject:Object = null) {
    super(type, bubbles, cancelable);
    // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>captionChange</code> event object.
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
   * <td><code>added</code></td>
   * <td>A Boolean that indicates whether the caption was added or removed from the display.</td></tr>
   * <tr>
   * <td><code>captionCuePointObject</code></td>
   * <td>The cue point object for this caption.</td></tr></table>
   */
  public static const CAPTION_CHANGE:String = "captionChange";
}
}
