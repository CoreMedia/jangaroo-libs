package js {

/**
 * An options object containing any custom settings that you want to apply to the response.
 */
public interface ResponseInit {

  /**
   * @return <code>Headers</code> or Object or two dimensional string Array.
   *
   * @see js.Headers
   */
  function get headers(): *;

  /**
   * @private
   */
  function set headers(headers: *): void;

  /**
   * The status code for the reponse, e.g., 200.
   */
  function get status(): Number;

  /**
   * @private
   */
  function set status(status: Number): void;

  /**
   * The status message associated with the status code, e.g., OK.
   */
  function get statusText(): String;

  /**
   * @private
   */
  function set statusText(statusText: String): void;
}
}
