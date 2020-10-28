package js {

/**
 * An options object containing any custom settings that you want to apply to the response.
 */
[Native("ResponseInit")]
public class ResponseInit {

  /**
   * @private
   */
  public function ResponseInit() {
    throw new Error("Do not use!");
  }

  /**
   * @return <code>Headers</code> or Object or two dimensional string Array.
   *
   * @see js.Headers
   */
  public native function get headers(): *;

  /**
   * @private
   */
  public native function set headers(headers: *): void;

  /**
   * The status code for the reponse, e.g., 200.
   */
  public native function get status(): Number;

  /**
   * @private
   */
  public native function set status(status: Number): void;

  /**
   * The status message associated with the status code, e.g., OK.
   */
  public native function get statusText(): String;

  /**
   * @private
   */
  public native function set statusText(statusText: String): void;
}
}
