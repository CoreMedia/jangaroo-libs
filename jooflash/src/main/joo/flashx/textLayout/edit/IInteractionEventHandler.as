package flashx.textLayout.edit {
import flash.events.ContextMenuEvent;
import flash.events.Event;
import flash.events.FocusEvent;
import flash.events.IMEEvent;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.events.TextEvent;

/**
 * The IInteractionEventHandler interface defines the event handler functions that are handled by a Text Layout Framework selection or edit manager.
 */
public interface IInteractionEventHandler {
  /**
   * Processes an activate event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  function activateHandler(event:Event):void;

  /**
   * Processes a deactivate event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  function deactivateHandler(event:Event):void;

  /**
   * Processes an edit event.
   * <p>Edit events are dispatched for cut, copy, paste, and selectAll commands.</p>
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  function editHandler(event:Event):void;

  /**
   * Processes a focusChange event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/FocusEvent.html">FocusEvent</a></code>
   *
   */
  function focusChangeHandler(event:FocusEvent):void;

  /**
   * Processes a focusIn event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/FocusEvent.html">FocusEvent</a></code>
   *
   */
  function focusInHandler(event:FocusEvent):void;

  /**
   * Processes a focusOut event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/FocusEvent.html">FocusEvent</a></code>
   *
   */
  function focusOutHandler(event:FocusEvent):void;

  /**
   * Processes an imeStartComposition event
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IMEEvent.html">IMEEvent</a></code>
   *
   */
  function imeStartCompositionHandler(event:IMEEvent):void;

  /**
   * Processes a keyDown event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/KeyboardEvent.html">KeyboardEvent</a></code>
   *
   */
  function keyDownHandler(event:KeyboardEvent):void;

  /**
   * Processes a keyFocusChange event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/FocusEvent.html">FocusEvent</a></code>
   *
   */
  function keyFocusChangeHandler(event:FocusEvent):void;

  /**
   * Processes a keyUp event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/KeyboardEvent.html">KeyboardEvent</a></code>
   *
   */
  function keyUpHandler(event:KeyboardEvent):void;

  /**
   * Processes a menuSelect event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/ContextMenuEvent.html">ContextMenuEvent</a></code>
   *
   */
  function menuSelectHandler(event:ContextMenuEvent):void;

  /**
   * Processes a mouseDoubleClick event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  function mouseDoubleClickHandler(event:MouseEvent):void;

  /**
   * Processes a mouseDown event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  function mouseDownHandler(event:MouseEvent):void;

  /**
   * Processes a mouseMove event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  function mouseMoveHandler(event:MouseEvent):void;

  /**
   * Processes a mouseOut event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  function mouseOutHandler(event:MouseEvent):void;

  /**
   * Processes a mouseOver event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  function mouseOverHandler(event:MouseEvent):void;

  /**
   * Processes a mouseUp event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  function mouseUpHandler(event:MouseEvent):void;

  /**
   * Processes a mouseWheel event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  function mouseWheelHandler(event:MouseEvent):void;

  /**
   * Processes a TextEvent.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/TextEvent.html">flash.events:TextEvent</a></code>
   *
   */
  function textInputHandler(event:TextEvent):void;
}
}
