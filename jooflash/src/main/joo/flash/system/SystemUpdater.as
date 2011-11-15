package flash.system {
import flash.events.EventDispatcher;

/**
 * Dispatched when an update of the player itself is cancelled by the user. This event is dispatched only when an update of type <code>SystemUpdaterType.SYSTEM</code> is requested and the user cancels the update.
 * @eventType flash.events.Event.CANCEL
 */
[Event(name="cancel", type="flash.events.Event")]
/**
 * Dispatched when the update completes.
 * @eventType flash.events.Event.COMPLETE
 */
[Event(name="complete", type="flash.events.Event")]
/**
 * Dispatched when an I/O error occurs. For example, one error that can cause this event is a loss of Internet connectivity.
 * @eventType flash.events.IOErrorEvent.IO_ERROR
 */
[Event(name="ioError", type="flash.events.IOErrorEvent")]
/**
 * Dispatched when an update begins. The update is complete when a 'complete' event is sent, or when an IOErrorEvent, SecurityErrorEvent, or StatusEvent is sent.
 * @eventType flash.events.Event.OPEN
 */
[Event(name="open", type="flash.events.Event")]
/**
 * Dispatched to indicate download progress. This event is like the <code>progress</code> event in the Loader and URLLoader classes.
 * @eventType flash.events.ProgressEvent.PROGRESS
 */
[Event(name="progress", type="flash.events.ProgressEvent")]
/**
 * Dispatched upon encountering a security error. For example, a security error that can cause this event is if the player tries to perform an update when an update is not permitted by security policy.
 * @eventType flash.events.SecurityErrorEvent.SECURITY_ERROR
 */
[Event(name="securityError", type="flash.events.SecurityErrorEvent")]
/**
 * Dispatched when the update fails. An update can fail for one of the following reasons:
 * <ul>
 * <li>The caller is running on an unsupported platform or architecture. In this case, the value of the <code>code</code> property is "DRM.UpdateFailedNotSupported" and the value of the <code>level</code> property is "error".</li>
 * <li>The requested update package cannot be located on the server. In this case, the value of the <code>code</code> property is "DRM.UpdateFailedNotCurrentlyAvailable" and the value of the <code>level</code> property is "error".</li>
 * <li>The Flash Access module is not installed. This error is similar to the "DRM.UpdateNeeded" code, which is dispatched by NetStatusEvent. However, in this case, a more recent version of Flash Player must be downloaded first. In this case, the value of the <code>code</code> property is "DRM.UpdateNeededButIncompatible" and the value of the <code>level</code> property is "error". To perform an update of Flash Player, call <code>SystemUpdater.update(SystemUpdaterType.SYSTEM)</code>.</li>
 * <li>The new DRM module could not be downloaded. In this case, the value of the <code>code</code> property is "DRM.UpdateFailed" and the value of the <code>level</code> property is "error".</li></ul>
 * @eventType flash.events.StatusEvent.STATUS
 */
[Event(name="status", type="flash.events.StatusEvent")]

/**
 * The SystemUpdater class allows you to update modules of the Flash Player, such as the DRM module for Flash Access, as well as the Flash Player itself. Available modules are listed in the SystemUpdaterType class.
 * <p>Flash Player identifies the need for a Flash-Access-module update by dispatching a NetStatusEvent event. The event has a <code>code</code> property with a value of <code>"DRM.UpdateNeeded"</code>. For updates to the Flash Access module, user consent is not required. Listen for the event and initiate the update by calling <code>update("DRM")</code>.</p>
 * <p>Flash Player identifies the need for a player update by dispatching a StatusEvent event, with several possible <code>code</code> property values (see the <code>status</code> event). For updates to the player, user consent is required. Listen for the event and present the user with the option to update. The user must agree to the actual update and initiate the update by, for example, clicking a button in the user interface. You can then initiate the player update directly in ActionScript by calling <code>update("SYSTEM")</code>.</p>
 * <p><b>Note</b>: The SystemUpdater API is supported on all desktop platforms.</p>
 * @see SystemUpdaterType
 *
 */
public class SystemUpdater extends EventDispatcher {
  /**
   * Constructor.
   */
  public function SystemUpdater() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Cancels an active update.
   */
  public function cancel():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Begins an update of a given type. Update types are one of the string constants defined in the SystemUpdaterType class. Only one update is allowed at a time across all browsers.
   * <p>After the update begins, listen for the events defined in this class. The following events events indicate the end of an update and allow a new update or update attempt to proceed, as does calling the <code>update()</code> function:</p>
   * <ul>
   * <li><code>complete</code></li>
   * <li><code>cancel</code></li>
   * <li><code>securityError</code></li>
   * <li><code>ioError</code></li>
   * <li><code>status</code></li></ul>
   * @param type <code>type:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see SystemUpdaterType
   *
   */
  public function update(type:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
