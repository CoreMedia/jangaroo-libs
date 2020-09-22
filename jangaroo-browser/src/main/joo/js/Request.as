package js {

/**
 * The Request interface of the Fetch API represents a resource request.
 *
 * You can create a new Request object using the Request() constructor, but you are more likely to encounter a Request
 * object being returned as the result of another API operation, such as a service worker FetchEvent.request.
 */
[Native("Request")]
public class Request {

  /**
   * Creates a new Request object.
   *
   * @param input Defines the resource that you wish to fetch. This can either be:
   *              - A String containing the direct URL of the resource you want to fetch.
   *              - A <code>Request</code> object, effectively creating a copy. Note the following behavioural updates
   *                to retain security while making the constructor less likely to throw exceptions:
   *                - If this object exists on another origin to the constructor call, the Request.referrer is stripped
   *                  out.
   *                - If this object has a Request.mode of navigate, the mode value is converted to same-origin.
   * @param init An options object containing any custom settings that you want to apply to the request.
   */
  public native function Request(input: *, init: RequestInit = undefined);

  /**
   * Returns the cache mode associated with request, which is a string indicating how the request will interact with the
   * browser's cache when fetching.
   */
  public native function get cache(): String;

  /**
   * Returns the credentials mode associated with request, which is a string indicating whether credentials will be sent
   * with the request always, never, or only when sent to a same-origin URL.
   */
  public native function get credentials(): String;

  /**
   * Returns the kind of resource requested by request, e.g., "document" or "script".
   */
  public native function get destination(): String;

  /**
   * Returns a Headers object consisting of the headers associated with request. Note that headers added in the network
   * layer by the user agent will not be accounted for in this object, e.g., the "Host" header.
   */
  public native function get headers(): Headers;

  /**
   * Returns request's subresource integrity metadata, which is a cryptographic hash of the resource being fetched. Its
   * value consists of multiple hashes separated by whitespace. [SRI]
   */
  public native function get integrity(): String;

  /**
   * Returns a boolean indicating whether or not request is for a history navigation (a.k.a. back-foward navigation).
   */
  public native function get isHistoryNavigation(): Boolean;

  /**
   * Returns a boolean indicating whether or not request is for a reload navigation.
   */
  public native function get isReloadNavigation(): Boolean;

  /**
   * Returns a boolean indicating whether or not request can outlive the global in which it was created.
   */
  public native function get keepalive(): Boolean;

  /**
   * Returns request's HTTP method, which is "GET" by default.
   */
  public native function get method(): String;

  /**
   * Returns the mode associated with request, which is a string indicating whether the request will use CORS, or will
   * be restricted to same-origin URLs.
   */
  public native function get mode(): String;

  /**
   * Returns the redirect mode associated with request, which is a string indicating how redirects for the request will
   * be handled during fetching. A request will follow redirects by default.
   */
  public native function get redirect(): String;

  /**
   * Returns the referrer of request. Its value can be a same-origin URL if explicitly set in init, the empty string to
   * indicate no referrer, and "about:client" when defaulting to the global's default. This is used during fetching to
   * determine the value of the `Referer` header of the request being made.
   */
  public native function get referrer(): String;

  /**
   * Returns the referrer policy associated with request. This is used during fetching to compute the value of the
   * request's referrer.
   */
  public native function get referrerPolicy(): String;

  /**
   * Returns the signal associated with request, which is an AbortSignal object indicating whether or not request has
   * been aborted, and its abort event handler.
   */
  public native function get signal(): AbortSignal;

  /**
   * Returns the URL of request as a string.
   */
  public native function get url(): String;

  public native function clone(): Request;
}
}
