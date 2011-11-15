package flash.events {


/**
 * An UncaughtErrorEvent object is dispatched by an instance of the UncaughtErrorEvents class when an uncaught error occurs. An uncaught error happens when an error is thrown outside of any <code>try..catch</code> blocks or when an ErrorEvent object is dispatched with no registered listeners. The uncaught error event functionality is often described as a "global error handler."
 * <p>The UncaughtErrorEvents object that dispatches the event is associated with either a LoaderInfo object or a Loader object. Use the following properties to access an UncaughtErrorEvents instance:</p>
 * <ul>
 * <li><code>LoaderInfo.uncaughtErrorEvents</code>: to detect uncaught errors in code defined in the same SWF.</li>
 * <li><code>Loader.uncaughtErrorEvents</code>: to detect uncaught errors in code defined in the SWF loaded by a Loader object.</li></ul>
 * <p>When an <code>uncaughtError</code> event happens, even if the event is handled, execution does not continue in the call stack that caused the error. If the error is a synchronous error, any code remaining in the function where the error happened is not executed. Consequently, it is likely that when an uncaught error event happens, your application is in an unstable state. Since there can be many causes for an uncaught error, it is impossible to predict what functionality is available. For example, your application may be able to execute network operations or file operations. However, those operations aren't necessarily available.</p>
 * <p>When one SWF loads another, <code>uncaughtError</code> events bubble down and up again through the LoaderInfo heirarchy. For example, suppose A.swf loads B.swf using a Loader instance. If an uncaught error occurs in B.swf, an <code>uncaughtError</code> event is dispatched to LoaderInfo and Loader objects in the following sequence:</p><ol>
 * <li>(Capture phase) A.swf's LoaderInfo</li>
 * <li>(Capture phase) Loader in A.swf</li>
 * <li>(Target phase) B.swf's LoaderInfo</li>
 * <li>(Bubble phase) Loader in A.swf</li>
 * <li>(Bubble phase) A.swf's LoaderInfo</li></ol>
 * <p>A Loader object's <code>uncaughtErrorEvents</code> property never dispatches an <code>uncaughtErrorEvent</code> in the target phase. It only dispatches the event in the capture and bubbling phases.</p>
 * <p>As with other event bubbling, calling <code>stopPropagation()</code> or <code>stopImmediatePropagation()</code> stops the event from being dispatched to any other listeners, with one important difference. A Loader object's UncaughtErrorEvents object is treated as a pair with the loaded SWF's <code>LoaderInfo.uncaughtErrorEvents</code> object for event propagation purposes. If a listener registered with one of those objects calls the <code>stopPropagation()</code> method, events are still dispatched to other listeners registered with that UncaughtErrorEvents object <i>and</i> to listeners registered with its partner UncaughtErrorEvents object before event propagation ends. The <code>stopImmediatePropagation()</code> method still prevents events from being dispatched to all additional listeners.</p>
 * <p>When content is running in a debugger version of the runtime, such as the debugger version of Flash Player or the AIR Debug Launcher (ADL), an uncaught error dialog appears when an uncaught error happens. For those runtime versions, the error dialog appears even when a listener is registered for the <code>uncaughtError</code> event. To prevent the dialog from appearing in that situation, call the UncaughtErrorEvent object's <code>preventDefault()</code> method.</p>
 * <p>If the content loaded by a Loader object is an AVM1 (ActionScript 2) SWF file, uncaught errors in the AVM1 SWF file do not result in an <code>uncaughtError</code> event. In addition, JavaScript errors in HTML content loaded in an HTMLLoader object (including a Flex HTML control) do not result in an <code>uncaughtError</code> event.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/UncaughtErrorEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.display.LoaderInfo#uncaughtErrorEvents
 * @see flash.display.Loader#uncaughtErrorEvents
 * @see UncaughtErrorEvents
 *
 */
public class UncaughtErrorEvent extends ErrorEvent {
  /**
   * The error object associated with the uncaught error. Typically, this object's data type is one of the following:
   * <ul>
   * <li>An Error instance (or one of its subclasses), if the uncaught error is a synchronous error created by a <code>throw</code> statement, such as an error that could have been caught using a <code>try..catch</code> block</li>
   * <li>An ErrorEvent instance (or one of its subclasses), if the uncaught error is an asynchronous error that dispatches an error event when the error happens</li></ul>
   * <p>However, the <code>error</code> property can potentially be an object of any data type. ActionScript does not require a <code>throw</code> statement to be used only with Error objects. For example, the following code is legal both at compile time and run time:</p>
   * <listing>
   * throw new Sprite()</listing>
   * <p>If that <code>throw</code> statement is not caught by a <code>try..catch</code> block, the <code>throw</code> statement triggers an <code>uncaughtError</code> event. In that case, the <code>error</code> property of the UncaughtErrorEvent object that's dispatched is the Sprite object that's constructed in the <code>throw</code> statement.</p>
   * <p>Consequently, in your <code>uncaughtError</code> listener, you should check the data type of the <code>error</code> property. The following example demonstrates this check:</p>
   * <listing>
   *          function uncaughtErrorHandler(event:UncaughtErrorEvent):void
   *          {
   *              var message:String;
   *
   *              if (event.error is Error)
   *              {
   *                  message = Error(event.error).message;
   *              }
   *              else if (event.error is ErrorEvent)
   *              {
   *                  message = ErrorEvent(event.error).text;
   *              }
   *              else
   *              {
   *                  message = event.error.toString();
   *              }
   *          }</listing>
   * <p>If the <code>error</code> property contains an Error instance (or Error subclass), the available error information varies depending on the version of the runtime in which the content is running. The following functionality is only available when content is running in a debugger version of the runtime, such as the debugger version of Flash Player or the AIR Debug Launcher (ADL):</p>
   * <ul>
   * <li><code>Error.getStackTrace()</code> to get the call stack that led to the error. In non-debugger runtime versions, this method returns <code>null</code>. Note that call stack information is never available when the <code>error</code> property is an ErrorEvent instance.</li>
   * <li>Complete <code>Error.message</code> text. In non-debugger runtime versions, this property contains a short version of the error message, which is often a combination of the <code>Error.errorID</code> and <code>Error.name</code> properties.</li></ul>
   * <p>All other properties and methods of the Error class are available in all runtime versions.</p>
   */
  public function get error():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an UncaughtErrorEvent object that contains information about an <code>uncaughtError</code> event.
   * @param type The type of the event.
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param error_in The object associated with the error that was not caught or handled (an Error or ErrorEvent object under normal circumstances).
   *
   */
  public function UncaughtErrorEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = true, error_in:* = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a copy of the UncaughtErrorEvent object and sets the value of each property to match that of the original.
   * @return A new UncaughtErrorEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the UncaughtErrorEvent object.
   * @return A string that contains all the properties of the UncaughtErrorEvent object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of an <code>uncaughtError</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>true</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>true</code>; cancelling the event prevents the uncaught error dialog from appearing in debugger runtime versions</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>error</code></td>
   * <td>The uncaught error.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The LoaderInfo object associated with the SWF where the error happened.</td></tr>
   * <tr>
   * <td><code>text</code></td>
   * <td>Text error message.</td></tr></table>
   */
  public static const UNCAUGHT_ERROR:String = "uncaughtError";
}
}
