package flash.events {


/**
 * This event fires when the state of the <code>Stage.stageVideos</code> property changes. This property can change when a user expands a video to full screen display from a <code>wmode</code> that does not support StageVideo (for example, <code>wmode=normal</code>, <code>wmode=opaque</code>, or <code>wmode=transparent</code>). Expanding to full screen can cause the <code>Stage.stageVideos</code> vector to become populated. Conversely, exiting full screen display can cause the <code>Stage.stageVideos</code> vector to become empty.
 * <p><b>NOTE:</b> This notification occurs only when the state of the <code>Stage.stageVideos</code> property changes. As a result, behavior may vary according to platform and browser. On Windows, for example, the <code>stageVideoAvailability</code> event is not dispatched when you go into full screen mode while <code>wmode</code> is set to <code>direct</code>. On some other platforms, however, the same behavior causes Flash Player to reallocate resources. In those cases, the <code>Stage.stageVideos</code> property state changes, and the event fires. You can detect changes to full screen mode by listening to the <code>flash.events.FullScreenEvent</code> event. This event is dispatched by the Stage object.</p>
 * @see StageVideoEvent
 * @see flash.media.StageVideoAvailability
 * @see VideoEvent
 * @see FullScreenEvent
 * @see flash.display.Stage#stageVideos
 * @see FullScreenEvent
 * @see flash.media.Video
 * @see flash.net.NetStream
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7e1a.html Working with Video
 *
 */
public class StageVideoAvailabilityEvent extends Event {
  /**
   * Reports the current availability of stage video using a constant of the flash.media.StageVideoAvailability class.
   */
  public function get availability():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor.
   * @param type The type of event. Possible values are: <code>StageVideoAvailabilityEvent.STAGE_VIDEO_AVAILABILITY</code>.
   * @param bubbles Indicates whether this Event object participates in the bubbling stage of the event flow.
   * @param cancelable Indicates whether you can cancel the action that triggers this event.
   * @param availability The current availability of stage video.
   *
   */
  public function StageVideoAvailabilityEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, availability:String = null) {
    super(type, bubbles, cancelable);
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>stageVideoAvailability</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>availability</code></td>
   * <td>The status reported by the event.</td></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>false</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the event.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The Stage object reporting on the availability of stage video.</td></tr></table>
   */
  public static const STAGE_VIDEO_AVAILABILITY:String = "stageVideoAvailability";
}
}
