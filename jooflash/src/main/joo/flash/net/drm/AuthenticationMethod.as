package flash.net.drm {


/**
 * The AuthenticationMethod class provides string constants enumerating the different types of authentication used by the <code>authenticationMethod</code> property of the DRMContentData class.
 * @see DRMContentData
 *
 */
public final class AuthenticationMethod {
  /**
   * Indicates that no authentication is required.
   */
  public static const ANONYMOUS:String = "anonymous";
  /**
   * Indicates that a valid user name and password are required.
   */
  public static const USERNAME_AND_PASSWORD:String = "usernameAndPassword";
}
}
