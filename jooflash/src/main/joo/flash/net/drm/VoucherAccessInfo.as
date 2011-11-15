package flash.net.drm {


/**
 * A VoucherAccessInfo object presents the information that is required to successfully retrieve and consume a voucher, such as the type of authentication and the content domain of the media rights server.
 */
public final class VoucherAccessInfo {
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
   * A user-friendly string that you can use to refer to the specified VoucherAccessInfo object in the user interface.
   * <p>If the metadata file for a piece of media content has multiple vouchers, each with its own VoucherAccessInfo object, the user might need to decide which voucher to authenticate to. For example, you might have a subscription-level voucher with high privileges for viewing content, as well as a basic-level voucher with lower privileges. To distinguish between these two vouchers, use the descriptive string in the <code>displayName</code> property. The string is set by the media packager tool (the tool that packages and encrypts media in preparation for distribution with a media rights server, such as Flash Access).</p>
   * <p>For applications that are localized, you can use this property as an identifier. The application can detect the locale and localize the strings accordingly.</p>
   */
  public function get displayName():String {
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
}
}
