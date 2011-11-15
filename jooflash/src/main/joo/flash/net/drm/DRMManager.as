package flash.net.drm {
import flash.events.EventDispatcher;
import flash.utils.ByteArray;

/**
 * The DRMManager dispatches a DRMAuthenticationCompleteEvent object when the user is authenticated by the media rights server after a call to the <code>authenticate()</code> method.
 * @eventType flash.events.DRMAuthenticationCompleteEvent.AUTHENTICATION_COMPLETE
 */
[Event(name="authenticationComplete", type="flash.events.DRMAuthenticationCompleteEvent")]
/**
 * The DRMManager dispatches a DRMAuthenticationErrorEvent object when the user is not authenticated by the media rights server after a call to the <code>authenticate()</code> method.
 * @eventType flash.events.DRMAuthenticationErrorEvent.AUTHENTICATION_ERROR
 */
[Event(name="authenticationError", type="flash.events.DRMAuthenticationErrorEvent")]
/**
 * The DRMManager dispatches a DRMErrorEvent object when a requested voucher cannot be obtained from the media rights server.
 * <p><b>Note:</b> When an attempt to load a voucher from the local voucher cache (using the <code>localOnly</code> as the <code>source</code> parameter) fails, a DRMErrorEvent object is not dispatched. Instead, a DRMStatusEvent object with a <code>voucher</code> property set to <code>null</code> is dispatched.</p>
 * @eventType flash.events.DRMErrorEvent.DRM_ERROR
 */
[Event(name="drmError", type="flash.events.DRMErrorEvent")]
/**
 * The DRMManager dispatches a DRMStatusEvent object when a requested voucher is obtained from the media rights server.
 * @eventType flash.events.DRMStatusEvent.DRM_STATUS
 */
[Event(name="drmStatus", type="flash.events.DRMStatusEvent")]

/**
 * The DRMManager manages the retrieval and storage of the vouchers needed to view DRM-protected content. With the static <code>DRMManager.getDRMManager()</code> method, you can access the existing DRMManager object to perform the following DRM-management tasks:
 * <ul>
 * <li>Preload vouchers from a media rights server, using a DRMContentData object.</li>
 * <li>Query the local cache for an individual voucher, using a DRMContentData object.</li>
 * <li>Reset all vouchers (AIR only)</li></ul>
 * <p>No method is provided for enumerating all the vouchers in the local cache.</p>
 * <p>Do not create an instance of the DRMManager class. Use the static <code>DRMManager.getDRMManager()</code> to access the existing DRMManager object.</p>
 * <p><i>AIR profile support:</i> This feature is supported on all desktop operating systems and AIR for TV devices, but it is not supported on mobile devices. You can test for support at run time using the <code>DRMManager.isSupported</code> property. See <a href="http://help.adobe.com/en_US/air/build/WS144092a96ffef7cc16ddeea2126bb46b82f-8000.html">AIR Profile Support</a> for more information regarding API support across multiple profiles.</p>
 * @see flash.net.NetStream
 * @see DRMVoucher
 * @see DRMContentData
 *
 */
public class DRMManager extends EventDispatcher {
  /**
   * The <code>isSupported</code> property is set to <code>true</code> if the DRMManager class is supported on the current platform, otherwise it is set to <code>false</code>.
   */
  public static function get isSupported():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Authenticates a user.
   * <p>Listen for the <code>authenticationComplete</code> and <code>authenticationError</code> events to determine the outcome of the authentication attempt. Multiple <code>authenticate()</code> calls are queued. The AuthenticationCompleteEvent object dispatched for the <code>authenticationComplete</code> event contains contains an authentication token that your application can save.</p>
   * <p>You can use a saved authentication token, or a token downloaded by another means, to establish an authenticated session with the media rights server in the future. To establish a session using a token, call the DRMManager <code>setAuthenticationToken()</code> method. The properties of the token, such as expiration date, are determined by the settings of the server that generates the token.</p>
   * <p><b>Important (AIR only):</b> The <code>authenticate()</code> method will not succeed when a user's Internet connection passes through a proxy server requiring authentication. Although such users are not able to preload a DRM voucher that requires authentication, your application can obtain the voucher by beginning playback and using the NetStream <code>setAuthenticationCredentials()</code> method to log the user into both the proxy and the media rights servers. Once the voucher has been obtained, the user can view the content offline (as long as the license represented by the voucher allows offline playback).</p>
   * @param serverURL The URL of a media rights server that can provide a voucher for viewing protected content
   * @param domain A domain on the server (not a network or Internet domain name)
   * @param username The user name
   * @param password The user password
   *
   * @see flash.net.NetStream#setAuthenticationCredentials()
   * @see #setAuthenticationToken()
   *
   */
  public function authenticate(serverURL:String, domain:String, username:String, password:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns an instance of the singleton DRMManager object.
   * <p>One DRMManager instance exists for each security domain.</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/net/drm/DRMManager.html">DRMManager</a></code>
   *
   * @see flash.system.SecurityDomain
   *
   */
  public static function getDRMManager():DRMManager {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets a preview voucher from the license server, which you can use to let a user verify that they can play content on particular computer. This capability lets users verify that they can play content on their computer before buying and downloading the content. It is useful when the user's computer doesn't have the necessary output protection capabilities or necessary software to play content.
   * <p>Like <code>loadVoucher()</code>, this method is an asynchronous call and issues a DRMStatusEvent on completion or a DRMErrorEvent in case of errors.</p>
   * @param contentData <code>contentData:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/net/drm/DRMContentData.html">DRMContentData</a></code>
   *
   */
  public function loadPreviewVoucher(contentData:DRMContentData):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Loads a voucher from a media rights server or the local voucher cache.
   * <p>The voucher is loaded according to the <code>setting</code> parameter:</p>
   * <ul>
   * <li>LoadVoucherSetting.FORCE_REFRESH: The voucher is always downloaded from the media rights server.</li>
   * <li>LoadVoucherSetting.LOCAL_ONLY: The voucher is only loaded from the local cache.</li>
   * <li>LoadVoucherSetting.ALLOW_SERVER: The voucher is loaded from the local cache, if possible, but otherwise is downloaded from the server.</li></ul>
   * <p>The LoadVoucherSetting class defines string constants to use as values for the <code>setting</code> parameter.</p>
   * <p>When the voucher is successfully loaded, the DRMManager dispatches a DRM status event. Your application can begin playback as soon as the voucher is loaded. The loaded voucher is available in the <code>voucher</code> property of the dispatched DRMStatusEvent object. You can use this voucher object to display the associated media rights information to the user.</p>
   * <p>If a voucher cannot be loaded from the media rights server, a DRM error event is dispatched. The <code>errorID</code> property of the dispatched DRMErrorEvent object indicates the reason for the failure. Common causes of failure include attempting to connect to the media rights server when the user is offline and attempting to load a voucher when the user is not logged in. Your application can respond to these errors and take corrective action. For example, if authentication credentials are required to download the voucher, you can prompt the user for their account user name and password, call the DRMManager <code>authenticate()</code> method, and then attempt to load the voucher again.</p>
   * <p>If a voucher cannot be obtained from the local cache and the <code>localOnly</code> setting is used, a DRMErrorEvent is not dispatched. Instead, a DRM status event is dispatched. The <code>detail</code> property of this DRMStatusEvent object is still <code>DRM.voucherObtained</code>, but the <code>voucher</code> property is <code>null</code>.</p>
   * @param contentData The DRMContentData object from a DRM-protected media file
   * @param setting Determines whether the voucher is retrieved from the local cache or the media rights server
   *
   */
  public function loadVoucher(contentData:DRMContentData, setting:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the authentication token to use for communication with the specified server and domain.
   * <p>Authentication tokens are available from the <code>token</code> property of the DRMAuthenticationCompleteEvent object dispatched after a successful call to the <code>authenticate()</code> method. The token is cached automatically for the session, but you can use the <code>setAuthenticationToken()</code> method to manage tokens directly.</p>
   * <p>Setting a token overwrites any existing cached token for the server and domain. Set the <code>token</code> parameter to <code>null</code> to clear the cached token.</p>
   * @param serverUrl The URL of the media rights server
   * @param domain The domain on the media rights server
   * @param token The authentication token
   *
   */
  public function setAuthenticationToken(serverUrl:String, domain:String, token:ByteArray):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
