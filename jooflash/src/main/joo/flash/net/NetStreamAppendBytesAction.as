package flash.net {


/**
 * The NetStreamAppendBytesAction class is an enumeration of the constants you can pass to the <code>NetStream.appendBytesAction()</code> method.
 * <p>Two of the constants indicate a timescale discontinuity. Every FLV tag has a timestamp indicating its position in the timescale. Timestamps are used to synchronize video, audio, and script data playback. Timestamps for FLV tags of the same type (video, audio, script data) must not decrease as the FLV progresses.</p>
 * @see NetStream#appendBytesAction()
 * @see NetStream#appendBytes()
 *
 */
public final class NetStreamAppendBytesAction {
  /**
   * Indicates that the media stream data is complete. For some codecs, such as H.264, the byte parser waits for the buffer to fill to a certain point before beginning playback. Pass <code>END_SEQUENCE</code> to tell the byte parser to begin playback immediately.
   */
  public static const END_SEQUENCE:String = "endSequence";
  /**
   * Indicates a timescale discontinuity. Flushes the FIFO (composed of an incomplete FLV tag) and resets the timescale to begin at the timestamp of the next appended message. On the next call to <code>appendBytes()</code>, the byte parser expects a file header and starts at the beginning of a file.
   */
  public static const RESET_BEGIN:String = "resetBegin";
  /**
   * Indicates a timescale discontinuity. Flushes the FIFO (composed of an incomplete FLV tag) and resets the timescale to begin at the timestamp of the next appended message. On the next call to <code>appendBytes()</code>, the byte parser expects the beginning of an FLV tag, as though you’ve just done a seek to a location in the same FLV, on a tag boundary.
   */
  public static const RESET_SEEK:String = "resetSeek";
}
}
