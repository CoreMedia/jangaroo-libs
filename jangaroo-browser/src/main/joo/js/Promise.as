package js {

/**
 * Represents the completion of an asynchronous operation.
 */
[Native("Promise")]
public class Promise {
  /**
   * Creates a new Promise.
   * @param executor A callback used to initialize the promise. This callback is passed two arguments:
   * a resolve callback used to resolve the promise with a value or the result of another promise,
   * and a reject callback used to reject the promise with a provided reason or error.
   */
  public native function Promise(executor: Function);

  /**
   * Attaches callbacks for the resolution and/or rejection of the Promise.
   * @param onfulfilled The callback to execute when the Promise is resolved.
   * @param onrejected The callback to execute when the Promise is rejected.
   * @returns A Promise for the completion of which ever callback is executed.
   */
  public native function then(onfulfilled: Function = undefined, onrejected: Function = undefined): Promise;

  /**
   * Attaches a callback for only the rejection of the Promise.
   *
   * Aliased by Jangaroo with an underscore suffix to avoid clash with ActionScript keyword
   * <code>catch</code>. To make this alias work, it is added to the class prototype.
   *
   * @param onrejected The callback to execute when the Promise is rejected.
   * @returns A Promise for the completion of the callback.
   */
  [Native("catch")]
  public native function catch_(onrejected: Function = undefined): Promise;

  /**
   * Creates a Promise that is resolved with an array of results when all of the provided Promises
   * resolve, or rejected when any Promise is rejected.
   * @param values An array of Promises.
   * @returns A new Promise.
   */
  public static native function all(...values): Promise;
  /**
   * Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
   * or rejected.
   * @param values An array of Promises.
   * @returns A new Promise.
   */
  public static native function race(values: Array): Promise;

  /**
   * Creates a new rejected promise for the provided reason.
   * @param reason The reason the promise was rejected.
   * @returns A new rejected Promise.
   */
  public static native function reject(reason: * = undefined): Promise;

  /**
   * Creates a new resolved promise for the provided value.
   * @param value A promise.
   * @returns A promise whose internal state matches the provided promise.
   */
  public static native function resolve(value: * = undefined): Promise;
}
}
