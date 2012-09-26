package flash.events {
import flash.net.drm.DRMContentData;
import flash.net.drm.DRMVoucher;

/**
 * A NetStream object dispatches a DRMStatusEvent object when the content protected using digital rights management (DRM) begins playing successfully (when the voucher is verified, and when the user is authenticated and authorized to view the content). The DRMStatusEvent object contains information related to the voucher, such as whether the content can be made available offline or when the voucher will expire and the content can no longer be viewed. The application can use this data to inform the user of the status of her policy and permissions.
 * @see flash.net.NetStream
 * @see #DRM_STATUS
 * @see flash.net.drm.DRMManager
 * @see flash.net.drm.DRMVoucher
 *
 */
public class DRMStatusEvent extends Event {
  /**
   * A DRMContentData object containing the information necessary to obtain a voucher for viewing the DRM-protected content.
   */
  public function get contentData():DRMContentData {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set contentData(value:DRMContentData):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the voucher is cached in the local voucher store.
   */
  public function get isLocal():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set isLocal(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A DRMVoucher object for the content.
   */
  public function get voucher():DRMVoucher {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set voucher(value:DRMVoucher):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an Event object that contains specific information about DRM status events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Event listeners can access this information through the inherited <code>type</code> property. There is only one type of DRMAuthenticate event: <code>DRMAuthenticateEvent.DRM_AUTHENTICATE</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param inMetadata The custom object that contains custom DRM properties.
   * @param inVoucher The context of the Event.
   * @param inLocal Indicates if content can be viewed offline.
   *
   */
  public function DRMStatusEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, inMetadata:DRMContentData = null, inVoucher:DRMVoucher = null, inLocal:Boolean = false) {
    super(type, bubbles, cancelable);
  }

  /**
   * The <code>DRMStatusEvent.DRM_STATUS</code> constant defines the value of the <code>type</code> property of a <code>drmStatus</code> event object.
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
   * <td><code>detail</code></td>
   * <td>A string explaining the context of the status event.</td></tr>
   * <tr>
   * <td><code>isAnonymous</code></td>
   * <td>Indicates whether the content protected with DRM encryption is available without requiring a user to provide authentication credentials.</td></tr>
   * <tr>
   * <td><code>isAvailableOffline</code></td>
   * <td>Indicates whether the content protected with DRM encryption is available offline.</td></tr>
   * <tr>
   * <td><code>offlineLeasePeriod</code></td>
   * <td>The remaining number of days that content can be viewed offline.</td></tr>
   * <tr>
   * <td><code>policies</code></td>
   * <td>A custom object of the DRM status event.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The NetStream object.</td></tr>
   * <tr>
   * <td><code>voucherEndDate</code></td>
   * <td>The absolute date on which the voucher expires and the content can no longer be viewed by users</td></tr>
   * <tr>
   * <td><code>contentData</code></td>
   * <td>The DRMContentData for the content</td></tr>
   * <tr>
   * <td><code>voucher</code></td>
   * <td>The DRMVoucher object for the content.</td></tr>
   * <tr>
   * <td><code>isLocal</code></td>
   * <td>Indicates whether the content is stored on the local file system</td></tr></table>
   */
  public static const DRM_STATUS:String = "drmStatus";
}
}
