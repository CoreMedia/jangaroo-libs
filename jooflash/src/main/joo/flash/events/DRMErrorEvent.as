package flash.events {
import flash.net.drm.DRMContentData;

/**
 * The DRMErrorEvent class provides information about errors that occur when playing digital rights management (DRM) encrypted files.
 * <p>The runtime dispatches a DRMErrorEvent object when a NetStream object, trying to play a digital rights management (DRM) encrypted file, encounters a DRM-related error. For example, a DRMErrorEvent object is dispatched when the content provider does not support the viewing application, or when the user authorization fails, possibly because the user has not purchased the content.</p>
 * <p>In the case of invalid user credentials, the DRMAuthenticateEvent object handles the error by repeatedly dispatching until the user enters valid credentials, or the application denies further attempts. The application should listen to any other DRM error events in order to detect, identify, and handle the DRM-related errors.</p>
 * <p>This class provides properties containing the object throwing the exception, the error code, and, where applicable, a suberror code and text message containing information related to the error. For a description of DRM-related error codes, see the <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/runtimeErrors.html">Runtime error codes</a>. The DRM-related error codes start at error 3300.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/DRMErrorEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.net.NetStream
 * @see #DRM_ERROR
 * @see runtimeErrors
 *
 */
public class DRMErrorEvent extends ErrorEvent {
  /**
   * The DRMContentData for the media file.
   * <p>You can use the object referenced by the <code>contentData</code> property to retrieve the related DRM voucher from the DRMManager voucher cache. The voucher properties describe the license available to the user and may explain why the DRM-protected content cannot be viewed.</p>
   */
  public function get contentData():DRMContentData {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set contentData(value:DRMContentData):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether a DRM update is needed to play the DRM-protected content.
   */
  public function get drmUpdateNeeded():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * An error ID that indicates more detailed information about the underlying problem.
   */
  public function get subErrorID():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether a system update is needed to play the DRM-protected content.
   */
  public function get systemUpdateNeeded():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an Event object that contains specific information about DRM error events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Event listeners can access this information through the inherited <code>type</code> property. There is only one type of DRMAuthenticate event: <code>DRMAuthenticateEvent.DRM_AUTHENTICATE</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param inErrorDetail Where applicable, the specific syntactical details of the error.
   * @param inErrorCode The major error code.
   * @param insubErrorID The minor error ID.
   * @param inMetadata <code>inMetadata:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/net/drm/DRMContentData.html">DRMContentData</a></code> (default = <code>null</code>)
   * @param inSystemUpdateNeeded <code>inSystemUpdateNeeded:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   * @param inDrmUpdateNeeded <code>inDrmUpdateNeeded:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   */
  public function DRMErrorEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, inErrorDetail:String = "", inErrorCode:int = 0, insubErrorID:int = 0, inMetadata:DRMContentData = null, inSystemUpdateNeeded:Boolean = false, inDrmUpdateNeeded:Boolean = false) {
    super(type, bubbles, cancelable);
  }

  /**
   * Creates a copy of the DRMErrorEvent object and sets the value of each property to match that of the original.
   * @return A new DRMErrorEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the DRMErrorEvent object. The string is in the following format:
   * <p><code>[DRMErrorEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> eventPhase=<i>value</i> errroID=<i>value</i> subErrorID=<i>value</i> text=<i>value</i></code></p>
   * @return A string that contains all the properties of the DRMErrorEvent object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The <code>DRMErrorEvent.DRM_ERROR</code> constant defines the value of the <code>type</code> property of a <code>drmError</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>false</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>errorID</code></td>
   * <td>A numerical error code assigned to the problem.</td></tr>
   * <tr>
   * <td><code>subErrorID</code></td>
   * <td>An error code that indicates more detailed information about the underlying problem.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The NetStream object.</td></tr></table>
   * @see flash.net.NetStream#event:drmError
   *
   */
  public static const DRM_ERROR:String = "drmError";
}
}
