package flashx.textLayout.container {
import flash.events.Event;

/**
 * Interface to support TLF content in a sub-application. When an application is loaded in an untrusted context, mouse events that occur outside of the untrusted application's bounds are not delivered. Clients can handle this by implementing ISandboxSupport.
 * @see ContainerController
 * @see TextContainerManager
 * @see flashx.textLayout.edit.SelectionManager
 * @see flash.system.SecurityDomain
 *
 */
public interface ISandboxSupport {
  /**
   * Called to request clients to begin the forwarding of mouseup and mousemove events from outside a security sandbox.
   */
  function beginMouseCapture():void;

  /**
   * Called to inform clients that the the forwarding of mouseup and mousemove events from outside a security sandbox is no longer needed.
   */
  function endMouseCapture():void;

  /**
   * Client call to forward a mouseMove event from outside a security sandbox. Coordinates of the mouse move are not needed.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  function mouseMoveSomewhere(event:Event):void;

  /**
   * Client call to forward a mouseUp event from outside a security sandbox. Coordinates of the mouse up are not needed.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  function mouseUpSomewhere(event:Event):void;
}
}
