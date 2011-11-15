package flash.net.drm {
import flash.utils.ByteArray;

/**
 * The DRMContentData class provides the information required to obtain the voucher necessary to view DRM-protected content.
 * <p>(AIR only) A DRMContentData object can be obtained from a NetStream instance by calling the NetStream <code>preloadEmbeddedContent()</code> method and providing an <code>onDRMContentData</code> callback function on the NetStream client object. Use the DRMContentData object passed to the callback function as a parameter for the DRMManager <code>loadVoucher()</code> method.</p>
 * <p>When you package content with Flash Access, you have the option of saving the content's metadata as a separate file. To create a new DRMContentData object, get this metadata with a URLLoader object and pass it to the DRMContentData constructor.</p>
 * @see flash.net.NetStream
 * @see DRMManager
 * @see DRMVoucher
 *
 */
public class DRMContentData {
  /**
   * The type of authentication required to obtain a voucher for the associated content.
   * <p>The supported types of authentication are:</p>
   * <ul>
   * <li>AuthenticationMethod.ANONYMOUS — anyone can obtain a voucher.</li>
   * <li>AuthenticationMethod.USERNAME_AND_PASSWORD — the user must supply a valid username and password of an account that is authorized to view the associated content.</li></ul>
   * <p>The AuthenticationMethod class provides string constants to use with the <code>authenticationMethod</code> property.</p>
   */
  public function get authenticationMethod():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The content domain of the media rights server to which the user must be authenticated to obtain the voucher for the associated content.
   * <p>If authentication is to the <i>default</i> domain or no authentication is required, the value of <code>domainName</code> is <code>null</code>.</p>
   * <p><b>Note:</b> The domain returned by this property has nothing to do with network or Internet domain names. In this case, a domain is a group of content or user accounts. For example, a single server could support several domains, each with its own set of content channels and subscribers.</p>
   */
  public function get domain():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A unique id identifying the content associated with this metadata on the media rights server.
   */
  public function get licenseID():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The URL of a media rights server that provides the voucher that is required to view the associated content.
   */
  public function get serverURL():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor.
   * @param rawData <code>rawData:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/utils/ByteArray.html">ByteArray</a></code> (default = <code>null</code>)
   *
   */
  public function DRMContentData(rawData:ByteArray = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Retrieves an array of VoucherAccessInfo objects. The array contains at least 1 VoucherAccessInfo object, the default.
   * <p>Each VoucherAccessInfo object represents a policy, which contains the requirements for retrieving a voucher from the media rights server. For example, if the server requires the user to authenticate, the VoucherAccessInfo object contains the authentication method. If the server requires the computer to be registered with a Realm server, the object contains the URL to the Realm server.</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Vector.html">Vector</a>.<<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/net/drm/VoucherAccessInfo.html">VoucherAccessInfo</a>></code>
   *
   */
  public function getVoucherAccessInfo():Vector.<VoucherAccessInfo> {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
