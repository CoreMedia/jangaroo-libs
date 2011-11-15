package flash.net {
import flash.events.EventDispatcher;

/**
 * The NetStreamPlayOptions class specifies the various options that can be passed to the <code>NetStream.play2()</code> method. You pass a NetStreamPlayOptions object to <code>play2()</code>, and the properties of the class specify the various options. The primary use case for this class is to implement transitions between streams dynamically, either to switch to streams of different bit rates and sizes or to swap to different content in a playlist.
 */
public dynamic class NetStreamPlayOptions extends EventDispatcher {
  /**
   * The duration of playback, in seconds, for the stream specified in <code>streamName</code>. The default value is -1, which means that Flash Player plays a live stream until it is no longer available or plays a recorded stream until it ends. If you pass 0 for <code>len</code>, Flash Player plays the single frame that is <code>start</code> seconds from the beginning of a recorded stream (assuming that <code>start</code> is equal to or greater than 0).
   * <p>If you pass a positive number for <code>len</code>, Flash Player plays a live stream for <code>len</code> seconds after it becomes available, or plays a recorded stream for <code>len</code> seconds. (If a stream ends before <code>len</code> seconds, playback ends when the stream ends.)</p>
   * <p>If you pass a negative number other than -1 for <code>len</code>, Flash Player interprets the value as if it were -1.</p>
   * @see NetStream#play()
   * @see NetStream#play2()
   * @see #start
   *
   */
  public var len:Number;
  /**
   * The time in seconds in the stream playback at which the switch to a new stream should be made. The <code>offset</code> parameter is used when a <code>NetStream.play2()</code> call is made with the <code>NetStreamPlayTransitions.SWITCH</code> transition mode. Flash Media Server looks for the nearest switch point after the specified offset time and starts streaming the new stream from that point onwards.
   * <p>Fast switch</p>
   * <p>When this property is specified, Flash Media Server pre-empts the current stream and starts streaming the new stream from the specified index position immediately, without waiting to find a keyframe. Any data after the offset already buffered from a previous stream is flushed. This technique can switch to a new stream more quickly than standard switching, because the buffered data from an older stream doesn't have to play out.</p>
   * <p>The default value of <code>offset</code> is -1, which is fast switch mode. In this mode, switching occurs at the first available keyframe after <code>netstream.time + 3</code>, which is about 3 seconds later than the playback point.</p>
   * <p>The offset value must be higher than the current playback time (<code>Netstream.time</code>) If the value is less, a <code>NetStream.Play.Failed</code> status event is sent.</p>
   * <p>For more information, see <a href="http://www.adobe.com/go/learn_fms_fastswitch_en">"Fast switching between streams"</a> in the <i>Adobe Flash Media Server Developer's Guide</i>.</p>
   * @see #start
   * @see NetStream#play()
   * @see NetStream#play2()
   * @see NetStream#time
   * @see NetStreamPlayTransitions#SWITCH
   *
   */
  public var offset:Number;
  /**
   * The name of the old stream or the stream to transition from. When <code>NetStream.play2()</code> is used to simply play a stream (not perform a transition), the value of this property should be either null or undefined. Otherwise, specify the stream to transition from.
   * @see #streamName
   * @see NetStream#play()
   * @see NetStream#play2()
   *
   */
  public var oldStreamName:String;
  /**
   * The start time, in seconds, for <code>streamName</code>. Valid values are -2, -1, and 0.
   * <p>The default value for <code>start</code> is -2, which means that Flash Player first tries to play the live stream specified in <code>streamName</code>. If a live stream of that name is not found, Flash Player plays the recorded stream specified in <code>streamName</code>. If neither a live nor a recorded stream is found, Flash Player opens a live stream named <code>streamName</code>, even though no one is publishing on it. When someone does begin publishing on that stream, Flash Player begins playing it.</p>
   * <p>If you pass -1 for <code>start</code>, Flash Player plays only the live stream specified in <code>streamName</code>. If no live stream is found, Flash Player waits for it indefinitely if <code>len</code> is set to -1; if <code>len</code> is set to a different value, Flash Player waits for <code>len</code> seconds before it begins playing the next item in the playlist.</p>
   * <p>If you pass 0 or a positive number for <code>start</code>, Flash Player plays only a recorded stream named <code>streamName</code>, beginning <code>start</code> seconds from the beginning of the stream. If no recorded stream is found, Flash Player begins playing the next item in the playlist immediately.</p>
   * <p>If you pass a negative number other than -1 or -2 for <code>start</code>, Flash Player interprets the value as if it were -2.</p>
   * @see NetStream#play()
   * @see NetStream#play2()
   * @see #len
   *
   */
  public var start:Number;
  /**
   * The name of the new stream to transition to or to play. When <code>oldStreamName</code> is null or undefined, calling <code>NetStream.play2()</code> simply starts playback of <code>streamName</code>. If <code>oldStreamName</code> is specified, calling <code>NetStream.play2()</code> transitions <code>oldStreamName</code> to <code>streamName</code> using the transition mode specified in the <code>transition</code> property.
   * @see #oldStreamName
   * @see NetStream#play()
   * @see NetStream#play2()
   *
   */
  public var streamName:String;
  /**
   * The mode in which <code>streamName</code> is played or transitioned to. Possible values are constants from the NetStreamPlayTransitions class. Depending on whether <code>Netstream.play2()</code> is called to play or transition a stream, the transition mode results in different behaviors. For more information on the transition modes, see the NetStreamPlayTransitions class.
   * @see NetStreamPlayTransitions
   * @see NetStream#play2()
   *
   */
  public var transition:String;

  /**
   * Creates a NetStreamPlayOptions object to specify the options that are passed to the <code>NetStream.play2()</code> method.
   * @see NetStream#play2()
   *
   */
  public function NetStreamPlayOptions() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
