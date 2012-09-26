package flash.events {


/**
 * This event class reports the current video rendering status. Use this event for the following purposes:
 * <ul>
 * <li>To find out when size of the Video display changes or is initialized. Use this event instead of polling for size changes. When you receive this event you can access <code>Video.videoSize</code> and <code>Video.videoHeight</code> to get the pixel dimensions of the video that is currently playing.</li>
 * <li>To find out whether the video is decoded by software or the GPU. If the <code>status</code> property returns "accelerated", you should switch to using the StageVideo class, if possible.</li></ul>
 * @see StageVideoEvent
 * @see StageVideoAvailabilityEvent
 * @see flash.display.Stage#stageVideos
 * @see flash.media.Video
 * @see flash.net.NetStream
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7e1a.html Working with Video
 *
 */
public class VideoEvent extends Event {
  /**
   * Returns the rendering status of the VideoEvent object. Possible values include "unavailable", "software", and "accelerated".
   */
  public function get status():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor.
   * @param type The type of event. Possible values are: <code>VideoEvent.RENDER_STATE</code>.
   * @param bubbles Indicates whether this Event object participates in the bubbling stage of the event flow.
   * @param cancelable Indicates whether you can cancel the action that triggers this event.
   * @param status The rendering state of the video.
   *
   */
  public function VideoEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, status:String = null) {
    super(type, bubbles, cancelable);
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>renderState</code> event object.
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
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the event.</td></tr>
   * <tr>
   * <td><code>status</code></td>
   * <td>The rendering status reported by the event.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The Video object reporting rendering status.</td></tr></table>
   */
  public static const RENDER_STATE:String = "renderState";
  /**
   * For internal use only. Use flash.media.VideoStatus.ACCELERATED instead.
   */
  public static const RENDER_STATUS_ACCELERATED:String = "accelerated";
  /**
   * For internal use only. Use flash.media.VideoStatus.SOFTWARE instead.
   */
  public static const RENDER_STATUS_SOFTWARE:String = "software";
  /**
   * For internal use only. Use flash.media.VideoStatus.UNAVAILABLE instead.
   */
  public static const RENDER_STATUS_UNAVAILABLE:String = "unavailable";
}
}
