package flash.net.drm {


/**
 * The DRMPlaybackTimeWindow class represents the period of time during which a DRM voucher is valid.
 * <p>The <code>startDate</code> and <code>endDate</code> properties are <code>null</code> until the first time that the user views the content.</p>
 * @see DRMVoucher
 *
 */
public class DRMPlaybackTimeWindow {
  /**
   * The end date for the period of time during which a DRM voucher is valid (the playback window).
   * <p>The <code>endDate</code> is <code>null</code> if the playback window has not started.</p>
   */
  public function get endDate():Date {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The period of time during which a DRM voucher is valid (the playback window), in seconds.
   */
  public function get period():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The start date for the period of time during which a DRM voucher is valid (the playback window).
   * <p>The <code>startDate</code> is <code>null</code> if the playback window has not started.</p>
   */
  public function get startDate():Date {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
