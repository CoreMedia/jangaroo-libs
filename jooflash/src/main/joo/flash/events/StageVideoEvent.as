package flash.events {
/**
 * A StageVideo object dispatches a StageVideoEvent object after the <code>attachNetStream()</code> method of the StageVideo object and the <code>play()</code> method of the attached NetStream object have both been called. Also, depending on the platform, any change in the playing status can result in dispatching the event. The one type of StageVideoEvent is <code>StageVideoEvent.RENDER_STATE</code>.
 */
public class StageVideoEvent extends Event {
  /**
   * The color space used by the video being displayed in the StageVideo object.
   * @see flash.media.StageVideo
   *
   */
  public function get colorSpace():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The status of the StageVideo object.
   * @see #RENDER_STATUS_UNAVAILABLE
   * @see #RENDER_STATUS_SOFTWARE
   * @see #RENDER_STATUS_ACCELERATED
   *
   */
  public function get status():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an Event object that contains information about StageVideo events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Event listeners can access this information through the inherited <code>type</code> property. The one type of StageVideoEvent is <code>StageVideoEvent.RENDER_STATE</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param status Indicates the status of the target StageVideo object.
   * @param colorSpace The color space used by the video being displayed.
   *
   * @see flash.media.StageVideo
   * @see flash.display.Stage#stageVideos
   * @see #RENDER_STATE
   *
   */
  public function StageVideoEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, status:String = null, colorSpace:String = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The <code>StageVideoEvent.RENDER_STATE</code> constant defines the value of the <code>type</code> property of a <code>renderState</code> event object.
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
   * <td><code>colorSpace</code></td>
   * <td>The available color spaces for displaying the video.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the StageVideoEvent object with an event listener.</td></tr>
   * <tr>
   * <td><code>status</code></td>
   * <td>Indicates whether the video is being rendered (decoded and displayed) by hardware or software, or not at all.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The StageVideo object that changed state.</td></tr></table>
   * @see #RENDER_STATE
   * @see #RENDER_STATUS_UNAVAILABLE
   * @see #RENDER_STATUS_SOFTWARE
   * @see #RENDER_STATUS_ACCELERATED
   *
   */
  public static const RENDER_STATE:String = "renderState";
}
}
