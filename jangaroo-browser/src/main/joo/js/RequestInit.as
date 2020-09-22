package js {

/**
 * An object containing any custom settings that you want to apply to the request.
 */
[Native("RequestInit")]
public class RequestInit {

  /**
   * The request method, e.g., GET, POST. Note that the Origin header is not set on Fetch requests with a method of HEAD
   * or GET.
   */
  public native function get method():String;

  /**
   * @private
   */
  public native function set method(method: String): void;

  /**
   * Any headers you want to add to your request, contained within a Headers object or an object literal with ByteString
   * values. Note that some names are forbidden.
   *
   * @return {@link Headers} or {@link Object} or two dimensional string Array.
   */
  public native function get headers(): *;

  /**
   * @private
   */
  public native function set headers(headers: *): void;

  /**
   * Any body that you want to add to your request: this can be a Blob, BufferSource, FormData, URLSearchParams,
   * String, or ReadableStream object. Note that a request using the GET or HEAD method cannot have a body.
   */
  public native function get body(): *;

  /**
   * @private
   */
  public native function set body(body: *): void;

  /**
   * The mode you want to use for the request, e.g., cors, no-cors, or same-origin.
   */
  public native function get mode(): String;

  /**
   * @private
   */
  public native function set mode(mode: String): void;

  /**
   * The request credentials you want to use for the request: omit, same-origin, or include. To automatically send
   * cookies for the current domain, this option must be provided. Starting with Chrome 50, this property also takes a
   * FederatedCredential instance or a PasswordCredential instance.
   */
  public native function get credentials(): String;

  /**
   * @private
   */
  public native function set credentials(credentials: String): void;

  /**
   * The cache mode you want to use for the request.
   */
  public native function get cache(): String;

  /**
   * @private
   */
  public native function set cache(cache: String): void;

  /**
   * The redirect mode to use: follow (automatically follow redirects), error (abort with an error if a redirect
   * occurs), or manual (handle redirects manually). In Chrome the default is follow (before Chrome 47 it defaulted to
   * manual).
   */
  public native function get redirect(): String;

  /**
   * @private
   */
  public native function set redirect(redirect: String): void;

  /**
   * A String specifying the referrer of the request. This can be a same-origin URL, about:client, or an empty
   * string.
   */
  public native function get referrer(): String;

  /**
   * @private
   */
  public native function set referrer(referrer: String): void;

  /**
   * Specifies the referrer policy to use for the request. May be one of no-referrer, no-referrer-when-downgrade,
   * same-origin, origin, strict-origin, origin-when-cross-origin, strict-origin-when-cross-origin, or unsafe-url.
   */
  public native function get referrerPolicy(): String;

  /**
   * @private
   */
  public native function set referrerPolicy(referrerPolicy: String): void;

  /**
   * Contains the subresource integrity value of the request (e.g.,
   * sha256-BpfBw7ivV8q2jLiT13fxDYAe2tJllusRSZ273h2nFSE=).
   */
  public native function get integrity(): String;

  /**
   * @private
   */
  public native function set integrity(integrity: String): void;

  /**
   * The keepalive option can be used to allow the request to outlive the page. Fetch with the keepalive flag is a
   * replacement for the Navigator.sendBeacon() API.
   */
  public native function get keepalive(): Boolean;

  /**
   * @private
   */
  public native function set keepalive(keepalive: Boolean): void;

  /**
   * An AbortSignal object instance; allows you to communicate with a fetch request and abort it if desired via an
   * AbortController.
   */
  public native function get signal(): AbortSignal;

  /**
   * @private
   */
  public native function set signal(signal: AbortSignal): void;
}
}
