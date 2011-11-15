package flash.events {
/**
 * Dispatched when an error occurs and developer code doesn't detect and handle the error.
 * @eventType flash.events.UncaughtErrorEvent.UNCAUGHT_ERROR
 */
[Event(name="uncaughtError", type="flash.events.UncaughtErrorEvent")]

/**
 * The UncaughtErrorEvents class provides a way to receive uncaught error events. An instance of this class dispatches an <code>uncaughtError</code> event when a runtime error occurs and the error isn't detected and handled in your code.
 * <p>Use the following properties to access an UncaughtErrorEvents instance:</p>
 * <ul>
 * <li><code>LoaderInfo.uncaughtErrorEvents</code>: to detect uncaught errors in code defined in the same SWF.</li>
 * <li><code>Loader.uncaughtErrorEvents</code>: to detect uncaught errors in code defined in the SWF loaded by a Loader object.</li></ul>
 * <p>To catch an error directly and prevent an uncaught error event, do the following:</p>
 * <ul>
 * <li>Use a <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/statements.html#try..catch..finally">try..catch</a></code> block to isolate code that potentially throws a synchronous error</li>
 * <li>When performing an operation that dispatches an event when an error occurs, register a listener for that error event</li></ul>
 * <p>If the content loaded by a Loader object is an AVM1 (ActionScript 2) SWF file, uncaught errors in the AVM1 SWF file do not result in an <code>uncaughtError</code> event. In addition, JavaScript errors in HTML content loaded in an HTMLLoader object (including a Flex HTML control) do not result in an <code>uncaughtError</code> event.</p>
 * @see flash.display.LoaderInfo#uncaughtErrorEvents
 * @see flash.display.Loader#uncaughtErrorEvents
 * @see UncaughtErrorEvent
 *
 */
public class UncaughtErrorEvents extends EventDispatcher {
  /**
   * Creates an UncaughtErrorEvents instance. Developer code shouldn't create UncaughtErrorEvents instances directly. To access an UncaughtErrorEvents object, use one of the following properties:
   * <ul>
   * <li><code>LoaderInfo.uncaughtErrorEvents</code>: to detect uncaught errors in code defined in the same SWF.</li>
   * <li><code>Loader.uncaughtErrorEvents</code>: to detect uncaught errors in code defined in the SWF loaded by a Loader object.</li></ul>
   * @see flash.display.LoaderInfo#uncaughtErrorEvents
   * @see flash.display.Loader#uncaughtErrorEvents
   *
   */
  public function UncaughtErrorEvents() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
