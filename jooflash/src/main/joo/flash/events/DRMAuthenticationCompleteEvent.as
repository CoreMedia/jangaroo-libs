package flash.events {
import flash.utils.ByteArray;

/**
 * The DRMManager dispatches a DRMAuthenticationCompleteEvent object when a call to the <code>authenticate()</code> method of the DRMManager object succeeds.
 */
public class DRMAuthenticationCompleteEvent extends Event {
  /**
   * The content domain of the media rights server. Here, domain is not a network or Internet domain name.
   */
  public function get domain():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set domain(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The URL of the media rights server.
   */
  public function get serverURL():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set serverURL(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The authentication token.
   * <p>The authentication is automatically added to the DRMManager session cache. You can save the token and use it to authenticate the user in a future session. Reuse a token with the <code>setAuthenticationToken()</code> method of the DRMManager. Token expiration and other properties are determined by the server generating the token.</p>
   * @see flash.net.drm.DRMManager#setAuthenticationToken()
   *
   */
  public function get token():ByteArray {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set token(value:ByteArray):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new instance of a DRMAuthenticationCompleteEvent object.
   * @param type the event type string
   * @param bubbles whether the event bubbles up the display list
   * @param cancelable whether the event can be canceled
   * @param inServerURL the URL of the logged-in server
   * @param inDomain the authenticated domain on the logged-in server
   * @param inToken the authentication token
   *
   */
  public function DRMAuthenticationCompleteEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, inServerURL:String = null, inDomain:String = null, inToken:ByteArray = null) {
    super(type, bubbles, cancelable);
  }

  /**
   * Duplicates an instance of an Event subclass.
   * <p>Returns a new Event object that is a copy of the original instance of the Event object. You do not normally call <code>clone()</code>; the EventDispatcher class calls it automatically when you redispatch an event—that is, when you call <code>dispatchEvent(event)</code> from a handler that is handling <code>event</code>.</p>
   * <p>The new Event object includes all the properties of the original.</p>
   * <p>When creating your own custom Event class, you must override the inherited <code>Event.clone()</code> method in order for it to duplicate the properties of your custom class. If you do not set all the properties that you add in your event subclass, those properties will not have the correct values when listeners handle the redispatched event.</p>
   * <p>In this example, <code>PingEvent</code> is a subclass of <code>Event</code> and therefore implements its own version of <code>clone()</code>.</p>
   * <listing>
   *      class PingEvent extends Event {
   *          var URL:String;
   *
   *      public override function clone():Event {
   *               return new PingEvent(type, bubbles, cancelable, URL);
   *         }
   *      }
   *     </listing>
   * @return A new Event object that is identical to the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The string constant to use for the authentication complete event in the type parameter when adding and removing event listeners.
   */
  public static const AUTHENTICATION_COMPLETE:String = "authenticationComplete";
}
}
