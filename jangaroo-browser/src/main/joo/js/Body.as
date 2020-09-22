package js {

/**
 *
 */
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
   * @see ArrayBuffer
   */
  function get arrayBuffer(): Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with a <code>Blob</code>.
   *
   * @see Blob
   */
  function get blob(): Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with a <code>FormData</code>
   * object.
   *
   * @see FormData
   */
  function get formData(): Promise;

  /**
   * akes a Response stream and reads it to completion. It returns a promise that resolves with the result of parsing
   * the body text as JSON.
   */
  function get json(): Promise;

  /**
   * Takes a Response stream and reads it to completion. It returns a promise that resolves with a String. The
   * response is always decoded using UTF-8.
   */
  function get text(): Promise;
}
}
