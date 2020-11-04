package js {

/**
 * he URL interface is used to parse, construct, normalize, and encode URLs. It works by providing properties which
 * allow you to easily read and modify the components of a URL. You normally create a new URL object by specifying the
 * URL as a string when calling its constructor, or by providing a relative URL and a base URL. You can then easily read
 * the parsed components of the URL or make changes to the URL.
 */
[Native("URL")]
public class URL {

  /**
   * Creates and returns a URL object referencing the URL specified using an absolute URL string, or a relative URL
   * string and a base URL string.
   *
   * @param url A USVString representing an absolute or relative URL. If url is a relative URL, base is required, and
   *            will be used as the base URL. If url is an absolute URL, a given base will be ignored.
   * @param base A USVString representing the base URL to use in cases where url is a relative URL. If not specified, it
   *             defaults to undefined.
   * @throws TypeError if url (in the case of absolute URLs) or base + url (in the case of relative URLs) is not a valid
   *                   URL.
   */
  public native function URL(url: String, base: String = undefined);

  /**
   * A USVString containing a '#' followed by the fragment identifier of the URL.
   */
  public native function get hash(): String;

  /**
   * @private
   */
  public native function set hash(hash: String): void;

  /**
   * A USVString containing the domain (that is the hostname) followed by (if a port was specified) a ':' and the port
   * of the URL.
   */
  public native function get host(): String;

  /**
   * @private
   */
  public native function set host(host: String): void;

  /**
   * A USVString containing the domain of the URL.
   */
  public native function get hostname(): String;

  /**
   * @private
   */
  public native function set hostname(hostname: String): void;

  /**
   * A stringifier that returns a USVString containing the whole URL.
   */
  public native function get href(): String;

  /**
   * @private
   */
  public native function set href(href: String): void;

  /**
   * Returns a USVString containing the origin of the URL, that is its scheme, its domain and its port.
   */
  public native function get origin(): String;

  /**
   * A USVString containing the password specified before the domain name.
   */
  public native function get password(): String;

  /**
   * @private
   */
  public native function set password(password: String): void;

  /**
   * A USVString containing an initial '/' followed by the path of the URL.
   */
  public native function get pathname(): String;

  /**
   * @private
   */
  public native function set pathname(pathname: String): void;

  /**
   * A USVString containing the port number of the URL.
   */
  public native function get port(): String;

  /**
   * @private
   */
  public native function set port(port: String): void;

  /**
   * A USVString containing the protocol scheme of the URL, including the final ':'.
   */
  public native function get protocol(): String;

  /**
   * @private
   */
  public native function set protocol(protocol: String): void;

  /**
   * A USVString indicating the URL's parameter string; if any parameters are provided, this string includes all of
   * them, beginning with the leading ? character.
   */
  public native function get search(): String;

  /**
   * @private
   */
  public native function set search(search: String): void;

  /**
   * A URLSearchParams object which can be used to access the individual query parameters found in search.
   */
  public native function get searchParams(): URLSearchParams;

  /**
   * A USVString containing the username specified before the domain name.
   */
  public native function get username(): String;

  /**
   * @private
   */
  public native function set username(username: String): void;

  /**
   * Returns a USVString containing the whole URL. It is a synonym for URL.href, though it can't be used to modify the
   * value.
   */
  public native function toString(): String;

  /**
   * Returns a USVString containing the whole URL. It returns the same string as the href property.
   */
  public native function toJSON(): String;

  /*
  These functions only make sense in a Browser environment as corresponding types are required.

  public native static function createObjectURL(): String;

  public native static function revokeObjectURL(): void;
   */
}
}
