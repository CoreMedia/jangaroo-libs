package js {

/**
 * A controller object that allows you to abort one or more DOM requests as and when desired.
 */
[Native("AbortController")]
public class AbortController {
  public native function AbortController();

  /**
   * Returns a AbortSignal object instance, which can be used to communicate with/abort a DOM request.
   */
  public native function get signal(): AbortSignal;

  /**
   * Aborts a DOM request before it has completed. This is able to abort fetch requests, consumption of any response
   * Body, and streams.
   */
  public native function abort(): void;
}
}
