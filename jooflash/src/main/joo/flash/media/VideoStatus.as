package flash.media {


/**
 * This class defines an enumeration that describes possible levels of video decoding.
 */
public final class VideoStatus {
  /**
   * Indicates hardware-accelerated (GPU) video decoding.
   */
  public static const ACCELERATED:String = "accelerated";
  /**
   * Indicates software video decoding.
   */
  public static const SOFTWARE:String = "software";
  /**
   * Video decoding is not supported.
   */
  public static const UNAVAILABLE:String = "unavailable";
}
}
