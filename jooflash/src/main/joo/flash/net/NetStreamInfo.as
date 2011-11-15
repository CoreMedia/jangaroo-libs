package flash.net {


/**
 * The NetStreamInfo class specifies the various Quality of Service (QOS) statistics related to a NetStream object and the underlying streaming buffer for audio, video, and data. A NetStreamInfo object is returned in response to the <code>NetStream.info</code> call, which takes a snapshot of the current QOS state and provides the QOS statistics through the NetStreamInfo properties.
 */
public final class NetStreamInfo {
  /**
   * Provides the NetStream audio buffer size in bytes. It specifies the buffer size for audio data in streaming media, both live and recorded. This property is like <code>Netstream.bytesLoaded</code>, which is used in progressive downloads.
   */
  public function get audioBufferByteLength():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Provides NetStream audio buffer size in seconds. This property extends the <code>NetStream.bufferLength</code> property and provides the buffer length in time specifically for audio data.
   */
  public function get audioBufferLength():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the total number of audio bytes that have arrived in the queue, regardless of how many have been played or flushed. You can use this value to calculate the incoming audio data rate, using the metric of your choice, by creating a timer and calculating the difference in values in successive timer calls. Alternatively, use <code>audioBytesPerSecond</code>.
   * @see #audioBytesPerSecond
   *
   */
  public function get audioByteCount():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the NetStream audio buffer is filled in bytes per second. The value is calculated as a smooth average for the audio data received in the last second.
   */
  public function get audioBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the audio loss for the NetStream session. This value returns a valid value only for RTMFP streams and would return 0 for RTMP streams. Loss rate is defined as the ratio of lost messages to total messages.
   */
  public function get audioLossRate():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the total number of bytes that have arrived into the queue, regardless of how many have been played or flushed. You can use this value to calculate the incoming data rate, using the metric of your choice, by creating a timer and calculating the difference in values in successive timer calls. Alternatively, use <code>currentBytesPerSecond</code>.
   * @see #currentBytesPerSecond
   *
   */
  public function get byteCount():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the NetStream buffer is filled in bytes per second. The value is calculated as a smooth average for the total data received in the last second.
   */
  public function get currentBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Provides the NetStream data buffer size in bytes. It specifies the buffer size for data messages in streaming media, both live and recorded. This property is like <code>Netstream.bytesLoaded</code>, which is used in progressive downloads.
   */
  public function get dataBufferByteLength():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Provides NetStream data buffer size in seconds. This property extends the <code>NetStream.bufferLength</code> property and provides the buffer length in time specifically for data messages.
   */
  public function get dataBufferLength():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the total number of bytes of data messages that have arrived in the queue, regardless of how many have been played or flushed. You can use this value to calculate the incoming data-messages rate, using the metric of your choice, by creating a timer and calculating the difference in values in successive timer calls. Alternatively, use <code>dataBytesPerSecond</code>.
   * @see #dataBytesPerSecond
   *
   */
  public function get dataByteCount():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the NetStream data buffer is filled in bytes per second. The value is calculated as a smooth average for the data messages received in the last second.
   */
  public function get dataBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the number of video frames dropped in the current NetStream playback session.
   * <p>In recorded streaming or progressive download, if the video is a high-quality or high-resolution, high-bitrate video, the decoder can lag behind in decoding the required number of frames per second if it does not have adequate system CPU resources. In live streaming, the buffer drops video frames if the latency is too high. This property specifies the number of frames that were dropped and not presented normally.</p>
   */
  public function get droppedFrames():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the maximum rate at which the NetStream buffer is filled in bytes per second. This value provides information about the capacity of the client network based on the last messages received by the <code>NetStream</code> object. Depending on the size of the buffer specified in <code>NetStream.bufferTime</code> and the bandwidth available on the client, Flash Media Server fills the buffer in bursts. This property provides the maximum rate at which the client buffer is filled.
   */
  public function get maxBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the stream playback rate in bytes per second. The playback buffer can contain content of various playlists. This property provides the playback rate that closely matches the bit rate of the currently playing stream.
   */
  public function get playbackBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The smoothed round trip time (SRTT) for the NetStream session, in milliseconds. This property contains a valid value only for RTMFP streams. For RTMP streams, the value is 0.
   * @see NetGroup
   *
   */
  public function get SRTT():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Provides the NetStream video buffer size in bytes. It specifies the buffer size for video data in streaming media, both live and recorded. This property is like <code>Netstream.bytesLoaded</code>, which is used in progressive downloads.
   */
  public function get videoBufferByteLength():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Provides NetStream video buffer size in seconds. This property extends the <code>NetStream.bufferLength</code> property and provides the buffer length in time specifically for video data.
   */
  public function get videoBufferLength():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the total number of video bytes that have arrived in the queue, regardless of how many have been played or flushed. You can use this value to calculate the incoming video data rate, using the metric of your choice, by creating a timer and calculating the difference in values in successive timer calls. Alternatively, use <code>videoBytesPerSecond</code>,
   * @see #videoBytesPerSecond
   *
   */
  public function get videoByteCount():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the NetStream video buffer is filled in bytes per second. The value is calculated as a smooth average for the video data received in the last second.
   */
  public function get videoBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Provides the NetStream video loss rate (ratio of lost messages to total messages).
   * <p>When the message size is smaller than the maximum transmission unit (MTU), this value corresponds to the network packet loss rate.</p>
   * <p>This property returns a valid value only for RTMFP streams. For RTMP streams, it returns a value of zero. For more information, see the <a href="http://www.adobe.com/go/learn_fms_docs_en">Flash Media Server documentation</a>.</p>
   */
  public function get videoLossRate():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a text value listing the properties of the NetStreamInfo object.
   * @return A string containing the values of the properties of the NetStreamInfo object
   *
   */
  public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
