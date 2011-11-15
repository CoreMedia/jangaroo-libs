package flash.net {


/**
 * The NetStreamPlayTransitions class specifies the valid strings that you can use with the <code>NetStreamPlayOptions.transition</code> property. These strings control the behavior that is used to transition to a new stream or to play a stream, depending on the transition mode that is used.
 * @see NetStreamPlayOptions
 * @see NetStream#play2()
 *
 */
public class NetStreamPlayTransitions {
  /**
   * Adds the stream to a playlist and begins playback with the first stream. This mode does the same thing as the <code>NetStream.play()</code> method with the <code>reset</code> flag set to <code>false</code>.
   * <p>In this mode, Flash Media Server queues up the stream specified in <code>NetStreamPlayOptions.streamName</code> at the end of the playlist and ignores the <code>NetStreamPlayOptions.oldStreamName</code> parameter.</p>
   * @see #APPEND_AND_WAIT
   * @see NetStream#play()
   * @see NetStream#play2()
   * @see NetStreamPlayOptions#oldStreamName
   * @see NetStreamPlayOptions#streamName
   *
   */
  public static const APPEND:String = "append";
  /**
   * Builds a playlist without starting to play it from the first stream.
   * <p>The <code>APPEND_AND_WAIT</code> transition mode is used with the <code>NetStream.play2()</code> method to build a playlist without immediately starting to play it from the first stream. Use this mode to load each item in the playlist except the last one. When you load the last stream in the playlist, set the transition mode to <code>RESUME</code>. At this point, Flash Player begins to stream and play the playlist.</p>
   * <p>You can use this mode to build a playlist from scratch, or to rebuild a playlist after a lost connection is recovered. For a new playlist, when <code>NetStream.play2()</code> is called with <code>RESUME</code>, Flash Player begins streaming and playing from the first stream, or from the start position specified. To recover from a lost connection, when you call the <code>NetStream.play2()</code> method with <code>RESUME</code>, Flash Player determines where the stream was interrupted and instructs the server to start streaming from that location. The server in turn is able to determine which stream in the playlist corresponds to that location, and starts streaming from that location.</p>
   * <p>This transition mode is in contrast to the <code>APPEND</code> mode, where playback starts immediately with the first stream.</p>
   * @see #APPEND
   * @see #RESUME
   * @see NetStream#play2()
   *
   */
  public static const APPEND_AND_WAIT:String = "appendAndWait";
  /**
   * Clears any previous play calls and plays the specified stream immediately. This mode does the same thing as the <code>NetStream.play()</code> method with the <code>reset</code> flag set to <code>true</code> (the default behavior for <code>NetStream.play()</code>).
   * <p>In this mode, the currently playing stream is flushed and the stream specified in <code>NetStreamPlayOptions.streamName</code> starts to play. The <code>NetStreamPlayOptions.oldStreamName</code> parameter is ignored.</p>
   * @see NetStream#play()
   * @see NetStream#play2()
   * @see NetStreamPlayOptions#oldStreamName
   * @see NetStreamPlayOptions#streamName
   *
   */
  public static const RESET:String = "reset";
  /**
   * Requests data from the new connection starting from the point at which the previous connection ended. The <code>RESUME</code> mode aligns the stream across the two connections so no artifacts or jumps are observed in the video playback. Use this mode when you reconnect a stream that was dropped due to server issues or other connection problems.
   * @see #APPEND_AND_WAIT
   * @see NetStream#play2()
   *
   */
  public static const RESUME:String = "resume";
  /**
   * Stops playing the streams in a playlist. This mode does the same thing as calling <code>NetStream.play(false)</code>. It stops and resets the playlist.
   * @see NetStream#play()
   * @see NetStream#play2()
   *
   */
  public static const STOP:String = "stop";
  /**
   * Replaces a content stream with a different content stream and maintains the rest of the playlist.
   * <p>This mode replaces the stream specified in <code>NetStreamPlayOptions.oldStreamName</code> with the stream specified in <code>NetStreamPlayOptions.streamName</code>. The rest of the playlist is maintained. In this mode, Flash Media Server does not make assumptions about the content of the streams and treats them like different content.</p>
   * <p>If <code>oldStreamName</code> has not yet been sent, the server performs the switch at the stream boundary and sends the bits for <code>streamName</code> from the beginning. If the server has already started sending the bits for <code>oldStreamName</code>, it doesn't switch to <code>streamName</code>, and a <code>NetStream.Play.Failed</code> event is sent.</p>
   * <p>Use this mode if the streams you want to switch are not related to each other and have different content or lengths. For example, use this mode when you want to swap one commercial for another based on user tracking and past commercial-viewing statistics.</p>
   * <p>To switch from one stream to another with the same content, use the <code>SWITCH</code> mode instead.</p>
   * @see #SWITCH
   * @see NetStreamPlayOptions#oldStreamName
   * @see NetStreamPlayOptions#streamName
   *
   */
  public static const SWAP:String = "swap";
  /**
   * Switches from playing one stream to another stream, typically with streams of the same content. Specify the streams to switch in <code>NetStreamPlayOptions.oldStreamName</code> and <code>NetStreamPlayOptions.streamName</code>.
   * <p>Use this mode when you want to switch to a stream that has the same content but is encoded at a different bit rate or resolution. For example, use this mode when the application queues up streams in a playlist or is playing a single stream at a particular bit rate, then calculates that the bandwidth availability or the CPU capability is either lower or higher than the stream requirements. The application can then update the streams with their higher or lower bit rate versions.</p>
   * <p>In this mode, Flash Media Server makes certain assumptions about the relationship between the <code>oldStreamName</code> and <code>streamName</code> streams. The server assumes that the streams contain the same content and have the same keyframe interval but have different resolutions or bit rates.</p>
   * <p>When a playlist has been queued up and <code>oldStreamName</code> is one of the streams in the playlist or is currently playing, <code>oldStreamName</code> is replaced by <code>streamName</code>.</p>
   * <p>If <code>oldStreamName</code> is null or undefined, or if it is not found in the playlist, the server switches to <code>streamName</code> at the next logical point, to ensure a smooth switch.</p>
   * <p>To switch from one stream to another with different content, use the <code>SWAP</code> mode instead.</p>
   * @see #SWAP
   * @see NetStreamPlayOptions#oldStreamName
   * @see NetStreamPlayOptions#streamName
   *
   */
  public static const SWITCH:String = "switch";
}
}
