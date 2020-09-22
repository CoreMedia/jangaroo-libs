package js {

/**
 * The Response interface of the Fetch API represents the response to a request.
 *
 * You can create a new Response object using the Response.Response() constructor, but you are more likely to encounter
 * a Response object being returned as the result of another API operation—for example, a service worker
 * Fetchevent.respondWith, or a simple WindowOrWorkerGlobalScope.fetch().
 */
[Native("Response")]
public class Response implements Body {

  /**
   * Creates a new Response object.
   *
   * @param body An object defining a body for the response. This can be null (which is the default value), or
   *             <ul>
   *               <li><code>Blob</code></li>
   *               <li>BufferSource</li>
   *               <li><code>FormData</code></li>
   *               <li>URLSearchParams</li>
   *               <li>ReadableStream<Uint8Array></li>
   *               <li>String</li>
   *             </ul>
   * @param init An options object containing any custom settings that you want to apply to the response, or an empty
   *             object (which is the default value).
   *
   * @see Blob
   * @see FormData
   */
  public native function Response(body: * = undefined, init: ResponseInit = undefined);

  /**
   * Returns a new Response object associated with a network error.
   *
   * @return a new Response object associated with a network error.
   */
  public native function error(): Response;

  /**
   * Creates a new response with a different URL.
   *
   * @param url The URL that the new response is to originate from.
   * @param status An optional status code for the response (e.g., 302.)
   * @return a new response with a different URL.
   */
  public native function redirect(url: String, status: Number = undefined): Response;

  /**
   * The Headers object associated with the response.
   */
  public native function get headers(): Headers;

  /**
   * A boolean indicating whether the response was successful (status in the range 200–299) or not.
   */
  public native function get ok(): Boolean;

  /**
   * Indicates whether or not the response is the result of a redirect (that is, its URL list has more than one entry).
   */
  public native function get redirected(): Boolean;

  /**
   * The status code of the response. (This will be 200 for a success).
   */
  public native function get status(): Number;

  /**
   * The status message corresponding to the status code. (e.g., OK for 200).
   */
  public native function get statusText(): String;

  /**
   * A <code>Promise</code> resolving to a <code>Headers</code> object, associated with the response with
   * <code>#headers</code> for values of the HTTP Trailer header.
   *
   * @see #headers
   * @see Headers
   * @see Promise
   */
  public native function get trailer(): Promise;

  /**
   * The type of the response (e.g., basic, cors).
   */
  public native function get type(): String;

  /**
   * The URL of the response.
   */
  public native function get url(): String;

  /**
   * Creates a clone of a Response object.
   * @return a clone of a Response object.
   */
  public native function clone(): Response;

  /**
   * A simple getter exposing a ReadableStream of the body contents.
   */
  public native function get body():*;

  /**
   * Stores a Boolean that declares whether the body has been used in a response yet.
   */
  public native function get bodyUsed():Boolean;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with an
   * <code>ArrayBuffer</code>.
   *
   * @see ArrayBuffer
   */
  public native function get arrayBuffer():Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with a <code>Blob</code>.
   *
   * @see Blob
   */
  public native function get blob():Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with a <code>FormData</code>
   * object.
   *
   * @see FormData
   */
  public native function get formData():Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with the result of parsing
   * the body text as JSON, which is a JavaScript value of datatype object, string, etc.
   */
  public native function get json():Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with a String.
   */
  public native function get text():Promise;
}
}
