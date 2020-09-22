package js {

/**
 * A signal object that allows you to communicate with a DOM request (such as a Fetch) and abort it if required via an
 * <code>AbortController</code> object.
 *
 * @see AbortController
 */
[Native("AbortSignal")]
public class AbortSignal extends EventTarget {
  public native function AbortSignal();

  /**
   * Returns true if this AbortSignal's <code>AbortController</code> has signaled to abort, and false otherwise.
   *
   * @see AbortController
   */
  public native function get aborted(): Boolean;

  /**
   * The onabort read-only property of the FetchSignal interface is an event handler Invoked when an abort event fires,
   * i.e. when the fetch request(s) the signal is communicating with is/are aborted.
   */
  public native function get onabort(): Function;

  /**
   * @private
   */
  public native function set onabort(onabort: Function): void;
}
}
