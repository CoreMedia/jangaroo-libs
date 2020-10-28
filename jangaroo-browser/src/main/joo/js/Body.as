package js {

/**
 * The <code>Body</code> mixin of the <code>fetch</code> API represents the body of the response/request, allowing you
 * to declare what its content type is and how it should be handled.
 * <p>
 * <code>Body</code> is implemented by both <code>Request</code> and <code>Response</code>. This provides these
 * objects with an associated body (a stream), a used flag (initially unset), and a MIME type (initially the empty byte
 * sequence).
 * </p>
 *
 * @see js.fetch() js.fetch() (workaround for IDEA)
 * @see js.#fetch() js.fetch()
 * @see js.Request
 * @see js.Response
 */
[Native("Body")]
public interface Body {

  /**
   * The body read-only property of the Body mixin is a simple getter used to expose a ReadableStream of the body
   * contents.
   */
  function get body(): *;

  /**
   * The bodyUsed read-only property of the Body mixin contains a Boolean that indicates whether the body has been read
   * yet.
   */
  function get bodyUsed(): Boolean;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with an
   * <code>ArrayBuffer</code>.
   *
   * @see js.ArrayBuffer
   */
  function arrayBuffer(): Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with a <code>Blob</code>.
   *
   * @see js.Blob
   */
  function blob(): Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with a <code>FormData</code>
   * object.
   *
   * @see js.FormData
   */
  function formData(): Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with the result of parsing
   * the body text as JSON.
   */
  function json(): Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with a String. The
   * response is always decoded using UTF-8.
   */
  function text(): Promise;
}
}
