package flash.media {
import flash.events.EventDispatcher;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.net.NetStream;

/**
 * Dispatched by the StageVideo object when the render state of the StageVideo object changes.
 * @eventType flash.events.StageVideoEvent.RENDER_STATE
 */
[Event(name="renderState", type="flash.events.StageVideoEvent")]

/**
 * The StageVideo object uses the device's hardware acceleration capabilities, if available, to display live or recorded video in an application. Hardware acceleration capabilities are available on most devices. See the flash.net.NetStream class for more information about supported formats.
 * <p><i>AIR profile support:</i> In AIR 2.5, this feature is supported only on devices that run AIR for TV. See <a href="http://help.adobe.com/en_US/air/build/WS144092a96ffef7cc16ddeea2126bb46b82f-8000.html">AIR Profile Support</a> for more information regarding API support across multiple profiles.</p>
 * <p>The video displayed by the StageVideo object always appears in a rectangular area on the stage behind all Flash display list objects. Therefore, the StageVideo object takes advantage of hardware acceleration while supporting the most common case for displaying video: a rectangular display area overlaid with video controls.</p>
 * <p>The benefits to using a StageVideo object instead of the Video object are:</p>
 * <ul>
 * <li>Improved video display performance because of using hardware acceleration.</li>
 * <li>Decreased CPU usage.</li>
 * <li>Flexibility and creativity for development of content, such as video controls, that appears in front of the StageVideo object.</li></ul>
 * <p>Because the device's hardware displays the video, a StageVideo object is subject to the following constraints compared to a Video object:</p>
 * <ul>
 * <li>For each SWF file, Flash Player limits the number of StageVideo objects that can concurrently display videos to four. However, the actual limit can be lower, depending on device hardware resources. On AIR for TV devices, only one StageVideo object at a time can display a video.</li>
 * <li>The video timing is not synchronized with the timing of Flash content that the runtime displays.</li>
 * <li>The video display area can only be a rectangle. You cannot use more advanced display areas, such as elliptical or irregular shapes.</li>
 * <li>You cannot rotate the video.</li>
 * <li>You cannot bitmap cache the video or use BitmapData to access it.</li>
 * <li>You cannot apply filters to the video.</li>
 * <li>You cannot apply color transforms to the video.</li>
 * <li>You cannot apply an alpha value to the video.</li>
 * <li>Blend modes that you apply to display objects that are in front of the video do not apply to the video.</li>
 * <li>You can place the video only on full pixel boundaries.</li>
 * <li>Though the rendering is the best available for the given device hardware, it is not 100% "pixel identical" across devices. Slight variations occur due to driver and platform differences.</li>
 * <li>A few devices do not support all required color spaces. For example, some devices do not support BT.709, the H.264 standard. In such cases you can use BT.601 for fast display.</li>
 * <li>You cannot use stage video with WMODE settings such as <code>normal</code>, <code>opaque</code>, or <code>transparent</code>. Stage video supports only <code>WMODE=direct</code> when not in full screen mode. WMODE has no effect in Safari 4 or higher, IE 9 or higher, or in AIR for TV.</li></ul>
 * <p>The following steps summarize how to use a StageVideo object to play a video:</p><ol>
 * <li>Listen for the StageVideoAvailabilityEvent.STAGE_VIDEO_AVAILABILITY event to find out when the Stage.stageVideos vector has changed. (Not supported for AIR 2.5 for TV.)</li>
 * <li>If the StageVideoAvailabilityEvent.STAGE_VIDEO_AVAILABILITY event reports that stage video is available, use the <code>Stage.stageVideos</code> Vector object within the event handler to access a StageVideo object. In AIR 2.5 for TV, access <code>Stage.stageVideos</code> after the first SWF frame has rendered. <b>Note</b> You cannot create a StageVideo object.</li>
 * <li>Attach a NetStream object using <code>StageVideo.attachNetStream()</code>.</li>
 * <li>Play the video using <code>NetStream.play()</code>.</li>
 * <li>Listen for the <code>StageVideoEvent.RENDER_STATE</code> event on the StageVideo object to determine the status of playing the video. Receipt of this event also indicates that the width and height properties of the video have been initialized or changed.</li>
 * <li>Listen for the <code>VideoEvent.RENDER_STATE</code> event on the Video object. This event provides the same statuses as StageVideoEvent.RENDER_STATE, so you can also use it to determine whether GPU acceleration is available. Receipt of this event also indicates that the width and height properties of the video have been initialized or changed. (Not supported for AIR 2.5 for TV.)</li></ol>
 * <p>If a <code>StageVideoEvent.RENDER_STATE</code> event indicates that the video cannot be played, you can revert to using a Video object instead of a StageVideo object. This event is dispatched after the video has been attached to a NetStream object and is playing. Also, depending on the platform, any change in the playing status can result in dispatching the event. Handle the <code>StageVideoEvent.RENDER_STATE</code> event to ensure that the application plays the video or gracefully does not play the video.</p>
 * <p>If a running video goes into full screen mode from a WMODE that does not support stage video, stage video can become available. Likewise, if the user exits full screen mode, stage video can become unavailable. In these cases, the Stage.stageVideos vector changes. To receive notification of this change, listen to the StageVideoAvailabilityEvent.STAGE_VIDEO_AVAILABITY event. <b>NOTE: This notification is not available in AIR 2.5 for TV.</b></p>
 * @see flash.events.StageVideoEvent
 * @see flash.events.StageVideoAvailabilityEvent
 * @see flash.events.VideoEvent
 * @see flash.display.Stage#stageVideos
 * @see Video
 * @see flash.net.NetStream
 * @see http://www.adobe.com/go/learn_as3_stageVideo_en Using the StageVideo class for hardware-accelerated rendering
 *
 */
public class StageVideo extends EventDispatcher {
  /**
   * Returns the names of available color spaces for this video surface. Usually this list includes "BT.601" and "BT.709". On some configurations, only "BT.601" is supported which means a video is possibly not rendered in the correct color space.
   * <p><b>Note:</b> On AIR for TV devices, a value of "BT.601" indicates software playback, and a value of "BT.709" indicates hardware playback.</p>
   */
  public function get colorSpaces():Vector.<String> {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The depth level of a StageVideo object relative to other StageVideo objects.
   * <p>StageVideo objects always display behind other objects on the stage. If a platform supports more than one StageVideo object, the <code>depth</code> property indicates a StageVideo object's depth level. The bottom StageVideo object's <code>depth</code> property has the smallest value. If multiple StageVideo objects have the same depth setting, the order they appear in the <code>stage,stageVideos</code> Vector determines their relative depth.</p>
   * <p><b>Note:</b> AIR for TV devices support only one StageVideo object. Therefore, this property is not applicable for those devices. It is a placeholder for future support on other devices.</p>
   * @see flash.display.Stage#stageVideos
   *
   */
  public function get depth():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set depth(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The pan setting for displaying the video, specified as a Point object.
   * <p>By default, the value of <code>pan</code> is <code>(0,0)</code>. This default value centers the video in the rectangle specified by <code>StageVideo.viewPort</code>.</p>
   * <p>The <code>pan</code> value is significant only when the <code>zoom</code> property value is not the default value <code>(1.0, 1.0)</code>. When a video displays in the <code>StageVideo.viewPort</code> rectangle with the default <code>zoom</code> value, the platform sizes the video to fit exactly into the rectangle. Therefore, the entire video is visible. However, if a zoom factor is specified, the entire video is not visible. In this case, you can set the <code>pan</code> value to specify which subrectangle of the video to show in the <code>StageVideo.viewPort</code> rectangle.</p>
   * <p>The valid values of the <code>pan</code> property range from <code>(-1.0, -1.0)</code> to <code>(1.0, 1.0)</code>. Specifically:</p>
   * <ul>
   * <li>A <code>pan</code> value of <code>(-1.0, -1.0)</code> places the upper-left pixel of the video at the upper-left position of the <code>StageVideo.viewPort</code> rectangle.</li>
   * <li>A <code>pan</code> value of <code>(1.0, 1.0)</code> places the lower-right pixel of the video at the lower-right position of the <code>StageVideo.viewPort</code> rectangle.</li>
   * <li>A <code>pan</code> value of <code>(1.0, -1.0)</code> places the upper-right pixel of the video at the upper-right position of the <code>StageVideo.viewPort</code> rectangle.</li>
   * <li>A <code>pan</code> value of <code>(-1.0, 1.0)</code> places the lower-left pixel of the video at the lower-left position of the <code>StageVideo.viewPort</code> rectangle.</li></ul>
   * <p>Values between -1.0 and 1.0 pan according to scale.</p>
   * <p>If you set the <code>pan</code> property to a value outside the valid range, a <code>RangeError</code> exception is thrown. The runtime resets the value to the last valid value.</p>
   * <p>Also, consider that to use a StageVideo object, you assign an element of the <code>Stage.stageVideos</code> Vector object to a StageVideo variable. When you set the <code>pan</code> property of the StageVideo variable, the underlying <code>Stage.stageVideos</code> Vector element also changes. If you later assign that element to another StageVideo variable to play another video, reset the <code>pan</code> property.</p>
   * @throws RangeError The Point value is not valid.
   *
   * @see #zoom
   *
   */
  public function get pan():Point {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set pan(value:Point):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * An integer specifying the height of the video stream, in pixels.
   * <p>You may want to use this property, for example, to ensure that the user is seeing the video at the same height at which it was captured, regardless of the size of the <code>StageVideo.viewPort</code> rectangle.</p>
   */
  public function get videoHeight():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * An integer specifying the width of the video stream, in pixels.
   * <p>You may want to use this property, for example, to ensure that the user is seeing the video at the same width at which it was captured, regardless of the size of the <code>StageVideo.viewPort</code> rectangle.</p>
   */
  public function get videoWidth():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The absolute position and size of the video surface in pixels.
   * <p>The position of the video is relative to the upper left corner of the stage.</p>
   * <p>The valid range of the <code>x</code> and <code>y</code> properties of the <code>viewPort</code> Rectangle object are -8192 to 8191. Therefore, you can position the video completely or partially off the stage. You can also make the video larger than the stage if you make the <code>width</code> and <code>height</code> properties of the <code>viewPort</code> property larger than the stage.</p>
   * @throws RangeError The Rectangle value is not valid.
   *
   */
  public function get viewPort():Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set viewPort(value:Rectangle):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The zoom setting of the video, specified as a Point object.
   * <p>The zoom point is a scale factor. By default, the value of <code>zoom</code> is <code>(1.0, 1.0)</code>. This default value displays the entire video in the <code>StageVideo.viewPort</code> rectangle.</p>
   * <p>The valid values of the <code>zoom</code> property range from <code>(1.0, 1.0)</code> to <code>(16.0, 16.0)</code>. The <code>x</code> property of the zoom Point object specifies the zoom value for the horizontal pixels, and the y property specifies the zoom value for the vertical pixels.</p>
   * <p>For example, a <code>zoom</code> value of <code>(2.0, 2.0)</code> displays only half the horizontal pixels and half the vertical pixels in the <code>StageVideo.viewPort</code> rectangle. That is, the video still fills the <code>StageVideo.viewPort</code> rectangle, but only half the video is visible, creating a 2x zoom effect. Similarly, a <code>zoom</code> value of <code>(16.0, 16.0)</code> displays only 1/16 of the horizontal pixels and 1/16 of the vertical pixels in the <code>StageVideo.viewPort</code> rectangle, zooming in the maximum amount of 16x.</p>
   * <p>When you set the <code>zoom</code> property, set the <code>pan</code> property so that the <code>StageVideo.viewPort</code> rectangle shows the appropriate subrectangle of the video.</p>
   * <p>Consider the following situation where it is useful to set a different value for the <code>x</code> and <code>y</code> properties of the <code>zoom</code> Point object. First, note that when a video displays in the <code>StageVideo.viewPort</code> rectangle with the default <code>zoom</code> value, the platform sizes the video to fit exactly into the rectangle. If the video's rectangle does not scale evenly to the <code>StageVideo.viewPort</code> rectangle, the video display can be distorted. That is, the aspect ratios of the video and the <code>StageVideo.viewPort</code> are not equal. This case can occur, for example, if the video has a different width than height, but the <code>StageVideo.viewPort</code> property specifies a square. To resolve the distortion, set different values for the <code>x</code> and <code>y</code> properties of the <code>zoom</code> Point object. Then set the <code>pan</code> property to make sure the <code>StageVideo.viewPort</code> rectangle shows the appropriate subrectangle of the video.</p>
   * <p>If you set the <code>zoom</code> property to a value outside the valid range, a <code>RangeError</code> exception is thrown. The runtime resets the value to the last valid value.</p>
   * <p>Also, consider that to use a StageVideo object, you assign an element of the <code>Stage.stageVideos</code> Vector object to a StageVideo variable. When you set the <code>zoom</code> property of the StageVideo variable, the underlying <code>Stage.stageVideos</code> Vector element also changes. If you later assign that element to another StageVideo variable to play another video, reset the <code>zoom</code> property.</p>
   * @throws RangeError The Point value is not valid.
   *
   * @see #pan
   *
   */
  public function get zoom():Point {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set zoom(value:Point):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies a video stream to be displayed within the boundaries of the StageVideo object in the application. The video stream is either a video file played with NetStream.play(), or <code>null</code>. A video file can be stored on the local file system or on Flash Media Server. If the value of the <code>netStream</code> argument is <code>null</code>, the video is no longer played in the StageVideo object.
   * <p>Before calling <code>attachNetStream()</code> a second time, call the currently attached NetStream object's <code>close()</code> method. Calling <code>close()</code> releases all the resources, including hardware decoders, involved with playing the video. Then you can call <code>attachNetStream()</code> with either another NetStream object or <code>null</code>.</p>
   * <p>You do not need to use this method if a video file contains only audio; the audio portion of a video file is played automatically when you call <code>NetStream.play()</code>. To control the audio associated with a video file, use the <code>soundTransform</code> property of the NetStream object that plays the video file.</p>
   * @param netStream A NetStream object. To drop the connection to the StageVideo object, pass <code>null</code>.
   *
   */
  public function attachNetStream(netStream:NetStream):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
